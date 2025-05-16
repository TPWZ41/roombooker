<?php
require_once 'db.php';

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);

    $conn = db_connection();
    
    // Előkészített törlő lekérdezés
    $stmt = $conn->prepare("DELETE FROM foglalasok WHERE id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();

    $stmt->close();
    $conn->close();
}

// Törlés után visszairányít a foglalások listájához
header("Location: foglalasok.php");
exit;
?>
