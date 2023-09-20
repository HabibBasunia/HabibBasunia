<?php

function printFibonacci($n)
 {
 
  $first = 0;
  $second = 1;
 
  echo "Fibonacci Series :<br>";
 
  echo "$first <br>";
  echo "$second<br>";
 
  for($i = 2; $i < $n; $i++){
 
    $third = $first + $second;
 
    echo "$third<br>";
 
    $first = $second;
    $second = $third;
 
    }
}

printFibonacci(15);

?>