<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@include file="WEB-INF/jspf/conectar.jspf" %>

<c:set var="action" value="${param.action}" />
<c:choose>

    <c:when test="${action==2}">

        <sql:update dataSource="${bd}" var="rs">

            delete from Usuarios where co=?;
            <sql:param value="${param.co}"/>

        </sql:update>

    </c:when>

</c:choose>

<c:redirect url="mostrar.jsp" />