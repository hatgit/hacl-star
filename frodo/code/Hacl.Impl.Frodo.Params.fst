module Hacl.Impl.Frodo.Params

open Lib.IntTypes
open Lib.PQ.Buffer

include Frodo.Params

let cdf_table: b:lbuffer uint16 (v cdf_table_len) { LowStar.Buffer.recallable b } =
  LowStar.Buffer.gcmalloc_of_list HyperStack.root cdf_list