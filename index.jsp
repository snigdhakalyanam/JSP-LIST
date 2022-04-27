<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.io.*,java.util.*,java.sql.*"%> 
  
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
        <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4> Hello Snigdha</h4>
	<% String name=request.getParameter("name"); 
		out.print(name);
	
	%>
	${name} 
	
	<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/ecommerce"
	user="root" password="0"/>
	
	
<sql:query var="rs" dataSource="${db}"> SELECT * FROM EPRODUCT</sql:query>
	<c:forEach items="${rs.rows}" var="product">
	<c:out value="${product.ID}"></c:out> &nbsp;&nbsp;&nbsp;
		<c:out value="${product.name}"></c:out> &nbsp;&nbsp;&nbsp;
		<c:out value="${product.price}"></c:out> &nbsp;&nbsp;&nbsp;
		<c:out value="${product.date_added}"></c:out> &nbsp;&nbsp;&nbsp;
		</c:forEach>
	<br>
	
</body>
</html>