$s=$Input.Split("\n")|ForEach{$_.Split(" ")}
foreach($i in 3..11){$s[$i]-=$s[$i%3]}
echo(($s[3]*($s[7]*$s[11]-$s[8]*$s[10])+$s[4]*($s[8]*$s[9]-$s[11]*$s[6])+$s[5]*($s[10]*$s[6]-$s[7]*$s[9]))/6)