use std::io::*;
fn main(){
  let mut b=String::new();
  let mut c=String::new();
  stdin().read_line(&mut b);
  while !c.contains('K') {
    c=String::new();
    stdin().read_line(&mut c);
    print!("{}",b);
  }
  let t=c.trim_end();
  print!("{}{}",t,"=".repeat(b.trim_end().len()-t.len()));
}