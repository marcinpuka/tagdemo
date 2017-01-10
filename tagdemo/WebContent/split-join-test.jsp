<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<body>
<c:set var="data" value="Singapore,Tokyo,Mumbai,London"/>
<h3>Split demo</h3>

	<c:set var="citiesArray" value="${fn:split(data,',')}" />

	<c:forEach var="tempCity" items="${citiesArray}">
	${tempCity}<br/>
	</c:forEach>
	
<h3>Join Demo</h3>
	<c:set var="fun" value="${fn:join(citiesArray,'*')}" />
	
	Result of joining: ${fun}

</body>
</html>