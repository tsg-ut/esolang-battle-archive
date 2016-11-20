set bin [gets stdin]
set dec 0
foreach char [split $bin ""] {set dec [expr {($dec << 1) + $char}]}
puts $dec
