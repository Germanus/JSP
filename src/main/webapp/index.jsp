<%@page language="java" contentType="text/html"%>
<html>
<head>
<title>
</title>
</head>
Book shop
<body background='graphics/background.jpg'>

<jsp:include page="top-menu.jsp" flush="true"/>

<jsp:useBean id="bs" scope="session" class="my.ilya.BookShop" />
<jsp:setProperty name="bs" property="*" />


<div style="width: 791px; margin: 0px auto; text-align: left">

<select >
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">49</option>
	<option value="5"><%= bs.getQuantity() %></option>
</select>

<label >Quantity:</label>
<input type="text" name="line" value=""  ></input>

</div>




</body></html>