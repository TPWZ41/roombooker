<?php
if (!function_exists('db_connection')) {
    function db_connection() {
        $conn = new mysqli("localhost", "root", "", "roombooker");
        if ($conn->connect_error) {
            die("Kapcsolódási hiba: " . $conn->connect_error);
        }
        return $conn;
    }
}
?>


