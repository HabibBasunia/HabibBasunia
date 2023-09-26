
<?php
  
$studentGrades  = array(
      
    "Student1" => array(
        "Math" => 95,
        "English" => 81,
        "Science" => 84,
    ),

    "Student2" => array(
        "Math" => 85,
        "English" => 85,
        "Science" => 94,
        ),
      
    "Student3" => array(
        "Math" => 95,
        "English" => 75,
        "Science" => 84,
    ),
);
  
foreach($studentGrades as $studentGrade) {
   $avrag=round(($studentGrade['Math']+$studentGrade['English']+$studentGrade['Science'])/3,2); 
   echo "Average: $avrag \n";
}
?>
