0 =x
0 =cnt
:>s :i =in
1 =q
{.p 1000 *=  .cnt2 ++} =f
{$cnt2 $num <} =g
{$cnt 100 <}
{ $in $q 10 * % =y 0 =c 0 =num {$c $q + 1 - $y <} {.c $q += .num ++} while 0 =cnt2 1 =p $g $f while  .x  $p +=  .cnt ++ .q 10 *=}
while
0 =cnt
1 =p
""
{$cnt 10 <}
{$x $p 1000 * % =y 0 =cnt2 {$cnt2 $p + 1 - $y <} {$cnt :s + .cnt2 $p +=} while .cnt ++ .p 1000 *=}
while

print
