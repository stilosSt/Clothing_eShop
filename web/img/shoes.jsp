<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ClothMan</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

    </head>

    <%
        String str = "Welcome!";

//        response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server 
//        response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance 
//        response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
//        response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility 
//        
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
                        <form method = "post" action="Basket">
                            <h5 name="title" class="card-title">Whitehall Mid Junior</h5>
                            <input type="hidden" name="title" value="Whitehall Mid Junior">
                            <h3>25&euro;</h3>
                            <input type="hidden" name="value" value="25">
                            <input type="hidden" name="category" value="shoes">
                            <input type="hidden" name="quantity" value="1">
                            <input type="hidden" name="weight" value="0.5">
                            <select class="custom-select" name="size">
                                <option selected>Select size</option>
                                <option value="38">38</option>
                                <option value="39">39</option>
                                <option value="40">40</option>
                                <option value="41">41</option>
                                <option value="42">42</option>
                                <option value="43">43</option>
                                <option value="44">44</option>
                            </select>
                            <button value="img/shoes/ftw1.png" type="submit" class="btn btn-info btn-block mt-1" name="add">Add to Basket</button>
                        </form>
                    </div>
                </div>
                <div class="card">
                    <a href="shoes.jsp"><img class="card-img-top" style="width: 70%;margin-top: 19%;"src="img/shoes/ftw2.png" alt="Card image cap" ></a>
                    <div class="card-body mt-3">
                        <form method = "post" action="Basket">
                            <h5 name="title" class="card-title">Whitehall Mid Boot</h5>
                            <input type="hidden" name="title" value="Whitehall Mid Junior">
                            <h3>35&euro;</h3>
                            <input type="hidden" name="value" value="35">
                            <input type="hidden" name="category" value="shoes">
                            <input type="hidden" name="quantity" value="1">
                            <input type="hidden" name="weight" value="0.7">
                            <select class="custom-select" name="size">
                                <option selected>Select size</option>
                                <option value="38">38</option>
                                <option value="39">39</option>
                                <option value="40">40</option>
                                <option value="41">41</option>
                                <option value="42">42</option>
                                <option value="43">43</option>
                                <option value="44">44</option>
                            </select>
                            <button value="img/shoes/ftw2.png" type="submit" class="btn btn-info btn-block mt-1" name="add">Add to Basket</button>
                        </form>             
                    </div>
                </div>
                <div class="card">
                    <a href="shoes.jsp"><img class="card-img-top" style="width: 70%;margin-top: 20%;"src="img/shoes/ftw3.png" alt="Card image cap" ></a>
                    <div class="card-body mt-4">
                        <form method = "post" action="Basket">
                            <h5 name="title" class="card-title">Whitehall Mid Junior</h5>
                            <input type="hidden" name="title" value="Whitehall Mid Junior">
                            <h3>25&euro;</h3>
                            <input type="hidden" name="value" value="25">
                            <input type="hidden" name="category" value="shoes">
                            <input type="hidden" name="quantity" value="1">
                            <input type="hidden" name="weight" value="0.8">
                            <select class="custom-select" name="size">
                                <option selected>Select size</option>
                                <option value="38">38</option>
                                <option value="39">39</option>
                                <option value="40">40</option>
                                <option value="41">41</option>
                                <option value="42">42</option>
                                <option value="43">43</option>
                                <option value="44">44</option>
                            </select>
                            <button value="img/shoes/ftw3.png" type="submit" class="btn btn-info btn-block mt-1" name="add">Add to Basket</button>
                        </form>                 
                    </div>
                </div>
            </div>
        </div>  
        <div class="container text-center mt-2 mb-5">
            <div class="card-group">
                <div class="card">
                    <a href="shoes.jsp"><img class="card-img-top" style="width: 70%;margin-top: 19%;"src="img/shoes/ftw4.png" alt="Card image cap" ></a>
                    <div class="card-body mt-3">
                        <form method = "post" action="Basket">
                            <h5 name="title" class="card-title">Whitehall Mid Junior</h5>
                            <input type="hidden" name="title" value="Whitehall Mid Junior">
                            <h3>25&euro;</h3>
                            <input type="hidden" name="value" value="25">
                            <input type="hidden" name="category" value="shoes">
                            <input type="hidden" name="quantity" value="1">
                            <input type="hidden" name="weight" value="0.9">
                            <select class="custom-select" name="size">
                                <option selected>Select size</option>
                                <option value="38">38</option>
                                <option value="39">39</option>
                                <option value="40">40</option>
                                <option value="41">41</option>
                                <option value="42">42</option>
                                <option value="43">43</option>
                                <option value="44">44</option>
                            </select>
                            <button value="img/shoes/ftw4.png" type="submit" class="btn btn-info btn-block mt-1" name="add">Add to Basket</button>
                        </form>                
                    </div>
                </div>
                <div class="card">
                    <a href="shoes.jsp"><img class="card-img-top" style="width: 70%;margin-top: 19%;"src="img/shoes/ftw5.png" alt="Card image cap" ></a>
                    <div class="card-body mt-3">
                        <form method = "post" action="Basket">
                            <h5 name="title" class="card-title">Whitehall Mid Junior</h5>
                            <input type="hidden" name="title" value="Whitehall Mid Junior">
                            <h3>25&euro;</h3>
                            <input type="hidden" name="value" value="25">
                            <input type="hidden" name="category" value="shoes">
                            <input type="hidden" name="quantity" value="1">
                            <input type="hidden" name="weight" value="1">
                            <select class="custom-select" name="size">
                                <option selected>Select size</option>
                                <option value="38">38</option>
                                <option value="39">39</option>
                                <option value="40">40</option>
                                <option value="41">41</option>
                                <option value="42">42</option>
                                <option value="43">43</option>
                                <option value="44">44</option>
                            </select>
                            <button value="img/shoes/ftw5.png" type="submit" class="btn btn-info btn-block mt-1" name="add">Add to Basket</button>
                        </form>           
                    </div>
                </div>
                <div class="card">
                    <a href="shoes.jsp"><img class="card-img-top" style="width: 70%;margin-top: 19%;"src="img/shoes/ftw6.png" alt="Card image cap" ></a>
                    <div class="card-body mt-3">
                        <form method = "post" action="Basket">
                            <h5 name="title" class="card-title">Whitehall Mid Junior</h5>
                            <input type="hidden" name="title" value="Whitehall Mid Junior">
                            <h3>65&euro;</h3>
                            <input type="hidden" name="value" value="65">
                            <input type="hidden" name="category" value="shoes">
                            <input type="hidden" name="quantity" value="1">
                            <input type="hidden" name="weight" value="0.6">
                            <select class="custom-select" name="size">
                                <option selected>Select size</option>
                                <option value="38">38</option>
                                <option value="39">39</option>
                                <option value="40">40</option>
                                <option value="41">41</option>
                                <option value="42">42</option>
                                <option value="43">43</option>
                                <option value="44">44</option>
                            </select>
                            <button value="img/shoes/ftw6.png" type="submit" class="btn btn-info btn-block mt-1" name="add">Add to basket</button>
                        </form>               
                    </div>
                </div>
            </div>
        </div>  
        <!--        <script type="text/javascript">
        
                    document.querySelector('#lg').addEventListener('click', function () {
                        location.href = "login.jsp";
                    });
        
                    document.querySelector("#reg").addEventListener('click', function () {
                        location.href = "register.jsp";
                    });
        
                </script>-->
        <%@include file="footer.html" %>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    </body>
</html>
