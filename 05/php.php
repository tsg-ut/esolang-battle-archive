<?php
$b=0;for($d=1;$c=fread(STDIN,1);$d=($d+1)%51){$d*=$c!='T';$b=$c=='K'||$b&&$d;echo!$d||$b?'A':$c;}