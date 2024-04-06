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
   <title>acasa</title>

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php @include 'header.php'; ?>

<section class="home">

   <div class="content">
      <h3>perfume shop</h3>
      <img src="pslogo.png" width="200" height="200">  
      <h1 style="font-size:2vw">„Nici o eleganță nu este posibilă fără parfum. Este accesoriul nevăzut, de neuitat, suprem.”</h1> <h1 style="font-size:1.5vw"> - Coco Chanel - </h1>    
      <a href="about.php" class="btn">descoperă mai mult</a>
   </div>

</section>

<section class="home-contact">

   <div class="content">
      <h3>ai intrebări?</h3>
      <a href="contact.php" class="btn">contactează-ne</a>
   </div>

</section>


<?php @include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>