<?php
while($_=readline()){
$t||$t=strpos($_,"T");
$k=strpos($_,"K");
if($k){
echo str_repeat(" ",$k);
echo str_repeat("K",$t-$k+1);
}else{
echo str_repeat(" ",$t);
echo "T\n";
}
}