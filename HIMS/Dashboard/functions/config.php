<?php
$conn = mysqli_connect("localhost", "root", "root", "cafe");
if (!$conn) {
die("Connection failed: " . mysqli_connect_error());
}
?>