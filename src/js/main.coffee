$ = require 'jquery'
D = require 'dropcap.js'
F = require 'flickity'

$(window).on 'load resize', (e) ->
  dropcap = document.getElementById('dropcap')
  window.Dropcap.layout dropcap, 3
  return
