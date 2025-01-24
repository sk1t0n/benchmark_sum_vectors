#include <cstddef>
#include <iostream>
#include <vector>

int main() {
  const size_t N = 10'000'000;

  std::vector<int> a(N), b(N);

  for (size_t i = 0; i < N; ++i) {
   a[i] = i + 1; 
   b[i] = i + 1; 
  }

  for (size_t i = 0; i < N; ++i) {
    a[i] += b[i];
  }

  std::cout << "last element = " << a[N - 1] << std::endl;

  std::vector<int>().swap(a);
  std::vector<int>().swap(b);

  return 0;
}

