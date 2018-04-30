use std::io::Read;

fn main() {
    let mut buffer = String::new();
    std::io::stdin().read_to_string(&mut buffer).unwrap();
    let a:i32 = buffer[0..2].parse().unwrap();
    let b:i32 = buffer[3..5].parse().unwrap();
    let c:i32 = buffer[6..8].parse().unwrap();
    let d:i32 = buffer[9..11].parse().unwrap();
    let e:i32 = buffer[12..14].parse().unwrap();
    let f:i32 = buffer[15..17].parse().unwrap();
    let g:i32 = buffer[18..20].parse().unwrap();
    let h:i32 = buffer[21..23].parse().unwrap();
    let i:i32 = buffer[24..26].parse().unwrap();
    let j:i32 = buffer[27..29].parse().unwrap();
    let k:i32 = buffer[30..32].parse().unwrap();
    let l:i32 = buffer[33..35].parse().unwrap();
    let m:i32 = d-a;
    let n:i32 = g-a;
    let o:i32 = j-a;
    let p:i32 = e-b;
    let q:i32 = h-b;
    let r:i32 = k-b;
    let s:i32 = f-c;
    let t:i32 = i-c;
    let u:i32 = l-c;
    print!("{}", (m*q*u+n*r*s+o*p*t-m*r*t-n*p*u-o*q*s)/6);
}