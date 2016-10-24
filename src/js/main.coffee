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

$(document).ready ->
  $('.show-comments').on 'click', ->
    $.ajax
      type: 'GET'
      url: 'http://academia-unibz.disqus.com/embed.js'
      dataType: 'script'
      cache: true
    $(this).fadeOut()
    false
  false

# <script>
# var disqus_config = function () {
# this.page.url = "$AbsoluteLink";
# this.page.identifier = "$ID";
# };
# (function() {
# var d = document, s = d.createElement('script');
# s.src = '//academia-unibz.disqus.com/embed.js';
# s.setAttribute('data-timestamp', +new Date());
# (d.head || d.body).appendChild(s);
# })();
# </script>
# <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
