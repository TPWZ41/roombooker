<?php
function db_connection() {
    return new mysqli('localhost', 'root', '', 'roombooker');
}

require_once 'db.php';
require_once 'menu.php';

$conn = db_connection();
$eredmeny = $conn->query("SELECT * FROM felhasznalok ORDER BY nev");

echo "<h2>Felhasználók listája</h2>";
echo "<table border='1'>
<tr><th>Név</th><th>Email</th><th>Telefonszám</th><th>Születési dátum</th></tr>";

while ($sor = $eredmeny->fetch_assoc()) {
    echo "<tr>
        <td>{$sor['nev']}</td>
        <td>{$sor['email']}</td>
        <td>{$sor['telefon']}</td>
        <td>{$sor['szuletesi_datum']}</td>
    </tr>";
}

echo "</table>";

$eredmeny->free();
$conn->close();
?>
