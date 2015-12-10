#= require cable

@App = {}
App.cable = Cable.createConsumer 'ws://localhost:28080'
