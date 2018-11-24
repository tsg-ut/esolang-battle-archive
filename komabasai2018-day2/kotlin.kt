fun main(a:Array<String>){val s=readLine()!!
(0..32).map{i->print(if(s[i]=='1'&&s[i+5]=='1'&&s[i+12]=='1'&&s[i+17]=='1')1 else 0)}
(33..49).map{print('0')}}