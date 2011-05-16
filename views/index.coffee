div id: 'home', 'data-role': 'page', 'data-id': 'home', ->
  div 'data-role': 'header', ->
    h1 @title
    a href: '#add', 'Add Dew'
  div 'data-role': 'content', ->
    form method: 'post', action: '/complete', ->
      fieldset 'data-role': 'controlgroup', id: 'honeydew-list-container'
      button id: 'Complete', 'Complete checked Honeydews'

div id: 'add', 'data-role': 'page', 'data-id': 'add', ->
  div 'data-role': 'header', ->
    h1 "Add -> #{@title}"
  div 'data-role': 'content', ->
    form method: 'post', action: '/add', ->
      div 'data-role': 'fieldcontain', ->
        textarea cols: '40', rows: '8', name: 'description', id: 'description'
      button 'Add Honeydew'


script id: 'honeydew-list', type: 'text/x-handlebars-template', ->
  '''
  {{#each honeydews}}
  <input type='checkbox' name='{{id}}' id='{{id}}' />
  <label for='{{id}}'>{{description}}</label>
  {{/each}}
  '''

