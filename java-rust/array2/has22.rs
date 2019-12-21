// Array-2 > has22

//     Given an array of ints, return true if the array contains a 2 next to a 2 somewhere.

//     has22([1, 2, 2]) → true
//     has22([1, 2, 1, 2]) → false
//     has22([2, 1, 2]) → false

fn main() {
    let a = [1, 2, 1, 2, 2];
    println!("input = {:?}", a);
    println!("Are there two consecutive 2s?");
    println!("{}", has22(&a));
}

fn has22(a: &[i32]) -> bool {
    let mut lastn = a[0];
    for x in 1 .. a.len() {
        if a[x] == 2 && lastn == 2 {
            return true
        }
        lastn = a[x];
    }
    return false
}
