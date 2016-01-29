(* ****** ****** *)

#include "./../assign2-2.dats"

(* ****** ****** *)
//
fun
fact(n: int): int =
  if n > 0 then n * fact(n-1) else 0
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
val N = 10
//
val xs = mylist_fromto(0, N)
//
val () = assertloc(mylist_length(xs) = N)
//
val () = assertloc(fact(N) = mylist_mul(xs)*N)
//
val () = println! ("Good news: Your code has passed initial testing!")
//
} (* end of [main0] *)
#endif // #ifdef

(* ****** ****** *)

(* end of [assign2_sol.dats] *)
