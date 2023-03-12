<?php
session_start();
error_reporting(0);
include('dbconnect.php');
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop</title>
    <!--favicon-->
    <link rel="shortcut icon" type="image/png" href="../img/favicon/android-chrome-512x512.png" />
    <!--favicon end-->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.15.4/css/all.css" />

    <link rel="stylesheet" href="style.css">
</head>

<body>
    <section id="header">
        <a href="#"><img src="../img/logo.png" class="logo" alt=""></a>
        <div>
            <ul id="navbar">
                <li><a href="index.php">Home</a></li>
                <li><a class="active" href="shop.php">Shop</a></li>
                <li><a href="about.php">About</a></li>
                <li><a href="contact.php">Contact</a></li>
                <li><a href="sorder.php">Special Order</a></li>
                <li><a href="login.php">Login</i></a></li>
                <li><a href="cart.php"><i class="fa fa-shopping-bag"></i></a></li>

            </ul>
        </div>
    </section>

    <section id="prodetails" class="section-p1">
        <?php
        $Med_ID = $_GET['editid'];
        $ret1 = mysqli_query($con, "Select * From medicine where id='$Med_ID'");
        $result1 = mysqli_fetch_array($ret1);

        /*add to cart */

        if (isset($_POST['addtocart'])) {
            $query1 = mysqli_query($con, "insert into cart(id) 
                                        values ('$Med_ID')");

            if ($query1) {
                echo '<script type ="text/JavaScript"> 
                                                alert("Succesfully Added to Cart. Press "Nothing" to Do Nothing")
                                            </script> ';
            } else {
                echo '<script>alert("Something Went Wrong. Please try again.");</script>';
            }

        }




        ?>

        <div class="single-pro-image">
            <img class="sizeofimg" src="../img/<?php echo $result1['img']; ?>" width="100%" id="MainImg" alt="">


            <div class="small-img-group">
                <div class="small-img-column">
                    <img class="sizeofimg" src="../img/<?php echo $result1['img']; ?>" width="100%" class="small-img"
                        alt="">
                </div>

                <div class="small-img-column">
                    <img src="../img/small product/Drugs.jpeg" width="100%" class="small-img" alt="">
                </div>

                <div class="small-img-column">
                    <img src="../img/small product/genuine.jpg" width="100%" class="small-img" alt="">
                </div>

                <div class="small-img-column">
                    <img src="../img/small product/original.jpg" width="100%" class="small-img" alt="">
                </div>
            </div>
        </div>


        <div class="single-pro-details">
            <h6>Shop /
                <?php echo $result1['MName']; ?>
            </h6>
            <h4>
                <?php echo $result1['MName']; ?>
            </h4>
            <h2>৳
                <?php echo $result1['Price']; ?>
            </h2>
            <select>
                <option>Select peices</option>
                <option>10pcs</option>
                <option>20pcs</option>
                <option>30pcs</option>
                <option>1box(60pcs)</option>
            </select>
            <input type="number" value="1">
            <form method="post">
                <button name='addtocart' class="normal">Add to Cart</button>
            </form>
            <h4>Medical Overview</h4>
            <span>
                <?php echo $result1['Details']; ?>
            </span>
        </div>

    </section>

    <section id="product1" class="section-p1">
        <h2>Featured Products</h2>
        <p></p>
        <div class="pro-container">

            <?php
            $User_ID = $_SESSION['uid'];
            $ret1 = mysqli_query($con, "Select * From featured ");
            $num = mysqli_num_rows($ret1);
            while ($result1 = mysqli_fetch_array($ret1)) {
            ?>
            <div class="pro" onclick="window.location.href='sproduct1.php?editid=<?php echo $result1['id']; ?>';">

                <div><img src="../img/<?php echo $result1['img']; ?>" alt=""></div>
                <div class="des">
                    <span>
                        <?php echo $result1['Stock']; ?> in stock
                    </span>
                    <h5>
                        <?php echo $result1['MName']; ?>
                    </h5>
                    <div class="star">
                        <i class="fas fa-star"><span>
                                <?php echo $result1['rating']; ?>
                            </span></i>

                    </div>
                    <h4>৳
                        <?php echo $result1['Price']; ?>
                    </h4>
                </div>
                <a href="#"><i class="fa fa-cart-plus cart"></i></a>
            </div>

            <?php
            }
            ?>

        </div>
    </section>

    <?php
    include('footer.php');
    ?>

    <script>
        var MainImg = document.getElementById("MainImg");
        var smallimg = document.getElementsByClassName("small-img");


        smallimg[0].onclick = function () {
            MainImg.src = smallimg[0].src;
        }

        smallimg[1].onclick = function () {
            MainImg.src = smallimg[1].src;
        }
        smallimg[2].onclick = function () {
            MainImg.src = smallimg[2].src;
        }
        smallimg[3].onclick = function () {
            MainImg.src = smallimg[3].src;
        }

    </script>

    <script src="script.js"></script>
</body>

</html>