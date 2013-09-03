<head>
    <title></title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.form.js"></script>
    <script type="text/javascript">
        $(function() {            
          $('#fileUploadForm').ajaxForm({                 
            beforeSubmit: ShowRequest,
            success: SubmitSuccesful,
            error: AjaxError                               
          });                                    
        });            

        function ShowRequest(formData, jqForm, options) {
          var queryString = $.param(formData);
          alert('BeforeSend method: \n\nAbout to submit: \n\n' + queryString);
          return true;
        }

        function AjaxError() {
          alert("An AJAX error occured.");
        }

        function SubmitSuccesful(responseText, statusText) {        
          alert("SuccesMethod:\n\n" + responseText);
        }    
    </script>
</head>
<body>
    <form id="fileUploadForm" method="POST" action="/backyardApps/doUpload.action" enctype="multipart/form-data">
      <input type="text" name="filename" />
      <input type="file" id="postedFile" name="fileUpload" />
      <input type="submit" value="Submit" />
    </form>
</body>
</html>