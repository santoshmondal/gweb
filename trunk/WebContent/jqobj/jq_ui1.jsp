<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	
	<!-- jquery js -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui-1.10.3.custom.min.js"></script>
	
	<!-- jquer css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/vader/jquery-ui-1.10.3.custom.min.css"></link>
	
	<!-- application js -->
	<script type="text/javascript" src="jq_ui1.js"></script>
	<link rel="stylesheet" href='main.css'></link>
	
	<style type="text/css">
		#sortable { list-style-type: none; margin: 0; padding: 0; width: 60%; }
	  	#sortable li { margin: 0 3px 3px 3px; padding: 0.4em; padding-left: 1.5em; font-size: 1.4em; height: 18px; }
	  	#sortable li span { position: absolute; margin-left: -1.3em; }
	</style>
</head>
<body>

JQUERY SORTABLE TEST
	<!-- <ul id="sortable">
	  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 1</li>
	  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 2</li>
	  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 3</li>
	  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 4</li>
	  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 5</li>
	  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 6</li>
	  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 7</li>
	</ul> -->
	
	<!-- <ul id="sortable">
	  <li id='sid_1'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 1</li>
	  <li id='sid_2'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 2</li>
	  <li id='sid_3'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 3</li>
	  <li id='sid_4'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 4</li>
	  <li id='sid_5'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 5</li>
	  <li id='sid_6'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 6</li>
	  <li id='sid_7'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 7</li>
	</ul> -->
	
	<!-- Onc must not put . or - or _ in the id -->
	<ul id="sortable">
	  <li id='id_1'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 1</li>
	  <li id='id_2'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 2</li>
	  <li id='id_3'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 3</li>
	  <li id='id_4'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 4</li>
	  <li id='id_5'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 5</li>
	  <li id='id_6'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 6</li>
	  <li id='id_7'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 7</li>
	</ul>
	
	<script type="text/javascript">
		$(function(){
			$( "#sortable" ).sortable({
				update : function(event, ui) {
					var serialIds = $('#sortable').sortable('serialize', {key:'sabc'});
					console.log(serialIds);
					
					var sArr = $('#sortable').sortable('toArray');
					console.log(sArr);
				}				
			});
		});
	</script>
	
</body>

</html>