<?php
// Set session variables
require_once './route.php';
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="lib/fonts/icomoon/style.css">

    <link rel="stylesheet" href="lib/css/owl.carousel.min.css">

    Bootstrap CSS
    <link rel="stylesheet" href="lib/css/bootstrap.min.css">
    
    Style
    <link rel="stylesheet" href="lib/css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet"> -->

    <title>Some error Occured</title>
    <Style>
        /* Styles for the container to center the image */
.image-container {
  display: flex;
  justify-content: center;
}

/* Styles for the image */
.image-container img {
  width: 100%;
  height: auto;
  max-width: 100%; /* Optional: To ensure the image doesn't exceed its original size */
}

    </Style>
  </head>
  <body>
    <?php
    navbar();
    ?>
      <div id="pricing">
      </div>
         <div class="container">
            <!-- <h1 style="text-align: center;font-weight:800;">Student Records</h1><br><br> -->
         </div>
         <div class="image-container">
             <img src="lib/404.jpg" alt="Your Image">
         </div>
         <!-- <img src="lib/404.jpg" alt="" srcset="" width="1000px" height=""1000px> -->

    <script src="lib/js/jquery-3.3.1.min.js"></script>
    <script src="lib/js/popper.min.js"></script>
    <script src="lib/js/bootstrap.min.js"></script>
    <script src="lib/js/jquery.sticky.js"></script>
    <script src="lib/js/main.js"></script>
    <script>
      $(document).bind("contextmenu",function(e) {
 e.preventDefault();
});
    </script>
  </body>
</html>