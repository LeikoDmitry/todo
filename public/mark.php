<?php
/**
 * Файл для работы с ссылкой
 */
require_once"init.php";
if(isset($_GET['as'],$_GET['id']))
{
     $as = $_GET['as'];
     $item = $_GET['id'];

    switch($as){
        case 'done':
            $doneQuery = $db->prepare("UPDATE items SET done = 1 WHERE id = :item AND user = :user");
            $doneQuery->execute([
                'item' => $item,
                'user' => $_SESSION['user_id']
            ]);
        break;

    }
}
header("Location: index.php");

