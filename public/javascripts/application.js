$(function() {
  var faye = new Faye.Client('http://localhost:9292/faye');
  faye.subscribe('/articles/new', function (data) {
    alert(data);
  });
});
