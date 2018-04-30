$s=$Input.Split("\n")
$a = $s[0].Split(" ")
$b = $s[1].Split(" ")
$c = $s[2].Split(" ")
$d = $s[3].Split(" ")

$x=@()
$y=@()
$z=@()
foreach($i in 0..2){
$x+=$b[$i]-$a[$i]
$y+=$c[$i]-$a[$i]
$z+=$d[$i]-$a[$i]
}
echo(($x[0]*$y[1]*$z[2]+$x[1]*$y[2]*$z[0]+$x[2]*$y[0]*$z[1]-$x[1]*$y[0]*$z[2]-$x[2]*$y[1]*$z[0]-$x[0]*$y[2]*$z[1])/6)
