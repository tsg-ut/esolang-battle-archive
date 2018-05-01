(module(import"env""memory"(memory 8192))(func(export"main")(result i32)(local $a i32)(local $d i32)(local $e i32)(local $f i32)(local $g i32)(local $h i32)(local $i i32)(local $j i32)(local $k i32)(local $l i32)i32.const 4096
call $m
set_local $a
i32.const 4105
call $m
get_local $a
i32.sub
set_local $d
i32.const 4114
call $m
get_local $a
i32.sub
set_local $g
i32.const 4123
call $m
get_local $a
i32.sub
set_local $j
i32.const 4099
call $m
set_local $a
i32.const 4108
call $m
get_local $a
i32.sub
set_local $e
i32.const 4117
call $m
get_local $a
i32.sub
set_local $h
i32.const 4126
call $m
get_local $a
i32.sub
set_local $k
i32.const 4102
call $m
set_local $a
i32.const 4111
call $m
get_local $a
i32.sub
set_local $f
i32.const 4120
call $m
get_local $a
i32.sub
set_local $i
i32.const 4129
call $m
get_local $a
i32.sub
set_local $l
get_local $h
get_local $l
i32.mul
get_local $k
get_local $i
i32.mul
i32.sub
get_local $d
i32.mul
get_local $i
get_local $j
i32.mul
get_local $l
get_local $g
i32.mul
i32.sub
get_local $e
i32.mul
i32.add
get_local $g
get_local $k
i32.mul
get_local $j
get_local $h
i32.mul
i32.sub
get_local $f
i32.mul
i32.add
i32.const 6
i32.div_u
set_local $a
i32.const 7
set_local $i(block $r(loop $s
get_local $i
get_local $a
get_local $a
i32.const 10
i32.div_s
i32.const 10
i32.mul
i32.sub
i32.const 48
i32.add
i32.store8
get_local $a
i32.const 10
i32.div_u
set_local $a
get_local $i
i32.eqz
br_if $r
get_local $i
i32.const 1
i32.sub
set_local $i
br $s))i32.const 0)(func $m(param $i i32)(result i32)get_local $i
i32.load8_s
i32.const 48
i32.sub
i32.const 10
i32.mul
i32.const 1
get_local $i
i32.add
i32.load8_s
i32.const 48
i32.sub
i32.add))