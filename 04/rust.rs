use std::io::Read;fn main(){let mut b=String::new();std::io::stdin().read_to_string(&mut b);let mut x:Vec<i32>=b.trim().split(|c|c<'!').map(|e|e.parse().unwrap()).collect();for i in 0..9{x[i]-=x[9+i%3]}print!("{}",(x[0]*(x[5]*x[7]-x[4]*x[8])+x[1]*(x[3]*x[8]-x[5]*x[6])+x[2]*(x[4]*x[6]-x[3]*x[7]))/6);}