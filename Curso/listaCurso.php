<?php require_once('../header.php'); ?>
<div class="container">
<hr >
<hr >
<hr >
 <h3>Lista de Tarefas</h3>
  <a class="btn btn-info" href="controladorCurso.php?acao=novo">
    <i class="glyphicon glyphicon-plus"></i> Adicionar</a>
  <table class="table table-striped table-hover">

  
    <th>#</th>
      <th>Descrição</th>
    
     <th>Editar</th>
    <th>Excluir</th>


      <?php  foreach($dados as $p){ ?>
             <tr>
                <td><?= $p['id']; ?></td>
                <td><?= $p['Nome']; ?></td>
                             
               
               
                <td>
                  <a class="btn btn-info" href="controladorCurso.php?acao=editar&id=<?= $p['id']; ?>">
                    <i class="glyphicon glyphicon-pencil"></i>
                  </a>
                </td>
               <td>
                  <a class="btn btn-danger" href="controladorCurso.php?acao=excluir&id=<?= $p['id']; ?>">
                    <i class="glyphicon glyphicon-remove"></i>
                  </a>
                </td>
              </tr>

    <?php } ?>

  </table>

</div>

<?php require_once('../footer.php'); ?>
