<?php
session_start();
if(!isset($_SESSION['logueado']) && $_SESSION['logueado'] == FALSE) {
  header("Location: ../login.php");
}

include "functions.php";
?>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Face OF Music</title>
	<link rel="stylesheet" type="text/css" href="css/index_style.css">
	<link href="http://allfont.es/allfont.css?fonts=franklin-gothic-demi-cond" rel="stylesheet" type="text/css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" type="text/javascript">	</script>

	

</head>
<div class="h-header">
	
</div>
<!-- 
<audio src="sounds/1.mp3" controls preload>

</audio>
-->
<input type="checkbox" class="checkbox" id="check"/>
        <label class="menu" for="check">
            |||
        </label>
		
    <div class="left-panel">
    
    <ul>
	<li><a href="perfil.php" class="boton">
	<img  src="../img/icons/profile.png" alt="Descripción de la imagen" width=50% margin-left=10% margin-right=10%>
	<div class="hr-name"><a href="perfil.php?username=<?php echo $_SESSION['username'];?>"><?php echo $_SESSION['username'];?>
	</a>
	</div>
	</li>
	<li><input type="text" placeholder="search" class="search"/></li>
	<a href="home.php" class="boton"><li>HOME</li></a> 
    <a href="tonalidades.php" class="boton"><li>TONALIDADES</li></a>    
    <a href="modos.php" class="boton"><li>MODOS</li></a>    
	<a href="estructuras.php" class="boton"><li>ESTRUCTURAS</li></a>
	<a href="create/index.php" class="boton"><li>COMPONER CANCION</li></a>
	
	
	
	<div class="h-account">
		<a href="perfil.php?username=<?php echo $_SESSION['username'];?>">
			<li>
			<img src="../img/icons/perfil.png" class="i-icon" width=20% class="boton">
			</li>
		</a>

		<a href="logout.php">
			<li>
			<img src="../img/icons/close.png" class="i-icon" width=20% class="boton">
			</li>
		</a>
	</div>
	</ul>
	</div>     
	