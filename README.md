# benchmark_sum_vectors

Benchmark to check the speed of addition of vectors with a length of 10 million elements.

## Run

```sh
hyperfine --warmup 5 "php sum_vectors.php"
# or
make run_php
```

## Result

![benchmark 1](benchmark1.png)
