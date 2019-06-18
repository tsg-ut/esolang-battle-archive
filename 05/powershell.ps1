$t,$s=$input|%{$_.TrimEnd()}
"$t
"*$s.Length+$s[-1].PadRight($t.Length,75)|echo