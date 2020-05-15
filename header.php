<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Face Of Music</title>
	<link rel="stylesheet" type="text/css" href="css/index_style.css">
	<link href="http://allfont.es/allfont.css?fonts=franklin-gothic-demi-cond" rel="stylesheet" type="text/css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" type="text/javascript">	</script>

	<script type="text/javascript">
	$(document).ready(function(){
		$('.boton').mouseover(function(){
			$('audio')[0].play();
		});
	});


	</script>

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
	<a href="index.php">
	<center>

	<img  src="img/logo.png" alt="Descripción de la imagen" width=90% >
	</center>
	</a>
	<li><input type="text" placeholder="search" class="search"/></li>
	<br>
	
    <a href="tonalidades.php" class="boton"><li>TONALIDADES</li></a>    
    <a href="modos.php" class="boton"><li>MODOS</li></a>    
	<a href="estructuras.php" class="boton"><li>ESTRUCTURAS</li></a>
	<a href="origen.php" class="boton"><li>ORIGEN</li></a>
	<br>
	<br> 
	<a href="login.php" class="boton"><li>LOGIN</li></a>
	

	</div>
	</ul>
	</div>     
	