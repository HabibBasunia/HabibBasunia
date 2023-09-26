<?php

$numbers = range(1, 10);
print_r($numbers);

function is_not_even($n) {
    return $n & 1;
}

$oddNumbers = array_filter($numbers,'is_not_even');
print_r($oddNumbers);

?>