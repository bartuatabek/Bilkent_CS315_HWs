<?php
  echo "<html>";
  echo "<body>";
  echo "Counter-Controlled Loops in PHP<br>";
  echo "--------------------<br>";

  // 1. What are the types of loop control variables?
  // For the C-style for loops, the loop control variable could have integer,
  // floating point types or string. For the foreach type loops, array type is
  // accepted as it loops through a block of code for each element in an array.

  # for loop with integer type control variable
  for ($index = 1; $index <= 6; $index++) {
    echo "Iterated " . $index . " times.<br>";
  }

  echo "<br>";

  # for loop with floating type control variable
  $count = 1;
  for ($index = 0.5; $index <= 5; $index += 0.5) {
    echo "Iterated " . $count . " times.<br>";
    $count++;
  }

  echo "<br>";

  # for loop with string type control variables
  for ($index = "a"; $index <= "e"; $index++) {
    echo "Iterated " . $index . " times.<br>";
  }

  echo "<br>";

  # foreach style for loop iterating over array of numbers [1,5]
  $array = array(1, 2, 3, 4, 5);
  foreach ($array as $value) {
    echo "Value is $value <br>";
  }

  echo "--------------------<br>";

  // 2. What are the scopes of loop control variables?
  // In PHP for the C-style for loops and the for/in loops loop control
  // variables are accessible both inside the for loop block and also they
  // could be accessed outside.

  // index can be accessed outside the loop scope
  for ($index = 5; $index < 10; $index++) {
    echo "Index is: " . $index . " <br>";
  }

  echo "<br>";
  echo "After the loop index is: " . $index . " <br>";
  echo "<br>";

  // last element can be accessed outside the loop scope
  foreach ($array as $value) {
    echo "Value is $value <br>";
  }

  echo "<br>";
  echo "The last element is: " . $value . "<br>";

  echo "--------------------<br>";

  // 3. Is it legal for the loop control variable or loop parameters to be
  // changed in the loop, and if so, does the change affect loop control?
  // In PHP it is legal for to change the loop control variables or
  // loop parameters in the loop for the C-style for loop and it affects the
  // loop control. In the case of foreach style loop it is also allowed to
  // change the loop variables but it would would not result in any effects.

  // changing control variable affects loop control
  for ($index = 1; $index < 6; $index++) {
    $index = 10;
    echo "Index is: " . $index . " <br>";
  }

  echo "<br>";

  // appended element does not affect the control
  // new colors added but not displayed in the loop
  $isAppended = 0;
  $colors = array("red", "blue", "green");
  foreach ($colors as $color) {
    if ($isAppended == 0) {
      array_push($colors, "magenta", "orange");
      $isAppended = 1;
    }
    echo "Color is: $color <br>";
  }

  echo "<br>";

  foreach ($colors as $color) {
    echo "$color "; // contains 'magenta' and 'orange'
  }
  echo "<br>--------------------<br>";

  // 4. Are the loop parameters evaluated only once, or once for every iteration?
  // In PHP loop parameters are evaluated once for every iteration in
  // C-style, for the for/in styled loops a single evaluation at the start is
  // done which means that the creation of the loop objects are done once
  // however, the loop variable is assigned in each iteration to the next
  // element until the end of the collection is reached.

  function counter_statement() {
    echo "Statement evaluated<br>";
    $limit = 5;
    return $limit;
  }

  for ($index = 0; $index < counter_statement(); $index++) {
  }
  echo "</body>";
  echo "</html>";
?>
