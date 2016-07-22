$ = require 'jquery'
D = require 'dropcap.js'

$(window).on 'load resize', (e) ->
  dropcap = document.getElementById('dropcap')
  window.Dropcap.layout dropcap, 3
  return
