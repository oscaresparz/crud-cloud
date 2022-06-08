<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@include file="WEB-INF/jspf/conectar.jspf" %>

<sql:update dataSource="${bd}" var="rs" >

    update Usuarios set sex=?, serv=?, depto=?, men=? where co=?;
    <sql:param value="${param.sex}" />
    <sql:param value="${param.serv}" />
    <sql:param value="${param.depto}" />
    <sql:param value="${param.men}" />
    <sql:param value="${param.co}" />

</sql:update>

<c:redirect url="mostrar.jsp" />