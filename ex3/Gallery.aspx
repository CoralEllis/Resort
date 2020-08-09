<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="ex3.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <link href="StyleResort.css" rel="stylesheet" />
    <title>Our Gallery</title>
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
      
                <h1 style="font-size:60px;">Take a Look Into Your Next Dream</h1>
                <br />
     
             <br />
             <br />
             <h1 style="color:lightseagreen">our rooms </h1>
            <div class="row">
                <div class="row">
                    <div class="col-4 rooms">
                        <img src="Images/balcany.PNG" />
                    </div>

                    <div class="col-4 rooms">
                        <img src="Images/oolsg-beach-front-suite-balcony-1-portrait.jpg" />
                    </div>
                      <div class="col-4 rooms">
                        <img src="Images/oceanroom.PNG" />
                    </div>
                </div>
                <div class="row">
        
                    <div class="col-3 rooms">
                        <img src="Images/oolsg-beach-front-suite-bedside-table-1-portrait.jpg" />
                    </div>
            
              
                    <div class="col-3 rooms">
                        <img src="Images/oolsg-two-bed-family-suite-bathroom-1.jpg" />
                    </div>
                    <div class="col-3 rooms">
                        <img src="Images/oolsg-two-bed-family-suite-livingroom-1.jpg" />
                    </div>
                    <div class="col-3 rooms">
                        <img src="Images/oolsg-villa-one-living-room-1.jpg" />
                    </div>
                </div>
     
                </div>
            <br />
            <br />
              <h1  style="color:lightseagreen">Our Dining room </h1>
            <div class="row">
              
                <div class="col-6 dining">
                    <img src="Images/DINING.PNG" />
                </div>
                <div class="col-6 dining">
                    <img src="Images/FOODROOM.PNG" />
                </div>
                </div>
                <div class="row">
                <div class="col-6 dining">
                    <img src="Images/oolsg-la-terrasse-kitchen-theatre-1.jpg" />
                </div>

                <div class="col-6 dining">
                    <img src="Images/oolsg-lartisan-presentation-table-with-chef-1.jpg" />
                </div>
                    </div>
                <div class="row">
                <div class="col-6 dining">
                    <img src="Images/oolsg-prime-exterior-garden-1.jpg" />
                </div>
                    </div>
            
        </div>
    </form>
</body>

</html>
