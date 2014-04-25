<%@page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title></title>
<meta charset="utf-8">
<link href="css/le-frog/jquery-ui-1.10.4.custom.css" rel="stylesheet">	
<script src="js/jquery-1.10.2.js"></script>	
<script src="js/jquery-ui-1.10.4.custom.js"></script>

	<script>
	$(function() {
		
		$( "#accordion" ).accordion();
		
		var availableTags = [
			"ActionScript",
			"AppleScript",
			"Asp",
			"BASIC",
			"C",
			"C++",
			"Clojure",
			"COBOL",
			"ColdFusion",
			"Erlang",
			"Fortran",
			"Groovy",
			"Haskell",
			"Java",
			"JavaScript",
			"Lisp",
			"Perl",
			"PHP",
			"Python",
			"Ruby",
			"Scala",
			"Scheme"
		];
		$( "#autocomplete" ).autocomplete({
			source: availableTags
		});
		

		
		$( "#button" ).button();
		$( "#radioset" ).buttonset();
		

		
		$( "#tabs" ).tabs();
		

		
		$( "#dialog" ).dialog({
			autoOpen: false,
			width: 400,
			buttons: [
				{
					text: "Ok",
					click: function() {
						$( this ).dialog( "close" );
					}
				},
				{
					text: "Cancel",
					click: function() {
						$( this ).dialog( "close" );
					}
				}
			]
		});

		// Link to open the dialog
		$( "#dialog-link" ).click(function( event ) {
			$( "#dialog" ).dialog( "open" );
			event.preventDefault();
		});
		

		
		$( "#datepicker" ).datepicker({
			inline: true
		});
		

		
		$( "#slider" ).slider({
			range: true,
			values: [ 17, 67 ]
		});
		

		
		$( "#progressbar" ).progressbar({
			value: 20
		});
		

		// Hover states on the static widgets
		$( "#dialog-link, #icons li" ).hover(
			function() {
				$( this ).addClass( "ui-state-hover" );
			},
			function() {
				$( this ).removeClass( "ui-state-hover" );
			}
		);
	});
	</script>
	<script>
			$(document).ready(function(){
				$('#add-button').click(function(event) {
					var bookname=$('#book').val();
						$.get('BookServlet', {book:bookname}, function(responseText){
							$('#welcometext').text(responseText);
						});
				});
			});	
	</script>
	<style>
	body{
		font: 62.5% "Trebuchet MS", sans-serif;
		margin: 50px;
	}
	.demoHeaders {
		margin-top: 2em;
	}
	#dialog-link {
		padding: .4em 1em .4em 20px;
		text-decoration: none;
		position: relative;
	}
	#dialog-link span.ui-icon {
		margin: 0 5px 0 0;
		position: absolute;
		left: .2em;
		top: 50%;
		margin-top: -8px;
	}
	#icons {
		margin: 0;
		padding: 0;
	}
	#icons li {
		margin: 2px;
		position: relative;
		padding: 4px 0;
		cursor: pointer;
		float: left;
		list-style: none;
	}
	#icons span.ui-icon {
		float: left;
		margin: 0 4px;
	}
	.fakewindowcontain .ui-widget-overlay {
		position: absolute;
	}
	</style>
</head>
Book shop
<body background='graphics/background.jpg'>

<jsp:include page="top-menu.jsp" flush="true"/>

<jsp:useBean id="bookShop" scope="session" class="my.ilya.BookShop" />
<jsp:setProperty name="bs" property="*" />


<div style="width: 791px; height: 100%; margin: 0px auto; text-align: left" class="ui-tabs ui-widget ui-widget-content ui-corner-all">
<form id="form1" >
<select id="book" class="ui-corner-all">
	<c:forEach items="${bookShop.getBooks()}" var="item"> 
		<option value="${item}">${item}</option>
	</c:forEach>	
</select>

<label >Quantity:</label>
<input type="text" name="line" class="ui-corner-all" value=""  ></input>

	<button id="add-button" type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="		button" aria-disabled="false">
		Add
	</button>
	<div id="welcometext"></div>
</form>


</div>


</body></html>