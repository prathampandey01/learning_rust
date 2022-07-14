1.  


   '''rust
   use std::mem::size_of_val;
fn main() {
    let c1 = 'a';
    assert_eq!(size_of_val(&c1),4); 

    let c2 = '中';
    assert_eq!(size_of_val(&c2),4); 

    println!("Success!");
} 

output: Success!
    '''
    
2.
  '''rust
fn main() {
    let c = '中';
    print_char(c);
} 

fn print_char(c: char) {
    println!("{}", c);
}

output: Success!
    '''
    
3.
  '''rust
fn main() {
    let _f: bool = false;
    let t = false;
    if !t {
        println!("Success!");
    }
}

output: Success!

4.
  '''rust
fn main() {
    let f = true;
    let t = true || false;
    assert_eq!(t, f);
    println!("Success!");
}

output: Success!
    '''
    
5.

  '''rust
fn main() {
    let v0: () = ();

    let v = (2, 3);
    assert_eq!(v0, implicitly_ret_unit());
    println!("Success!");
}

fn implicitly_ret_unit() {
    println!("I will return a ()");
}

fn explicitly_ret_unit() -> () {
    println!("I will return a ()");
}

output: 
I will return a ()
Success!
    '''
    

6.

  '''rust
use std::mem::size_of_val;
fn main() {
    let unit: () = ();
    assert!(size_of_val(&unit) == 0);

    println!("Success!");
}

output: Success!
    '''
