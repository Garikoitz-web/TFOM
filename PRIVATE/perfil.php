<?php
session_start();
if(!isset($_SESSION['logueado']) && $_SESSION['logueado'] == FALSE) {
  header("Location: ../login.php");
}

include "functions.php";
require "conexion.php";


?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Face Of Music</title>
	<link rel="stylesheet" type="text/css" href="css/perfil_table.css">
    <link rel="stylesheet" type="text/css" href="css/composer.css">
    <link rel="stylesheet" type="text/css" href="css/fonts.css">
    <link href="http://allfont.es/allfont.css?fonts=franklin-gothic-demi-cond" rel="stylesheet" type="text/css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" type="text/javascript">	</script>
    
</head>

<body>
<div class="left">

    <ul>
        <li class="li-left">
        <img  src="../img/logo.png" alt="Descripción de la imagen" width=90% >
        </center>
        <li><input type="text" placeholder="search" class="search"/></li>
        <a href="home.php" class="boton font1"><li>HOME</li></a> 
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
        </li>
    </ul>
	
    
</div>


<div class="">
<br>
<br>
<!---- read.php ---->
<?php
$conn = new mysqli('localhost','root','','comf');

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

//
$sql = "SELECT * FROM song where id_user = ".$_SESSION['id']."";

$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        /* echo "<br>" . $row["id_user"]; */
?>
            
    <div class="main-perfil">
        <li type="disc" class="tittle">
                <?php
                    echo  $row["song_name"];
                ?>
        </li>
        
        <li type="disc" class="sub-tittle">
                <label class="text-uppercase text-primary">

                    <?php
                     /* echo "<br> INSTRUMENTO:" . $row["id_inst"];*/

                     if($row){
                     $sql1 = "SELECT instrumento FROM instrumento where id_inst = ".$row["id_inst"]."";
                         $resultado1 = $mysqli->query($sql1);
                         while($row1 = $resultado1->fetch_assoc())
                         {
                             $html1= "<a>".$row1['instrumento']."</a>";
                         }
                         echo "<br> INSTRUMENTO: " . $html1;
                         } else {
                             echo "Error INSTRUMENTO";
                         }  
                    ?>
                </label>
                
               

                <label class="text-uppercase text-primary">
                    <?php
                    /* echo "<br> AFINACION:" . $row["id_afin"]; */
                            
                    if($row){
                        $sql3 = "SELECT afinacion FROM afinacion WHERE id_afin = ".$row["id_afin"]."";
                        $resultado3 = $mysqli->query($sql3);
                        while($row3 = $resultado3->fetch_assoc())
                    {
                        $html3= "<a>".$row3['afinacion']."</a>";
                    }
                    echo  "<br> AFINACION:  " . $html3;
                    } else {
                        echo "Error Afinacion";
                    }
                    ?>  

                </label>


                <label class="text-uppercase text-primary">
                    <?php
                    /* echo "<br> TONALIDAD:" . $row["id_tona"];*/
                    if($row){
                        $sql4 = "SELECT tonalidad FROM tonalidad WHERE id_tona = ".$row["id_tona"]."";
                        $resultado4 = $mysqli->query($sql4);
                        while($row4 = $resultado4->fetch_assoc())
                    {
                        $html4= "<a>".$row4['tonalidad']."</a>";
                    }
                    echo "<br> TONALIDAD:  " . $html4;
                    } else {
                        echo "Error Tonalidad";
                    }
                    ?>  

                </label>
        </li>
        <div class="line1">
            </div>

            
            <table>
                <label class="text-uppercase text-primary">
                    <?php
                   /* echo "<br> ACORDE 1:" . $row["id_acor1"];*/
                    if($row){
                        $sql1a = "SELECT acorde, escala FROM acorde WHERE id_acor = ".$row["id_acor1"]."";
                        $resultado1a = $mysqli->query($sql1a);
                        while($row1a = $resultado1a->fetch_assoc())
                    {
                        $html1a= "<tr><th>".$row1a['acorde']."</th>";
                        $html1b= $row1a['escala'];
                    }
                    echo $html1a;
                    echo "<td><img class='imgcenter' width='100%' src = scales/".$html1b." ></td></tr>";
                
                    } else {
                    echo "Error Acorde 1";
                    }
                    ?>  
                </label>

                <br>
                <label class="text-uppercase text-primary">
                    <?php
                   /* echo "<br> ACORDE 2:" . $row["id_acor2"]; */
                    if($row){
                        $sql2a = "SELECT acorde, escala FROM acorde WHERE id_acor = ".$row["id_acor2"]."";
                        $resultado2a = $mysqli->query($sql2a);
                        while($row2a = $resultado2a->fetch_assoc())
                    {
                        $html2a= "<tr><th>".$row2a['acorde']."</th>";
                        $html2b= $row2a['escala'];
                    }
                    echo $html2a;
                    echo "<td><img class='imgcenter' width='100%' src = scales/".$html2b." ></td></tr>";
                
                    } else {
                    echo "Error Acorde 3";
                    }
                    ?>  
                </label>

                <br>
                <label class="text-uppercase text-primary">
                    <?php
                    /* echo "<br> ACORDE 3:" . $row["id_acor3"]; */
                    if($row){
                        $sql3a = "SELECT acorde, escala FROM acorde WHERE id_acor = ".$row["id_acor3"]."";
                        $resultado3a = $mysqli->query($sql3a);
                        while($row3a = $resultado3a->fetch_assoc())
                    {
                        $html3a= "<tr><th>".$row3a['acorde']."</th>";
                        $html3b= $row3a['escala'];
                    }
                    echo $html3a;
                    echo "<td><img class='imgcenter' width='100%' src = scales/".$html3b." ></td></tr>";
                
                    } else {
                    echo "Error Acorde 3";
                    }
                    ?>  
                </label>

                <br>
                <label class="text-uppercase text-primary">
                    <?php
                   /* echo "<br> ACORDE 4:" . $row["id_acor4"]; */
                    if($row){
                        $sql4a = "SELECT acorde, escala FROM acorde WHERE id_acor = ".$row["id_acor4"]."";
                        $resultado4a = $mysqli->query($sql4a);
                        while($row4a = $resultado4a->fetch_assoc())
                    {
                        $html4a= "<tr><th>".$row4a['acorde']."</th>";
                        $html4b= $row4a['escala'];
                    }
                    echo $html4a;
                    echo "<td><img class='imgcenter' width='100%' src = scales/".$html4b." ></td></tr>";
                
                    } else {
                    echo "Error Acorde 4";
                    }
                    ?>  
                </label>
                
                 
            </table>
            <div class="line2">
            </div>
    </div>
    
        <?php
        }
        } else {
            echo "0 results";
        }

        $conn->close();
        ?>

</div>



<!--- PERFIL --->
<div class="right" >
    <ul>
	<li class="li-right">
	<a href="perfil.php" class="boton">
	<img  src="../img/icons/profile.png" alt="Descripción de la imagen" width=50% margin-left=10% margin-right=10%>
	</a>
	<div class="hr-name perfil-name">
	<a class="perfil-name" href="perfil.php?username=<?php echo $_SESSION['username'];?>"><?php echo $_SESSION['username'];?>
    </a>
	</li>
    </ul>
</div>

</body>


</html>