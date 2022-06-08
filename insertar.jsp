<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@include file="WEB-INF/jspf/conectar.jspf" %>

<c:set var="action" value="${param.action}"/>
<sql:query dataSource="${bd}" var="rs">
    select count(*) as contador from Usuarios WHERE co=?
    <sql:param value="${param.co}" />
</sql:query>

<c:forEach var="v" items="${rs.rows}">

    <c:if test="${v.contador == 0}">

        <c:catch var="errorSql">

            <sql:update dataSource="${bd}" var="rs">

                insert into Usuarios values (?,?, ?, ?, ?);
                <sql:param value="${param.co}" />
                <sql:param value="${param.sex}" />
                <sql:param value="${param.serv}" />
                <sql:param value="${param.depto}" />
                <sql:param value="${param.men}" />

            </sql:update>

        </c:catch>
        <c:if test="${errorSql==null}">
            <c:redirect url="mostrar.jsp" />
        </c:if>

    </c:if>

</c:forEach>
<c:out value="${errorSql.getMessage()}" />
<h2>La solicitud ya fue realizada.</h2>
<h3>* <a href="mostrar.jsp">Regresar</a></h3>