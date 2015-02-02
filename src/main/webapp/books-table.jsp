<%@page language="java" contentType="text/html"%>
<%@page session="true"  import="java.util.List, my.ilya.book.model.Book"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="bookShop" scope="session" class="my.ilya.book.model.Book" />
<jsp:setProperty name="bookShop" property="*" />

<table class="display" id="example">
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