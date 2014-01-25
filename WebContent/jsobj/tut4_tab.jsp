<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Java Script and Objects</title>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-ui-1.10.3.custom.min.js"></script>

<!-- jquer css -->
<script type="text/javascript">
	var cssFileVal = $.cookie("cssfile");
	if (cssFileVal == null) {
		cssFileVal = "vader";
	}

	$('head')
			.append(
					'<link rel="stylesheet" href="${pageContext.request.contextPath}/css/'+cssFileVal+'/jquery-ui.css" />');
	$('head')
			.append(
					'<link rel="stylesheet" href="${pageContext.request.contextPath}/css/'+cssFileVal+'/jquery.ui.theme.css"></link>');


	$(function(){
		$( "#tabs" ).tabs({
   		 	disabled: [ 1, 2 ]
   		});
		
		$('#btabs-1').click(function(){
			console.log("click...");
			$( "#tabs" ).tabs( "enable");
			$( "#tabs" ).tabs( "option", "active", 1 );
			return false;
		});		
	});

	
</script>



<style type="text/css">
#sdiv {
	border: 7px solid #708090;
	height: 500px;
	width: 400px;
}

.ui-widget {
	font-size: 12px !important;
}
</style>
</head>
<body>

	<select id='vivekselect'>
		<option value='start'>start</option>
		<option value='sunny'>sunny</option>
		<option value='vader'>vader</option>
		<option value='swanky-purse'>swanky-purse</option>
		<option value='overcast'>overcast</option>
		<option value='hot-sneaks'>hot-sneaks</option>
	</select>


	<div id="tabs">
		<form method='post'>
			<ul>
				<li><a href="#tabs-1">Nunc tincidunt</a></li>
				<li><a href="#tabs-2">Proin dolor</a></li>
				<li><a href="#tabs-3">Aenean lacinia</a></li>
			</ul>
			<div id="tabs-1">
				<p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a,
					risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris.
					Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem.
					Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo.
					Vivamus sed magna quis ligula eleifend adipiscing. Duis orci.
					Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam
					molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut
					dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique
					tempus lectus.</p>
				Name : <input type='text' name='name1' />
				<button id='btabs-1'>NEXT</button>
			</div>
			<div id="tabs-2">
				<p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus
					gravida ante, ut pharetra massa metus id nunc. Duis scelerisque
					molestie turpis. Sed fringilla, massa eget luctus malesuada, metus
					eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet
					fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam.
					Praesent in eros vestibulum mi adipiscing adipiscing. Morbi
					facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut
					posuere viverra nulla. Aliquam erat volutpat. Pellentesque
					convallis. Maecenas feugiat, tellus pellentesque pretium posuere,
					felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris
					consectetur tortor et purus.</p>
				Name : <input type='text' name='name2' />
			</div>
			<div id="tabs-3">
				<p>Mauris eleifend est et turpis. Duis id erat. Suspendisse
					potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque
					rutrum erat, eu congue orci lorem eget lorem. Vestibulum non ante.
					Class aptent taciti sociosqu ad litora torquent per conubia nostra,
					per inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim
					commodo pellentesque. Praesent eu risus hendrerit ligula tempus
					pretium. Curabitur lorem enim, pretium nec, feugiat nec, luctus a,
					lacus.</p>
				<p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at,
					semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra
					justo vitae neque. Praesent blandit adipiscing velit. Suspendisse
					potenti. Donec mattis, pede vel pharetra blandit, magna ligula
					faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque.
					Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi
					lectus, feugiat porttitor, tempor ac, tempor vitae, pede. Aenean
					vehicula velit eu tellus interdum rutrum. Maecenas commodo.
					Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae
					lectus hendrerit hendrerit.</p>
				Name : <input type='text' name='name3' /> <input type='button' />
			</div>
		</form>
	</div>

</body>

<script type="text/javascript">
	$('#vivekselect').change( function(){
		console.log("select..."+ $(this).val());
		$.cookie("cssfile", $(this).val());
	}); 
	
	$("button").button({
		text : true,
		icons: {
	        primary: "ui-icon-locked"
	     }
	});
	
</script>

</html>