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
        <title>Register</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

    </head>
    <%
        
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

        <div class="container mt-5">

            <div class="mt-5">${data}</div>
            <div class="card ml-auto mr-auto mt-5 w-50">
                <h1 class="card-title pt-3 text-center">User Registration</h1>
                <div class="card-body">
                    <form action="Register" method="post">
                        <div class="form-group">
                            <label for="usr">Username</label>
                            <input type="text" name="username" class="form-control" id="usr" placeholder="Username">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="ex@mple.com">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" name="pass1" class="form-control" id="pass1" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Confirm Password</label>
                            <input type="password" name="pass2" class="form-control" id="pass2" placeholder="Confirm Password">
                        </div>
                        <button id="reg" type="submit" class="btn btn-outline-info btn-block" name="register">Register</button>
                    </form>
                </div>
            </div>
        </div>
            
        <%@include file="footer.html" %>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    </body>
</html>
