<?php  
    
    $num = 10;  
    echo "Fibonacci Series (10 numbers) :<br>"; 
    echo "\n";  
    function series($num){  
        if($num == 0){  
        return 0;  
        }else if( $num == 1){  
    return 1;  
    }  else {  
    return (series($num-1) + series($num-2));  
    }   
    }  
 
    for ($i = 0; $i < $num; $i++){  
		$res=series($i);
		if ($res>100){
			break;
		}
       echo "$res <br>";  
    echo "\n";  
    }  
?>
