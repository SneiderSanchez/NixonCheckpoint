<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="authbar">
                    
        <button class="btn bnt-lang"><a href="?lang=es"> <span class="flag-icon flag-icon-co"></span> ES</a></button>
        <button class="btn bnt-lang"><a href="?lang=en"><span class="flag-icon flag-icon-us"></span> EN</a></button>
		<h4><spring:message code="authheader.title"/>  <strong>${loggedinuser}</strong></h4> 
                <span style="float:right"><button class="btn-danger"> <a style="color: white" href="<c:url value="/logout" />"><spring:message code="page.logout"/> </a></button></span>
	</div>
