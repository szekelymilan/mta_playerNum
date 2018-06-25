<?php
  if (isset($_GET['curr']))
    fwrite(fopen('curr.txt', 'w'), $_GET['curr']);

  if (isset($_GET['max']))
    fwrite(fopen('max.txt', 'w'), $_GET['max']);

  if (isset($_GET['out']))
    echo(fread(fopen('curr.txt', 'r'), filesize('curr.txt')) . '/' . fread(fopen('max.txt', 'r'), filesize('max.txt')));
?>