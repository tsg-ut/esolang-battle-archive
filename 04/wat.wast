(module(import"env""memory"(memory 8192))
(func(export"main")(result i32)
    (local $a i32)
    (local $d i32)(local $e i32)(local $f i32)
    (local $g i32)(local $h i32)(local $i i32)
    (local $j i32)(local $k i32)(local $l i32)
    (i32.const 4096)
    (set_local $a(call $m))
    (i32.const 4105)
    (set_local $d(i32.sub(call $m)(get_local $a)))
    (i32.const 4114)
    (set_local $g(i32.sub(call $m)(get_local $a)))
    (i32.const 4123)
    (set_local $j(i32.sub(call $m)(get_local $a)))
    (i32.const 4099)
    (set_local $a(call $m))
    (i32.const 4108)
    (set_local $e(i32.sub(call $m)(get_local $a)))
    (i32.const 4117)
    (set_local $h(i32.sub(call $m)(get_local $a)))
    (i32.const 4126)
    (set_local $k(i32.sub(call $m)(get_local $a)))
    (i32.const 4102)
    (set_local $a(call $m))
    (i32.const 4111)
    (set_local $f(i32.sub(call $m)(get_local $a)))
    (i32.const 4120)
    (set_local $i(i32.sub(call $m)(get_local $a)))
    (i32.const 4129)
    (set_local $l(i32.sub(call $m)(get_local $a)))
    (set_local $a(i32.div_u
        (i32.sub
            (i32.sub
                (i32.sub
                    (i32.add 
                        (i32.add 
                            (i32.mul(i32.mul(get_local $d)(get_local $h))(get_local $l))
                            (i32.mul(i32.mul(get_local $e)(get_local $i))(get_local $j)))
                        (i32.mul(i32.mul(get_local $f)(get_local $g))(get_local $k)))
                    (i32.mul(i32.mul (get_local $d)(get_local $k))(get_local $i)))
                (i32.mul(i32.mul (get_local $e)(get_local $l))(get_local $g)))
               (i32.mul(i32.mul(get_local $f)(get_local $j))(get_local $h)))
    (i32.const 6)))

    (set_local $i(i32.const 7))
    (block $r(loop $s
        (i32.store8(get_local $i)
            (i32.add
                (i32.sub(get_local $a)(i32.mul(i32.div_s(get_local $a)(i32.const 10))(i32.const 10)))
                (i32.const 48)
            )
        )
        (set_local $a(i32.div_u(get_local $a)(i32.const 10)))
        (br_if $r(i32.eq(get_local $i)(i32.const 0)))
        (set_local $i(i32.sub(get_local $i)(i32.const 1)))
    (br $s)))

    (i32.const 0)
    return
)

(func $m(param $i i32)(result i32)
    (i32.add
        (i32.mul
            (i32.const 10)
            (i32.sub
                (i32.load8_s(get_local $i))
                (i32.const 48)
            )
            )
        (i32.sub 
            (i32.load8_s(i32.add(get_local $i)(i32.const 1)))
            (i32.const 48)
        )
    )
)
)
