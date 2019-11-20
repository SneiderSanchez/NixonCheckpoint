<%-- 
    Document   : crearDonante
    Created on : 31/08/2019, 08:51:36 PM
    Author     : pc
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <title>Ultimas Donaciones</title>

    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <style>
        html,
        body {
            margin: 0;
            padding: 0;
            font-family: 'Montserrat';
            overflow-y: hidden;
        }

        .titleDonations:after,
        .titleDonations:before {
            content: '';
            width: 10%;
            height: 2px;
            background: black;
            margin: 0 10px;
        }

        .titleDonations {

            display: flex;
            font-weight: 600;
            align-items: center;
            justify-content: center;
            font-size: 32px
        }

        .container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            grid-column-gap: 20%;
            padding: 0 5%;
        }

        .datos {
            /* border: 1px solid rgb(184, 171, 171); */
            width: 100%;
            height: 30vh;
            border-radius: 5%;
            box-shadow: rgb(184, 175, 184) 7px 14px 21px -3px;

        }

        .imagenData {


            width: 100%;
            height: 30vh;
        }

        .titleDonante {
            text-align: center;
            border-bottom: 1px solid rgb(184, 171, 171);
            margin-top: 0px;
            padding: 15px;
            font-size: 20px;

        }

        .informacionDonante {
            padding-left: 10px;
        }

        .content {
            padding: 25px 45px;
        }

        .container-app {
            display: grid;
            grid-template-columns: 220px 1fr;
            grid-template-rows: 100vh;
        }

        .sidebar {
            background: linear-gradient(to bottom, #1F77D0 0%, #533ce1 100%);
            color: white;
            background-size: 150% 150%;
        }

        .main {
            background-color: #f5f5f5;
            overflow-y: scroll;
        }

        .logo p {
            font-size: 25px;
            text-align: center;
            font-weight: 700;
            margin-top: 15px;
        }

        .list-sidebar {
            display: flex;
            flex-direction: column;
        }

        .list-sidebar a {
            /* border: 1px solid red; */
            margin: 5px;
            text-align: center;
            font-weight: 700;
            background-color: rgba(255, 255, 255, .09);
            padding: 15px 5px;
            text-transform: uppercase;
            border-radius: 5px;
            color: white;
        }

        .navbar {
            padding: 20px;
            background-color: white;
            display: flex;
            justify-content: flex-end;
        }

        .navbar a {
            color: gray;
            margin: 0 5px;
            padding: 5px;
            padding-bottom: 3px;
            font-weight: bold;
            /* border-bottom: 1px solid #1F77D0; */
        }
                                                    .bnt-lang-ligth {
    background-color: #1F77D0;
    margin-right: 10px;
                    border: none;
                padding: 10px 20px;
                border-radius: 5px;
            }
                  .bnt-lang-ligth a {
                color: white;
                text-decoration: none;
                font-weight: 700;
                font-size: 25px;
            }


    </style>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.4.3/css/flag-icon.min.css">
</head>

<body>
    <div class="container-app">
        <div class="sidebar">
            <div>
                <div class="logo">
                    <p>Donare</p>
                </div>
                <hr />
                <div class="list-sidebar">
                    <a href="">
                        <span><spring:message code="donations.leftMenu.first"/></span>
                    </a>
                    <a href="">
                        <span><spring:message code="donations.leftMenu.second"/></span>
                    </a>
                    <a href="">
                        <span><spring:message code="donations.leftMenu.third"/></span>
                    </a>
                    <a href="">
                        <span><spring:message code="donations.leftMenu.fourth"/></span>
                    </a>
                    <a href="">
                        <span><spring:message code="donations.leftMenu.fifth"/></span>
                    </a>
                    <a href="">
                        <span><spring:message code="donations.leftMenu.sixth"/></span>
                    </a>
                    <a href="">
                        <span><spring:message code="donations.leftMenu.seventh"/></span>
                    </a>
                </div>
            </div>
        </div>
        <div class="main">
               <div class="navbar" style="align-items: center;">
                                                                <button class="btn bnt-lang-ligth"><a href="?lang=es"> <span class="flag-icon flag-icon-co"></span> ES</a></button>
        <button class="btn bnt-lang-ligth"><a href="?lang=en"><span class="flag-icon flag-icon-us"></span> EN</a></button>
                <a href="./" class="link">
                    <span><spring:message code="donations.menu.create"/></span>
                </a>
                <a href="./ultimasDonaciones" class="link">
                    <span><spring:message code="donations.menu.firsTitle"/></span>
                </a>
                <a href="./logout" class="link">
                  <span><spring:message code="page.logout"/></span>
                </a>
            </div>
            <div class="content">
                <p class="titleDonations"><spring:message code="donations.menu.firsTitle"/></p>
                <div class="container">
                    <div class="datos">
                        <p class="titleDonante"><spring:message code="donations.menu.donorInfo"/></p>
                        <div class="informacionDonante" style="overflow:auto">
                            <p><strong>Nombre:</strong> Juan Alberto Perez</p>
                            <p><strong>Correo:</strong> ja@prueba.com: Pedro</p>
                            <p><strong>Ciudad:</strong> Bogota</p>
                        </div>
                    </div>
                    <div class="imagenData">
                        <img style="border-radius: 8%;"
                            src="https://images-i.jpimedia.uk/imagefetch/c_fill,f_auto,h_640,q_auto:eco,w_960/https://inews.co.uk/wp-content/uploads/2019/07/best-clothes-subscription-boxes.png"
                            width="100%" height="100%" />
                    </div>
                </div>
                <p class="titleDonations"><spring:message code="donations.menu.secondTitle"/></p>
                <div class="container">
                    <div class="imagenData">
                        <img style="border-radius: 8%;"
                            src="https://images-i.jpimedia.uk/imagefetch/c_fill,f_auto,h_640,q_auto:eco,w_960/https://inews.co.uk/wp-content/uploads/2019/07/best-clothes-subscription-boxes.png"
                            width="100%" height="100%" />
                    </div>
                    <div class="datos">
                        <p class="titleDonante"><spring:message code="donations.menu.donorInfo"/></p>
                        <div class="informacionDonante" style="overflow:auto">
                            <p><strong>Nombre:</strong> Juan Alberto Perez</p>
                            <p><strong>Correo:</strong> ja@prueba.com: Pedro</p>
                            <p><strong>Ciudad:</strong> Bogota</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>

</html>