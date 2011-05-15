{ Dew } = require '../models/dew'
describe 'dew', ->
  beforeEach ->
    @dew = new Dew { description: 'Foobar item to do' }

  it 'sets description', ->
    (expect @dew.description).toEqual 'Foobar item to do'