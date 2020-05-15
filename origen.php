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
    <h1 class="tittle">
    ¿Que es The Face Of Music?
    </h1>
    <br>
    <p>
        The Face Of music es una pagina creada para musicos, la funcion es crear canciones a partir de una tonalidad, cada tonalidad tiene 7 diversos acordes, y cada uno de esos acordes tiene su propia escala: Jonico, Dorico, Frigio, Lidio, Mixolidio, Eolico y Locrio.     
    </p>
    <p>
        Otra funcion de esta pagina es crear canciones facilmente.
        Ya que la música y la tecnología han ido evolucionando juntos, es decir, a la hora de grabar música, componer música se necesita tarjetas de sonido, … y hoy en día hay muchos programas para músicos, bien para guitarra, bajo, piano, batería...
    </p>
    <p> 
    Mi idea principal es que sabiendo algo mínimo de tocar algún instrumento que emite notas musicales, como guitarra, ukelele, bajo, banjo, … puedas crear una canción a partir de elegir aspectos, empezando en que tonalidad quieres que sea la canción, y los acordes que tiene esa tonalidad.     

    </p>


</div>


   
</body>
</html>

