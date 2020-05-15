<?php
ob_start();
?>
<?php
session_start();
if(isset($_SESSION['logueado']) && $_SESSION['logueado'] == TRUE) {
  header("Location: PRIVATE/home.php");
}
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
include "loop.php";  
?>
  <div id="wrapper">



      <?php
      if(isset($_GET['error'])) {
        echo "<center>Error user or password is not OK</center>";
      }
      ?>

      <?php
      if(isset($_POST['entrar'])) {

        require("conexion.php");

        $username = $mysqli->real_escape_string($_POST['usuario']);
        $password = md5($_POST['password']);

        $consulta = "SELECT username,password,id FROM users WHERE username = '$username' AND password = '$password'";

        if($resultado = $mysqli->query($consulta)) {
          while($row = $resultado->fetch_array()) {

            $userok = $row['username'];
            $passok = $row['password'];
            $id = $row['id'];
          }
          $resultado->close();
        }
        $mysqli->close();


        if(isset($username) && isset($password)) {

          if($username == $userok && $password == $passok) {

            session_start();
            $_SESSION['logueado'] = TRUE;
            $_SESSION['username'] = $userok;
            $_SESSION['id'] = $id;
            header("Location: PRIVATE/home.php");

          }

          else {

            Header("Location: login.php?error=login");

          }

        }


      }
      ?>

      
              
    <div class="login-box">
      
        <center>
        <a href="index.php">
            <img src="img/logo-login.png" alt="Descripción de la imagen" width=100% class="center">
        </a>
          <form action="" method="post">
            <input type="text" placeholder="UserName" class="input" name="usuario" autocomplete="off" />
            <div class="overlap-text">
              <input type="password" placeholder="Password" class="input" name="password" />
            </div>
            <br>
            <input type="submit" class="btn" name="entrar" value="login"/>
          </form>
          <br>
          <div class="s-part">
            <a href="registro.php">
              <input type="submit" class="btn" name="entrar" value="Sign Up"/>
              </a>
          </div>
    </center>
        
    </div>

      

      <div class="sub-content">
        
      </div>

    

  </div>

</body>
</html>
<?php
ob_end_flush();
?>
