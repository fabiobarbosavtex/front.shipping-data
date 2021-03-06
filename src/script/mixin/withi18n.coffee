define [], () ->
  localesLoaded = {}
  ->
    localePath = null

    @defaultAttrs
      locale: 'pt-BR'

    @extendTranslations = (translation) ->
      if window.vtex.i18n[@attr.locale]
        window.vtex.i18n[@attr.locale] = _.extend(translation, window.vtex.i18n[@attr.locale])
        i18n.addResourceBundle(@attr.locale, 'translation', window.vtex.i18n[@attr.locale])
      else
        i18n.addResourceBundle(@attr.locale, 'translation', translation)

      # Set Parsley language
      window.ParsleyConfig = window.ParsleyConfig or {}
      window.ParsleyConfig.i18n = window.ParsleyConfig.i18n or {}
      window.ParsleyConfig.i18n[@attr.locale] = $.extend(window.ParsleyConfig.i18n[@attr.locale] or {}, i18n.t('validation', returnObjectTrees: true ))

      if window.ParsleyValidator?
        window.ParsleyValidator.addCatalog(@attr.locale, window.ParsleyConfig.i18n[@attr.locale], true)
        window.ParsleyValidator.setLocale(@attr.locale)

      return translation

    @fixLocale = (locale) ->
      if locale.match('es-')
        return 'es'
      else if locale.match('en-')
        return 'en'
      else if locale.match('fr-')
        return 'fr'
      else
        return locale

    @setLocale = (locale = "pt-BR") ->
      @attr.locale = @fixLocale(locale)

    @localeSelected = (ev, locale) ->
      @setLocale locale
      @$node.i18n()

    @setLocalePath = (path) ->
      localePath = path

    @requireLocale = ->
      @attr.locale = @fixLocale(@attr.locale)
      vtex.curl [localePath + @attr.locale], (translation) =>
        if not localesLoaded[localePath + @attr.locale]
          @extendTranslations(translation)
        localesLoaded[localePath + @attr.locale] = true

    @after 'initialize', ->
      throw new Error("withi18n clients must initialize localePath by calling @setLocalePath()") unless localePath
      @on window, 'localeSelected.vtex', @localeSelected

      # If there is an orderform present, use it for initialization
      if locale = vtexjs?.checkout?.orderForm?.clientPreferencesData?.locale
        @localeSelected(null, locale)

      if typeof @render is 'function'
        @around 'render', (originalRender) ->
          @requireLocale().then(originalRender)
