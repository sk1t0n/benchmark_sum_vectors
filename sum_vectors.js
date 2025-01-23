let a = Array.from({ length: 10_000_000 }, (_, i) => i + 1);
const b = Array.from({ length: 10_000_000 }, (_, i) => i + 1);

for (let i = 0; i < a.length; ++i) {
  a[i] += b[i];
}

console.log(`last element = ${a[a.length - 1]}`);
