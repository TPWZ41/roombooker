<?php
require_once 'db.php';
require_once 'menu.php';

$conn = db_connection();
$eredmeny = mysqli_query($conn, "SELECT * FROM foglalasok");

echo "<h2>Foglalások listája</h2>";

if (mysqli_num_rows($eredmeny) > 0) {
    echo "<table border='1'>
            <tr>
                <th>ID</th>
                <th>Felhasználó ID</th>
                <th>Terem ID</th>
                <th>Dátum</th>
                <th>Kezdés</th>
                <th>Vége</th>
                <th>Cél</th>
                <th>Művelet</th>
            </tr>";

    while ($sor = mysqli_fetch_assoc($eredmeny)) {
        echo "<tr>
                <td>{$sor['id']}</td>
                <td>{$sor['felhasznalo_id']}</td>
                <td>{$sor['terem_id']}</td>
                <td>{$sor['datum']}</td>
                <td>{$sor['idopont_kezd']}</td>
                <td>{$sor['idopont_veg']}</td>
                <td>{$sor['cel']}</td>
                <td><a href='foglalas_torles.php?id={$sor['id']}'>Törlés</a></td>
              </tr>";
    }

    echo "</table>";
} else {
    echo "Nincs foglalás.";
}

mysqli_close($conn);
?>

