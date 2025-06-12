<%@page import="entity.student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


 <% 
 student s;
 HttpSession st= request.getSession();
 

 
 
 
 st.removeAttribute("id");
 
 
	 
 if(st.getAttribute("id")== null){
	 response.sendRedirect("index.jsp");
	 return;
 }
 
 
        %>



</body>
</html>