<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.*, com.pukolino.jsp.tagdemo.Student" %>

<%
 // just create some sample data ... normally provided by MVS 
 List<Student> data = new ArrayList<Student>();
 
 data.add(new Student("John", "Doe", false));
 data.add(new Student("Maxwell", "Johnson", false));
 data.add(new Student("Bugs", "Bunny", true));
 
 pageContext.setAttribute("myStudents", data);
%>

<html>
<body>
	<!-- CREATE TABLE -->
	<table border="1">
	<!-- TABLE ROW -->
	<tr>
		<!-- TABLE HEADER -->
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gold Customer</th>
		
	</tr>
	<c:forEach var="tempStudent" items="${myStudents }">
	<!-- TABLE ROW -->
	<tr>
	<!-- TABLE DATA -->
	<td> ${tempStudent.firstName} </td>
	<td> ${tempStudent.lastName} </td> 
	<td> 
		<c:choose>
		<c:when test="${tempStudent.goldCustomer}" > 
			Special Discount
		</c:when>	
		<c:otherwise>
			---
		</c:otherwise>	
		</c:choose>
	</td>
	</tr>
	</c:forEach>
	</table>
</body>

</html>