$(function() {
  $(document).ready(function() {
    $('#quick_post')
      .hide()
      .before('<a href="#" id="quick_post_toggle">Quick Post</a>');

    $('#quick_post_toggle').click(function(){
      $('#quick_post').toggle();
      return false;
    });
  });
});
