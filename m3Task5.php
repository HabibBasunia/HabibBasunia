<?php
function generatePassword($n) {
    $alphabet = "abcdefghijklmnopqrstuwxyzABCDEFGHIJKLMNOPQRSTUWXYZ0123456789!@#$%^&*()_+";
    $pass=substr(str_shuffle($alphabet),0,$n);
    return $pass;
}

$passwd=generatePassword(12);
echo $passwd;
?>