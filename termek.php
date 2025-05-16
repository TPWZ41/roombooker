<?php
require_once 'db.php';
require_once 'menu.php';

$conn = db_connection();
$eredmeny = $conn->query("SELECT * FROM termek ORDER BY nev");

echo "<h2>Teremlista</h2>";
echo "<table border='1'>
<tr><th>Név</th><th>Kapacitás</th><th>Leírás</th><th>Helyszín</th></tr>";

while ($sor = $eredmeny->fetch_assoc()) {
    echo "<tr>
        <td>{$sor['nev']}</td>
        <td>{$sor['kapacitas']}</td>
        <td>{$sor['leiras']}</td>
        <td>{$sor['helyszin']}</td>
    </tr>";
}

echo "</table>";

$eredmeny->free();
$conn->close();
?>
