
open Prims
type point =
| Point of Bigint.bigint * Bigint.bigint * Bigint.bigint

let is_Point = (fun _discr_ -> (match (_discr_) with
| Point (_) -> begin
true
end
| _ -> begin
false
end))

let ___Point___x = (fun projectee -> (match (projectee) with
| Point (_38_5, _38_6, _38_7) -> begin
_38_5
end))

let ___Point___y = (fun projectee -> (match (projectee) with
| Point (_38_9, _38_8, _38_10) -> begin
_38_8
end))

let ___Point___z = (fun projectee -> (match (projectee) with
| Point (_38_12, _38_13, _38_11) -> begin
_38_11
end))

let get_x = (fun p -> (___Point___x p))

let get_y = (fun p -> (___Point___y p))

let get_z = (fun p -> (___Point___z p))

let to_apoint = (fun h p -> (Obj.magic (())))

let refs = (fun p -> (Obj.magic (())))

let erefs = (fun p -> ())

let op_Plus_Plus_Plus = (fun a b -> (FStar_Set.union a b))

let set_intersect_lemma = (Obj.magic ((fun x y -> (FStar_All.failwith "Not yet implemented:set_intersect_lemma"))))

let make = (fun x y z -> Point (x, y, z))

let pointOf = (fun h p -> (Obj.magic (())))

let rec swap_conditional_aux' = (fun a b swap ctr -> (let h0 = (FStar_ST.get ())
in (match ((Parameters.norm_length - ctr)) with
| 0 -> begin
()
end
| _38_76 -> begin
(let _38_77 = ()
in (let ai = (Bigint.index_limb a ctr)
in (let bi = (Bigint.index_limb b ctr)
in (let y = (UInt.log_xor_limb ai bi)
in (let x = (UInt.log_and_limb swap y)
in (let ai' = (UInt.log_xor_limb x ai)
in (let bi' = (UInt.log_xor_limb x bi)
in (let _38_85 = ()
in (let _38_87 = ()
in (let _38_89 = (Bigint.upd_limb a ctr ai')
in (let h2 = (FStar_ST.get ())
in (let _38_92 = (Bigint.upd_limb b ctr bi')
in (let h3 = (FStar_ST.get ())
in (let _38_95 = ()
in (let _38_97 = ()
in (let _38_99 = ()
in (let _38_101 = ()
in (let _38_103 = (swap_conditional_aux' a b swap (ctr + 1))
in (let h1 = (FStar_ST.get ())
in ())))))))))))))))))))
end)))

let rec gswap_conditional_aux_lemma = (fun h0 h1 a b swap -> ())

let swap_conditional_aux_lemma = (fun h0 h1 a b is_swap -> ())

let rec swap_conditional_aux = (fun a b swap ctr -> (let h0 = (FStar_ST.get ())
in (let _38_165 = (swap_conditional_aux' a b swap 0)
in (let h1 = (FStar_ST.get ())
in ()))))

let norm_lemma = (fun h0 h1 b mods -> ())

let enorm_lemma = (fun h0 h1 b mods -> ())

let swap_is_on_curve = (fun h0 h3 a b is_swap -> ())

let gswap_conditional_lemma = (fun h0 h1 h2 h3 a b is_swap -> ())

let swap_conditional_lemma = (fun h0 h1 h2 h3 a b is_swap -> ())

let swap_conditional = (fun a b is_swap -> (let h0 = (FStar_ST.get ())
in (let _38_286 = (swap_conditional_aux (get_x a) (get_x b) is_swap 0)
in (let h1 = (FStar_ST.get ())
in (let _38_289 = ()
in (let _38_291 = ()
in (let _38_293 = (swap_conditional_aux (get_y a) (get_y b) is_swap 0)
in (let h2 = (FStar_ST.get ())
in (let mods = ()
in (let _38_297 = ()
in (let _38_299 = ()
in (let _38_301 = ()
in (let _38_303 = ()
in (let _38_305 = (swap_conditional_aux (get_z a) (get_z b) is_swap 0)
in (let h3 = (FStar_ST.get ())
in ())))))))))))))))

let bignum_live_lemma = (fun h0 h1 b mods -> ())

let norm_lemma_2 = (fun h0 h1 a b -> ())

let glemma_copy_0 = (fun h0 h1 a b -> ())

let lemma_copy_0 = (fun h0 h1 a b -> ())

let lemma_copy_2 = (fun h0 h1 a b -> ())

let lemma_copy_3 = (fun h0 h1 a b -> ())

let lemma_copy_4 = (fun h0 h1 a b -> ())

let lemma_copy_5 = (fun h0 h1 h2 h3 bb aa -> ())

let lemma_copy_6 = (fun h0 h1 h2 h3 a b -> ())

let lemma_copy_1 = (fun h0 h1 h2 h3 a b -> ())

let copy = (fun a b -> (let h0 = (FStar_ST.get ())
in (let _38_514 = (Bigint.blit_limb (get_x b) (get_x a) Parameters.norm_length)
in (let h1 = (FStar_ST.get ())
in (let _38_517 = ()
in (let _38_519 = ()
in (let _38_521 = ()
in (let _38_523 = ()
in (let _38_525 = ()
in (let _38_527 = (Bigint.blit_limb (get_y b) (get_y a) Parameters.norm_length)
in (let h2 = (FStar_ST.get ())
in (let _38_530 = ()
in (let _38_532 = ()
in (let _38_534 = ()
in (let _38_536 = ()
in (let _38_538 = ()
in (let _38_540 = ()
in (let _38_542 = (Bigint.blit_limb (get_z b) (get_z a) Parameters.norm_length)
in (let h3 = (FStar_ST.get ())
in ())))))))))))))))))))

let swap = (fun a b -> (copy b a))

let gon_curve_lemma = (Obj.magic ((fun h0 h1 a mods -> ())))

let on_curve_lemma = (fun h0 h1 a mods -> ())

let glive_lemma = (Obj.magic ((fun h0 h1 a mods -> ())))

let live_lemma = (fun h0 h1 a mods -> ())

let gdistinct_lemma = (fun a b -> ())

let distinct_lemma = (fun a b -> ())

let distinct_commutative = (fun a b -> ())

let swap_both = (fun a b c d -> (let h0 = (FStar_ST.get ())
in (let _38_662 = (copy c a)
in (let h1 = (FStar_ST.get ())
in (let set01 = ()
in (let _38_666 = ()
in (let _38_668 = ()
in (let _38_670 = ()
in (let _38_672 = ()
in (let _38_674 = (copy d b)
in (let h2 = (FStar_ST.get ())
in ())))))))))))

let copy2 = (fun p' q' p q -> (let h0 = (FStar_ST.get ())
in (let _38_704 = (copy p' p)
in (let h1 = (FStar_ST.get ())
in (let set01 = ()
in (let _38_708 = ()
in (let _38_710 = ()
in (let _38_712 = ()
in (let _38_714 = ()
in (let _38_716 = (copy q' q)
in (let h2 = (FStar_ST.get ())
in ())))))))))))




