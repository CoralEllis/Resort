<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pay.aspx.cs" Inherits="ex3.Pay" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="StyleResort.css" rel="stylesheet" />
    <title>Pament</title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
      <script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
    <form runat="server">
 <div class="div_up row">
            <a class="button_home col" href="Home.aspx">Home  <i class='fas fa-umbrella-beach' style='font-size: 35px'></i></a>
            <a class="button_home col" href="Gallery.aspx">Our Gallery   <i class='fas fa-camera' style='font-size: 35px'></i></a>
            <a class="button_pay col " href="Pay.aspx">Payment Page   <i class='fas fa-passport' style='font-size: 35px'></i></a>
            <a class="button_buy col" href="Buy.aspx">Book a Room   <i class='fas fa-luggage-cart' style='font-size: 35px'></i></a>
            <a class="button_order col" href="Orders.aspx">My Order   <i class='fas fa-glass-cheers' style='font-size: 35px'></i></a>
        </div>
     
            <h1>Make Your Dream Come True</h1>
            <h1>Payment Page</h1>

        <div class="row">
            <p id="hurry">Hurry up to book, there is a few rooms left!!!!</p>
            <img src="Images/oolsg-la-pointe-restaurant-interior-1.jpg" style="border-radius: 20%; height: 50%; width: 50%" />
        </div>
        <br />
          <h2 style="color: #1FBED6">Your Details</h2>
        <div  id="bookroom">
          
            <label>First Name:</label><input id="first_name" type="text" runat="server"/><br />
            <label>Last Name:</label><input id="last_name" type="text" runat="server"/><br />
            <label>Email:</label><input id="email" type="text" runat="server"/><br />
            <label>Phone:</label><input id="phone" type="tel" runat="server"/><br />
            <label>Passport Number:</label><input id="passport" type="number" runat="server"/><br />
            <label>Card Type:</label><select id="card_type" runat="server">
                <option>Master Card</option>
                <option>American</option>
                <option>Debit Card</option>
            </select><br />
            <label>Card Number</label><input id="card_num" type="number" runat="server" /><br /><br />
            <label id="price" type="number" runat="server">Your total Price to pay is:</label><br />
            <br />
          <button onserverclick="reserve_onclick" runat="server" >Im ready for my next adventure!</button>
        </div>
      
    </form>
</body>
</html>

