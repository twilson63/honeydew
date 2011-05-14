fs = require 'fs'
{exec} = require 'child_process'

task 'spec', 'run tests', (options) ->
  exec 'jasmine-node spec --coffee', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr
