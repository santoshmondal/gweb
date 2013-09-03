<html lang="en">
<head>
<title>jQuery File Upload Demo - Basic version</title>

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.iframe-transport.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.fileupload.js"></script>

	<!-- Generic page styles -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.fileupload-ui.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
</head>
<body>
 <div class="container" >
 
 	<form>
 		Year<input type='text' name='year' />
	    <!-- The fileinput-button span is used to style the file input field as button -->
	    <span class="btn btn-success fileinput-button">
	        <i class="icon-plus icon-white"></i>
	        <span>Select files...</span>
	        <!-- The file input field used as target for the file upload widget -->
	        <input id="fileupload" type="file" name="fileUpload" multiple>
	    </span>
	    <input type='button' value='button' />
    </form>
    <br>
    <br>
    
    <!-- The global progress bar -->
    <div id="progress" class="progress progress-success progress-striped">
        <div class="bar"></div>
    </div>
    
    <!-- The container for the uploaded files -->
    <div id="files" class="files"></div>
    
</div>


<script>

$(function () {
	'use strict';
    var url = "fileUpload.action";   
    $('#fileupload').fileupload({
    	 url: url,
        dataType: 'json',
        add: function (e, data) {
            data.context = $('<button/>').text('Upload').appendTo(document.body)
                .click(function () {
                    data.context = $('<p/>').text('Uploading...').replaceAll($(this));
                    data.submit();
                });
        },
        done: function (e, data) {
            data.context.text('Upload finished.');
            $('<p/>').text(data.result.fileUploadFileName + data.result.fileUploadContentType).appendTo('#files');
        },
        progressall: function (e, data) {
            var progress = parseInt(data.loaded / data.total * 100, 10);
            $('#progress .bar').css('width', progress + '%');
        }, 
    });
});

/*$(function () {
    'use strict';
    var url = "fileUpload.action";            
    $('#fileupload').fileupload({
        url: url,

        dataType: 'json',
        done: function (e, data) {
           console.log("done", data.result);
           $('<p/>').text(data.result.fileUploadFileName + data.result.fileUploadContentType).appendTo('#files');
        }, 
        
        progressall: function (e, data) {
            var progress = parseInt(data.loaded / data.total * 100, 10);
            $('#progress .bar').css('width', progress + '%');
        }, 
        
    });
}); */
</script>
</body> 
</html>
