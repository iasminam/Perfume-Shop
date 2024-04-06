<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>despre</title>

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php @include 'header.php'; ?>

<section class="heading">
    <h3>despre noi</h3>
    <p> <a href="home.php">acasa</a> / despre </p>
</section>

<section class="about">

    <div class="flex">

        <div class="image">
            <img src="images/about-img-1.jpg" alt="">
        </div>

        <div class="content">
            <h3>de ce sa ne alegeti pe noi?</h3>
            <p>Noi deschidem tuturor ochii asupra frumuseții unicității, o aducem la viață și facem însăși viața mai frumoasă. Toată lumea se simte văzută, auzită și apreciată.</p>
            <a href="shop.php" class="btn">cumpara acum</a>
        </div>

    </div>

    <div class="flex">

        <div class="content">
            <h3>ce putem oferi?</h3>
            <p>Putem oferi parfumuri cu un miros inedit, penrtru că noi credem că frumusețea ar trebui să fie accesibilă oricui, pentru că aduce încredere și schimbări pozitive în viața fiecăruia. Oamenii care se simt mai frumoși își ating mai ușor obiectivele și, la rândul lor, fac lumea din jur mai frumoasă.</p>
            <a href="contact.php" class="btn">contacteaza-ne</a>
        </div>

        <div class="image">
            <img src="images/about-img-2.jpg" alt="">
        </div>

    </div>

    <div class="flex">

        <div class="image">
            <img src="images/about-img-3.jpg" alt="">
        </div>

        <div class="content">
            <h3>cine suntem noi?</h3>
            <p>Perfume Shop este o multinațională de renume, cu o gamă diversă de produse de la unii dintre cei mai mari operatori portuari și comercianți din lume. Noi am vrut să creăm un loc în care frumusețea să fie la îndemâna tuturor! Așa s-a născut lanțul nostru de parfumerie. Suntem mândri să vă oferim nu numai cele mai renumite branduri din universul frumuseții, ci și multe exclusivități selectate de înaltă calitate pe care le puteți găsi doar la Perfume Shop! </p>
        </div>

    </div>

</section>

<?php @include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>