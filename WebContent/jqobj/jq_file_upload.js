$(function() {
		$('#fileUploadForm').submit(function(event) {
			
			var data = new FormData();
			jQuery.each($('#fileUpload')[0].files, function(i, file) {
			    data.append("fileUpload", file);
			});
			
			var params = $(this).serializeArray();
		    $.each(params, function (i, val) {
		        formData.append(val.name, val.value);
		        console.log(val.name + val.value);
		    });
			
			$.ajax({
			    url: 'doUpload.action',
			    data: data,
			    cache: false,
			    contentType: false,
			    processData: false,
			    type: 'POST',
			    success: function(data){
			        alert(data);
			    }
			});
			
			return false;
		});
	});