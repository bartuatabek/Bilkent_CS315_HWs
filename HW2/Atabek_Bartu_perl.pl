# Counter-Controlled Loops in Perl
print "Counter-Controlled Loops in Perl\n";
print "--------------------\n";

# 1. What are the types of loop control variables?
# For the C-style for loops, the loop control variable could have integer or
# floating point type i.e double. For the foreach style for loop, character
# collections, strings, map, and arrays are accepted.

# for loop with integer type control variable
for (my $index = 1; $index <= 6; $index++) {
  print("Iterated $index times.\n");
}

print "\n";

# for loop with floating type control variable
my $count = 1;
for (my $index = 0.5; $index <= 5; $index += 0.5) {
  print("Iterated $count times.\n");
  $count++;
}

print("\n");

# foreach style for loop iterating over range of numbers [1,6]
my @range = (1..6);
for (@range) {
  print("$_ "); # default variable
}

print "\n--------------------\n";

# 2. What are the scopes of loop control variables?
# If my keyword exist before the control variable it cannot be accessed outside
# the for loop scope however, without it, it can be accessed out of the scope.
# In the case of foreach loop the control variables can be accessed depending
# on the scope they were defined also, the default variable cannot be accessed
# outside the for loop.

for ($index = 1; $index <= 6; $index++) {
  print("Index is: $index\n");
}

print("\nIndex was: $index");
$index = "Hello World";
print("\nIndex is now: $index\n");
print("\n");

my @a = (1..10);
for $i (@a) {
 print("Index is: $i\n");
}

print("\nIndex is: $i\n"); # explicit iterator cannot accessed outside the scope
print("Numbers are: @a\n");

print "--------------------\n";

# 3. Is it legal for the loop control variable or loop parameters to be
# changed in the loop, and if so, does the change affect loop control?
# In Perl it is legal for to change the loop control variables or loop
# parameters in the loop for the C-style for loop and it affects the loop
# control.In the case of foreach style loop it is also allowed to change the loop
# variables and if the iterable object is changed it also affects the loop control
# but changing the explicit iterator would not result in any effects.

for ($index = 1; $index <= 6; $index++) {
  $index = 10;
  print("Index is: $index\n");
}

print("\n");

my $isAppended = 0;
my @colors = ("red", "blue", "green");
for my $color (@colors) {
  if ($isAppended == 0) {
        push @colors, ("magenta", "orange"); # appended element is also iterated
        $isAppended = 1
  }
  print("$color"," ");
}

print "\n--------------------\n";

# 4. Are the loop parameters evaluated only once, or once for every iteration?
# In Perl loop parameters are evaluated once for every iteration in C-style, for
# the foreach styled loops a single evaluation at the start is done which means
# that the creation of the loop objects are done once such as in range however,
# the loop variable is assigned in each iteration to the next element until the
# end of the collection is reached.

sub counter_statement {
  print "Statement evaluated\n";
  my $limit = 5;
  return $limit;
}

for ($index = 0; $index < counter_statement(); $index++) {
}
