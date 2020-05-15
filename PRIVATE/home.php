<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Face Of Music</title>
    <link rel="stylesheet" type="text/css" href="../css/index_style.css">
    
</head>
<?php
include "alert.php"; 
?>


<body>
<?php
include "header.php"; 
?>
 

<div>
        <center>
            <img src="../img/logo.png" alt="Descripción de la imagen" width=50%>
        </center>
    </div>
    <div>
        <center>
            <a href="create/index.php">
            <img id="myImage" onclick="changeImage()" src="../img/crear.png" width=20% >
            
            <script>
             
            function changeImage() {
                var image = document.getElementById('myImage');
                if (image.src.match("bulbon")) {
                    image.src = "../img/crear.png";
             
                } else {
                    image.src = "../img/crear1.png";
             
                }
            }
             
            </script>
            </a>
        </center>
    </div>

  </body>  
</html>