<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ClothMan : Hoodies</title>
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
                    <img class="card-img-top ml-auto mr-auto" style="width: 48%;margin-top: 14%;"src="img/hoodies/hood1.png" alt="Card image cap" >
                    <div class="card-body mt-3">
                        <form method = "post" action="Basket">
                            <h5 name="title" class="card-title">firstHoddie</h5>
                            <input type="hidden" name="id" value="7">
                            <input type="hidden" name="type" value="hoodies">
                            <h3>22.00&euro;</h3>
                            <select class="custom-select" name="size">
                                <option selected>Select size</option>
                                <option value="S">S</option>
                                <option value="M">M</option>
                                <option value="L">L</option>
                                <option value="XL">XL</option>
                            </select>
                            <button type="submit" class="btn btn-info btn-block mt-1" name="add">Add to Basket</button>
                        </form>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top ml-auto mr-auto" style="width: 48%;margin-top: 10%;"src="img/hoodies/hood2.png" alt="Card image cap" >
                    <div class="card-body mt-1">
                        <form method = "post" action="Basket">
                            <h5 name="title" class="card-title">secHoddie</h5>
                            <input type="hidden" name="id" value="8">
                            <input type="hidden" name="type" value="hoodies">
                            <h3>42.00&euro;</h3>
                            <select class="custom-select" name="size">
                                <option selected>Select size</option>
                                <option value="S">S</option>
                                <option value="M">M</option>
                                <option value="L">L</option>
                                <option value="XL">XL</option>
                            </select>
                            <button type="submit" class="btn btn-info btn-block mt-1" name="add">Add to Basket</button>
                        </form>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top ml-auto mr-auto" style="width: 48%;margin-top: 11%;"src="img/hoodies/hood3.png" alt="Card image cap" >
                    <div class="card-body mt-3">
                        <form method = "post" action="Basket">
                            <h5 name="title" class="card-title">fourthHoddie</h5>
                            <input type="hidden" name="id" value="9">
                            <input type="hidden" name="type" value="hoodies">
                            <h3>17.00&euro;</h3>
                            <select class="custom-select" name="size">
                                <option selected>Select size</option>
                                <option value="S">S</option>
                                <option value="M">M</option>
                                <option value="L">L</option>
                                <option value="XL">XL</option>
                            </select>
                            <button type="submit" class="btn btn-info btn-block mt-1" name="add">Add to Basket</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>  
        <div class="container text-center mt-2 mb-5">
            <div class="card-group">
                <div class="card">
                    <img class="card-img-top ml-auto mr-auto" style="width: 48%;margin-top: 8%;"src="img/hoodies/hood4.png" alt="Card image cap" >
                    <div class="card-body mt-3">
                        <form method = "post" action="Basket">
                            <h5 name="title" class="card-title">fourthHoddie</h5>
                            <input type="hidden" name="id" value="10">
                            <input type="hidden" name="type" value="hoodies">
                            <h3>18.00&euro;</h3>
                            <select class="custom-select" name="size">
                                <option selected>Select size</option>
                                <option value="S">S</option>
                                <option value="M">M</option>
                                <option value="L">L</option>
                                <option value="XL">XL</option>
                            </select>
                            <button type="submit" class="btn btn-info btn-block mt-1" name="add">Add to Basket</button>
                        </form> 
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top ml-auto mr-auto" style="width: 48%;margin-top: 10%;"src="img/hoodies/hood5.png" alt="Card image cap" >
                    <div class="card-body mt-3">
                        <form method = "post" action="Basket">
                            <h5 name="title" class="card-title">fifthHoddie</h5>
                            <input type="hidden" name="id" value="11">
                            <input type="hidden" name="type" value="hoodies">
                            <h3>26.00&euro;</h3>
                            <select class="custom-select" name="size">
                                <option selected>Select size</option>
                                <option value="S">S</option>
                                <option value="M">M</option>
                                <option value="L">L</option>
                                <option value="XL">XL</option>
                            </select>
                            <button type="submit" class="btn btn-info btn-block mt-1" name="add">Add to Basket</button>
                        </form>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top ml-auto mr-auto" style="width: 48%;margin-top: 8%;"src="img/hoodies/hood6.png" alt="Card image cap" >
                    <div class="card-body mt-3">
                        <form method = "post" action="Basket">
                            <h5 name="title" class="card-title">sixthHoddie</h5>
                            <input type="hidden" name="id" value="12">
                            <input type="hidden" name="type" value="hoodies">
                            <h3>23.00&euro;</h3>
                            <select class="custom-select" name="size">
                                <option selected>Select size</option>
                                <option value="S">S</option>
                                <option value="M">M</option>
                                <option value="L">L</option>
                                <option value="XL">XL</option>
                            </select>
                            <button type="submit" class="btn btn-info btn-block mt-1" name="add">Add to Basket</button>
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
