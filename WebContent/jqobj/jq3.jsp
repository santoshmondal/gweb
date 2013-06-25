<%@page import="in.async.jquery.sortable.JQArticle"%>
<%@page import="java.util.List"%>
	
<%
	List<JQArticle> list = (List<JQArticle>) request.getAttribute("REQUEST_ARTICLE_ORDER_LIST");
%>


	<ul id="sortable">
		<%if(list != null) {
			for(JQArticle article : list) { %>
				<li id='<%=article.getId()%>'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span><%=article.getTitle()%></li>
			<%} 
		}%>
	</ul>
	
	
	<script type="text/javascript">
		$(function(){
			$( "#sortable" ).sortable({
				update : function(event, ui) {
					/* var serialIds = $('#sortable').sortable('serialize', {key:'sabc'});
					console.log(serialIds); */
					
					var sArr = $('#sortable').sortable('toArray');
					console.log(sArr);
					
					var jxhr = $.post("/gweb/SortablejQUI", "rOrder="+sArr, function(resData){
						console.log("success log");
						$("dcontent_div").html(resData);
					});
					/* jxhr.always(function(){
						console.log("Alwayws log.");
					}); */
				}				
			});
		});
	</script>