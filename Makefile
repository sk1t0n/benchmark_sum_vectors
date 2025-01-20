run: run_python run_ruby run_php83 run_php84 run_go run_rust

run_python:
	hyperfine --warmup 5 "python sum_vectors.py"

run_ruby:
	hyperfine --warmup 5 "ruby sum_vectors.rb"

run_php83:
	hyperfine --warmup 5 "php83.bat sum_vectors.php"

run_php84:
	hyperfine --warmup 5 "php84.bat sum_vectors.php"

compile_go:
	go build -o sum_vectors_go.exe sum_vectors.go

run_go:
	hyperfine --warmup 5 sum_vectors_go.exe

compile_rust:
	rustc -C "opt-level=3" -o sum_vectors_rust.exe sum_vectors.rs

run_rust:
	hyperfine --warmup 5 sum_vectors_rust.exe
