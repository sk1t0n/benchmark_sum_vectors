run_benchmark1: run_python run_ruby run_php run_go run_rust run_zig

run_benchmark2: run_deno run_node run_bun run_luajit

run_benchmark3: run_java run_csharp run_cpp run_c

run_python:
	hyperfine --warmup 5 "python sum_vectors.py"

run_ruby:
	hyperfine --warmup 5 "ruby sum_vectors.rb"

run_php:
	hyperfine --warmup 5 "php sum_vectors.php"

compile_go:
	go build -o sum_vectors_go.exe sum_vectors.go

run_go:
	hyperfine --warmup 5 sum_vectors_go

compile_rust:
	rustc -C "opt-level=3" -o sum_vectors_rust.exe sum_vectors.rs

run_rust:
	hyperfine --warmup 5 sum_vectors_rust

compile_zig:
	cd zig && zig build --release=fast

run_zig:
	hyperfine --warmup 5 zig\zig-out\bin\zig

run_node:
	hyperfine --warmup 5 "node sum_vectors.js"

run_deno:
	hyperfine --warmup 5 "deno sum_vectors.js"

run_bun:
	hyperfine --warmup 5 "bun sum_vectors.js"

run_luajit:
	hyperfine --warmup 5 "luajit sum_vectors.lua"

compile_java:
	cd java && javac SumVectors.java

run_java:
	cd java && hyperfine --warmup 5 "java SumVectors"

compile_csharp:
	cd csharp\SumVectors && dotnet publish

run_csharp:
	cd csharp\SumVectors\bin\Release\net8.0\publish && hyperfine --warmup 5 SumVectors

compile_cpp:
	clang++ -O3 -std=c++20 -march=native -o sum_vectors_cpp.exe sum_vectors.cpp

run_cpp:
	hyperfine --warmup 5 sum_vectors_cpp

compile_c:
	clang -O3 -o sum_vectors_c.exe sum_vectors.c

run_c:
	hyperfine --warmup 5 sum_vectors_c
