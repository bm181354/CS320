(* ****** ****** *)

#include "./../assign3.dats"

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
val width = 10
val height = 10
//
val P1 = cons0(1, cons0(3, nil0()))
val P2 = cons0(2, cons0(4, cons0(5, nil0())))
val P3 = cons0(6, cons0(7, cons0(8, nil0())))
//
val () = show_poles(width, height, P1, P2, P3)
//
val () = println! ("Good news: Your code has passed initial testing!")
//
} (* end of [main0] *)
#endif // #ifdef

(* ****** ****** *)

(* end of [assign3_sol.dats] *)
