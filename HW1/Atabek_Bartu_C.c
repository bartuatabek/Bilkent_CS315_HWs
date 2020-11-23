#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Arrays in C */
int main( int argc, const char* argv[] ) {
  printf("Arrays in C\n");
  printf("--------------------\n");

  /* 1. What types are legal for subscripts?
  * In C only integer types such as signed, long, short, etc. are allowed for index (subscript) types.
  */
  int numbers[5];

  numbers[0] = 5;
  numbers[1] = 4;
  numbers[2] = 3;
  numbers[3] = 2;
  numbers[9/2] = 1; // this is the same as numbers[4]

  printf("The fifth element of the array is: %d\n\n", numbers[4]);

  /* output each array element's value */
  int index;
  for(index = 0; index < 5; index++)
    printf("numbers[%d] = %d\n", (index + 1), numbers[index]);

  /* access and change the 3rd element's value */
  numbers[0] = 99;

  /* access and output the 5th element's value */
  printf("\nnumbers[0] = %d\n", numbers[0]);
  printf("--------------------\n");

  /* invalid subscript types */
  // array[1.3] = 1;
  // array[true] = 3000;
  // printf("%s\n", array["four"]);

  /* 2. Are subscripting expressions in element references range checked?
  * Index range checking is not specified in C.
  */
  printf("numbers[7] = %d is not an array element but can be accessed.\n", numbers[7]);
  printf("numbers[-5] = %d is not an array element but can be accessed.\n", numbers[-5]);
  printf("--------------------\n");

  /* 3. When are subscript ranges bound?
  * C arrays that include static modifier are static and bound at compile time
  * C arrays without static modifier are fixed stack-dynamic and bound at compile time
  * C provides fixed heap-dynamic arrays and bound at runtime.
  */

  /* heap dynamic array of 11 char */
  char * str = (char *) malloc(11);
  strcpy(str, "Arrays in C");
  printf("String: %s\n", str);
  free(str);

  /* static array */
  static double balance[5] = {3.14, 5.50, 9.90, 49.99, 2462.47};

  /* stack-dynamic array */
  int arr[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  printf("--------------------\n");

  /* 4. When does allocation take place?
  * C allows initialization at the time of storage allocation. For static items
  * allocation takes place at load time and for stack-dynamic and heap-dynamic
  * it takes place at runtime.
  */
  static double constants[] = {3.14, 2.71};
  char *contacts[] = {"Craig", "Phil", "Steve"};
  printf("--------------------\n");

  /* 5. Are ragged or rectangular multidimensional arrays allowed, or both?
  * C supports jagged arrays but not rectangular arrays.
  */

  /* jaged multidimensional array with 5 rows and 2 columns */
   int a[5][2] = {{-1,-2}, {1,2}, {-2,-4}, {3,6},{-4,-8}};

   /* output each array element's value */
   int i;
   int j;

   for (i = 0; i < 5; i++ ) {
      for (j = 0; j < 2; j++ ) {
         printf("a[%d][%d] = %d\n", i,j, a[i][j] );
      }
   }

   /* jagged multidimensional array */
   int *jagged[3];
   jagged[0] = malloc(sizeof(int) * 10);
   jagged[1] = malloc(sizeof(int) * 4);
   jagged[2] = malloc(sizeof(int) * 7);
   printf("--------------------\n");

  /* 6. What is the maximum number of subscripts?
  * Maximum number of subscripts in C has no limitations.
  */
  printf("contacts[%d] = %s \n", 2, contacts[2]);
  printf("a[%d][%d] = %d\n", 4, 1, a[4][1]);
  printf("--------------------\n");

  /* 7. Can array objects be initialized?
  * Yes, it is possible to initialize some or all elements of an array when the
  * array is defined. If there are fewer initializers than elements in the
  * array, the remaining elements are automatically initialized to 0. Also for
  * the dynamic arrays the initialization is not possible at the decleration.
  */
  int threes[] = {3, 6, 9, 12, 15, 18, 21, 24, 27, 30};
  int fives[10] = {5, 10, 15, 20, 25};

  for (index = 0; i < 10; i++ ) {
    printf("threes[%d] = %d\n", i, threes[i]);
  }

  printf("\n");

  for (index = 0; i < 10; i++ ) {
    printf("fives[%d] = %d\n", i, fives[i]);
  }

  /* 8. Are any kind of slices supported?
  * No such built-in mechanism for array slicing in C
  */
  return 0;
}
