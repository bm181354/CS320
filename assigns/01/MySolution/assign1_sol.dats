(* ****** ****** *)

#include "./../assign1.dats"

(* ****** ****** *)
//
// HX:
// Please replace
// this dummy implementation
//
implement
fib_trec(n) = 0
//
(* ****** ****** *)
//
// HX:
// Please replace
// this dummy implementation
//
implement
try_fact((*void*)) = 0
//
(* ****** ****** *)
//
// HX:
// Please replace
// this dummy implementation
//
implement intsqrt(n) = 0
//
(* ****** ****** *)

implement
main0 (argc, argv) =
{
//
// HX: here is some testing code:
//
val r1 = fib_trec(10)
val () = assertloc(fib(10) = r1)
val () = println! ("fib_trec(10) = ", r1)
//
val r2 = fib_trec(20)
val () = println! ("fib_trec(20) = ", r2)
val () = assertloc(fib(20) = r2)
//
val () = println! ("try_fact() = ", try_fact())
//
val () = assertloc(intsqrt(100*100) = 100)
val () = assertloc(intsqrt(100*100-1) = 99)
//
val () = println! ("Good news: Your code has passed initial testing!")
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [assign1_sol.dats] *)
