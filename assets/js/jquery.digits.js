$.fn.digits = function() {
  return this.each(function() {
    var $t = $(this);
    $t.text( $t.text().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") );
  });
};
