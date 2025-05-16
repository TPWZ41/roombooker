<?php
require_once 'db.php';
require_once 'menu.php';

require_once 'menu.php';
?>

<h2>Felhasználó regisztráció</h2>

<form method="POST" action="felhasznalo_rogzites.php">
    <label>Név:</label><br>
    <input type="text" name="nev" required><br><br>

    <label>Email:</label><br>
    <input type="email" name="email" required><br><br>

    <label>Telefonszám:</label><br>
    <input type="text" name="telefon" required><br><br>

    <label>Születési év:</label><br>
    <select name="ev" required>
        <?php
        $aktualisEv = date("Y");
        $legfiatalabbEv = $aktualisEv - 18;
        for ($ev = $legfiatalabbEv; $ev >= 1900; $ev--) {
            echo "<option value='$ev'>$ev</option>";
        }
        ?>
    </select><br><br>

    <label>Születési hónap:</label><br>
    <select name="honap" required>
        <?php
        for ($h = 1; $h <= 12; $h++) {
            echo "<option value='$h'>$h</option>";
        }
        ?>
    </select><br><br>

    <label>Születési nap:</label><br>
    <select name="nap" required>
        <?php
        for ($n = 1; $n <= 31; $n++) {
            echo "<option value='$n'>$n</option>";
        }
        ?>
    </select><br><br>

    <input type="submit" value="Regisztráció">
</form>
