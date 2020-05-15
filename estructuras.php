<?php 

    $conexion=mysqli_connect('localhost','root','','comf');

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>The Face OF Music</title>
	<link rel="stylesheet" type="text/css" href="../css/index_style.css">
	
</head>
<style>

ul.b {
  list-style-type: square;
}


</style>

<body>
<?php 
	include "header.php";
?>
<div class="h-content">
	Para los que no sepan que es una estructura de una cancion, consiste en que una cancion debe o suele tener una serie de partes las cuales pueden ser las siguientes:

	<ul class="b">
  		<li type="disc">Intro</li>
  		<li type="disc">Estrofa (tambien llamado verso)</li>
		<li>Estribillo</li>
		<li>Puente</li>
		<li>Solo</li>	  
	</ul>
	<h3> 
	Esta estructura se le integran distintos elementos el cual cada artista utiliza para componer la canción a su gusto y obtener distintos resultados. Diferentes estructuras y elementos generan diferentes efectos.
	</h3>

</div>


   
</body>
</html>