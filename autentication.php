<?php
    require_once('dbConnect.php');  


    $login = htmlspecialchars ($_POST["login"]);
    $password = htmlspecialchars ($_POST["password"]);

    $sql = "SELECT * FROM cr013_usuario where CR013_MATRICULA='$login' and CR013_SENHA='$password'";
    $result = $conn->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        //echo "olá, ". $row["CR013_NOME"];
        //manda pra onde quiser depois do login ok
        //setar o login na session
        $_SESSION["login"] =$login;;
        $_SESSION["password"]=$password;
        header('Location: /coruja/lateral.php');
    }
} else {
    echo "usuario ou senha incorretos";
}
       //    SELECT * FROM `cr013_usuario` WHERE cr013_matricula = "899998" and cr013_senha = "21036568"
    
?>

