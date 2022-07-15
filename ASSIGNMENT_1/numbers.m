
1.

fn main() {
    let x: u32 = 5;
    let mut y: u32 = 5;

    y = x;
    
   

    println!("Success!");
}

2.

fn main() {
    let v: u16 = 38_u8 as u16;
    println!("Success!");
}

output: Success!

3.

fn main() {
    let x = 5;
    assert_eq!("i32".to_string(),type_of(&x));  // 1
    println!("Success!");
}

fn type_of<T>(_: &T) -> String {
    format!("{}", std::any::type_name::<T>())
}

output: Success!
  
 4.
  
  fn main() {
    assert_eq!(i8::MAX, 127); 
    assert_eq!(u8::MAX, 255); 
    println!("Success!");
}

output: Success!
  
  5.
  
  fn main() {
   let v1 = 247_u8 + 8;
   let v2 = i8::checked_add(119, 8).unwrap();
   println!("{},{}",v1,v2);
}

output: Success!

  
  6.
  
  fn main() {
    let v = 1_024 + 0xff + 0o77 + 0b1111_1111;
    assert!(v == 1597);
    println!("Success!");
}

output: Success!

  
  7.
  
  fn main() {
    let x = 1_000.000_1; // f64
    let y: f32 = 0.12; // f32
    let z = 0.01_f64; // f64

    println!("Success!");
}

output: Success!

  
  8.
  
  fn main() {
    assert!(0.1_f32 +0.2_f32 ==0.3_f32);
    println!("Success!");
}

output: Success!
  
  9.
  
  fn main() {
    let mut sum = 0;
    for i in -3..2 {
        sum += i
    }

    assert!(sum == -5);

    for c in 'a'..='z' {
        println!("{}",c as u8);
    }
}
