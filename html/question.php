<?php

use LDAP\Result;

session_start();
$db = new PDO('mysql:host=localhost;dbname=sebquizz', 'sebastien', 'sebastien')
    or die('could not connect to database');


if (isset($_POST['anime'])) {
    $themeAnimation = $db->prepare("SELECT categorie, question, r1, r2, r3, r4, bReponse  FROM `question_seb` INNER JOIN theme ON theme.idTheme = question_seb.idTheme INNER JOIN reponse ON reponse.idReponse = question_seb.idReponse WHERE theme.idTheme = 1");
}
if (isset($_POST['gaming'])) {
    $themeAnimation = $db->prepare("SELECT categorie, question, r1, r2, r3, r4, bReponse FROM `question_seb` INNER JOIN theme ON theme.idTheme = question_seb.idTheme INNER JOIN reponse ON reponse.idReponse = question_seb.idReponse WHERE theme.idTheme = 2");
}
if (isset($_POST['cinema'])) {
    $themeAnimation = $db->prepare("SELECT categorie, question, r1, r2, r3, r4, bReponse FROM `question_seb` INNER JOIN theme ON theme.idTheme = question_seb.idTheme INNER JOIN reponse ON reponse.idReponse = question_seb.idReponse WHERE theme.idTheme = 3");
}
if (isset($_POST['tech'])) {
    $themeAnimation = $db->prepare("SELECT categorie, question, r1, r2, r3, r4, bReponse FROM `question_seb` INNER JOIN theme ON theme.idTheme = question_seb.idTheme INNER JOIN reponse ON reponse.idReponse = question_seb.idReponse WHERE theme.idTheme = 4");
}

$themeAnimation->execute();
$result = $themeAnimation->fetchAll();

$obj = json_encode($result);
// return $obj;

if (isset($result)) {
    header('Location: ./principale.php');
} else {
    header('Location: ./principale.php?erreur=7');
}
