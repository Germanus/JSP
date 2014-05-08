<%@page language="java" contentType="text/html"%>
<%@page session="true"  import="java.util.List, my.ilya.BookShop"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title></title>
<meta charset="utf-8">
<style type="text/css" title="currentStyle">
			@import "css/demo_page.css";
			@import "css/demo_table.css";
</style>
<link href="css/le-frog/jquery-ui-1.10.4.custom.css" rel="stylesheet">	
<link href="css/custom.css" rel="stylesheet">
<link href="css/jquery.dataTables.css" rel="stylesheet">
<link href="css/jquery.dataTables_themeroller.css" rel="stylesheet">
<script src="js/jquery.js" type="text/javascript" language="javascript"></script>	
<script src="js/jquery.dataTables.js" type="text/javascript" language="javascript"></script>	
<script src="js/bookshop.js" type="text/javascript" language="javascript"></script>	


<script>
	var oTable;
	
	$(document).ready(function(){
			
			$('#add-button').click(function(event) {	
				
				var bookname=$('#book').val();
				$.get('BookServlet', {book:bookname}, function(responseText){
					oTable.html(responseText);
					oTable.fnDestroy();
					oTable = $('#example').dataTable();		
					
				});
			});
			
			oTable = $('#example').dataTable();					
			
	});	
</script>
</head>
Book shop
<body background='graphics/background.jpg'>

<jsp:include page="top-menu.jsp" flush="true"/>

<jsp:useBean id="bookShop" scope="session" class="my.ilya.BookShop" />
<jsp:setProperty name="bookShop" property="*" />

<div style="width: 791px; height: 100%; margin: 0px auto; text-align: left" class="ui-tabs ui-widget ui-widget-content ui-corner-all">
	<form id="form1" >
		<select id="book" class="ui-corner-all">
			<c:forEach items="${bookShop.getBooks()}" var="item"> 
				<option value="${item}">${item}</option>
			</c:forEach>	
		</select>

		<label >Quantity:</label>
		<input type="text" name="line" class="ui-corner-all" value=""  ></input>

		<button id="add-button" type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" 
				role="button" aria-disabled="false">
			Add
		</button>
		
		<table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
			<thead>
				<tr>
					<th>Name</th>			
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${bookShop.getAddedBooks()}" var="book">
				<tr class="gradeA">
					<td>${book}</td>			
				</tr>
			</c:forEach>		
			</tbody>
		</table>
		
		<div id="welcometext"></div>
		
		 
	</form>

</div>

</body>
</html>
