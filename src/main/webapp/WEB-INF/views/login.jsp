<%-- 
    Document   : home
    Created on : 22/08/2019, 09:03:52 PM
    Author     : sala4
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>

    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Crear Donante</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <style>
            html,
            body * {
                box-sizing: border-box;
                font-family: 'Open Sans', sans-serif;
            }

            body {
                background: #232740
            }

            .container {
                width: 100%;
                margin-top: 8vh;

            }

            .frame {
                height: 575px;
                width: 430px;
                background:
                    linear-gradient(rgba(35, 43, 85, 0.75),
                    rgba(35, 43, 85, 0.95)),
                    url('https://images.unsplash.com/photo-1515705576963-95cad62945b6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80') no-repeat center center;
                background-size: cover;
                margin-left: auto;
                margin-right: auto;
                border-radius: 5px;
                box-shadow: 13px 7px 14px rgba(167, 159, 159, 0.29);
                overflow: hidden;
                transition: all .5s ease;
            }

            .frame-long {
                height: 850px;
            }

            .frame-short {
                height: 400px;
                margin-top: 50px;
                box-shadow: 0px 2px 7px rgba(0, 0, 0, 0.1);
            }

            .nav {
                width: 100%;
                height: 100px;
                padding-top: 40px;
                opacity: 1;
                transition: all .5s ease;
            }

            .nav-up {
                transform: translateY(-100px);
                opacity: 0;
            }

            li {
                padding-left: 10px;
                font-size: 18px;
                display: inline;
                text-align: left;
                text-transform: uppercase;
                padding-right: 10px;
                color: #ffffff;
            }

            .signin-active a {
                padding-bottom: 10px;
                color: #ffffff;
                text-decoration: none;
                border-bottom: solid 2px #1059FF;
                transition: all .25s ease;
                cursor: pointer;
            }

            .signin-inactive a {
                padding-bottom: 0;
                color: rgba(255, 255, 255, .3);
                text-decoration: none;
                border-bottom: none;
                cursor: pointer;
            }

            .signup-active a {
                cursor: pointer;
                color: #ffffff;
                text-decoration: none;
                border-bottom: solid 2px #1059FF;
                padding-bottom: 10px;
            }

            .signup-inactive a {
                cursor: pointer;
                color: rgba(255, 255, 255, .3);
                text-decoration: none;
                transition: all .25s ease;
            }

            .form-signin {
                width: 430px;
                height: 375px;
                font-size: 16px;
                font-weight: 300;
                padding-left: 37px;
                padding-right: 37px;
                padding-top: 55px;
                transition: opacity .5s ease, transform .5s ease;
            }

            .form-signin-left {
                transform: translateX(-400px);
                opacity: .0;
            }

            .form-signup {
                width: 430px;
                height: 3500px;
                font-size: 16px;
                font-weight: 300;
                padding-left: 37px;
                padding-right: 37px;

                position: relative;
                top: -375px;
                left: 400px;
                opacity: 0;
                transition: all .5s ease;
            }

            .form-signup-left {
                transform: translateX(-399px);
                opacity: 1;
            }

            .form-signup-down {
                top: 0px;
                opacity: 0;
            }

            .success {
                width: 80%;
                height: 150px;
                text-align: center;
                position: relative;
                top: -890px;
                left: 450px;
                opacity: .0;
                transition: all .8s .4s ease;
            }

            .success-left {
                transform: translateX(-406px);
                opacity: 1;
            }

            .successtext {
                color: #ffffff;
                font-size: 16px;
                font-weight: 300;
                margin-top: 10%;
                padding-left: 37px;
                padding-right: 37px;
            }

            #check path {
                stroke: #ffffff;
                stroke-linecap: round;
                stroke-linejoin: round;
                stroke-width: .85px;
                stroke-dasharray: 60px 300px;
                stroke-dashoffset: -166px;
                fill: rgba(255, 255, 255, .0);
                transition: stroke-dashoffset 2s ease .5s, fill 1.5s ease 1.0s;
            }

            #check.checked path {
                stroke-dashoffset: 33px;
                fill: rgba(255, 255, 255, .03);
            }

            .form-signin input,
            .form-signup input {
                color: #ffffff;
                font-size: 13px;
            }

            .form-styling {
                width: 100%;
                height: 35px;
                padding-left: 15px;
                border: none;
                border-radius: 20px;
                margin-bottom: 20px;
                background: rgba(255, 255, 255, .2);
            }

            label {
                font-weight: 400;
                text-transform: uppercase;
                font-size: 13px;
                padding-left: 15px;
                padding-bottom: 10px;
                color: rgba(255, 255, 255, .7);
                display: block;
            }

            :focus {
                outline: none;
            }

            .form-signin input:focus,
            textarea:focus,
            .form-signup input:focus,
            textarea:focus {
                background: rgba(255, 255, 255, .3);
                border: none;
                padding-right: 40px;
                transition: background .5s ease;
            }

            [type="checkbox"]:not(:checked),
            [type="checkbox"]:checked {
                position: absolute;
                display: none;
            }

            [type="checkbox"]:not(:checked)+label,
            [type="checkbox"]:checked+label {
                position: relative;
                padding-left: 85px;
                padding-top: 2px;
                cursor: pointer;
                margin-top: 8px;
            }

            [type="checkbox"]:not(:checked)+label:before,
            [type="checkbox"]:checked+label:before,
            [type="checkbox"]:not(:checked)+label:after,
            [type="checkbox"]:checked+label:after {
                content: '';
                position: absolute;
            }

            [type="checkbox"]:not(:checked)+label:before,
            [type="checkbox"]:checked+label:before {
                width: 65px;
                height: 30px;
                background: rgba(255, 255, 255, .2);
                border-radius: 15px;
                left: 0;
                top: -3px;
                transition: all .2s ease;
            }

            [type="checkbox"]:not(:checked)+label:after,
            [type="checkbox"]:checked+label:after {
                width: 10px;
                height: 10px;
                background: rgba(255, 255, 255, .7);
                border-radius: 50%;
                top: 7px;
                left: 10px;
                transition: all .2s ease;
            }

            /* on checked */
            [type="checkbox"]:checked+label:before {
                background: #0F4FE6;
            }

            [type="checkbox"]:checked+label:after {
                background: #ffffff;
                top: 7px;
                left: 45px;
            }

            [type="checkbox"]:checked+label .ui,
            [type="checkbox"]:not(:checked)+label .ui:before,
            [type="checkbox"]:checked+label .ui:after {
                position: absolute;
                left: 6px;
                width: 65px;
                border-radius: 15px;
                font-size: 14px;
                font-weight: bold;
                line-height: 22px;
                transition: all .2s ease;
            }

            [type="checkbox"]:not(:checked)+label .ui:before {
                content: "no";
                left: 32px;
                color: rgba(255, 255, 255, .7);
            }

            [type="checkbox"]:checked+label .ui:after {
                content: "yes";
                color: #ffffff;
            }

            [type="checkbox"]:focus+label:before {
                box-sizing: border-box;
                margin-top: -1px;
            }

            .btn-signup {
                float: left;
                font-weight: 700;
                text-transform: uppercase;
                font-size: 13px;
                text-align: center;
                color: #ffffff;
                padding-top: 8px;
                width: 100%;
                height: 35px;
                border: none;
                border-radius: 20px;
                margin-top: 23px;
                background-color: #1059FF;
            }

            .btn-signin {
                float: left;
                padding-top: 8px;
                width: 100%;
                height: 35px;
                border: none;
                border-radius: 20px;
                margin-top: -8px;
            }

            .btn-animate {
                float: left;
                font-weight: 700;
                text-transform: uppercase;
                font-size: 13px;
                text-align: center;
                color: rgba(255, 255, 255, 1);
                padding-top: 8px;
                width: 100%;
                height: 35px;
                border: none;
                border-radius: 20px;
                margin-top: 23px;
                background-color: rgba(16, 89, 255, 1);
                left: 0px;
                top: 0px;
                transition: all .5s ease, top .5s ease .5s, height .5s ease .5s, background-color .5s ease .75s;
            }

            .btn-animate-grow {
                width: 130%;
                height: 625px;
                position: relative;
                left: -55px;
                top: -420px;
                color: rgba(255, 255, 255, 0);
                background-color: rgba(255, 255, 255, 1);
            }

            a.btn-signup:hover,
            a.btn-signin:hover {
                cursor: pointer;
                background-color: #0F4FE6;
                transition: background-color .5s;
            }

            .forgot {
                height: 100px;
                width: 80%;
                margin-left: auto;
                margin-right: auto;
                text-align: center;
                padding-top: 24px;
                margin-top: -535px;
                border-top: solid 1px rgba(255, 255, 255, .3);
                transition: all 0.5s ease;
            }

            .forgot-left {
                transform: translateX(-400px);
                opacity: 0;
            }

            .forgot-fade {
                opacity: 0;
            }

            .forgot a {
                color: rgba(255, 255, 255, .3);
                font-weight: 400;
                font-size: 13px;
                text-decoration: none;
            }

            .welcome {
                width: 100%;
                height: 50px;
                position: relative;
                color: rgba(35, 43, 85, 0.75);
                opacity: 0;
                transition: transform 1.5s ease .25s, opacity .1s ease 1s;
            }

            .welcome-left {
                transform: translateY(-780px);
                opacity: 1;
            }

            .cover-photo {
                height: 150px;
                position: relative;
                left: 0px;
                top: -900px;
                background:
                    linear-gradient(rgba(35, 43, 85, 0.75),
                    rgba(35, 43, 85, 0.95)),
                    url(https://raw.githubusercontent.com/khadkamhn/day-01-login-form/master/img/bg.jpg);
                background-size: cover;
                opacity: 0;
                transition: all 1.5s ease 0.55s;
            }

            .cover-photo-down {
                top: -575px;
                opacity: 1;
            }

            .profile-photo {
                height: 125px;
                width: 125px;
                position: relative;
                border-radius: 70px;
                left: 155px;
                top: -1000px;
                background: url(https://raw.githubusercontent.com/khadkamhn/day-01-login-form/master/img/bg.jpg);
                background-size: 100% 135%;
                background-position: 100% 100%;
                opacity: 0;
                transition: top 1.5s ease 0.35s, opacity .75s ease .5s;
                border: solid 3px #ffffff;
            }

            .profile-photo-down {
                top: -636px;
                opacity: 1;
            }

            h1 {
                color: #ffffff;
                font-size: 35px;
                font-weight: 300;
                text-align: center;
            }

            .btn-goback {
                position: relative;
                margin-right: auto;
                top: -400px;
                float: left;
                padding: 8px;
                width: 83%;
                margin-left: 37px;
                margin-right: 37px;
                height: 35px;
                border-radius: 20px;
                font-weight: 700;
                text-transform: uppercase;
                font-size: 13px;
                text-align: center;
                color: #1059FF;
                margin-top: -8px;
                border: solid 1px #1059FF;
                opacity: 0;
                transition: top 1.5s ease 0.35s, opacity .75s ease .5s;
            }

            .btn-goback-up {
                top: -1080px;
                opacity: 1;
            }

            a.btn-goback:hover {
                cursor: pointer;
                background-color: #0F4FE6;
                transition: all .5s;
                color: #ffffff;
            }

            /* refresh button styling */

            #refresh {
                position: fixed;
                bottom: 20px;
                right: 20px;
                background-color: #ffffff;
                width: 50px;
                height: 50px;
                border-radius: 25px;
                box-shadow: 0px 2px 7px rgba(0, 0, 0, 0.1);
                padding: 13px 0 0 13px;
            }

            .refreshicon {
                fill: #d3d3d3;
                transform: rotate(0deg);
                transition: fill .25s ease, transform .25s ease;
            }

            .refreshicon:hover {
                cursor: pointer;
                fill: #1059FF;
                transform: rotate(180deg);
            }

            .registro {
                margin-left: 5vh
            }

            .inicio {
                margin-left: 4vh
            }
            .alert {
                padding: 20px;
                background-color: #f44336;
                color: white;
            }

            .closebtn {
                margin-left: 15px;
                color: white;
                font-weight: bold;
                float: right;
                font-size: 22px;
                line-height: 20px;
                cursor: pointer;
                transition: 0.3s;
            }

            .closebtn:hover {
                color: black;
            }
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
        <button class="btn bnt-lang"><a href="?lang=es"> <span class="flag-icon flag-icon-co"></span> ES</a></button>
        <button class="btn bnt-lang"><a href="?lang=en"><span class="flag-icon flag-icon-us"></span> EN</a></button>
        <div id="alertForm">

        </div>
        <div class="container">
            <div class="frame">
                <div class="nav">
                    <ul class="links">
                        <li class="inicio signin-active"><a class="btn"> <spring:message code="login.login"/> </a></li>
                    </ul>
                </div>
                <div ng-app ng-init="checked = false">
                    <c:url var="loginUrl" value="/login" />
                    <form action="${loginUrl}" method="post" class="form-horizontal form-signin">
                        <c:if test="${param.error != null}">
                            <div class="alert alert-danger">
                                <p><spring:message code="login.error"/></p>
                            </div>
                        </c:if>
                        <c:if test="${param.logout != null}">
                            <div class="alert alert-success">
                                <p><spring:message code="login.success"/></p>
                            </div>
                        </c:if>
                        <div class="input-group input-sm">
                            <label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>
                            <input type="text" class="form-control form-styling" id="username" name="ssoId" placeholder="Enter Username" required>
                        </div>
                        <div class="input-group input-sm">
                            <label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label> 
                            <input type="password" class="form-control form-styling" id="password" name="password" placeholder="Enter Password" required>
                        </div>
                        <div class="input-group input-sm">
                            <div class="checkbox">
                                <label><input type="checkbox" id="rememberme" name="remember-me"><spring:message code="login.remember"/></label>  
                            </div>
                        </div>
                        <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />

                        <div class="form-actions">
                            <button type="submit" value="Register" class="btn btn-block btn-primary btn-default btn-animate"> 
                                <spring:message code="login.button.submit"/>
                            </button>
                        </div>
                    </form>


                    <div class="form-signup" >
                        <label for="email"><spring:message code="login.name"/></label>
                        <input class="form-styling" placeholder="Nombre" id="nombre" name="nombre"></input>
                        <label for="email"><spring:message code="login.email"/></label>
                        <input class="form-styling" placeholder="Email" id="email" name="email"></input>
                        <label for="email"><spring:message code="login.pass"/></label>
                        <input class="form-styling" placeholder="contraseña" id="contraseña" name="contraseña"></input>
                        <label for="email"><spring:message code="login.contact"/></label>
                        <input class="form-styling" placeholder="Nombre del contacto" id="nombreContacto" name="nombreContacto"></input>
                        <label for="email"><spring:message code="login.cellphone"/></label>
                        <input class="form-styling" placeholder="Telefono del contacto" id="telefono" name="telefono"></input>
                        <label for="email"><spring:message code="login.description"/></label>
                        <input class="form-styling" placeholder="Descripcion del donante" id="descripcion" name="descripcion"></input>
                        <label for="email"><spring:message code="login.address"/></label>
                        <input class="form-styling" placeholder="Cra 1 No. 33-12" id="direccion" name="direccion"></input>
                        <label for="email"><spring:message code="login.city"/></label>
                        <input class="form-styling" placeholder="Ciudad" id="ciudad" name="ciudad"></input>
                        <a ng-click="checked = !checked" class="btn-signup" onclick="formPost()"><spring:message code="login.resgister"/></a>
                        <!-- <button class="btn-signin">Crear Donante</button> -->
                    </div>

                    <div class="success">
                        <img src="https://i.ibb.co/jTwjX9w/emoticon-square-smiling-face-with-closed-eyes.png" width="80"
                             style="margin-top: 40%;">
                        <div class="successtext">
                            <p><spring:message code="login.thanks"/></p>
                        </div>
                        <a href="./" style="text-decoration: none;color: #ffffff">Volver</a>

                    </div>
                </div>

                <div class="forgot">
                    <a href="#"><spring:message code="login.forgetPass"/></a>
                </div>
            </div>


        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script>
                            async function formPost() {
                            const divContenedor = document.getElementById('alertForm')
                                    const nombre = document.getElementById('nombre').value
                                    const email = document.getElementById('email').value
                                    const contraseÃ±a = document.getElementById('contraseÃ±a').value
                                    const telefono = document.getElementById('telefono').value
                                    const nombreContacto = document.getElementById('nombreContacto').value
                                    const direccion = document.getElementById('direccion').value
                                    const ciudad = document.getElementById('ciudad').value
                                    const descripcion = document.getElementById('descripcion').value
                                    try {
                                    const response = await fetch('http://localhost:3031/api/donante/add', {
                                    method: 'POST',
                                            headers: {
                                            'Accept': 'application/json',
                                                    'Content-Type': 'application/json'
                                            },
                                            body: JSON.stringify(
                                            {
                                            "nombre": nombre,
                                                    "email": email,
                                                    "contraseÃ±a": contraseÃ±a,
                                                    "nombreContacto": nombreContacto,
                                                    "direccion": direccion,
                                                    "ciudad": ciudad,
                                                    "descripcion": descripcion,
                                                    "telefono":telefono
                                            })
                                    });
                                    const data = await response.json()
                                            console.log(data)
                                            if (data.error) {
                                    divContenedor.innerHTML += `          
                        <div class="alert">
                            <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                            <strong>Error!</strong> No se pudo agregar el donante.
                        </div>`
                                    } else {
                                    divContenedor.innerHTML += `          
                        <div class="alert" style="background-color: #4CAF50">
                            <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                            <strong>Completado!</strong> Donante Agregado.
                        </div>`
                                            divContenedor.scrollIntoView({ behavior: 'smooth', block: 'center' });
                                    }
                                    /*           var daString="<div id=\'block\' class=\'block\'><div class=\'block-2\'></div></div>";
                                     var daParent=document.getElementById("the ID of whatever your parent is goes in here");
                                     daParent.innerHTML=daString; */

                                    } catch (error) {
                            console.log(error)
                            }
                            }
                            $(function () {
                            $(".btn").click(function () {
                            $(".form-signin").toggleClass("form-signin-left");
                            $(".form-signup").toggleClass("form-signup-left");
                            $(".frame").toggleClass("frame-long");
                            $(".signup-inactive").toggleClass("signup-active");
                            $(".signin-active").toggleClass("signin-inactive");
                            $(".forgot").toggleClass("forgot-left");
                            $(this).removeClass("idle").addClass("active");
                            });
                            });
                            $(function () {
                            $(".btn-signin").click(function () {
                            $(".btn-animate").toggleClass("btn-animate-grow");
                            $(".welcome").toggleClass("welcome-left");
                            $(".cover-photo").toggleClass("cover-photo-down");
                            $(".frame").toggleClass("frame-short");
                            $(".profile-photo").toggleClass("profile-photo-down");
                            $(".btn-goback").toggleClass("btn-goback-up");
                            $(".forgot").toggleClass("forgot-fade");
                            });
                            });
        </script>
    </body>

</html>