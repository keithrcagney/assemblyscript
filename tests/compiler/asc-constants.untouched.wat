(module
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/ASC_TARGET i32 (i32.const 0))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
 (global $~lib/ASC_MEMORY_BASE i32 (i32.const 0))
 (global $~lib/ASC_OPTIMIZE_LEVEL i32 (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/ASC_FEATURE_SIGN_EXTENSION i32 (i32.const 0))
 (global $~lib/ASC_FEATURE_MUTABLE_GLOBALS i32 (i32.const 0))
 (global $~lib/ASC_FEATURE_NONTRAPPING_F2I i32 (i32.const 0))
 (global $~lib/ASC_FEATURE_BULK_MEMORY i32 (i32.const 0))
 (global $~lib/ASC_FEATURE_SIMD i32 (i32.const 0))
 (global $~lib/ASC_FEATURE_THREADS i32 (i32.const 0))
 (global $~lib/ASC_FEATURE_EXCEPTION_HANDLING i32 (i32.const 0))
 (global $~lib/ASC_FEATURE_TAIL_CALLS i32 (i32.const 0))
 (global $~lib/ASC_FEATURE_REFERENCE_TYPES i32 (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $start:asc-constants (; 0 ;) (type $FUNCSIG$v)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
 )
 (func $start (; 1 ;) (type $FUNCSIG$v)
  call $start:asc-constants
 )
 (func $null (; 2 ;) (type $FUNCSIG$v)
  unreachable
 )
)
