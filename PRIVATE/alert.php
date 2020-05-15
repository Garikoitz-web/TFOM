<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>alert</title>
     
    <link rel="stylesheet" href="alert/css/alertify.min.css" />
	<link rel="stylesheet" href="alert/css/themes/semantic.min.css" />
	<script src="alert/alertify.min.js"></script>
    <script type="text/javascript">
    
		window.onload = function mensaje(){	
			alertify.alert("EN CONSTRUCCION","Esta pagina no funciona correctamente, ya que estamos en la construccion de esta pagina, puede que pagina del perfil y creacion de una cancion tarde en recargar, ya que tiene que consultar con la base de datos").set('label', 'Aceptar');     
        }
    </script>
    
</head>
<body>
        <!-- 
<audio src="sounds/alert.mp3" id="mySound" autoplay="true">
</audio>
--> 


<audio src="sounds/alert.mp3" autoplay="true">  
</audio>  

</body>
</html>
