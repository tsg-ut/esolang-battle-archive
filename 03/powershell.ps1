foreach ($line in $Input.Split('\r\n')){
    $n = [convert]::ToInt32($line,2);
    if (($n -eq 0) -or ($n -eq 1) -or ($n -eq 3) -or ($n -eq 6) -or ($n -eq 10) -or ($n -eq 15) -or ($n -eq 21) -or ($n -eq 28) -or ($n -eq 36) -or ($n -eq 45) -or ($n -eq 55) -or ($n -eq 66) -or ($n -eq 78) -or ($n -eq 91) -or ($n -eq 105) -or ($n -eq 120) -or ($n -eq 136) -or ($n -eq 153) -or ($n -eq 171) -or ($n -eq 190) -or ($n -eq 210) -or ($n -eq 231) -or ($n -eq 253)) {
        Write-Host 1;
    } else {
        Write-Host 0;
    }
}