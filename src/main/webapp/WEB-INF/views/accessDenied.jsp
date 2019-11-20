<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <title>Error</title>
        <style>
            .main-container {
                width: 100vw;
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                background-color: #eeeeee;
            }
            .container-error {
                padding: 10px;
                background-color: white;
                text-align: center;
                width: 500px;
                height: 550px;
                border-radius: 20px;
                box-shadow: 5px 5px 5px rgba(0, 0, 0, .2)
            }
            .container-error img {
                height: 350px;
                width: 350px;
            }
            .container-error h2 {
                font-family: 'sans-serif';
                color: #171717;
            }
            .container-error a {
                /* text-decoration: none; */
                color: #171717;
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
        <div class="main-container">
            <div class="container-error">
                <h2>${loggedinuser}, <spring:message code="accessDenied.title"/></h2>
                <img src="https://cdn0.iconfinder.com/data/icons/communication-4-2/98/170-512.png" alt="">
                <p>
                    <a href="./"><spring:message code="accessDenied.button"/></a>
                </p>
            </div>
        </div>
    </body>
</html>
</html>