$(document).ready(function() {
  var value_in = parseFloat($("#stats-balance-in").data("value"));
  var value_out = parseFloat($("#stats-balance-out").data("value"));
  $("#stats-balance-in").width(value_in / (value_in + value_out) * $(".balance").width());
  $("#stats-balance-out").width(value_out / (value_in + value_out) * $(".balance").width());
});
