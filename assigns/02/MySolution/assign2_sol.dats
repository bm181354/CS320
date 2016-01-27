(* ****** ****** *)

#include "./../assign2.dats"

(* ****** ****** *)
//
// HX:
// Please replace
// this dummy implementation
//
implement
show_triangle(level) =
println! ("Not yet implemented: show_triangle(", level, ")")
//
(* ****** ****** *)

#ifdef
MAIN_NONE
#then
#else
implement
main0 (argc, argv) =
{
//
// HX: here is some testing code:
//
val () = show_triangle(3)
val () = show_triangle(5)
//
val () = println! ("Good news: Your code has passed initial testing!")
//
} (* end of [main0] *)
#endif // #ifdef

(* ****** ****** *)

(* end of [assign2_sol.dats] *)
