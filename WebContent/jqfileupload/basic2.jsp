<html lang="en">
<head>
<title>jQuery File Upload Demo - Basic version</title>

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.iframe-transport.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.fileupload.js"></script>

	<!-- Generic page styles -->
	<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"> --%>
	<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"> --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.fileupload-ui.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jq.fu-min.css">
</head>
<body>

 <div class="container" >
	<br />
	<form id='fileUploadForm' action="doUpload"  method="POST" enctype="multipart/form-data" >  
		Year::<input type='text' name='year' /> <br />
	</form>
	    <span class="btn btn-success fileinput-button">
	        <i class="icon-plus icon-white"></i>
	        <span>Select files...</span>
	        <!-- The file input field used as target for the file upload widget -->
	        <input id="fileupload" type="file" name="fileUpload[]" multiple>
	    </span> <br />
	    <input type='button' value='submit' id='bid' onclick="javascript:clear();" />
   
   
    <br>
    <br>
    
    <!-- The global progress bar -->
    <div id="progress" class="progress progress-success progress-striped">
        <div class="bar"></div>
    </div>
    
    <!-- The container for the uploaded files -->
    <div id="files" class="files"></div>
    
</div>


<script type="text/javascript">

function clear() {
	alert("hello");
	if ($.browser.msie) {
		 console.log("iee");
	      $('#fileupload').replaceWith($('#fileupload').clone());
	 } else {
		 console.log("crrrr");
	      $('#fileupload').val('');
	 }
}

/* $(function () {
	'use strict';
    var url = "fileUpload.action";   
    $('#fileupload').fileupload({
    	 url: url,
        dataType: 'json',
        add: function (e, data) {
                 $('#bid').click(function () {
                    // data.context = $('<p/>').text('Uploading...').replaceAll($(this));
                    data.submit();
                }); 
            
            $("#bid").off('click').on('click',function () {           
                data.submit();
            });
        },
        done: function (e, data) {
            // data.context.text('Upload finished.');
            $('<p/>').text(data.result.fileUploadFileName + data.result.fileUploadContentType).appendTo('#files');
        },
        progressall: function (e, data) {
            var progress = parseInt(data.loaded / data.total * 100, 10);
            $('#progress .bar').css('width', progress + '%');
        }, 
    });
});*/

/* $(function () {
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
