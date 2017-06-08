<nav class="navbar navbar-toggleable-md fixed-top navbar-inverse bg-inverse" id="menu">
  <button class="navbar-toggler navbar-toggler-left" type="button" data-toggle="collapse" data-target="#menu-deroulant" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <i class="material-icons md-36 mx-auto d-block">&#xE5D2;</i>
  </button>
  <a class="navbar-brand"  title="Opéra National de Paris" href="<?php echo $path_root ; ?>index.php" ><img class="" src="<?php echo $path_images ; ?>logo.svg"></a>
  <div class="collapse navbar-collapse" id="menu-deroulant">
  <ul class="navbar-nav mx-auto">
      <li class="nav-item">
        <a class="nav-link" href="<?php echo $path_root ; ?>index.php"><i class="material-icons">&#xE88A;&nbsp;&nbsp;</i>Accueil</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo $path_pages ; ?>programmation.php"><i class="material-icons">&#xE616;&nbsp;&nbsp;</i>Programmation</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo $path_pages ; ?>infos.php"><i class="material-icons">&#xE88F;&nbsp;&nbsp;</i>Infos</a>
      </li>
    </ul>
  </div>
</nav>