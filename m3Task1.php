<?php
$text="The quick brown fox jumps over the lazy dog.";

echo $text."\n";
$newText=strtolower($text);

echo $newText."\n";

echo str_replace("brown","red",$newText);
?>


