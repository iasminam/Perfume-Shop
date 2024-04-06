<?php

@include 'config.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if(!isset($admin_id)){
   header('location:login.php');
};

if(isset($_POST['update_order'])){
   $order_id = $_POST['order_id'];
   $update_payment = $_POST['update_payment'];
   mysqli_query($conn, "UPDATE `orders` SET payment_status = '$update_payment' WHERE id = '$order_id'") or die('query failed');
   $message[] = 'Starea plății a fost actualizată!';
}

if(isset($_GET['delete'])){
   $delete_id = $_GET['delete'];
   mysqli_query($conn, "DELETE FROM `orders` WHERE id = '$delete_id'") or die('query failed');
   header('location:admin_orders.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Tablou de bord</title>

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <link rel="stylesheet" href="css/admin_style.css">

</head>
<body>
   
<?php @include 'admin_header.php'; ?>

<section class="placed-orders">

   <h1 class="title">Comenzi plasate</h1>

   <div class="box-container">

      <?php
      
      $select_orders = mysqli_query($conn, "SELECT * FROM `orders`") or die('query failed');
      if(mysqli_num_rows($select_orders) > 0){
         while($fetch_orders = mysqli_fetch_assoc($select_orders)){
      ?>
      <div class="box">
         <p> ID-ul utilizatorului : <span><?php echo $fetch_orders['user_id']; ?></span> </p>
         <p> Plasat pe : <span><?php echo $fetch_orders['placed_on']; ?></span> </p>
         <p> Nume : <span><?php echo $fetch_orders['name']; ?></span> </p>
         <p> Număr : <span><?php echo $fetch_orders['number']; ?></span> </p>
         <p> Email : <span><?php echo $fetch_orders['email']; ?></span> </p>
         <p> Adresă : <span><?php echo $fetch_orders['address']; ?></span> </p>
         <p> Total produse : <span><?php echo $fetch_orders['total_products']; ?></span> </p>
         <p> Preț total : <span><?php echo $fetch_orders['total_price']; ?> Lei</span> </p>
         <p> Metoda de plată : <span><?php echo $fetch_orders['method']; ?></span> </p>
         <form action="" method="post">
            <input type="hidden" name="order_id" value="<?php echo $fetch_orders['id']; ?>">
            <select name="update_payment">
               <option disabled selected><?php echo $fetch_orders['payment_status']; ?></option>
               <option value="În așteptare">În așteptare</option>
               <option value="Efectuat">Efectuat</option>
            </select>
            <input type="submit" name="update_order" value="Actualizare" class="option-btn">
            <a href="admin_orders.php?delete=<?php echo $fetch_orders['id']; ?>" class="delete-btn" onclick="return confirm('ștergi această comandă?');">Șterge</a>
         </form>
      </div>
      <?php
         }
      }else{
         echo '<p class="empty">Încă nu s-au plasat comenzi!</p>';
      }
      ?>
   </div>

</section>


<script src="js/admin_script.js"></script>

</body>
</html>