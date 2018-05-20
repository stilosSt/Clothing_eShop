<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ClothMan : Footwear</title>
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

        <div class="container expand-md text-center" style="margin-top: 7%">
            <div>${data}</div>
            <div class="card-group">
                <div class="card">
                    <img class="card-img-top ml-auto mr-auto" style="width: 70%;margin-top: 17%;"src="img/shoes/ftw1.png" alt="Card image cap" >
                    <div class="card-body mt-1">
                        <form method = "post" action="Basket">
                            <h5 name="title" class="card-title">firstPair</h5>
                            <input type="hidden" name="id" value="1">
                            <input type="hidden" name="type" value="shoes">
                            <h3>25.00&euro;</h3>
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
                            <button id="button" type="submit" class="btn btn-info btn-block mt-1" name="add">Add to Basket</button>
                        </form>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top ml-auto mr-auto" style="width: 70%;margin-top: 19%;"src="img/shoes/ftw2.png" alt="Card image cap" >
                    <div class="card-body mt-3">
                        <form method = "post" action="Basket">
                            <h5 name="title" class="card-title">secPair</h5>
                            <input type="hidden" name="id" value="2">
                            <input type="hidden" name="type" value="shoes">
                            <h3>35.00&euro;</h3>
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
                            <button id="button" type="submit" class="btn btn-info btn-block mt-1" name="add">Add to Basket</button>
                        </form>             
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top ml-auto mr-auto" style="width: 80%;margin-top: 15%;"src="img/shoes/ftw3.png" alt="Card image cap" >
                    <div class="card-body mt-4">
                        <form method = "post" action="Basket">
                            <h5 name="title" class="card-title">thirdPair</h5>
                            <input type="hidden" name="id" value="3">
                            <input type="hidden" name="type" value="shoes">
                            <h3>20.00&euro;</h3>
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
                            <button id="button" type="submit" class="btn btn-info btn-block mt-1" name="add">Add to Basket</button>
                        </form>                 
                    </div>
                </div>
            </div>
        </div>  
        <div class="container text-center mt-2 mb-5">
            <div class="card-group">
                <div class="card">
                    <img class="card-img-top ml-auto mr-auto" style="width: 70%;margin-top: 19%;"src="img/shoes/ftw4.png" alt="Card image cap" >
                    <div class="card-body mt-3">
                        <form method = "post" action="Basket">
                            <h5 name="title" class="card-title">fourthPair</h5>
                            <input type="hidden" name="id" value="4">
                            <input type="hidden" name="type" value="shoes">
                            <h3>45.00&euro;</h3>
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
                            <button id="button" type="submit" class="btn btn-info btn-block mt-1" name="add">Add to Basket</button>
                        </form>                
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top ml-auto mr-auto" style="width: 70%;margin-top: 19%;"src="img/shoes/ftw5.png" alt="Card image cap" >
                    <div class="card-body mt-3">
                        <form method = "post" action="Basket">
                            <h5 name="title" class="card-title">fifthPair</h5>
                            <input type="hidden" name="id" value="5">
                            <input type="hidden" name="type" value="shoes">
                            <h3>45.00&euro;</h3>
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
                            <button id="button" type="submit" class="btn btn-info btn-block mt-1" name="add">Add to Basket</button>
                        </form>           
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top ml-auto mr-auto" style="width: 70%;margin-top: 19%;"src="img/shoes/ftw6.png" alt="Card image cap" >
                    <div class="card-body mt-3">
                        <form method = "post" action="Basket">
                            <h5 name="title" class="card-title">sixthPair</h5>
                            <input type="hidden" name="id" value="6">
                            <input type="hidden" name="type" value="shoes">
                            <h3>48.00&euro;</h3>
                            <select class="custom-select" name="size" required>
                                <option value="">Select size</option>
                                <option value="38">38</option>
                                <option value="39">39</option>
                                <option value="40">40</option>
                                <option value="41">41</option>
                                <option value="42">42</option>
                                <option value="43">43</option>
                                <option value="44">44</option>
                            </select>
                            <button id="button" type="submit" class="btn btn-info btn-block mt-1" name="add">Add to basket</button>
                        </form>               
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
