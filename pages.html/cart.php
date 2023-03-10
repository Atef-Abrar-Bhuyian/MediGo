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
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link rel="stylesheet" href="style.css">
    <title>Cart</title>
    <!--favicon-->
    <link rel="shortcut icon" type="image/png" href="../img/favicon/android-chrome-512x512.png" />
    <!--favicon end-->
</head>

<body>
    <section id="header">
        <a href="index.php"><img src="../img/logo.png" class="logo" alt=""></a>

        <div>
            <ul id="navbar">
                <li><a href="index.php">Home</a></li>
                <li><a href="shop.php">Shop</a></li>
                <li><a href="about.php">About</a></li>
                <li><a href="contact.php">Contact</a></li>
                <li><a href="sorder.php">Special Order</a></li>
                <li><a href="login.php">Login</i></a></li>
                <li><a class="active" href="cart.php"><i class="fa fa-shopping-bag"></i></a></li>

            </ul>
        </div>

    </section>

    <section id="shop-header" class="about-header">
        <h2>Add your product to &nbsp;<i class="fa fa-shopping-bag"></i></h2>
    </section>

    <?php
    $ret2 = mysqli_query($con, "Select cart.*,medicine.* From cart 
                                    INNER JOIN medicine ON cart.id=medicine.id");
    ?>

    <form action="" method="post">
        <section id="cart" class="section-p1">
            <table width="100%">
                <thead>
                    <tr>
                        <td>Remove</td>
                        <td>Image</td>
                        <td>Product</td>
                        <td>Price</td>
                        <!-- <td>Quantity</td> -->
                    </tr>
                </thead>


                <tbody>
                    <?php
                        if(isset($_GET['delid'])){
                            $eid=$_GET['delid'];
                            $query=mysqli_query($con,"delete from cart
                            where cart_id='$eid'");
                            echo "<script>alert('Record Deleted successfully');</script>";
                            echo "<script>window.location.href='cart.php'</script>";
                        }
                    while ($result1 = mysqli_fetch_array($ret2)) {
                    ?>
                    <tr>
                        <td><a href="cart.php?delid=<?php echo $result1['cart_id'];?>" onclick="return confirm('Do you really want to delete');" style="color:red"><i class="fal fa-times-circle"></i></a></td>
                        <td><img src="../img/<?php echo $result1['img']; ?>"></td>
                        <td><?php echo $result1['MName']; ?></td>
                        <td><?php echo $result1['Price']; ?>???</td>
                        <!-- <td><input type="number" value="1"></td> -->
                    </tr>
                    <?php
                    }
                    ?>
                </tbody>
            </table>
        </section>
    </form>


    <section id="cart-add" class="section-p1">
        <div id="coupon">
            <h3>Apply Coupon</h3>
            <div>
                <input type="text" placeholder="Enter Your Coupon">
                <button class="normal">Apply</button>
            </div>
        </div>

        <div id="subtotal">
            <h3>Cart Totals</h3>
            <table>
                <tr>
                    <td>Cart Subtotal</td>
                    <td>???335</td>
                </tr>
                <tr>
                    <td>Shipping</td>
                    <td>Free</td>
                </tr>
                <tr>
                    <td><strong>Total</strong></td>
                    <td><strong>???335</strong></td>
                </tr>
            </table>
            <button class="normal" onclick="window.location.href='ptype.php';">Proceed to Checkout</button>
        </div>
    </section>

    <script>
        var modal = document.getElementById('id01');
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>


    <?php
    include('footer.php');
    ?>

</body>

</html>