<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MyBasket</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

    </head>

    <%

//        if (session.getAttribute("id") == null) {
//            response.sendRedirect("index.jsp");
//        }
    %>

    <body id="bd">
        <%@include file="bar2.html" %>

        <%
            if (session.getAttribute("id") != null) {

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clothman", "root", "");

                PreparedStatement prSt1 = con.prepareStatement("select sum(quantity),sum(price),sum(weight) from basket where user_id = ?");
                prSt1.setInt(1, (Integer) session.getAttribute("id"));
                ResultSet rs1 = prSt1.executeQuery();

                int items = 0;
                int discount = 0;
                double priceSum = 0.0;
                double weightSum = 0.0;

                while (rs1.next()) {
                    items = rs1.getInt(1);
                    priceSum = rs1.getDouble(2);
                    weightSum = rs1.getDouble(3);
                }

                rs1.close();
                prSt1.close();

                PreparedStatement prSt2 = con.prepareStatement("select weight from basket where user_id = ?");
                prSt2.setInt(1, (Integer) session.getAttribute("id"));
                ResultSet rs2 = prSt2.executeQuery();

                double shipping = 0;

                while (rs2.next()) {
                    shipping += 5 * rs2.getDouble(1);
                }

                double total = priceSum + shipping;
                if (total >= 100) {
                    discount = 10;
                    total = total - (10 / 100) * total;
                }

                rs2.close();
                prSt2.close();

        %>

        <div class="card bg-warning border-secondary mb-3 expand-md" style="width: 20%;position: fixed;right: 5%;margin-top: 3%;">
            <div class="card-body" >
                <div class="card-body content-justify-center">
                    <!--                    <form method = "post" action="Basket">                    -->
                    <h5 class="card-title text-center">ORDER SUMMARY</h5>
                    <div class="text-center">
                        <p id="items"><%=items%> items : <%=priceSum%>&euro;</p>
                        <p>Overall Weight : <%=weightSum%> Kg</p>
                        <p>Shipping Costs : <%=shipping%>&euro;</p>
                        <%if (discount == 10) {%><h5 style="color:#f44336">
                            <strong>Discount : <%=discount%>%</h5></strong><%}%>
                    </div>
                    <div class="text-center"><strong><h4>TOTAL : <%=total%>&euro;</h4></strong></div>
                    <button data-toggle="modal" data-target="#myModal" id="purchase" type="submit" class="btn btn-outline-info btn-block mt-3 " name="purchase">Continue purchase</button>
                    <!--</form>-->    
                </div>
            </div>
        </div>
        <%

            String query1 = "select i.id,i.title,i.type,b.price,b.size,i.img,b.quantity,b.weight,b.id from basket b "
                    + "inner join items i on b.item_id = i.id "
                    + "where b.user_id = ?";

            PreparedStatement prSt = con.prepareStatement(query1);

            prSt.setInt(1, (Integer) session.getAttribute("id"));

            ResultSet rs = prSt.executeQuery();

            if (!rs.next()) {

        %>

        <div class="container mt-5">
            <div>${data}</div>
            <div class="card ml-auto mr-auto text-center" style="margin-top: 15%;width: 30%;">
                <h5 id="empty" class="card-header text-center">Empty Basket</h5>
            </div>
        </div>
        <div class="w-100 mt-5" style="height: 150px;position:fixed;bottom:0;background: #343a4096"></div>
        <%    } else {

            rs.previous();

            while (rs.next()) {
                int item_id = rs.getInt(1);
                String title = rs.getString(2);
                String type = rs.getString(3);
                double price = rs.getDouble(4);
                String size = rs.getString(5);
                String img_id = rs.getString(6);
                int quantity = rs.getInt(7);
                double weight = rs.getDouble(8);
                int basket_id = rs.getInt(9);

        %>
        <div class="container mt-5">
            <div>${data}</div>
            <div class="card ml-auto mr-auto mt-5 w-50 text-center">
                <form method="post" action="UpdateBasket">
                    <img class="card-img-top" style="width: 40%;" src="<%=img_id%>" alt="Card image cap" >
                    <input class="id" type="hidden" name="id" value="<%=item_id%>">
                    <h5 class="card-header text-center"><%=title%></h5>
                    <input type="hidden" name="title" value="<%=title%>">
                    <input type="hidden" name="category" value="<%=type%>">
                    <input type="hidden" name="weight" value="<%=weight%>">
                    <input type="hidden" name="basket_id" value="<%=basket_id%>">
                    <div class="card-body">
                        <div class="form-group">
                            <h4 id="price"><%=price%>&euro;</h4>
                            <input type="hidden" name="price" value="<%=price%>">
                        </div>
                        <div class="row mb-2">
                            <div class="col"> 
                                <h5>Size</h5>
                                <select class="custom-select text-center mr-4" style="text-align-last: center" name="size">
                                    <%if (type.equals("Hoodies")) {
                                    %>
                                    <option selected><%=size%></option>
                                    <option value="S">S</option>
                                    <option value="M">M</option>
                                    <option value="L">L</option>
                                    <option value="XL">XL</option>
                                    <%} else {%>
                                    <option selected><%=size%></option>
                                    <option value="38">38</option>
                                    <option value="39">39</option>
                                    <option value="40">40</option>
                                    <option value="41">41</option>
                                    <option value="42">42</option>
                                    <option value="43">43</option>
                                    <option value="44">44</option>
                                    <%}%>
                                </select>
                            </div>
                            <div class="col"> 
                                <h5>Quantity</h5>
                                <div class="form-group text-center">
                                    <input type="number" class="form-control text-center" name="quantity" min="1" max="10" value="<%=quantity%>">
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-block btn-outline-success" value="update" name="act">Update</button>
                        <button type="submit" class="btn btn-block btn-outline-danger" value="delete" name="act">Delete</button>
                    </div>
                </form>
            </div>
        </div>

        <%}%>
        <div class="w-100" style="height: 186px;bottom:0;background: #343a4096;margin-top: 5%"></div>          
        <%}

            }%>


        <script type="text/javascript">


            document.querySelector("#purchase").addEventListener("click", function () {
                     
                var arr = document.getElementById("items").textContent.split(" ");
                if(arr[0] != "0"){
                    
                    var html = <%@include file="purchModal.html" %>;
                
                    document.getElementById("bd").insertAdjacentHTML('afterbegin', html);
                }
                else{
                
                    document.querySelector("#empty").style.background ="tomato";
                    document.querySelector("#empty").style.color ="white";
                }
            });
//            function call() {
//                var price = document.getElementById("price").textContent.split("&euro;");
//                document.getElementById("price").textContent = parseInt(price[0]) * parseInt(document.getElementById("qnt").value);
//            }

        </script>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    </body>
</html>
