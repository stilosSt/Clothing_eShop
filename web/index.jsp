<%-- 
    Document   : index
    Created on : 12 Μαϊ 2018, 8:13:38 μμ
    Author     : stavros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ClothMan</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

    </head>

    <%

        if (session.getAttribute("id") != null) {

    %>

    <body>
        <%@include file="bar2.html" %>
        <%} else {%>

        <%@include file="bar.html" %>
        <%}%>
        
        <div class="container expand-md text-center" style="margin-top: 10%">
            
            <div>${data}</div>
            <div class="card-group">
                <div class="card">
                    <a href="shoes.jsp"><img class="card-img-top" style="width: 70%;margin-top: 19%;"src="img/shoes/ftw1.png" alt="Card image cap" ></a>
                    <div class="card-body">
                        <h5 class="card-title">Footwear</h5>
                    </div>
                </div>
                <div class="card">
                    <a href="hoodies.jsp"><img class="card-img-top mt-4" src="img/hoodies/hood1.png" alt="Card image cap" style="margin:0 auto;height:220px;width: 192px;"></a>
                    <div class="card-body">
                        <h5 class="card-title">Hoodies</h5>
                    </div>
                </div>
                <div class="card">
                    <a href="#"><img class="card-img-top mt-4" src="img/coats/coat.png" alt="Card image cap" style="margin:0 auto;height:220px;width: 192px;"></a>
                    <div class="card-body">
                        <h5 class="card-title">Jackets & Coats</h5>
                    </div>
                </div>
            </div>
        </div>  
        <div class="container text-center mt-2 mb-5">
            <div class="card-group">
                <div class="card">
                    <a href="#"><img class="card-img-top mt-4" src="img/shirts/shirt.png" alt="Card image cap" style="margin:0 auto;height:220px;width: 192px;"></a>
                    <div class="card-body">
                        <h5 class="card-title">Shirts</h5>
                    </div>
                </div>
                <div class="card">
                    <a href="#"><img class="card-img-top mt-4" src="img/tshirs/tshirt.png" alt="Card image cap" style="margin:0 auto;height:220px;width: 192px;"></a>
                    <div class="card-body">
                        <h5 class="card-title">T-Shirts</h5>
                    </div>
                </div>
                <div class="card">
                    <a href="#"><img class="card-img-top mt-4" src="img/trousers/trous.png" alt="Card image cap" style="margin:0 auto;height:220px;width:150px;"></a>
                    <div class="card-body">
                        <h5 class="card-title">Trousers & Chinos</h5>
                    </div>
                </div>
            </div>
        </div>  

        <%@include file="footer.html" %>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    </body>
</html>