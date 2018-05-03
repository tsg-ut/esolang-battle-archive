(module(memory(import"env""memory")1)(func(export"main")(result i32)(local i32)(local i32)(local i32)(loop
get_local 0
get_local 1
i32.load8_s offset=4097
get_local 1
i32.load8_s offset=4096
i32.const 10
i32.mul
i32.add
i32.const 528
i32.sub
tee_local 2
i32.store offset=12
get_local 0
get_local 0
i32.load
get_local 2
i32.sub
i32.store
get_local 0
i32.const 4
i32.add
set_local 0
get_local 1
i32.const 3
i32.add
tee_local 1
i32.const 36
i32.ne
br_if 0)i32.const 14
set_local 0
i32.const 36
set_local 1
i32.const 0
set_local 2(loop
get_local 0
i32.const 3
i32.sub
i32.const 9
i32.rem_s
i32.const 2
i32.shl
i32.load offset=12
get_local 0
i32.const 1
i32.sub
i32.const 9
i32.rem_s
i32.const 2
i32.shl
i32.load offset=12
i32.mul
get_local 0
i32.const 9
i32.rem_s
i32.const 2
i32.shl
i32.load offset=12
get_local 0
i32.const 4
i32.sub
i32.const 9
i32.rem_s
i32.const 2
i32.shl
i32.load offset=12
i32.mul
i32.sub
get_local 1
i32.load
i32.mul
get_local 2
i32.add
set_local 2
get_local 1
i32.const 12
i32.sub
set_local 1
get_local 0
i32.const 3
i32.sub
tee_local 0
i32.const 5
i32.sub
br_if 0)get_local 2
i32.const 6
i32.div_s
set_local 0
i32.const 4
set_local 1(loop
get_local 1
get_local 0
i32.const 10
i32.rem_s
i32.const 48
i32.add
i32.store8
get_local 0
i32.const 10
i32.div_s
set_local 0
get_local 1
i32.const 1
i32.sub
tee_local 1
i32.const -1
i32.ne
br_if 0)i32.const 5
i32.const 0
i32.store
i32.const 0))