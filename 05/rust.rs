use std::io::*;fn main(){let mut a:[u8;999]=[0;999];stdin().read(&mut a);let mut i=51;while a[i-1]!=117{a[i]|=a[i-51]|a[i-1]&1;i+=1;}stdout().write(&a[0..i]);}
