<?php
  //session_start();

  //if(!isset($_SESSION['autenticado'])){
  //  header('location: ../login.php');
  //}

  //require_once('../dbConnect.php');
  require_once('../classeConexao.php');
  $con = new Conexao();
if(isset($_REQUEST['acao'])){ 
  $acao=$_REQUEST['acao'];
}else{ $acao='listaCurso';
}
switch ($acao) {
    case 'novo':
        novo();
        break;
    case 'atualizar':
        atualizar();
        break;
    case 'cadastrar':
        cadastrar();
        break;

    case 'editar':
        editar();
        break;
    case 'excluir':
        excluir();
        break;
    default:
        listaCurso();
}


  //instancia do objeto do tipo Conexao
  // var_dump($con); exit; //para avaliar a conexão com o banco de dados

function listaCurso(){
    $con = new Conexao();

      $consulta = "SELECT cr001_id as id, cr001_nome as Nome
                    FROM cr001_curso ";

      var_dump($consulta);
   echo "Consulta";
   print($consulta);
//   echo "Consulta"; print_r($consulta); 


      $dados = $con->getLista($consulta);
      // echo "<pre>"; print_r($dados); echo "</pre>";
      require_once ('listaCurso.php');
}

function excluir(){
   $con = new Conexao();
      $id  = $_GET['id'];
      $sql = "DELETE FROM cr001_curso WHERE id = :id";
      $dados  = array('id'=>$id);
      $result = $con->executaQuery($sql, $dados);
      if($result==true) header('location: controladorTarefa.php');
      else echo "Deu ruim";
  }

  function novo(){
     $con = new Conexao();
      $acaoForm = "controladorCurso.php?acao=cadastrar";
      require_once('formCurso.php');
  }

  function cadastrar(){
      $con = new Conexao();
      $nomeCurso = utf8_decode($_POST['nomeCurso']);
      
      $sql    =  "INSERT INTO cr001_curso(CR001_NOME) "
                  . " VALUES('".$nomeCurso."')";

      $result = $con->executaQuery($sql);
      if($result==true) {
        echo "Cadastro realizado com sucesso!";
        echo '<script>setTimeout(function(){ location.href="index.php"; }, 3000);</script>';
      } else {
        echo "Não foi possível realizar a requisição. <a href='index.php'>Voltar</a>";
      }
  }

  function editar(){
      $con = new Conexao();
      $id       = $_REQUEST['id'];
      $sql      = "SELECT * FROM cr001_curso WHERE id = :id";
      $chave    = array('id'=>$id);
      $registro = $con->getRegistro($sql, $chave);

      // print_r($registro); exit;
      // $acaoForm = "controlador".CONTROLADOR.".php?acao=atualizar&id=".$id;
      $acaoForm = "controladorCurso.php?acao=atualizar&id=".$id;
      // require_once('form'.CONTROLADOR.'.php');
      require_once('formCurso.php');
  }
 function atualizar(){
      $con = new Conexao();
      $registro = $_POST;
      $sql = "UPDATE tarefa SET descricao= :descricao, dataInicio=:dataInicio, dataFinal=:dataFinal, "
             ." status=:status, prioridade=:prioridade, id_pessoa=:id_pessoa, id_projeto=:id_projeto "
             . " WHERE id = :id";
      $result = $con->executaQuery($sql, $registro);
      if($result==true) header('location: controladorTarefa.php');
      else echo "Deu ruim :(";
  }
 ?>
