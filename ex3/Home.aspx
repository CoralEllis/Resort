<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ex3.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <link href="StyleResort.css" rel="stylesheet" />
    <title>Welcome to Heaven</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
    <form>
        <div class="container-fluid">
        <div class="div_up row">
            <a class="button_home col" href="Home.aspx">Home  <i class='fas fa-umbrella-beach' style='font-size: 35px'></i></a>
            <a class="button_home col" href="Gallery.aspx">Our Gallery   <i class='fas fa-camera' style='font-size: 35px'></i></a>
            <a class="button_pay col " href="Pay.aspx">Payment Page   <i class='fas fa-passport' style='font-size: 35px'></i></a>
            <a class="button_buy col" href="Buy.aspx">Book a Room   <i class='fas fa-luggage-cart' style='font-size: 35px'></i></a>
            <a class="button_order col" href="Orders.aspx">My Order   <i class='fas fa-glass-cheers' style='font-size: 35px'></i></a>
        </div>
        <div class="div_mid_home">
        
            <h1>Welcome to Heaven - Dani & Adi Resort</h1>
           
            <div class="row">
            <img src="Images/MAIN.jpg" />
                </div>
            <br />
        </div>
        <div id="OurResort" class="row" runat="server">
            <div class="col-8">
                <img src="Images/oolsg-dream-today-travel-tomorrow.jpg" id="TravelTommorow" />
            </div>
            <div class="col-4 about">
                <h2>IGNITE YOUR SOUL</h2>
                <p>
                   Come and relax on our white sand beaches, explore inviting pools, and discover coral reefs<br />
                    alive with marine life at our legendary Mauritius hotel, we promise you a great vacation with all you need:<br />
                    spa, food, amazing pool, big rooms and even a lot of games for the kids! 
                </p>
            </div>
        </div>
</div>
    </form>
</body>

</html>
