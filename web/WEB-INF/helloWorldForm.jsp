<%-- 
    Document   : helloWorldForm
    Created on : 22-Sep-2022, 8:40:58 AM
    Author     : super
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!--****   Important line ^^^ ****-->

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello World</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form method="post" action="hello">
            First name: <input type="text" name="firstname" value="${firstname}"><br>
            Last name: <input type="text" name="lastname" value="${lastname}"><br>
            <input type="submit" value="Submit">
        </form>
            <c:if test="${invalid == true}">
            <h3>Invalid entry, please enter your first and last name</h3>
            </c:if>
    </body>
</html>
