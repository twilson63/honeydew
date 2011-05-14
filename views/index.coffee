div 'data-role': 'page', 'data-id': 'home', ->
  div 'data-role': 'header', ->
    h1 @title
    a href: '#add', 'Add Dew'
  div 'data-role': 'content', ->
    form method: 'post', action: '/complete', ->
      fieldset 'data-role': 'controlgroup', ->
        for dew in @honeydews
          input type: 'checkbox', name: dew, id: dew
          label for: dew, dew
      button id: 'Complete', 'Complete checked Honeydews'

div 'data-role': 'page', 'data-id': 'add', ->
  div 'data-role': 'header', ->
    h1 "Add -> #{@title}"
  div 'data-role': 'content', ->
    form method: 'post', action: '/add', ->
      div 'data-role': 'fieldcontain', ->
        textarea cols: '40', rows: '8', name: 'description', id: 'description'
      button 'Add Honeydew'

