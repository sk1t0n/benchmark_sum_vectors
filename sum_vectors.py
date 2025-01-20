def main():
    a = [n for n in range(1, 10_000_001)]
    b = [n for n in range(1, 10_000_001)]

    for i in range(10_000_000):
        a[i] += b[i]

    print(f"last element = {a[-1]}")


if __name__ == "__main__":
    main()
