<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buy.aspx.cs" Inherits="ex3.Buy" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        .button_buy:visited {
            background-color: green;
        }
    </style>
    <link href="StyleResort.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    <title>Book a room</title>

    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="div_up row">
                <a class="button_home col" href="Home.aspx">Home  <i class='fas fa-umbrella-beach' style='font-size: 35px'></i></a>
                <a class="button_home col" href="Gallery.aspx">Our Gallery   <i class='fas fa-camera' style='font-size: 35px'></i></a>
                <a class="button_pay col " href="Pay.aspx">Payment Page   <i class='fas fa-passport' style='font-size: 35px'></i></a>
                <a class="button_buy col" href="Buy.aspx">Book a Room   <i class='fas fa-luggage-cart' style='font-size: 35px'></i></a>
                <a class="button_order col" href="Orders.aspx">My Order   <i class='fas fa-glass-cheers' style='font-size: 35px'></i></a>
            </div>

            <h1>Make Your Dream Come True</h1>
            <h1>Book A Room Now!</h1>

            <div class="row">
                <p id="hurry">Hurry up to book, there is a few rooms left!!!!</p>
                <img src="Images/oolsg-ocean-suite-terrace-hammock-1.jpg" style="border-radius: 20%; height: 50%; width: 50%" />
            </div>
            <br />
            <h2 style="color: #1FBED6; text-align: center">Book a Room</h2>
            <div id="bookroom">
                <label>Start Date</label>
                <input type="date" id='Start_date' runat="server" />
         
                <label>    End Date</label>
                <input type="date" id='End_date' runat="server" />
                <label>Number of guests</label>
                <select id="num_of_guests" runat="server">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                </select>
                <label>   Room Type</label>
                <select id="roomtype" runat="server">
                    <option value="suite">suite</option>
                    <option value="standard" selected="selected">standard</option>
                    <option value="duplex">duplex</option>
                </select>


                <%-- <asp:Button OnClick="Order_my_vication_onclick" runat="server" Text="Order my vication"/>--%>
                <button id="order_btn" onserverclick="Order_my_vication_onclick" runat="server">Order My Vacay!</button>

            </div>
        </div>
    </form>
</body>
</html>
