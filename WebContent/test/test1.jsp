<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>20140125-javascript revision</title>
	<script type="text/javascript"  src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js" > </script>
	<script type="text/javascript"  src="${pageContext.request.contextPath}/js/jquery.cookie.js" > </script>

	<!-- Core java/script -->	
	<script type="text/javascript">
		<!-- global object -->
		var com = {
			core : {},
			util : {},
			more : {
				mprop1 : "ymm propertie one",
				mMethod1 : function(){
					console.log(this.mprop1);
					console.log("ymm more method!!");
				}
			}
		};
		
		com.core.coreProp1 = "Core properties one!!";
		com.core.coreMethod1 = function(param1){
			window.console.log("Com core method one!!");
			window.console.log(this);
			window.console.log(param1);
		};
		
		// calling core method1
		com.core.coreMethod1();
		com.core.coreMethod1.call(this, "parameter one value");
		com.more.mMethod1();
		
		
		com.core.Employee = function(fName, mName, lName){
			this.fName = fName;
			this.mName = mName;
			this.lName = lName;
			
			this.getFirstName = function() {
				return this.fName;
			};
			
			this.getLastName = function() {
				return this.lName;
			};
			
			this.getMiddleName = function() {
				return this.mName;
			};
		};
		com.core.Employee.staticMethod = function(){
			window.console.log("A static method.");
		};
		
		// create an object of Employee
		var aEmployee = new com.core.Employee("santosh", "kumar", "mondal");
		window.console.log(aEmployee.getFirstName());
		window.console.log(com.core.Employee.staticMethod());
		
		
		// javascript timer
		window.setTimeout(function(){
			com.core.showTime();	
		}, 2000);
		com.core.showTime = function() {
			console.log(new Date());
			setTimeout(function(){
					com.core.showTime();
			}, 20000);
		}
		
	</script>
	
	<!-- core jQuery -->
	<script type="text/javascript">
		(function(){
			console.log("---Core jQuery starts---");
			console.log(this);
			console.log($(this)); // typecasted to jQuery!!
			
			com.core.coreMethod2 = function(){
				console.log("core method2");	
				var jqXHR = jQuery.get("test.html", function(data){
					console.log(data);
				});
				jqXHR.done(function(data, textStatus, jqXHR){
					console.log("done data::" + data + "textstatsu::" + textStatus);
				});
				jqXHR.fail(function(data, textStatus, jqXHR){
					console.log("fail data::" + data + ", textstatus::" + textStatus);
				});
				
			};
			

			com.core.coreMethod3 = function(){
				console.log("Core method3 starts");
				jQuery.ajax({
					url: "test.html",
					success : function(data) {
						console.log("An AJax style call, " + data);
					},
				}).always(function(data){
					console.log("An Always daata," + data);
				});
			};
			
			$.each(com.core, function(key, value){
				console.log(key);
			});
			console.log("---Core jQuery ends---");
		})(jQuery); 
		
		com.core.coreMethod2();
		com.core.coreMethod3();
	</script>
	
	
	<script type="text/javascript">
		$(function(){
			
			var value = $.cookie("CLIENT_PREFERENCE");
			console.log("Cookie value::" + value);
			if(value != null && value != undefined) {
				$("#id2").toggle(false);
			} 
			
			$('#id1').click(function(){
				// $('#id2').toggle();
				$("#id2").toggle({
					duration: 1000,
					done : function(){
						console.log("toggle done!!");
						if(value == null) {
							$.cookie("CLIENT_PREFERENCE", true);
						} else {
							$.removeCookie("CLIENT_PREFERENCE");
						}
					}
				});
			});
			
		});
	</script>
	
</head>
<body>

	<a id='id1' href='#' >LINK</a>
	
	<br />
	<a id='id2' href='#' >A LONG LINK!!</a>

</body>
</html>