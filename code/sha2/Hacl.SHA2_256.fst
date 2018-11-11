module Hacl.SHA2_256

open FStar.Mul
open FStar.HyperStack
open FStar.HyperStack.ST

open Lib.IntTypes
open Lib.Buffer
open Lib.ByteBuffer
open Lib.LoopCombinators

module ST = FStar.HyperStack.ST
module Seq = Lib.Sequence
module Loops = Lib.LoopCombinators
module Spec = Spec.SHA2

module Impl = Hacl.Impl.SHA2_256


///
/// SHA-256
///


val pad:
    blocks: lbuffer uint8 (2 * Spec.size_block Spec.SHA2_256)
  -> prev: uint64
  -> last: buffer uint8
  -> len: size_t{ v len == length last
               /\ v len <= Spec.size_block Spec.SHA2_256
               /\ v len + uint_v prev <= Spec.max_input Spec.SHA2_256} ->
  Stack unit
  (requires (fun h -> live h blocks /\ live h last /\ disjoint blocks last))
  (ensures  (fun h0 _ h1 -> modifies1 blocks h0 h1))

let pad blocks prev last len = Impl.pad blocks prev last len

val init: hash:lbuffer uint32 8 ->
  Stack unit
  (requires (fun h -> live h hash))
  (ensures  (fun h0 _ h1 -> modifies1 hash h0 h1))

let init hash = Impl.init hash


val update_block:
    hash: lbuffer uint32 8
  -> block: lbuffer uint8 64 ->
  Stack unit
  (requires (fun h -> live h hash /\ live h block /\ disjoint hash block))
  (ensures  (fun h0 _ h1 -> modifies1 hash h0 h1))

let update_block hash block = Impl.update_block hash block


val update_last:
    hash: lbuffer uint32 8
  -> prev: uint64
  -> last: buffer uint8
  -> len: size_t{ v len == length last
               /\ v len <= 64
               /\ v len + uint_v prev <= pow2 61 - 1} ->
  Stack unit
  (requires (fun h -> live h hash /\ live h last /\ disjoint hash last))
  (ensures  (fun h0 _ h1 -> modifies1 hash h0 h1))

let update_last hash prev last len = Impl.update_last hash prev last len


val update:
    hash: lbuffer uint32 8
  -> input: buffer uint8
  -> len: size_t{ v len == length input
               /\ v len <= pow2 61} ->
  Stack unit
  (requires (fun h -> live h hash /\ live h input /\ disjoint hash input))
  (ensures  (fun h0 _ h1 -> modifies1 hash h0 h1))

let update hash input len = Impl.update hash input len


val finish:
    hash: lbuffer uint8 32
  -> hw: lbuffer uint32 8 ->
  Stack unit
  (requires (fun h -> live h hash /\ live h hw /\ disjoint hash hw))
  (ensures  (fun h0 _ h1 -> modifies1 hash h0 h1))

let finish hash hw = Impl.finish hash hw


val hash:
    output: lbuffer uint8 32
  -> input: buffer uint8
  -> len: size_t{length input == v len} ->
  Stack unit
  (requires (fun h -> live h output /\ live h input /\ disjoint output input))
  (ensures  (fun h0 _ h1 -> modifies1 output h0 h1))

let hash output input len = Impl.hash output input len
