<?php
require("header.php");
?>
<!-- lateral inicio -->
<div id="lateral" class="col-md-12">

    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid" style="background-color:rgb(87, 142, 190);">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
         
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a class="lin" href="<?php echo APP_PATH ?>inicio"><i class="fa fa-home"></i>&nbsp;In&iacute;cio</a></li>
            <li><a class="lin" href="<?php echo APP_PATH ?>/Curso"><i class="fa fa-user-plus"></i>&nbsp;Cursos</a></li>
			<li><a class="lin" href="<?php echo APP_PATH ?>nivel"><i class="fa fa-user-plus"></i>&nbsp;Nível</a></li>
			<li><a class="lin" href="<?php echo APP_PATH ?>Usuário"><i class="fa fa-user-plus"></i>&nbsp;Usuário</a></li>
			<li><a class="lin" href="<?php echo APP_PATH ?>logout"><i class="fa fa-sign-out"></i>&nbsp;Sair</a></li>
          </ul>
         
        </div><!--/.nav-collapse -->
      </div>
    </nav>
</div>
<!-- lateral fim -->
<?php 
require("footer.php");
?>