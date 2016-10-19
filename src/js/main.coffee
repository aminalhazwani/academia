$ = require 'jquery'
D = require 'dropcap.js'
F = require 'flickity'

$(window).on 'load', (e) ->
	$('.article_inner .typography p:first').html (index, html) ->
		return '<span class="dropcap">' + html.slice(0, 1) + '</span>' + html.slice(1)
	dropcap = $('.dropcap')[0]
	window.Dropcap.layout dropcap, 3
	return

# $(window).on 'resize', (e) ->
# 	dropcap = $('.dropcap')[0]
# 	window.Dropcap.layout dropcap, 3
# 	return
