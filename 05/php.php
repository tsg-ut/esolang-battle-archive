<?php
for(;$c=fgetc(STDIN);)echo($d=$c<'T'?++$d%51-($c>'J')*51:0)<1?'A':$c;