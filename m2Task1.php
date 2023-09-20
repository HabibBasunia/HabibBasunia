<?php

function even(int $start,int $end) {
	echo "The even numbers are (for loop): <br>";
	for ($x =$start-1; $x <= $end; $x+=2){
	
		if($x>1 and $x%2==0){
				echo " $x <br>";
			} 
	}
}

even(1,20);



//While Loop: 

$x = 0;
echo "The even numbers are (While Loop): <br>";
while($x <= 20) {

    if($x>1 and $x%2==0){
				echo "$x <br>";
			} 
    $x+=2;
}


//Do...While Loop: 

$x = 0;
	echo "The even numbers are (Do...While Loop): <br>";
do {
	   if($x>1 and $x%2==0){
				echo "$x <br>";
	   }
    $x+=2;
} while ($x <= 20);

?>


