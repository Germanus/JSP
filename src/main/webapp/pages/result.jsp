<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page session="true" import="java.util.List, java.util.Iterator"%>

<br/>
<h1>Beer Recommendations:</h1>
<%
	List<String> styles = (List<String>) request.getAttribute("styles");
	Iterator<String> it = styles.iterator();
	while(it.hasNext()){
		out.print("<br> try: " + it.next());
	}
%>
