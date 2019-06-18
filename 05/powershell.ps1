$t,$s=$input|%{$_.TrimEnd()}
"$t
"*$s.Count+$s[-1].PadRight($t.Length,75)|echo