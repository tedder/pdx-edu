#include <stdio.h>

extern int f(int*);

void printArray(char* msg, int* a) {
  for (; *a; ++a) {
    printf("%s%d", msg, *a);
    msg = ", ";
  }
  printf("\n");
}

int main() {
  int a[] = { 5, 3, 6, 8, 2, 10, 11, 9, 1, 4, 7, 0 };
  printArray("Before: ", a);
  printf("first result is %d\n", f(a));
  printArray("After: ", a);

  int b[] = { 45, 23, 66, 18, 21, 10, 31, 75, 0 };
  printArray("Before: ", b);
  printf("second result is %d\n", f(b));
  printArray("After: ", b);

  printf("\n");
  return 0;
}
