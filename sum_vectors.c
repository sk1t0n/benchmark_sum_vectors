#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[]) {
  const int N = 10000000;

  int *a = (int*) malloc(N * sizeof(int));
  int *b = (int*) malloc(N * sizeof(int));

  for (int i = 0; i < N; ++i) {
    a[i] = i + 1;
    b[i] = i + 1;
  }

  for (int i = 0; i < N; ++i) {
    a[i] += b[i];
  }

  printf("last element = %d\n", a[N - 1]);

  free(a);
  free(b);

  return 0;
}
