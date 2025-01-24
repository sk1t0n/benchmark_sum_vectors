import java.util.stream.IntStream;

public class SumVectors {
  public static void main(String[] args) {
    int[] a = IntStream.rangeClosed(1, 10_000_000).toArray();
    int[] b = IntStream.rangeClosed(1, 10_000_000).toArray();

    for (int i = 0; i < a.length; ++i) {
      a[i] += b[i];
    }

    System.out.println(String.format("last element = %d", a[a.length -1]));
  }
}
