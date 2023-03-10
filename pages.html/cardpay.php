<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Card Payment</title>
    <!--favicon-->
    <link rel="shortcut icon" type="image/png" href="../img/favicon/android-chrome-512x512.png"/>
    <!--favicon end-->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link rel="stylesheet" href="pay.css">
</head>

<body>
    <div class="container">
        <form action="">

            <div class="row">

                <div class="col">
                    <h3 class="title">Billing Address</h3>
                    
                    <div class="inputbox">
                        <span>Full Name</span>
                        <input type="text" placeholder="Jhone deo">
                    </div>

                    <div class="inputbox">
                        <span>Email</span>
                        <input type="email" placeholder="example@example.com">
                    </div>

                    <div class="inputbox">
                        <span>Address</span>
                        <input type="text" placeholder="Home - Street- Locality">
                    </div>

                    <div class="inputbox">
                        <span>City</span>
                        <input type="text" placeholder="City Name">
                    </div>

                    <div class="felx">
                        <div class="inputbox">
                            <span>State</span>
                            <input type="text" placeholder="State Name">
                        </div>

                        <div class="inputbox">
                            <span>Zip Code</span>
                            <input type="text" placeholder="12345">
                        </div>
                    </div>
                </div>
                <div class="col">
                    <h3 class="title">Payment</h3>

                    <div class="inputbox">
                        <span>Cards Accepted</span>
                        <img src="../img/pay/pay2.png" width="300px">
                    </div>


                    <div class="inputbox">
                        <span>Name on Card</span>
                        <input type="text" placeholder="Mr. Jhone deo">
                    </div>

                    <div class="inputbox">
                        <span>Credit Card Number</span>
                        <input type="number" placeholder="1111 - 2222 - 3333 - 4444">
                    </div>

                    <div class="inputbox">
                        <span>Exp Month</span>
                        <input type="text" placeholder="January">
                    </div>

                    <div class="felx">
                        <div class="inputbox">
                            <span>Exp Year</span>
                            <input type="number" placeholder="2022">
                        </div>
                        <div class="inputbox">
                            <span>CVV/CVC</span>
                            <input type="text" placeholder="1234">
                        </div>
                    </div>
                </div>
            </div>
            <input type="submit" value="Proceed to Checkout" id="submit-btn" class="normal" >
            <input value="Go back" id="back-btn" class="normal" onclick="window.location.href='ptype.php';">
        </form>

    </div>

</body>

</html>