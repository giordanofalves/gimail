//= require froala_editor.min.js
//= require plugins/align.min.js
//= require plugins/colors.min.js
//= require plugins/file.min.js
//= require plugins/font_size.min.js
//= require plugins/fullscreen.min.js
//= require plugins/image.min.js
//= require plugins/image_manager.min.js
//= require plugins/inline_style.min.js
//= require plugins/line_breaker.min.js
//= require plugins/link.min.js
//= require plugins/lists.min.js
//= require plugins/paragraph_format.min.js
//= require plugins/paragraph_style.min.js
//= require plugins/quote.min.js
//= require plugins/table.min.js

$(document).ready(function() {
  $('textarea#email_body').froalaEditor({
    fullPage: true,
    height: 300,
    width: "100%"
  })
});
