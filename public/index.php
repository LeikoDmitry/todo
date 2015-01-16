<?php
 require_once"init.php"?>
<!DOCTYPE html>
<html>
      <head>
          <title>Список Дел</title>
          <meta charset="UTF-8"/>
          <link href='http://fonts.googleapis.com/css?family=Marck+Script&subset=latin,cyrillic' rel='stylesheet'/>
          <link href='http://fonts.googleapis.com/css?family=Lobster&subset=latin,cyrillic' rel='stylesheet'/>
          <link href="css/style.css" rel="stylesheet"/>
          <meta name="viewport" content="width=device-width, initial-scale=1">
      </head>
      <body>
            <div class ="list">
                <h1 class="header">Список дел</h1>
                <?php if(!empty($items)):?>
                <ul class="items">
                    <?php foreach($items as $item):?>
                    <li>
                        <span class="item <?php echo $item['done'] ? ' done': ' ' ?>"><?php echo $item['name']?></span>
                        <?php if(!$item['done']):?>
                        <a href="mark.php?as=done&id=<?php echo $item['id']?>" class="done-button">Сделано</a>
                        <?php endif?>
                    </li>
                    <?php endforeach;?>
                </ul>
                <?php else :?>
                    <p>Вы  можете добавить список дел!</p>
                <?php endif; ?>
                <form method="post" action="add.php" class="item-add">
                    <input type="text" name="name" placeholder="Список дел пишем здесь" class="input" autocomplete="off"/>
                    <input type="submit" value="Добавить" class="submit"/>
                </form>
            </div>
      </body>
</html>