$(document).on('turbolinks:load', function() {
  function resizeNiceThing() {
    if (!$('#niceThing').length) return;
    var $elm = $('#niceThing')
    var docHeight = $(document).height();
    var targetHeight = docHeight*0.3;
    var margin = docHeight/2 - targetHeight/2 - $elm.offset().top;
    $elm.height(targetHeight)
    $elm.css('margin-top', margin)
    $elm.textfill({ maxFontPixels: 72 });
    $elm.trigger('nice-thing:load')
  }

  resizeNiceThing();
})

$(document).on('turbolinks:load', function() {
  if (!$('#nice_thing_content').length) return;
  var simplemde = new SimpleMDE();
})
