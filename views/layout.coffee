doctype 5
html ->
  head ->
    meta charset: 'utf-8'

    title "#{@context.title} | My Site" if @context.title?
    meta(name: 'description', content: @context.description) if @context.description?
    link(rel: 'canonical', href: @context.canonical) if @context.canonical?

    link rel: 'icon', href: '/favicon.png'
    link rel: 'stylesheet', href: 'http://code.jquery.com/mobile/latest/jquery.mobile.min.css'
    script src: 'http://code.jquery.com/jquery-1.6.1.min.js'
    script src: 'http://code.jquery.com/mobile/latest/jquery.mobile.min.js'


  body ->
    @render @content, @context