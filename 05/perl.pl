$s=`dd`;
$s=~/T/;
$i=length$`;
$s=~s/(?<=\n.{$i}) /#/g;
$s=~s/(?<=K) *(?=#)/"#"x length$&/ge;
print$s