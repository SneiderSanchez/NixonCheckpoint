<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html >

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  <link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet">
  </link>
  <link href="<c:url value='/static/css/app.css' />" rel="stylesheet">
  </link>
  <title>registration</title>
  <style>
              .bnt-lang {
                border: none;
                background-color: rgba(0,0,0,.9);
                padding: 10px 20px;
                border-radius: 5px;
            }
            .bnt-lang a {
                color: white;
                text-decoration: none;
                font-weight: 700;
                font-size: 25px;
            }
        </style>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.4.3/css/flag-icon.min.css">
</head>

<body>
    <%@include file="authheader.jsp" %>
  <div class="container">
      	
    <div id="signupbox" style=" margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
      <div class="panel panel-info">
        <div class="panel-heading">
          <div class="panel-title"><spring:message code="registration.mainTitle"/></div>
        </div>
        <div class="panel-body">

          <form:form method="POST" modelAttribute="user" class="form-horizontal">
            <form:input type="hidden" path="id" id="id" />

            <div class="row">
              <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="firstName"><spring:message code="registration.form.firstName"/></label>
                <div class="col-md-7">
                  <form:input type="text" path="firstName" id="firstName" class="form-control input-sm" />
                  <div class="has-error">
                    <form:errors path="firstName" class="help-inline" />
                  </div>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="lastName"><spring:message code="registration.form.lastName"/></label>
                <div class="col-md-7">
                  <form:input type="text" path="lastName" id="lastName" class="form-control input-sm" />
                  <div class="has-error">
                    <form:errors path="lastName" class="help-inline" />
                  </div>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="ssoId"><spring:message code="registration.form.userName"/></label>
                <div class="col-md-7">
                  <c:choose>
                    <c:when test="${edit}">
                      <form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" disabled="true" />
                    </c:when>
                    <c:otherwise>
                      <form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" />
                      <div class="has-error">
                        <form:errors path="ssoId" class="help-inline" />
                      </div>
                    </c:otherwise>
                  </c:choose>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="password"><spring:message code="registration.form.password"/></label>
                <div class="col-md-7">
                  <form:input type="password" path="password" id="password" class="form-control input-sm" />
                  <div class="has-error">
                    <form:errors path="password" class="help-inline" />
                  </div>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="email"><spring:message code="registration.form.email"/></label>
                <div class="col-md-7">
                  <form:input type="text" path="email" id="email" class="form-control input-sm" />
                  <div class="has-error">
                    <form:errors path="email" class="help-inline" />
                  </div>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="userProfiles"><spring:message code="registration.form.roles"/></label>
                <div class="col-md-7">
                  <form:select path="userProfiles" items="${roles}" multiple="true" itemValue="id" itemLabel="type"
                    class="form-control input-sm" />
                  <div class="has-error">
                    <form:errors path="userProfiles" class="help-inline" />
                  </div>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="form-actions floatRight">
                <c:choose>
                  <c:when test="${edit}">
                      <button type="submit" value="Register" class="btn btn-primary btn-sm" > <spring:message code="registration.form.submit"/></button> or <a
                      href="<c:url value='/list' />"><spring:message code="page.cancel"/></a>
                  </c:when>
                  <c:otherwise>
                      <button type="submit" value="Register" class="btn btn-primary btn-sm" > <spring:message code="registration.form.submit"/></button> or <a
                      href="<c:url value='/list' />"><spring:message code="page.cancel"/></a>
                  </c:otherwise>
                </c:choose>
              </div>
            </div>
          </form:form>
        </div>
      </div>
    </div>
  </div>
   
</body>

</html>