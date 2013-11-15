function select_member(select) {
  var url = $(select).closest('form').attr('action');
  var params = {member_id: $(select).val(), format: 'html'};
  $.get(url, params, function(html) {
    $('#seals').replaceWith(html);
  });
}
