<%-- 
    Document   : helloWorldForm
    Created on : 22-Sep-2022, 8:40:58 AM
    Author     : super
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello World</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form method="post" action="hello">
            First name: <input type="text" name="firstname"><br>
            Last name: <input type="text" name="lastname"><br>
            <input type="submit" value="Submit">
            
        </form>
    </body>
</html>
