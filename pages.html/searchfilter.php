<?php
session_start();
error_reporting(0);
include('dbconnect.php');
if(isset($_POST['search'])){
    $medicine=$_POST['medicine'];
    $_SESSION['medicine']=$medicine;
    header('location:searchfilter.php');

}?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop Page</title>
    <!--favicon-->
    <link rel="shortcut icon" type="image/png" href="../img/favicon/android-chrome-512x512.png" />
    <!--favicon end-->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <section id="header">
        <a href="index.php"><img src="../img/logo.png" class="logo" alt=""></a>
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

    <section id="shop-header">
        <h2>Order Medicine Online From</h2>
        <p>Save more time & get free shipping up to 5 km!</p>
    </section>

    <div class="container">
        <div class="search_wrap search_wrap_3">
            <div class="search_box">

            <form method="post">
                    <input class="input" list="medicine" type="text" name="medicine" placeholder="Search" required>
                    <datalist id="medicine">
                        <option value="Aclitol">
                        <option value="Antiva">
                        <option value="Barif 40">
                        <option value="Bisocor Plus">
                        <option value="Caberol">
                    </datalist>
                    <div id="sbutton" class="btn btn_common">
                        <button name="search" class="fas fa-search"></button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <section id="product1" class="section-p1">
        <div class="pro-container">


            <?php
            $medicine=$_SESSION['medicine'];
            $row = mysqli_query($con, "Select * from medicine where MName='$medicine'");
            $result1 = mysqli_fetch_array($row);
            $num = mysqli_num_rows($row);
            if($num == 0){
                ?>
                <style>
                    #noresult{
                        margin-left: 440px;
                        margin-bottom: 100px;
                        display: flex;
                    }
                </style>
                <h2 id="noresult"> No Result Found</h2>
                <?php
                }
            else{
                
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

    <section>

        <style>
            .pagination {
                display: inline-block;
                display: flex;
                margin-left: 520px;
                margin-bottom: 20px;

            }

            .pagination a {
                color: black;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
            }

            .pagination a.active {
                background-color: #295c6a;
                color: white;
            }

            .pagination a:hover:not(.active) {
                background-color: #9ccdd9;
            }
        </style>

        <div class="pagination">
            <a href="#">&laquo;</a>
            <a class="active" href="#">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">6</a>
            <a href="#">&raquo;</a>
        </div>

    </section>

    <?php
include('footer.php');
?>

    <script src="script.js"></script>
</body>

</html>