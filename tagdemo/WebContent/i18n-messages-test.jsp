<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- init variable theLocale value: jesli not empty to czytaj param otherwise request -->
<c:set var="theLocale"
value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale }"
scope="session" />


<fmt:setLocale value="${theLocale}" />
<fmt:setBundle basename="com.pukolino.jsp.tagdemo.i18n.resources.mylabels" />

<html>
<body>
<a href="i18n-messages-test.jsp?theLocale=en_US">English (US)</a>

<a href="i18n-messages-test.jsp?theLocale=es_ES">Spanish (ES)</a>

<a href="i18n-messages-test.jsp?theLocale=de_DE">German (DE)</a>
<hr>

<br/><br/>

<fmt:message key="label.greeting" /> <br/><br/>
<fmt:message key="label.firstname" /> <i>Marcin</i> <br/>
<fmt:message key="label.lastname" /> <i>Puka</i> <br/>
<fmt:message key="label.welcome" /> <br/>

<hr>
Selected locale: ${theLocale}
</body>

</html>