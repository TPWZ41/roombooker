<?php
require_once 'db.php';

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $nev = $_POST["nev"] ?? '';
    $kapacitas = $_POST["kapacitas"] ?? 0;
    $leiras = $_POST["leiras"] ?? '';
    $helyszin = $_POST["helyszin"] ?? '';

    if ($nev && $kapacitas) {
        $conn = db_connection();
        $stmt = $conn->prepare("INSERT INTO termek (nev, kapacitas, leiras, helyszin) VALUES (?, ?, ?, ?)");
        $stmt->bind_param("siss", $nev, $kapacitas, $leiras, $helyszin);
        $stmt->execute();
        $stmt->close();
        $conn->close();
    }
}

header("Location: termek.php");
exit;
?>
