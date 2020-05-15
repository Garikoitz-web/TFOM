<?php 

    $conexion=mysqli_connect('localhost','root','','comf');

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Face OF Music</title>
    <link rel="stylesheet" type="text/css" href="css/index_style.css">
</head>
<body>
<?php 
include "header.php"; 
?>
<div class="h-content">
	<div class="hl-cont">
		<table border="0">
			<tr >
				<th>TONALIDADES</th>
				<th>I_MAYOR</th>
				<th>II_menor</th>
				<th>III_menor</th>
				<th>IV_MAYOR</th>
				<th>V_MAYOR</th>
				<th>VI_menor</th>
				<th>VII_disminuido</th>
			</tr>
		
 
		<?php 
		$sql="SELECT * from tono";
		$result=mysqli_query($conexion,$sql);

		while($mostrar=mysqli_fetch_array($result)){
		 ?>

		<tr>
			<td><strong><?php echo $mostrar['tonalidad'] ?></strong></td>
			<td><?php echo $mostrar['I_MAYOR'] ?></td>
			<td><?php echo $mostrar['II_menor'] ?></td>
			<td><?php echo $mostrar['III_menor'] ?></td>
			<td><?php echo $mostrar['IV_MAYOR'] ?></td>
			<td><?php echo $mostrar['V_MAYOR'] ?></td>
			<td><?php echo $mostrar['VI_menor'] ?></td>
			<td><?php echo $mostrar['VII_disminuido'] ?></td>
		</tr>
	<?php 
	}
	 ?>
	</table>



   
</body>
</html>