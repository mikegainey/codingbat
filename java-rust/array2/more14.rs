// Array-2 > more14
// https://codingbat.com/prob/p104627

//     Given an array of ints, return true if the number of 1's is greater than the number of 4's

//     more14([1, 4, 1]) → true
//     more14([1, 4, 1, 4]) → false
//     more14([1, 1]) → true

fn main() {
    let purpose = "Given an array of ints, return true if the number of 1's is greater than the number of 4's";
    println!("\n{}", purpose);

    let a = [1,4,1,4,4,1,1];
    println!("input = {:?}", a);

    println!("{}", more14(&a));
}

fn more14(a: &[u32]) -> bool {

    fn helper(a: &[u32], ones: u32, fours: u32) -> bool {
        if a.len() == 0 {
            return ones > fours
        } else {
            let head = &a[0];
            let tail = &a[1..];
            if *head == 1 {
                helper(tail, ones+1, fours)
            } else if *head == 4 {
                helper(tail, ones, fours+1)
            } else {
                helper(tail, ones, fours)
            }
        }
    }
    helper(&a, 0, 0) // trampoline with the input and accumulators initialized to zero
}
