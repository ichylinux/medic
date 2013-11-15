$(document).ready(function() {
  $(document.body).delegate('form[action="/users/sign_in"]', 'submit', function() {
    $(this).attr('data-ajax', false);
  });

  $(document.body).delegate('form[action="/users"]', 'submit', function() {
    $(this).attr('data-ajax', false);
  });
});
