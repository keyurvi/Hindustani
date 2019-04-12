$(document).ready(function(){
    $('.datepicker').datepicker({ dateFormat: 'dd-mm-yyyy' });
  });
$(document).on('cocoon:after-insert', function() {
	$('.datepicker').datepicker({ dateFormat: 'dd-mm-yyyy' });
});


