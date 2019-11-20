<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Users List</title>
        <link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
        <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
        <style>
            html,
            body {
                margin: 0;
                padding: 0;
                font-family: 'Montserrat';
                overflow-y: hidden;
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

            .content {
                padding: 25px 45px;
            }

            .link:hover {
                text-decoration: none;
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

            .content {
                padding: 15px;
            }

            .link:hover {
                text-decoration: none;
            }

            .button {
                color: #fff !important;
                text-transform: uppercase;
                text-decoration: none;
                background: rgb(31, 119, 208);
                padding: 20px;
                border-radius: 5px;
                display: inline-block;
                border: none;
                transition: all 0.4s ease 0s;
            }

            .button:hover {
                background: #434343;
                letter-spacing: 1px;
                -webkit-box-shadow: 0px 5px 40px -10px rgba(0, 0, 0, 0.57);
                -moz-box-shadow: 0px 5px 40px -10px rgba(0, 0, 0, 0.57);
                box-shadow: 5px 40px -10px rgba(0, 0, 0, 0.57);
                transition: all 0.4s ease 0s;
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
            .card-img{
                width: 100%;
                object-fit: cover;
            }
            .main-container {
                width: 100vw;
                height: 100vh;
                display: flex;
                justify-content: center;
                background-color: #f5f5f5;
                /* align-items: center; */
            }

            .list-container {
                font-family: 'sans-serif';
                margin-top: 40px;
                width: 700px;
                height: 500px;
                padding: 50px;
                background-color: white;
                box-shadow: 5px 5px 5px rgba(0, 0, 0, .05);
            }

            .list-container h1 {
                background-color: #7FD1B9;
                color: white;
                border-radius: 10px;
                padding: 5px;
                text-align: center;
            }

            .list-container table {
                margin: 0 auto;
            }

            .list-container table th {
                color: white;
                background-color: #5E2BFF;
            }

            .list-container table td,
            .list-container table th {
                padding: 10px;
                border: 1px solid rgba(0, 0, 0, .2);
            }
            .mb-3{
                margin-bottom: 1.5rem;
            }
                                .bnt-lang {
                border: none;
                background-color: rgba(0,0,0,.9);
                padding: 10px 20px;
                border-radius: 5px;
            }
                                .bnt-lang-ligth {
    background-color: 1F77D0;
    margin-right: 10px;
                    border: none;
                padding: 10px 20px;
                border-radius: 5px;
            }
            .bnt-lang a {
                color: white;
                text-decoration: none;
                font-weight: 700;
                font-size: 25px;
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
        <div class="generic-container">

            <sec:authorize access="hasRole('ADMIN')">
                <%@include file="authheader.jsp" %>	
                <div class="main-container">
                    <div class="list-container">
                        <h1><spring:message code="userslist.title"/></h1>
                        <table>
                            <thead>
                            <th><spring:message code="userslist.table.name"/></th>
                            <th><spring:message code="userslist.table.lastname"/></th>
                            <th><spring:message code="userslist.table.email"/></th>
                            </thead>
                            <tbody>
                                <c:forEach items="${users}" var="user">
                                    <tr>
                                        <td>${user.firstName}</td>
                                        <td>${user.lastName}</td>
                                        <td>${user.email}</td>
                                        <sec:authorize access="hasRole('ADMIN')">
                                            <td><a href="<c:url value='/delete-user-${user.ssoId}' />"
                                                   class="btn btn-danger custom-width"><spring:message code="userslist.delete"/></a></td>
                                            </sec:authorize>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <sec:authorize access="hasRole('ADMIN')">
                            <a href="<c:url value='/newuser' />" class="btn btn-primary"><spring:message code="userslist.createUser"/></a>
                        </sec:authorize>
                    </div>
                </div>
                <div class="well">
                    <a href="<c:url value='/newuser' />"><spring:message code="userslist.addUser"/></a>
                </div>
            </sec:authorize>
            <sec:authorize access="hasRole('DONANTE')">
                <div class="container-app">
                    <div class="sidebar">
                        <div>
                            <div class="logo">
                                <p><spring:message code="userslist.logo"/></p>
                            </div>
                            <div style="text-align:center;">
                                <img src="https://image.flaticon.com/icons/svg/149/149071.svg" style="width:35px">
                                <span>${loggedinuser}</span>
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
                                <span><spring:message code="userslist.navbar.createDonation"/></span>
                            </a>
                            <a href="./ultimasDonaciones" class="link">
                                <span><spring:message code="userslist.navbar.lastDonations"/></span>
                            </a>
                            <a href="<c:url value="/logout" />" class="link">
                                <span><spring:message code="userslist.navbar.logout"/></span>
                            </a>

                        </div>
                        <div class="content">
                            <div id="alertForm">

                            </div>
                            <h1 style="margin-bottom: 20px;font-weight: 700;"><spring:message code="userslist.donation.title"/></h1>

                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label for="objeto"><spring:message code="userslist.donation.name"/></label>
                                        <input type="text" class="form-control" id="objeto" placeholder="ej: ropa,comida" value=""
                                               name="objeto">
                                    </div>
                                    <div class="form-group">
                                        <label for="descripcion"><spring:message code="userslist.donation.description"/></label>
                                        <textarea class="form-control" value="" id="descripcion" rows="3"
                                                  name="descripcion"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="estado"><spring:message code="userslist.donation.state"/></label>
                                        <input type="text" class="form-control" id="estado" value="" name="estado"
                                               placeholder="ej: bueno, regular, roto">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleFormControlTextarea1"><spring:message code="userslist.donation.extraData"/></label>
                                        <input type="text" style="margin-bottom: 5px" class="form-control" id="donante"
                                               name="donante" value="" placeholder="Nombre Donante">
                                        <input type="text" style="margin-bottom: 5px" class="form-control" id="ciudad" name="ciudad"
                                               value="" placeholder="Ciudad">
                                        <input type="text" style="margin-bottom: 5px" class="form-control" id="direccion"
                                               name="direccion" value="" placeholder="Direccion de recogida">
                                    </div>


                                </div>
                                <div class="col-lg-6">
                                    <p><spring:message code="userslist.donation.uploadImage"/></p>
                                    <div style="text-align: center">
                                        <img src="https://h5p.org/sites/default/files/styles/medium-logo/public/logos/drag-and-drop-icon.png?itok=0dFV3ej6"
                                             alt="">
                                    </div>
                                    <div class="form-check">
                                        <label for="image"><spring:message code="userslist.donation.linkImage"/></label>
                                        <input type="text" class="form-control" id="image" placeholder="www.imagen.jpg" value="">
                                    </div>
                                    <div style="text-align: center;margin-top: 20px;">
                                        <button type="button" class="btn btn-primary" onclick="formPost()"><spring:message code="userslist.donation.create"/></button>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                                    </div>
                </div>
            </sec:authorize>
            <sec:authorize access="hasRole('FUNDACION')">
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
                                <span><spring:message code="page.home"/></span>
                            </a>
                            <a href="./estadoDonaciones" class="link">
                                <span><spring:message code="stateDonations.menu.state"/></span>
                            </a>

                            <a href="<c:url value="/logout" />" class="link">
                                <span><spring:message code="page.logout"/></span>
                            </a>

                        </div>
                        <div class="content">
                            <h1 style="margin-bottom: 20px;font-weight: 700;"><spring:message code="userslist.navbar.availableArticles"/></h1>
                            <div id="listDonations">

                            </div>
                            <div class="card mb-3" style="">
                                <div class="row no-gutters">
                                    <div class="col-md-4">
                                        <img src="https://ktm-shop.cl/spree/products/232/large/CHAQUETA_HOMBRE_KTM.jpg?1498763726"
                                             class="card-img" alt="...">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h5 class="card-title"><strong>Chaqueta Hombre</strong></h5>
                                            <p class="card-text">Chaqueta como nueva para hombre</p>
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item"><spring:message code="userslist.donation.name"/> Juan</li>
                                                <li class="list-group-item"><spring:message code="userslist.donation.description"/> Bogota</li>
                                                <li class="list-group-item"><spring:message code="userslist.donation.state"/> Disponible</li>
                                            </ul>
                                            <div class="card-body">
                                                <a href="#" class="card-link"><spring:message code="userslist.createdDonation.reserved"/></a>
                                            </div>
                                            <p class="card-text"><small class="text-muted"><spring:message code="userslist.createdDonation.updated"/></small></p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card mb-3" style="">
                                <div class="row no-gutters">
                                    <div class="col-md-4">
                                        <img src="https://unonueveocho.es/1369-tm_large_default/camisa-cierzo-cuadros.jpg" class="card-img"
                                             alt="...">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h5 class="card-title"><strong>Camisa Hombre</strong></h5>
                                            <p class="card-text">Camisa como nueva para hombre</p>
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item"><spring:message code="userslist.donation.name"/> Luis</li>
                                                <li class="list-group-item"><spring:message code="userslist.donation.description"/> Bogota</li>
                                                <li class="list-group-item"><spring:message code="userslist.donation.state"/> Disponible</li>
                                            </ul>
                                            <div class="card-body">
                                                <a href="#" class="card-link">Apartar Donacion</a>
                                            </div>
                                            <p class="card-text"><small class="text-muted"><spring:message code="userslist.createdDonation.updated"/></small></p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </sec:authorize>
        </div>
    </body>
    <script>
        addEventListener("load", async function () {
            const divContenedor = document.getElementById('listDonations')
            try {
                const response = await fetch('http://localhost:3031/api/donacion/allDonations');
                const data = await response.json()
                data.data.forEach(element => {
                    divContenedor.innerHTML += `          
             <div class="card mb-3" style="">
               <div class="row no-gutters">
                   <div class="col-md-12" id="alert-\${element.idDonacion}"></div>
                 <div class="col-md-4">
                   <img
                     src="\${element.image}"
                     class="card-img" alt="...">
                 </div>
                 <div class="col-md-8">
                   <div class="card-body">
                     <h5 class="card-title"><strong>\${element.objeto}</strong></h5>
                     <p class="card-text">\${element.descripcion}</p>
                     <ul class="list-group list-group-flush">
                       <li class="list-group-item">Donante: \${element.donante}</li>
                       <li class="list-group-item">Ciudad: \${element.ciudad}</li>
                       <li class="list-group-item">Estado: \${element.estado}</li>
                       <li class="list-group-item " style="border-left: 5px solid \${element.disponible ? 'green' : 'red'}">\${element.disponible ? 'Disponible' : 'No disponible'}</li>
                     </ul>
                     <div class="card-body">
                         <div class="button_cont" align="center">
                           <a class="button" onClick="changeState(\${element.idDonacion});" style="background: \${element.disponible ? 'rgb(31, 119, 208)' : 'red'}">Apartar Donacion</a>
                         </div>
                     </div>
                     <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                   </div>
                 </div>
               </div>
             </div>`
                });
                console.log(data)
                /*           var daString="<div id=\'block\' class=\'block\'><div class=\'block-2\'></div></div>";
                 var daParent=document.getElementById("the ID of whatever your parent is goes in here");
                 daParent.innerHTML=daString; */

            } catch (error) {
                console.log(error)
            }
        })
        async function changeState(idDonacion) {
            const contenedorAlerta = document.getElementById(`alert-\${idDonacion}`)
            console.log("el conteneder")
            console.log(contenedorAlerta)
            const response = await fetch('http://localhost:3031/api/donacion/changeState', {
                method: 'POST',
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(
                        {
                            "id": idDonacion
                        })
            });
            const data = await response.json()
            console.log(data)
            if (data.error) {
                contenedorAlerta.innerHTML += `          
                 <div class="alert">
                     <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                     <strong>Error!</strong> No se pudo cambiar el estado.
                 </div>`
            } else {
                contenedorAlerta.innerHTML += `          
                 <div class="alert" style="background-color: #4CAF50">
                     <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                     <strong>Completado!</strong> La donacion es tuya!!.
                 </div>`
            }
        }

        async function formPost() {
            const divContenedor = document.getElementById('alertForm')
            const objeto = document.getElementById('objeto').value
            const donante = document.getElementById('donante').value
            const estado = document.getElementById('estado').value
            const descripcion = document.getElementById('descripcion').value
            const direccion = document.getElementById('direccion').value
            const ciudad = document.getElementById('ciudad').value
            const image = document.getElementById('image').value
            try {
                const response = await fetch('http://localhost:3031/api/donacion/add', {
                    method: 'POST',
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify(
                            {
                                "objeto": objeto,
                                "donante": donante,
                                "estado": estado,
                                "descripcion": descripcion,
                                "direccion": direccion,
                                "ciudad": ciudad,
                                "image": image
                            })
                });
                const data = await response.json()
                console.log(data)
                if (data.error) {
                    divContenedor.innerHTML += `          
                       <div class="alert">
                           <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                           <strong>Error!</strong> No se pudo agregar la donacion.
                       </div>`
                } else {
                    divContenedor.innerHTML += `          
                       <div class="alert" style="background-color: #4CAF50">
                           <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                           <strong>Completado!</strong> Donacion Agregada.
                       </div>`
                }
                /*           var daString="<div id=\'block\' class=\'block\'><div class=\'block-2\'></div></div>";
                 var daParent=document.getElementById("the ID of whatever your parent is goes in here");
                 daParent.innerHTML=daString; */

            } catch (error) {
                console.log(error)
            }
        }
    </script>
</html>