<?php
[$a,$b,$c]=explode(" ",fgets(STDIN));
[$d,$e,$f]=explode(" ",fgets(STDIN));
[$g,$h,$i]=explode(" ",fgets(STDIN));
[$j,$k,$l]=explode(" ",fgets(STDIN));
$g-=$a;$h-=$b;$i-=$c;$j-=$a;$k-=$b;$l-=$c;
echo (($e-$b)*($i*$j-$g*$l)+($f-$c)*($g*$k-$h*$j)+($d-$a)*($h*$l-$i*$k))/6;