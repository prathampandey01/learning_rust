1.
'''rust
fn main() {
    // Don't modify the following two lines!
    let (x, y) = (1, 2);
    let s = sum(x, y);
    assert_eq!(s, 3);
    println!("Success!");
}

fn sum(x: i32, y: i32) -> i32  {
    x + y
}

output: Success!
'''

2.
'''rust
fn main() {
   print();
}

fn print() -> () {
   println!("Success!");
}

output: Success!
'''

3.
'''rust
fn main() {
    never_return();
}

fn never_return() -> ! {
    panic!("What IF")
}

output:
Compiling playground v0.0.1 (/playground)
    Finished dev [unoptimized + debuginfo] target(s) in 1.29s
     Running `target/debug/playground`
thread 'main' panicked at 'What IF', src/main.rs:10:5
note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace
'''

4.

'''rust
fn main() {
    println!("Success!");
}

fn get_option(tp: u8) -> Option<i32> {
    match tp {
        1 => {
            // TODO
        }
        _ => {
            // TODO
        }
    };
    never_return_fn()
}
fn never_return_fn() -> ! {
    panic!()
}

output: Success!
'''

5.
'''rust
fn main() {
    let b = false;

    let _v = match b {
        true => 1,
        // Diverging functions can also be used in match expression to replace a value of any value
        false => {
            println!("Success!");
            panic!("we have no value for `false`, but we can panic");
        }
    };

    println!("Exercise Failed if printing out this line!");
}

output:
 Compiling playground v0.0.1 (/playground)
    Finished dev [unoptimized + debuginfo] target(s) in 4.45s
     Running `target/debug/playground`
'''
