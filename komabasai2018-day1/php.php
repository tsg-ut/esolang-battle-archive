<?php
$y=fgets(STDIN)+0;
$x=fgets(STDIN)+0;
echo str_repeat("*",$x)."\n";
for($i=0;$i<$y-2;$i++){echo ("*".str_repeat(" ",$x-2)."*\n");}
echo str_repeat("*",$x);
?>