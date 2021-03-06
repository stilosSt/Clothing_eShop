<%-- 
    Document   : index
    Created on : 22 Απρ 2018, 9:03:18 μμ
    Author     : stavros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

    </head>

    <%
        String str = "Welcome!";
        
//        response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server 
//        response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance 
//        response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
//        response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility 
//
//        if (session.getAttribute("id") != null) {
//            response.sendRedirect("index.jsp");
//        }
    %>
    <body>

        <%@include file="bar.html" %>

        <div class="container mt-5" style="margin-top: 10%">

            <div class="mt-5">${data}</div>
            <div class="card ml-auto mr-auto mt-5 w-50">
                <h1 class="card-title pt-3 text-center">User Login</h1>
                <div class="card-body">
                    <form action="Login" method="post">
                        <div class="form-group">
                            <label for="usr">Username</label>
                            <input type="text" name="username" class="form-control" id="usr" placeholder="Username">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" name="pass" class="form-control" id="exampleInputPassword1" placeholder="Password">
                        </div>
                        <button id="lg" type="submit" class="btn btn-outline-info btn-block" name="login">Login</button>
                    </form>
                </div>
            </div>
        </div>

            
        <div class="w-100" style="height: 186px;bottom:0;background: #343a4096;margin-top: 15%"></div>          

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    </body>
</html>
