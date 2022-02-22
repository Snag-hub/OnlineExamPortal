<?php

//MySQLi Procedural
 $servername = "localhost";
 $username = "root";
 $password = "";
 $dbname = "ExamWebApp";

$conn = new mysqli($servername, $username, $password, $dbname);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
