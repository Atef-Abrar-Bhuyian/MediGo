<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link rel="stylesheet" href="style.css">
    <title>About us</title>
    <!--favicon-->
    <link rel="shortcut icon" type="image/png" href="../img/favicon/android-chrome-512x512.png"/>
    <!--favicon end-->
</head>

<body>
    <section id="header">
        <a href="#"><img src="../img/logo.png" class="logo" alt=""></a>
        <div>
            <ul id="navbar">
                <li><a href="index.php">Home</a></li>
                <li><a href="shop.php">Shop</a></li>
                <li><a class="active" href="about.php">About</a></li>
                <li><a href="contact.php">Contact</a></li>
                <li><a href="sorder.php">Special Order</a></li>
                <li><a href="login.php">Login</i></a></li>
                <li><a href="cart.php"><i class="fa fa-shopping-bag"></i></a></li>
            </ul>
        </div>

    </section>

    <section id="shop-header">
        <h2>About Medigo</h2>
    </section>

    <section id="about-head" class="section-p1">
        <img src="../img/banner/who we are.png" alt="">
        <div>
            <h2>Who We Are?</h2>
            <p>MediGO provides the best pharmacy 
                solution online. We are focused on getting 
                you the healthcare support & help you need so that 
                you can enjoy your best health. Find your required 
                medications at MediGo.
            </p>
            <h3>Online Pharmacy</h3>
            <p>
                Our online model pharmacy can be accessed easily through our website and apps available on Google Play Store and Apple App Store.
                Our medicine inventories are directly supplied form the largest pharmaceutical companies.The model pharmacies are supervised by 
                A Category Pharmacists who ensures the best service for our customers.
            </p>
            <br>
            <marquee bgcolor="#ccc" loop="-1" scrollamount="5" width="100%"> MediGo is one of the leading online pharmacy in Bangladesh.
                Our Online Medicine Store is available</marquee>
        </div>

    </section>

    <section id="about-app" class="section-p1">
        <h1>Download Our <span><button onclick="window.location.href='downloadpage.php';">App</button></span></h1>
        <div class="video">
            <video autoplay muted loop src="../img/videos/download app.mp4"></video>
        </div>
    </section>

    <section id="feature" class="section-p1">
        <div class="feature-box">
            <img src="../img/features/f1.png" alt="">
            <h6>Free Shipping</h6>
        </div>
        <div class="feature-box">
            <img src="../img/features/f2.png" alt="">
            <h6>Online Order</h6>
        </div>

        <div class="feature-box">
            <img src="../img/features/f3.png" alt="">
            <h6>Save Money</h6>
        </div>

        <div class="feature-box">
            <img src="../img/features/f5.png" alt="">
            <h6>Happy Customer</h6>
        </div>

        <div class="feature-box">
            <img src="../img/features/f6.png" alt="">
            <h6>24/7 Support</h6>
        </div>
    </section>

    <?php
include('footer.php');
?>

</body>

</html>