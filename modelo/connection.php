<?php
//servidor web 
//define('HOST', 'localhost'); // Host de la base de datos
//define('USER', 'id8487587_admin2'); // Usuario
//define('PASSWORD', 'admin02'); // Contraseña
//define('DATABASE', 'id8487587_webxi'); // Nombre de Base de Datos
//local
define('HOST', 'localhost'); // Host de la base de datos
define('USER', 'root'); // Usuario
define('PASSWORD', ''); // Contraseña
define('DATABASE', 'webxi'); // Nombre de Base de Datos


function DB()
{
    static $instance;
    if ($instance === null) {
        $opt = array(
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_EMULATE_PREPARES => FALSE,
        );
        $dsn = 'mysql:host=' . HOST . ';dbname=' . DATABASE;
        $instance = new PDO($dsn, USER, PASSWORD, $opt);
    }
    return $instance;
}



?>