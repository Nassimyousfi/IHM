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
    <?php include($path_pages."accueil.php"); ?>	<!-- Inclusion page d'acceuil -->
    <?php include($path_structure."pied.php"); ?>	<!-- Inclusion pied de page -->
    <?php include($path_structure."liensJS.php"); ?>	<!-- Inclusion CDN et fichiers javascript -->
</body>
</html>
