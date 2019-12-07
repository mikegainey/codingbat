// Warmup-1 > sleepIn

// The parameter weekday is true if it is a weekday, and the parameter vacation is true if we are on vacation.
// We sleep in if it is not a weekday or we're on vacation. Return true if we sleep in.

//     sleepIn(false, false) → true
//     sleepIn(true, false) → false
//     sleepIn(false, true) → true

fn main() {
    println!("It's not a weekday.  You're not on vaction.");
    if sleep_in(false, false) {
        println!("You sleep in!");
    } else {
        println!("You have to get up early!");
    }
}

fn sleep_in(weekday: bool, vacation: bool) -> bool {
    !weekday || vacation
}

main()
