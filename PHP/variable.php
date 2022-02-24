<?php
// ======================================
// connection bdd
$db = new PDO('mysql:host=localhost;dbname=sebquizz', 'sebastien', 'sebastien')
        or die('could not connect to database');
