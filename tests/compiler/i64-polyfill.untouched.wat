(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $../../lib/i64/assembly/i64/lo (mut i32) (i32.const 0))
 (global $../../lib/i64/assembly/i64/hi (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "getHi" (func $../../lib/i64/assembly/i64/getHi))
 (export "getLo" (func $../../lib/i64/assembly/i64/getLo))
 (export "clz" (func $../../lib/i64/assembly/i64/clz))
 (export "ctz" (func $../../lib/i64/assembly/i64/ctz))
 (export "popcnt" (func $../../lib/i64/assembly/i64/popcnt))
 (export "eqz" (func $../../lib/i64/assembly/i64/eqz))
 (export "add" (func $../../lib/i64/assembly/i64/add))
 (export "sub" (func $../../lib/i64/assembly/i64/sub))
 (export "mul" (func $../../lib/i64/assembly/i64/mul))
 (export "div_s" (func $../../lib/i64/assembly/i64/div_s))
 (export "div_u" (func $../../lib/i64/assembly/i64/div_u))
 (export "rem_s" (func $../../lib/i64/assembly/i64/rem_s))
 (export "rem_u" (func $../../lib/i64/assembly/i64/rem_u))
 (export "and" (func $../../lib/i64/assembly/i64/and))
 (export "or" (func $../../lib/i64/assembly/i64/or))
 (export "xor" (func $../../lib/i64/assembly/i64/xor))
 (export "shl" (func $../../lib/i64/assembly/i64/shl))
 (export "shr_s" (func $../../lib/i64/assembly/i64/shr_s))
 (export "shr_u" (func $../../lib/i64/assembly/i64/shr_u))
 (export "rotl" (func $../../lib/i64/assembly/i64/rotl))
 (export "rotr" (func $../../lib/i64/assembly/i64/rotr))
 (export "eq" (func $../../lib/i64/assembly/i64/eq))
 (export "ne" (func $../../lib/i64/assembly/i64/ne))
 (export "lt_s" (func $../../lib/i64/assembly/i64/lt_s))
 (export "lt_u" (func $../../lib/i64/assembly/i64/lt_u))
 (export "le_s" (func $../../lib/i64/assembly/i64/le_s))
 (export "le_u" (func $../../lib/i64/assembly/i64/le_u))
 (export "gt_s" (func $../../lib/i64/assembly/i64/gt_s))
 (export "gt_u" (func $../../lib/i64/assembly/i64/gt_u))
 (export "ge_s" (func $../../lib/i64/assembly/i64/ge_s))
 (export "ge_u" (func $../../lib/i64/assembly/i64/ge_u))
 (func $../../lib/i64/assembly/i64/getHi (; 0 ;) (type $FUNCSIG$i) (result i32)
  global.get $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/getLo (; 1 ;) (type $FUNCSIG$i) (result i32)
  global.get $../../lib/i64/assembly/i64/lo
 )
 (func $../../lib/i64/assembly/i64/clz (; 2 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.clz
  local.set $2
  local.get $2
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/lo
  i32.const 0
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/ctz (; 3 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.ctz
  local.set $2
  local.get $2
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/lo
  i32.const 0
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/popcnt (; 4 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.popcnt
  local.set $2
  local.get $2
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/lo
  i32.const 0
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/eqz (; 5 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.const 0
  i64.ne
  i32.eqz
  local.set $2
  local.get $2
  global.set $../../lib/i64/assembly/i64/lo
  i32.const 0
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/add (; 6 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.add
  local.set $4
  local.get $4
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/sub (; 7 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.sub
  local.set $4
  local.get $4
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/mul (; 8 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.mul
  local.set $4
  local.get $4
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/div_s (; 9 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.div_s
  local.set $4
  local.get $4
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/div_u (; 10 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.div_u
  local.set $4
  local.get $4
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/rem_s (; 11 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.rem_s
  local.set $4
  local.get $4
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/rem_u (; 12 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.rem_u
  local.set $4
  local.get $4
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/and (; 13 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.and
  local.set $4
  local.get $4
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/or (; 14 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.or
  local.set $4
  local.get $4
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/xor (; 15 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.xor
  local.set $4
  local.get $4
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/shl (; 16 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.shl
  local.set $4
  local.get $4
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/shr_s (; 17 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.shr_s
  local.set $4
  local.get $4
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/shr_u (; 18 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.shr_u
  local.set $4
  local.get $4
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/rotl (; 19 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.rotl
  local.set $4
  local.get $4
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/rotr (; 20 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.rotr
  local.set $4
  local.get $4
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/eq (; 21 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.eq
  local.set $4
  local.get $4
  global.set $../../lib/i64/assembly/i64/lo
  i32.const 0
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/ne (; 22 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.ne
  local.set $4
  local.get $4
  global.set $../../lib/i64/assembly/i64/lo
  i32.const 0
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/lt_s (; 23 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.lt_s
  local.set $4
  local.get $4
  global.set $../../lib/i64/assembly/i64/lo
  i32.const 0
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/lt_u (; 24 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.lt_u
  local.set $4
  local.get $4
  global.set $../../lib/i64/assembly/i64/lo
  i32.const 0
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/le_s (; 25 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.le_s
  local.set $4
  local.get $4
  global.set $../../lib/i64/assembly/i64/lo
  i32.const 0
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/le_u (; 26 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.le_u
  local.set $4
  local.get $4
  global.set $../../lib/i64/assembly/i64/lo
  i32.const 0
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/gt_s (; 27 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.gt_s
  local.set $4
  local.get $4
  global.set $../../lib/i64/assembly/i64/lo
  i32.const 0
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/gt_u (; 28 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.gt_u
  local.set $4
  local.get $4
  global.set $../../lib/i64/assembly/i64/lo
  i32.const 0
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/ge_s (; 29 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.ge_s
  local.set $4
  local.get $4
  global.set $../../lib/i64/assembly/i64/lo
  i32.const 0
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $../../lib/i64/assembly/i64/ge_u (; 30 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.ge_u
  local.set $4
  local.get $4
  global.set $../../lib/i64/assembly/i64/lo
  i32.const 0
  global.set $../../lib/i64/assembly/i64/hi
 )
 (func $null (; 31 ;) (type $FUNCSIG$v)
  unreachable
 )
)
