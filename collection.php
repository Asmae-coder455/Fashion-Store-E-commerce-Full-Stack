<?php
session_start();
// // ===== DEBUG TEMPORAIRE - à supprimer après =====
// include_once('config/dbcon.php');
// echo "<div style='background:#fff3cd;padding:10px;font-family:monospace;font-size:13px;border:1px solid #ccc;margin:10px'>";
// echo "<b>Test connexion DB :</b> ";

// // Test 1 : connexion
// if (!isset($con) || $con === false) {
//     echo " Pas de connexion ($con)<br>";
// } else {
//     echo " Connecté<br>";
// }

// // Test 2 : base de données sélectionnée
// $db_check = mysqli_query($con, "SELECT DATABASE() as db");
// $db_row = mysqli_fetch_assoc($db_check);
// echo "<b>Base active :</b> " . ($db_row['db'] ?? 'AUCUNE') . "<br>";

// // Test 3 : table categories
// $tbl = mysqli_query($con, "SHOW TABLES LIKE 'categories'");
// echo "<b>Table categories :</b> " . (mysqli_num_rows($tbl) > 0 ? " existe" : " MANQUANTE") . "<br>";

// // Test 4 : données
// $cnt = mysqli_query($con, "SELECT COUNT(*) as c FROM categories");
// if ($cnt) {
//     $row = mysqli_fetch_assoc($cnt);
//     echo "<b>Nb catégories :</b> " . $row['c'] . "<br>";
// } else {
//     echo "<b>Erreur SQL :</b> " . mysqli_error($con) . "<br>";
// }

// echo "</div>";
// // ===== FIN DEBUG =====
include('pages/includes/header.php');
include_once('functions/userfunction.php');
?>

<!-- Start collection section -->
<section class="product__section section--padding">
    <div class="container">
        <?php
        $categories = getAllActive('categories');

        if ($categories !== false && mysqli_num_rows($categories) > 0) {
        ?>
            <div class="section__heading text-center mb-40">
                <h2 class="section__heading--maintitle">COLLECTION</h2>
            </div>
            
            <div class="product__section--inner">
                <div class="row justify-content-center">
                    <?php
$images = glob("admin/assets/img/category/*.{jpg,jpeg,png,webp}", GLOB_BRACE);

foreach ($images as $image):
?>
    <div class="col-lg-3 col-md-4 col-sm-6 col-6 mb-3">
        <article class="product__card">
            <div class="product__card--thumbnail">
                <img class="product__card--thumbnail__img"
                     src="<?= $image ?>"
                     alt="category-image">
            </div>
        </article>
    </div>
<?php endforeach; ?>
                </div>
            </div>
        <?php
        } else {
            echo '<div class="text-center py-4">
            <p style="font-size:16px; color:#666;">
                No categories are available at the moment. Please check back later or contact support for assistance.
            </p>
          </div>';
        }
        ?>
    </div>
</section>
<!-- End collection section -->

<?php include('pages/includes/footer.php'); ?>