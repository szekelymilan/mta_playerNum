<?php
  $result = file_get_contents('http://localhost/.api/?out');
  echo('Players: ' . $result);
?>