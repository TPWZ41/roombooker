<?php include 'menu.php'; ?>
<h2>Új foglalás rögzítése</h2>
<style>
    form input {
        margin-bottom: 15px;
        display: block;
    }

    form label {
        margin-top: 10px;
        display: block;
    }
</style>

<form action="foglalas_rogzites.php" method="POST">
    <label for="felhasznalo_id">Felhasználó ID:</label>
    <input type="number" name="felhasznalo_id" required><br>

    <label for="terem_id">Terem ID:</label>
    <input type="number" name="terem_id" required><br>

    <label for="datum">Dátum:</label>
    <input type="date" name="datum" required><br>

    <label for="idopont_kezd">Kezdés időpontja:</label>
    <input type="time" name="idopont_kezd" required><br>

    <label for="idopont_veg">Vége időpontja:</label>
    <input type="time" name="idopont_veg" required><br>

    <label for="cel">Cél:</label>
    <input type="text" name="cel"><br>

    <input type="submit" value="Foglalás rögzítése">
</form>

