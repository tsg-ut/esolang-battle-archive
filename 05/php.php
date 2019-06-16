<?php
$b=0;$d=1;while($c=fread(STDIN,1)){if($c=='T')$d=0;$b=$c=='K'||$b&&$d;echo(!$d||$b?'A':$c);$d=($d+1)%51;}