<?php

  require 'Conexion.php';

  $message = '';

  if (!empty($_POST['nombre'])&& !empty($_POST['apellidos']) && !empty($_POST['email']) && !empty($_POST['password']  )) {
    $sql = "INSERT INTO usuarios (nombre,email,apellidos, password) VALUES (:nombre, :email,:apellidos, :password)";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':nombre', $_POST['nombre']);
    $stmt->bindParam(':apellidos', $_POST['apellidos']); 
    $stmt->bindParam(':email', $_POST['email']);


    $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
    $stmt->bindParam(':password', $password);
    

    if ($stmt->execute()) {
     echo '<script>alert("Cuenta Creada")</script> ';
    } else {
    echo '<script>alert("Error de Crear")</script> ';
    }
  }
  ?>
  
<!DOCTYPE html>
  <head>
    <meta charset="utf-8">
    <title>Iniciar sesión</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
 
    <link rel="stylesheet" href="css/estiloslogin.css">
  
  </head>
  
  <style>
    .boton-chido[type="submit"]{
    border: none;
    outline: none;
    height: 40px;
    background-color:#f5b041;
    color:white;
    font-size: 18px;
    border: 2px ;
    border-radius: 20px ;
    border-color:white;
  }
  .boton-chido [type="submit"]:hover{
    cursor: pointer;
    background-color:#f5b041;
    color:white;
    font-size: 18px;
    border: 2px ;
    border-radius: 20px ;
    border-color:white;
  }
  

    header{
     
    }
  </style>
<body>
    
    <header class="container-fluid p-2">
      <a href="login.php"><img src="img/regresar.png" width="50" height="60"></a>
        <div class="float-right">
          <img src="img/chambita2.png" width="140px" height="50px">
        </div>
    </header>

<br><br>
    <main>
<br><br>
    <div class="registro-box">
      <center>
      <img src="img/aber.png" class="avatar" width="80px" height="90px">
      </center>
      <h1>CREA UNA CUENTA</h1>

      <form action="registro.php" method="POST">
        <!-- US INPUT -->
      <div>
        <label for="nombre">Nombre</label>
        <input type="text" NAME="nombre" required placeholder="Ingrese su nombre">

        <label for="text">Apellidos</label>
        <input type="text" NAME="apellidos"  required="" placeholder="Ingrese su apellidos">
       
        <label for="password">Contraseña</label>
        <input type="password" NAME="password" required="" placeholder="Ingrese su contraseña"><br>

        <label for="email">Correo eléctronico</label>
        <input type="text" NAME="email" required="" placeholder="Ingrese su correo eléctronico">
          <!-- P INPUT -->
        <br>

        <center>
          <button class="boton-chido" type="submit">Registrar</button>
        </center>
      </div>
    </div>
  </form>
    </div>
    </main>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    
<footer class="bg-dark text-white">
        <br>
        <div class="container">
          <nav class="row">
          <!--logo-->
                <a href="#" class="col-1 text-reset text-uppercase d-flex aling-items-center"></a>
                <img src="img/secretariaTrabajo.png" width="150px" height="50px">
                <!--Menu-->
                <ul class="col-7 list-unstyled">              
                <li class="ext-reset text-uppercase d-flex aling-items-center"><a>Desarrollo de la aplicación web para contratar oficios en la Secretaría del Trabajo y Previsión Social de Guerrero, Copyright ©️ 2021</a></li>
            </ul>   
            <!--Sub-->           
            </ul> 
            <!--Redes-->
            </nav>    
        </div>
            <br>
</footer>


</body>
</html>
