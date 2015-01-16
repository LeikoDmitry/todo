<?php
/**
 * Файл инициализации
 */

/*Запуск сессии*/
session_start();
$_SESSION['user_id'] = 1;

/*Подключаемся к базе данных*/
$db = new PDO('mysql:dbname=todo;host=localhost;charset=UTF8','root','');

if(!isset($_SESSION['user_id']))
{
    die("Вы не вошли!");
}

$itemsQuery = $db->prepare("SELECT * FROM items WHERE user = :user");
$itemsQuery->execute([
    ':user' => $_SESSION['user_id']
]);
$items = $itemsQuery->rowCount() ? $itemsQuery : [];