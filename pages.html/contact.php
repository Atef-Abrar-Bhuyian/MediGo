<?php
session_start();
error_reporting(0);
include('dbconnect.php');

if(isset($_POST['Submit'])){
    $name=$_POST['name'];
    $e_mail=$_POST['email'];
    $subject=$_POST['subject'];
    $message=$_POST['message'];


    $query1=mysqli_query($con, "insert into help(name,email,subject,message) 
                                values ('$name','$e_mail','$subject','$message')" );
    if ($query1) { 
        echo "<script>alert('Employee Added Successfully');</script>";
        header('location:contact.php'); 
    }
    else{
    $msg="Something Went Wrong. Please try again.";
}
}
?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link rel="stylesheet" href="style.css">
    <title>Contact Us</title>
    <!--favicon-->
    <link rel="shortcut icon" type="image/png" href="../img/favicon/android-chrome-512x512.png" />
    <!--favicon end-->
</head>

    <style>
        .cbutton{
            font-size: 18px;
        font-weight: 600;
        padding: 15px 30px;
        color: #000;
        border: 0;
        margin-top: 20px;
        background-color: transparent;
        opacity: 0.6;
        cursor: pointer;
        }
    </style>

<body>
    <section id="header">
        <a href="#"><img src="../img/logo.png" class="logo" alt=""></a>
        <div>
            <ul id="navbar">
                <li><a href="index.php">Home</a></li>
                <li><a href="shop.php">Shop</a></li>
                <li><a href="about.php">About</a></li>
                <li><a class="active" href="contact.php">Contact</a></li>
                <li><a href="sorder.php">Special Order</a></li>
                <li><a href="login.php">Login</i></a></li>
                <li><a href="cart.php"><i class="fa fa-shopping-bag"></i></a></li>
                
            </ul>
        </div>

    </section>

    <section id="shop-header" class="about-header">
        <h2>Come visit our shop</h2>
        <span><button class="cbutton" onclick="window.location.href='#form-details';">Click here for any help</button></span>
    </section>

    <section id="contact-details" class="section-p1">
        <div class="details">
            <span>Get in Touch</span>
            <h2>Visit Our Shop</h2>
            <h3>Head Office</h3>
            <div>
                <li>
                    <i class="fal fa-map"></i>
                    <p>Shop no.3, GEC, Chittagong</p>
                </li>
                <li>
                    <i class="fal fa-envelope"></i>
                    <p>medigo@gmail.com</p>
                </li>

                
                <li>
                    <i class="fal fa-phone-alt"></i>
                    <p>+8801790175394</p>
                </li>
                <li>
                    <i class="fal fa-clock"></i>
                    <p>09.00am - 02.00am</p>
                </li>
            </div>
        </div>

        <div class="map">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3689.8564648226325!2d91.81998131486061!3d22.359047946410143!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30acd89aaa40f421%3A0x38194d9d0af5e070!2sThe%20Medicine%20Shoppe!5e0!3m2!1sen!2sbd!4v1665416617044!5m2!1sen!2sbd"
                width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </section>

    <section id="form-details">
        <form action="" method="post">
            <span>LEAVE A MESSAGE</span>
            <h2>We Love to Hear From You</h2>
            <input type="text" name='name' placeholder="Your Name">
            <input type="text" name='email' placeholder="Email">
            <input type="text" name='subject' placeholder="Subject">
            <textarea name="message" id="" cols="30" rows="10" placeholder="Your Message"></textarea>
            <button class="normal" name='Submit'>Submit</button>
        </form>


        <div class="people">
            <div>
                <img src="../img/doctors.jpg" alt="">
                <p><span>Dr. Mahfuz Hoq</span>Senior Doctor <br>Phone: 01845614568 <br>Email: mahfuzhoq11@gmail.com</p>
            </div>

            <div>
                <img src="../img/supplier.jpg" alt="">
                <p><span>Anis Uddin</span>Our Supplier <br>Phone: 01545893697 <br>Email: anis221@gmail.com</p>
            </div>

            <div>
                <img src="../img/seller.png" alt="">
                <p><span>Mannan Bhuiyan</span>Seller<br>Phone: 01744782591 <br>Email: bmannan123@gmail.com</p>
            </div>
        </div>
    </section>

   <?php
include('footer.php');
?>
    
</body>

</html>