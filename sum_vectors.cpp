#include <algorithm>
#include <iostream>
#include <ranges>
#include <vector>

int main() {
    const int N = 10'000'000;

    std::ranges::iota_view<int, int> a(1, N+1);
    std::ranges::iota_view<int, int> b(1, N+1);
    std::vector<int> c(N);

    std::ranges::transform(a, b, c.begin(), std::plus{});
  
    std::cout << "last element = " << c[N - 1] << std::endl;
    return 0;
}

