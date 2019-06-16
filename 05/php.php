<?php
for($d=1;$c=fgetc(STDIN);$d=-~$d%51)echo!($d*=$c!='T')|($b=$c=='K'|$b*$d)?'A':$c;