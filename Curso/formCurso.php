<?php require_once('../header.php'); ?>
<div class="container">
  <h2>Cadastro de Cursos</h2>

  <form action="index.php" method="POST">
    <input type="hidden" name="acao" value="cadastrar" />
    <?php if(isset($registro)){ ?>
      <div class="form-group">
        <label for="id">Id:</label>
        <input type="text" class="form-control" id="id" readonly
         name="id" value="<?php if(isset($registro['id'])) echo $registro['id']; ?>" required>
      </div>
    <?php    } ?>
    <div class="form-group">
      <h1 style="color: #ff0000">
          Cadastro de Cursos
      </h1>
      <label for="nome">Descrição:</label>
      <input type="text" class="form-control" id="Nomw" name="nomeCurso" placeholder="Informe o nome do Curso:" value="<?php if(isset($registro['nomeCurso'])) echo $registro['nomeCurso']; ?>" />
    </div>
  
   
    <button type="submit" class="btn btn-default">Enviar Dados</button>
  </form>
</div>
<?php require_once('../footer.php'); ?>
