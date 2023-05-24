<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String pname =request.getParameter("pname");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "123456");
Statement st=conn.createStatement();
int i=st.executeUpdate("delete from ff3 where pname=('"+pname+"')");
out.println();

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
 %>
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,viewport-fit=cover">
    <title>Food Website</title>
    <link rel="stylesheet" href="index.css">
   <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

    <!-- desktop view -->
    <div class="container" id="container">
        <div id="menu">
            <div class="title">
                <img src="images/food logo.png" alt="">
            </div>
            <div class="menu-item">
                <a href="#">About</a>
                <a href="#">Services</a>
                <a href="or.html">Your Orders</a>
                <a href="cd.html">Wishlists</a>
                <a href="card.html">Cart</a>
                <a href="#">Contact</a>
                
            </div>
        </div>

        <div id="food-container">
            <div id="header">
                <div class="add-box">
                    <i class="fa fa-map-marker your-address" id="add-address"> Your Address</i>
                </div>
                <div class="util">
                    <i class="fa fa-search"> Search</i>
                    <i class="fa fa-tags"> Offers</i>
                    <i class="fa fa-cart-plus" id="cart-plus"> 0 Items</i>
                </div>
            </div>
            <div id="food-items" class="d-food-items">
                <div id="Madhya Pradhesh" class="d-Madhya Pradhesh">
                    <p id="category-name">Madhya Pradhesh</p>    
                </div>

                <div id="Uttar Pradhesh" class="d-Uttar Pradhesh">
                    <p id="category-name">Uttar Pradhesh</p>    
                </div>

                <div id="Gujarat" class="d-Gujarat">
                    <p id="category-name">Gujarat</p>
                </div>

                <div id="Rajasthan" class="d-Rajasthan">
                    <p id="category-name">Rajasthan</p> 
                </div>

                <div id="Punjab" class="d-Punjab">
                    <p id="category-name">Punjab</p> 
                </div>

                <div id="Goa" class="d-Goa">
                    <p id="category-name">Goa</p>
                </div>

                <div id="Bihar" class="d-Bihar">
                    <p id="category-name">Bihar</p>
                </div>

                <div id="Maharashtra" class="d-Maharashtra">
                    <p id="category-name">Maharashtra</p>
                </div>

                <div id="Assam" class="d-Assam">
                    <p id="category-name">Assam</p>
                </div>

                <div id="Haryana" class="d-Haryana">
                    <p id="category-name">Haryana</p>
                </div>

                <div id="Andhra Pradesh" class="d-Andhra Pradesh">
                    <p id="category-name">Andhra Pradesh</p>
                </div>

                <div id="Arunachal Pradesh" class="d-Arunachal Pradesh">
                    <p id="category-name">Arunachal Pradesh</p>
                </div>

                <div id="Chattisgarh" class="d-Chattisgarh">
                    <p id="category-name">Chattisgarh</p>
                </div>

                <div id="Himachal Pradesh" class="d-Himachal Pradesh">
                    <p id="category-name">Himachal Pradesh</p>
                </div>

                <div id="Jharkhand" class="d-Jharkhand">
                    <p id="category-name">Jharkhand</p>
                </div>
                <div id="Karnataka" class="d-Karnataka">
                    <p id="category-name">Karnataka</p>
                </div>
                <div id="Kerala" class="d-Kerala">
                    <p id="category-name">Kerala</p>
                </div>
                <div id="Manipur" class="d-Manipur">
                    <p id="category-name">Manipur</p>
                </div>
                <div id="Meghalaya" class="d-Meghalaya">
                    <p id="category-name">Meghalaya</p>
                </div>
                <div id="Mizoram" class="d-Mizoram">
                    <p id="category-name">Mizoram</p>
                </div>
                <div id="Nagaland" class="d-Nagaland">
                    <p id="category-name">Nagaland</p>
                </div>
                <div id="Odisha" class="d-Odisha">
                    <p id="category-name">Odisha</p>
                </div>
                <div id="Sikkim" class="d-Sikkim">
                    <p id="category-name">Sikkim</p>
                </div>
                <div id="Tamil Nadu" class="d-Tamil Nadu">
                    <p id="category-name">Tamil Nadu</p>
                </div>
                <div id="Telangana" class="d-Telangana">
                    <p id="category-name">Telangana</p>
                </div>
                <div id="Tripura" class="d-Tripura">
                    <p id="category-name">Tripura</p>
                </div>
                <div id="Uttarakhand" class="d-Uttarakhand">
                    <p id="category-name">Uttarakhand</p>
                </div>
                <div id="West Bengal" class="d-West Bengal">
                    <p id="category-name">West Bengal</p>
                </div>
                <div id="Jummu Kashmir" class="d-Jummu Kashmir">
                    <p id="category-name">Jummu Kashmir</p>
                </div>



               
                
                
                
            </div>

            <div id="cart-page" class="cart-toggle">
                <p id="cart-title">Cart Items</p>
                <p id="m-total-amount">Total Amout : 100</p>
                <table>
                    <thead>
                        <td>Item</td>
                        <td>Name</td>
                        <td>Quantity</td>
                        <td>Price</td>
                    </thead>
                    <tbody id="table-body">
                        
                    </tbody>
                </table>
                <div class="btn-box">
                    <a href="pay.html"><button class="cart-btn">Checkout</button></a>
                </div>
            </div>
        </div>

        <div id="cart">
            <div class="taste-header">
                <div class="user">
                    <a href="login.html"><i class="fa fa-user-circle" id="circle">Logout</i></a>
                    
                </div>
            </div>
            <div id="category-list">
                <p class="item-menu">States Of India</p>
                <div class="border"></div>                
            </div>
            <div id="checkout" class="cart-toggle">
                <p id="total-item">Total Item : 5</p>
                <p id="total-price"></p>
                <p id="delievery">Free delievery on $ 40</p>
                <button class="cart-btn">Checkout</button>
            </div>
        </div>
    </div>


    <!-- mobile view -->
    <div id="mobile-view" class="mobile-view">
        <div class="mobile-top">
            <div class="logo-box">
                <img src="images/food logo.png" alt="" id="logo">
                <i class="fa fa-map-marker your-address" id="m-add-address"> Your Address</i>
            </div>
            <div class="top-menu">
                <i class="fa fa-search"></i>
                <i class="fa fa-tag"></i>
                <i class="fa fa-heart-o"></i>
                <i class="fa fa-cart-plus" id="m-cart-plus"> 0</i>
            </div>
        </div>
        
        <div class="item-container">
            <div class="category-header" id="category-header">  
            </div>

            <div id="food-items" class="food-items">
                <div id="Madhya Pradhesh" class="m-Madhya Pradhesh">
                    <p id="category-name">Madhya Pradhesh</p>    
                </div>
                <div id="Uttar Pradhesh" class="m-Uttar Pradhesh">
                    <p id="category-name">Uttar Pradhesh</p>    
                </div>
                <div id="Gujarat" class="m-Gujarat">
                    <p id="category-name">Gujarat</p>
                </div>
                <div id="Rajasthan" class="m-Rajasthan">
                    <p id="category-name">Rajasthan</p> 
                </div>
                <div id="Punjab" class="m-Punjab">
                    <p id="category-name">Punjab</p> 
                </div>
                <div id="Goa" class="m-Goa">
                    <p id="category-name">Goa</p>
                </div>
                <div id="Bihar" class="m-Bihar">
                    <p id="category-name">Bihar</p>
                </div>
                <div id="Maharashtra" class="m-Maharashtra">
                    <p id="category-name">Maharashtra</p>
                </div>
                <div id="Assam" class="d-Assam">
                    <p id="category-name">Assam</p>
                </div>
                <div id="Haryana" class="d-Haryana">
                    <p id="category-name">Haryana</p>
                </div>
                <div id="Andhra Pradesh" class="d-Andhra Pradesh">
                    <p id="category-name">Andhra Pradesh</p>
                </div>
                <div id="Arunachal Pradesh" class="d-Arunachal Pradesh">
                    <p id="category-name">Arunachal Pradesh</p>
                </div>
                <div id="Chattisgarh" class="d-Chattisgarh">
                    <p id="category-name">Chattisgarh</p>
                </div>
                <div id="Himachal Pradesh" class="d-Himachal Pradesh">
                    <p id="category-name">Himachal Pradesh</p>
                </div>
                <div id="Jharkhand" class="d-Jharkhand">
                    <p id="category-name">Jharkhand/p>
                </div>
                <div id="Karnataka" class="d-Karnataka">
                    <p id="category-name">Karnataka/p>
                </div>
                <div id="Kerala" class="d-Kerala">
                    <p id="category-name">Kerala/p>
                </div>
                <div id="Manipur" class="d-Manipur">
                    <p id="category-name">Manipur/p>
                </div>
                <div id="Meghalaya" class="d-Meghalaya">
                    <p id="category-name">Meghalaya/p>
                </div>
                <div id="Mizoram" class="d-Mizoram">
                    <p id="category-name">Mizoram/p>
                </div>
                <div id="Nagaland" class="d-Nagaland">
                    <p id="category-name">Nagaland/p>
                </div>
                <div id="Odisha" class="d-Odisha">
                    <p id="category-name">Odisha/p>
                </div>
                <div id="Sikkim" class="d-Sikkim">
                    <p id="category-name">Sikkim/p>
                </div>
                <div id="Tamil Nadu" class="d-Tamil Nadu">
                    <p id="category-name">Tamil Nadu/p>
                </div>
                <div id="Telangana" class="d-Telangana">
                    <p id="category-name">Talangana/p>
                </div>
                <div id="Tripura" class="d-Tripura">
                    <p id="category-name">Tripura/p>
                </div>
                <div id="Uttarakhand" class="d-Uttarakhand">
                    <p id="category-name">Uttarakhand/p>
                </div>
                <div id="West Bengal" class="d-West Bengal">
                    <p id="category-name">West Bengal/p>
                </div>
                <div id="Jummu Kashmir" class="d-Jummu Kashmir">
                    <p id="category-name">Jummu Kashmir/p>
                </div>
                
                
                
                
            </div>            
        </div>

        <div class="mobile-footer">
            <p>Home</p>
            <p>Cart</p>
            <p>offers</p>
            <p>orders</p>
        </div>
    </div>
    <script src="index.js" type="module"></script>
</body>
</html>
