<!DOCTYPE html>
  <head>
    <meta charset="utf-8">
    <title>Iniciar sesión</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/iniciar_sesion.css">
    <link rel="stylesheet" href="css/estiloslogin.css">
    <link rel="stylesheet" href="css/estilosmenuprincipal.css">
  </head>
  
  <style>
    .boton-chido{
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
.btn{
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
    .btn:hover {
   border: none;
      outline: none;
      height: 40px;
      background-color:#f5b041;
      color:white;
      font-size: 19px;
      border: 2px ;
      border-radius: 20px ;
      border-color:white;
}
    header{
      height: 80px;
    }
  </style>
<body>
    
    <header class="container-fluid p-2">
      <a href="../index.html"><img src="img/regresar.png" width="40" height="40"></a>
        <div class="float-right">
          <img src="img/chambita2.png" width="140px" height="50px">
        </div>
    </header>

    <main>

    <div class="login-box">
      <center>
      <img src="img/aber.png" class="avatar" width="80px" height="10px">
      </center>
      <h1>INICIA SESIÓN</h1>
      <form action="validarLogin.php" method="post">

        <label for="username">Usuario</label>
        <input type="text" name="email" placeholder="Ingrese el usuario">
       
       <div>
          <label for="password">Contraseña</label>
          <input type="password" name="contrasena" placeholder="Ingrese la contraseña">
          <center>
          <a href="#">¿Olvidaste tu contraseña?</a>
          </center>
       </div>

        <center>
          <button class="boton-chido" type="submit">Iniciar sesión</button>
        </center>

        <hr>
      </form>
      <center>
        <p>¿Nuevo en Chambita?</p>

        <a class="text-white btn" href="registro.php">Crea tu cuenta</a>
      </center>
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
 
