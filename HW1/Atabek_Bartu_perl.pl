#!/usr/bin/perl
use strict;
use warnings;

# Arrays in Perl
print "Arrays in Perl\n";
print "--------------------\n";

# 1. What types are legal for subscripts?
# In Perl only integer types are allowed for index (substript) types. However,
# strings are also accepted but they return the first element at index 0.
my @days = <Monday Tuesday Wednesday Thursday Friday Saturday Sunday >;

print "The first day of the week is: $days[0]\n";
print "The second day of the week is: $days[1]\n";
print "The third day of the week is: $days[2]\n";
print "The fourth day of the week is: $days[3]\n";
print "The fifth day of the week is: $days[4]\n";
print "The sixth day of the week is: $days[5]\n";
print "The sevent day of the week is: $days[6]\n";

print "\nThis is a string substript which gives: $days['ninety']\n";
print "--------------------\n";

# 2. Are subscripting expressions in element references range checked?
# Index range checking is not specified in Perl and Perl supports
# negative indexing. If index is negative the element is substituted as
# size of the list + index.
print "days[-3] = 7 - 3 = days[4] = $days[-3]\n";
print  "days[47] gives undef: $days[47]\n"; # undef
print "--------------------\n";

# 3. When are subscript ranges bound?
# Perl supports heap-dynamic arrays therefore binding
# of subscript ranges is dynamic and bound at runtime.
my @numbers = (1..10);
print "@numbers\n";  # Prints numbers from 1 to 10
print "--------------------\n";

# 4. When does allocation take place?
# Perl supports heap-dynamic arrays therefore storage allocation is
# dynamic and can change any number of times and it takes place at runtime.
my @arr = ();
$arr[9999] = 'x';
print "This code allocates a 9999 element array.\n";
print "--------------------\n";

# 5. Are ragged or rectangular multidimensional arrays allowed, or both?
# Perl supports jagged arrays but not rectangular arrays.
my @ragged1 = ([1, 2, 3], [4, 5, 6], [7, 8, 9]);
print "This is a ragged array.\n";
print "@$_\n" for @ragged1;

my @ragged2 = [
    [],
    [ 1],
    [ 2, 3],
    [ 4, 5, 6],
    [ 7, 8, 9, 10],
];
print "--------------------\n";

# 6. What is the maximum number of subscripts?
# Perl has no limit for the maximum number of subscripts.
print "The first element in numbers is: $numbers[0]\n";
print "The element at the bottom right [2][2] in rectangular array: $ragged1[2][2]\n";
print "--------------------\n";

# 7. Can array objects be initialized?
# Array objects can be initialized in Perl.
my @letters = qw(a b c d e f g h);
print "@letters\n";              # a b c d e f g h
print "$letters[3]\n";           # d   the element with index 3
print "--------------------\n";

# 8. Are any kind of slices supported?
# Perl supports slices.
my @alphabet = 'a'..'z'; # 26 letters
my @vowels = @alphabet[0,4,8,14,20]; # a, e, i, o, u...
print "The vowels in the alphabet are: @vowels\n";
