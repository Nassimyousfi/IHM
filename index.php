<?php // Définition des chemins d'accès aux fichiers
$path_root="./";
$path_structure=$path_root."structure/";
$path_pages=$path_root."pages/";
$path_images=$path_root."images/";
?>

<!DOCTYPE html>
<html lang="fr" class="w-100 h-100">
<?php include($path_structure."head.php"); ?>	<!-- Inclusion <head> -->
<body class="w-100 h-100">
	<?php include($path_structure."menu.php"); ?>	<!-- Inclusion menu -->

	<!-- Contenu de la page d'accueil -->
	<div class="container container-fluid" id="main">
		<div class="card">
			<div class="card-block text-center">
				<h4 class="card-title"><a href="#" class="card-link">Date et Titre du spectacle à venir</a></h4>
				<p class="card-text">Présentation du spectacle</p>
			</div>
			<img class="card-img-bottom img-fluid mx-auto d-block" src="<?php echo $path_images ; ?>les_contes_d_hoffmann_1_christian_leiber_opera_national_de_paris.jpg" alt="Titre du spectacle">
			<ul class="list-group list-group-flush my-3">
				<li class="list-group-item"><a href="#" class="card-link">Date et titre du spectacle + informations</a></li>
				<li class="list-group-item"><a href="#" class="card-link">Date et titre du spectacle + informations</a></li>
				<li class="list-group-item"><a href="#" class="card-link">Date et titre du spectacle + informations</a></li>
				<li class="list-group-item"><a href="#" class="card-link">Date et titre du spectacle + informations</a></li>
				<li class="list-group-item"><a href="#" class="card-link">Date et titre du spectacle + informations</a></li>
				<li class="list-group-item"><a href="#" class="card-link">Date et titre du spectacle + informations</a></li>
				<li class="list-group-item"><a href="#" class="card-link">Date et titre du spectacle + informations</a></li>
			</ul>		
		</div>
	</div>

	<?php include($path_structure."pied.php"); ?>	<!-- Inclusion pied de page -->
	<?php include($path_structure."liensJS.php"); ?>	<!-- Inclusion CDN et fichiers javascript -->
</body>
</html>
