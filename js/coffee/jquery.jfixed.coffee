$ = jQuery

$.fn.jFixed = (opt) ->
  default_options =
    position: "top"
    animationSpeed: 300

  options = $.extend {}, default_options, opt
  this.each () ->
    $_that = $(this)
    $_that.scrollTop = $(window).scrollTop()
    $_that.isVisible = $_that.is(":visible")
    $_that.selfHeight = $_that.height()
    $_that.css("bottom", "0") if options.position is "bottom"
    setInterval () ->
      currentScrollTop = $(window).scrollTop()
      $_that.isVisible = $_that.is(":visible")
      if $_that.scrollTop isnt currentScrollTop
        $_that.stop(true, true).animate {opacity: "toggle"}, options.animationSpeed if $_that.isVisible
      else
        t = currentScrollTop
        if options.position is "bottom"
          t = currentScrollTop + $(window).height() - $_that.selfHeight
          $_that.css("bottom", "#{-1 * currentScrollTop}px")
        $_that.css("top", "#{t}px")
        $_that.stop(true, true).animate {opacity: "toggle"}, options.animationSpeed unless $_that.isVisible
      $_that.scrollTop = currentScrollTop
    , 500
    return

  return this
