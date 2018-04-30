(module
    (import "env" "memory" (memory 8192))
    (func (export "main") (result i32)
            (local $i i32)
            (set_local $i (i32.const 4096))
            (i32.const 4096)
            (call $l)
            (i32.const 4099)
            (call $l)
            (i32.const 4102)
            (call $l)
            (i32.const 4105)
            (call $l)
            (i32.const 4108)
            (call $l)
            (i32.const 4111)
            (call $l)
            (i32.const 4114)
            (call $l)
            (i32.const 4117)
            (call $l)
            (i32.const 4120)
            (call $l)
            (i32.const 4123)
            (call $l)
            (i32.const 4126)
            (call $l)
            (i32.const 4129)
            (call $l)
            (call $a)
            (call $p)

            (i32.const 0)
            (return)
    )

    (func $mod (param $i i32)(param $n i32) (result i32)
        (i32.sub
            (get_local $i)
            (i32.mul
                (i32.div_s
                    (get_local $i)
                    (get_local $n)
                )
                (get_local $n)
            )
        )
        return
    )

    (func $l (param $i i32)(result i32)
        (i32.add
            (i32.mul
                (i32.const 10)
                (i32.sub
                    (i32.and
                        (i32.const 255)
                        (i32.load(get_local $i))
                    )
                    (i32.const 48)
                )
            )
            (i32.sub 
                (i32.and
                    (i32.const 255)
                    (i32.load(i32.add (get_local $i)(i32.const 1)))
                )
                (i32.const 48)
            )
        )
        return
    )

    (func $p (param $x i32) (result i32)
        (local $i i32)
        (local $b i32)
        (local $t i32)
        (local $s i32)
        (set_local $s (i32.const 4))
        (block $b1 (loop $l1
            (set_local $b (i32.const 0))
            (set_local $i (i32.const 3))
            (block $b2(loop $l2
                (br_if $b2 (i32.eq (get_local $i)(i32.const -1)))
                (i32.const 256)
                (get_local $i)
                (set_local $t (call $q))
                (set_local $b (i32.add (get_local $b)(i32.mul (i32.add (call $mod (get_local $x)(i32.const 10))(i32.const 48))(get_local $t))))
                (set_local $x (i32.div_u (get_local $x) (i32.const 10)))
                (set_local $i (i32.sub(get_local $i)(i32.const 1)))
                (br $l2)
            ))
            (get_local $s)
            (get_local $b)
            (i32.store)
            (set_local $s (i32.sub(get_local $s)(i32.const 4)))
            (br_if $b1 (i32.eq (get_local $s)(i32.const -4)))
            (br $l1)
        ))
        (get_local $b)
        return
    )

    (func $q (param $x i32)(param $y i32)(result i32)
        (local $i i32)
        (local $b i32)
        (set_local $b (i32.const 1))
        (set_local $i (i32.const 0))
        (block $block(loop $loop
            (br_if $block (i32.eq(get_local $i)(get_local $y)))
            (set_local $b (i32.mul(get_local $x)(get_local $b)))
            (set_local $i (i32.add(get_local $i)(i32.const 1)))
            (br $loop)
        ))
        (get_local $b)
        return
    )

    (func $a (param $x1 i32) (param $y1 i32) (param $z1 i32)
             (param $x2 i32) (param $y2 i32) (param $z2 i32)
             (param $x3 i32) (param $y3 i32) (param $z3 i32)
             (param $x4 i32) (param $y4 i32) (param $z4 i32)
             (result i32)
             (set_local $x2 (i32.sub (get_local $x2)(get_local $x1)))
             (set_local $x3 (i32.sub (get_local $x3)(get_local $x1)))
             (set_local $x4 (i32.sub (get_local $x4)(get_local $x1)))
             (set_local $y2 (i32.sub (get_local $y2)(get_local $y1)))
             (set_local $y3 (i32.sub (get_local $y3)(get_local $y1)))
             (set_local $y4 (i32.sub (get_local $y4)(get_local $y1)))
             (set_local $z2 (i32.sub (get_local $z2)(get_local $z1)))
             (set_local $z3 (i32.sub (get_local $z3)(get_local $z1)))
             (set_local $z4 (i32.sub (get_local $z4)(get_local $z1)))

             (i32.div_u
             (i32.sub
                   (i32.sub
                       (i32.sub
                           (i32.add 
                               (i32.add 
                                 (i32.mul 
                                     (i32.mul (get_local $x2)(get_local $y3))
                                     (get_local $z4)
                                 )
                                 (i32.mul 
                                     (i32.mul (get_local $y2)(get_local $z3))
                                     (get_local $x4)
                                 )
                               )
                             (i32.mul 
                                 (i32.mul (get_local $z2)(get_local $x3))
                                 (get_local $y4)
                             )
                         )

                           (i32.mul 
                               (i32.mul (get_local $x2)(get_local $y4))
                               (get_local $z3)
                           )
                       )
                       (i32.mul 
                           (i32.mul (get_local $y2)(get_local $z4))
                           (get_local $x3)
                       )
                   )
                   (i32.mul 
                       (i32.mul (get_local $z2)(get_local $x4))
                       (get_local $y3)
                   )
                )
                (i32.const 6)
                )
    )
)
