<?php
  echo "<html>";
  echo "<body>";
  echo "Arrays in PHP<br>";
  echo "--------------------<br>";

  // 1. What types are legal for subscripts?
  // In PHP  types such as integer, float, null, character are allowed for
  //  index (substript) types.
  $friends = array("Gorkem", "Anthony", "Tony", "Deniz");

  // Accessing the elements directly
  echo "Accessing the array elements directly:<br>";
  echo $friends[0], "<br>";
  echo $friends[1], "<br>";
  echo $friends[2], "<br>";
  echo $friends[3], "<br>";

  echo $friends[1.6], "<br>";
  echo "--------------------<br>";

  // 2. Are subscripting expressions in element references range checked?
  // Index range checking is not specified in php.
  echo "Accessing the array elements at invalid indexes gives undefined:<br>";
  echo $friends[10], "<br>";
  echo $friends[-22], "<br>";
  echo "--------------------<br>";

  // 3. When are subscript ranges bound?
  // PHP supports heap-dynamic arrays therefore binding
  // of subscript ranges is dynamic and bound at runtime.

  // 4. When does allocation take place?
  // PHP supports heap-dynamic arrays therefore storage allocation is
  // dynamic and can change any number of times and it takes place at runtime.

  // 5. Are ragged or rectangular multidimensional arrays allowed, or both?
  // PHP supports jagged arrays but not rectangular arrays
  // Defining a multidimensional array
  $contacts = array(
    array(
      "email" => "craig@bilkent.com",
      "name" => "Craig Federighi",
    ),
    array(
      "email" => "jony@bilkent.com",
      "name" => "Jony Ive",
    ),
    array(
      "email" => "steve@bilkent.com",
      "name" => "Steve Manning",
    )
  );

  foreach($contacts as $contact) {
      echo $contact['email'], "<br>";
      echo $contact['name'], "<br>";
  }
  echo "--------------------<br>";

  // 6. What is the maximum number of subscripts?
  // PHP has no limit for the maximum number of subscripts.
  echo "The first element in friends is: " . friends[0], "<br>";
  echo "Jony Ive email address is: " . $contacts[1]["email"], "<br>";
  echo "--------------------<br>";

  // 7. Can array objects be initialized?
  // Array objects can be initialized in PHP.
  $employees = array("Craig", "22", "Jerry", "23","Jony", "31");
  echo "Jony is " . $employees[5] . " years old.<br>";
  echo "--------------------<br>";

  // 8. Are any kind of slices supported?
  // PHP supports slices.
  $a = array("orange","black","green","blue","magenta");
  print_r(array_slice($a,0,5));
  echo "</body>";
  echo "</html>";
  ?>
