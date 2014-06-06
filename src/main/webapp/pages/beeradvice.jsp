<%@page language="java" contentType="text/html"%>
<%@page session="true" import="java.util.List, my.ilya.BookShop"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title></title>
<meta charset="utf-8">
<style type="text/css" title="currentStyle">
@import "css/demo_page.css";

@import "css/demo_table.css";
</style>
<style>
</style>

<link href="css/le-frog/jquery-ui-1.10.4.custom.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">

<link href="css/jquery.dataTables.css" rel="stylesheet">
<link href="css/jquery.dataTables_themeroller.css" rel="stylesheet">

<script src="js/jquery.js" type="text/javascript" language="javascript"></script>

<script src="js/jquery.cookie.js" type="text/javascript" language="javascript"></script>
<script src="js/jquery.dataTables.js" type="text/javascript" language="javascript"></script>
<script src="js/bookshop.js" type="text/javascript" language="javascript"></script>


<script>
    $(document).ready(function() {

	$('#sumbit-button').click(function(event) {
	    var colorname = $('#colorname').val();
	    $.get('selectBeer.do', {
		color : colorname
	    }, function(responseText) {
		$("#result-div").html(responseText);
	    });
	});

    });
</script>
</head>

<body>

	<jsp:useBean id="bookShop" scope="session" class="my.ilya.BookShop" />
	<jsp:setProperty name="bookShop" property="*" />

	<div id="page_layout" style="width: 791px; height: 100%; margin: 0px auto; text-align: left"
		class="ui-tabs ui-widget ui-widget-content ui-corner-all">

		<div id="page_header" style="height: 100px; background-color: #3E633E"></div>


		<div id="side_bar" class="side-bar">
			<nav class="full-width">

				<a href="JSP/top-menu.jsp">Book Shop</a> <br /> <a href="#">Java EE</a> <br /> <a href="#">Java2S</a>

			</nav>

		</div>

		<div id="page_body" width="136px" style="float: left">

			<form id="beer-form">

				<h1>Beer Selection Page</h1>

				Select beer characteristics Color: <select id="colorname" name="color" size="1" class="ui-corner-all">

					<option>light</option>
					<option>dark</option>
					<option>amber</option>
					<option>brown</option>

				</select>

				<button id="sumbit-button" type="button"
					class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false">Submit</button>

				<div id="result-div"></div>
			</form>
		</div>
		<div id="welcometext"></div>
		<div id="footer_wrap"></div>



	</div>


</body>
</html>
