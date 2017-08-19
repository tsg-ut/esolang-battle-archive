use POSIX qw(floor);while(defined($l=<STDIN>)){$x=1+8*unpack("C",pack("B8",$l));$y=int((sqrt($x)));print int($y*$y/$x);}
