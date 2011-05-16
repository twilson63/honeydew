doctype 5
html ->
  head ->
    meta charset: 'utf-8'

    title "#{@context.title} | My Site" if @context.title?
    meta(name: 'description', content: @context.description) if @context.description?
    link(rel: 'canonical', href: @context.canonical) if @context.canonical?

    link rel: 'icon', href: '/favicon.png'
    link rel: 'stylesheet', href: 'http://code.jquery.com/mobile/latest/jquery.mobile.min.css'

  body ->
    @render @content, @context

  script src: '/javascripts/handlebars-1.0.0.beta.2.js', type: 'text/javascript'
  script src: 'http://code.jquery.com/jquery-1.6.1.min.js'
  coffeescript ->
    $ ->
      window.dews = []
      ($ '#add').live 'pagebeforecreate', (event) ->
        ($ 'button', '#add').click ->
          window.dews.unshift ($ '#description').val()
          $.mobile.changePage '#home'
          false

      ($ '#home').live 'pageshow', (event) ->
        list = ($ '#honeydew-list').html()
        template = Handlebars.compile list
        content = 
          honeydews: [
            { id: 'list-1', description: 'Get Lawnmower Serviced' }
            { id: 'list-2', description: 'Get Brakes Serviced' }
          ]
        ($ '#honeydew-list-container').append template(content)
        ($ '#honeydew-list-container','#home').page()

 
  script src: 'http://code.jquery.com/mobile/latest/jquery.mobile.min.js'

