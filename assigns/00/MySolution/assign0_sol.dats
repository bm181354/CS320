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
    val () = println! ("True!")         //Problem on this line
    in
    true
    end
    else  let
    val () = println! ("False!")        //Problem on this line as well 
    in
    false
    end

//(* ****** ****** *)

(* end of [assign0_sol.dats] *)
