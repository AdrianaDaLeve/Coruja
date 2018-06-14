<?php

	$servidor = 'localhost'; //Geralmente por padrão é localhost, mas dependendo da hospedagem pode ser outro endereço.
	$usuario = 'user_sql';
	$senha = 'senha_user_sql';
	$banco = 'bancodedados';
	
	

	// Conecta-se ao banco de dados MySQL
	$mysqli = new mysqli($servidor, $usuario, $senha, $banco);

	// Caso algo tenha dado errado, exibe uma mensagem de erro
	if (mysqli_connect_errno()) trigger_error(mysqli_connect_error());

?>
