<?php

define('USUARIO', 'root');
define('SENHA',   '');
define('BD_NOME', 'trab_ads_132');

Class Conexao{
    private $con;
    
    //método construtor da classe
    function __construct(){
        $this->conectar();
    }

    //método privado, acesso somente na classe
    private function conectar(){
        try{
            //$this->con = new PDO("mysql:host=localhost;dbname=".BD_NOME,
           // USUARIO, SENHA);
             $this->con = new PDO("mysql:host=localhost;dbname=".BD_NOME,
            USUARIO, SENHA);
        }catch(PDOException $e){
            echo 'Falha na COnexão: ' . $e->getMessage();
        }
    }

    //metodo para executar queries simples
    public function executaQuery($sql){
        return $this->con->query($sql);
    }

    public function getLista($consulta){
        $query = $this->con->query($consulta);
        $lista = $query->fetchAll();
        // print_r($lista);
        return $lista; //retornando a lista de dados
    }


}

?>
