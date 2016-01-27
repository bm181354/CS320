(* ****** ****** *)

#include "./../assign0.dats"

(* ****** ****** *)
//
// HX:
// Please replace
// this dummy implementation
//
 (* ****** ****** *)
implement
triangle_test(x, y, z)=
    if x <y+z && y <x+z && z <x+y 
    then let
    val () = println! ("True!")        
    in
    true
    end
    else  let
    val () = println! ("False!")       
    in
    false
    end

//(* ****** ****** *)

(* end of [assign0_sol.dats] *)
