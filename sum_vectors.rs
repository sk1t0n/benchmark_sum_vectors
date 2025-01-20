fn main() {
    let mut a = (1..=10_000_000).map(|n| n as i32).collect::<Vec<_>>();
    let b = (1..=10_000_000).map(|n| n as i32).collect::<Vec<_>>();

    for i in 0..10_000_000 {
        a[i] += b[i];
    }

    println!("last element = {:?}", a[a.len()-1]);
}
