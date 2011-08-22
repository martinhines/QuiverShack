jQuery(document).ready(function() {
	jQuery("#new_user").validate({
		rules : {
			"user[first_name]" : {
				required : true
			},
			"user[last_name]" : {
				required : true
			},
			"user[email]" : {
				required : true,
				email : true,
				msg : "valid email required"
			}
		}
	});
});
