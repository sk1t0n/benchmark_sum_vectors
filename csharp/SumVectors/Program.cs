int[] a = [..Enumerable.Range(1, 10_000_000)];
int[] b = [..Enumerable.Range(1, 10_000_000)];

for (int i = 0; i < a.Length; ++i)
{
  a[i] += b[i];    
}

Console.WriteLine($"last element = {a[a.Length - 1]}");
