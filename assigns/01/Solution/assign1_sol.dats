(* ****** ****** *)

#include "./../assign1.dats"

(* ****** ****** *)
//
// HX:
// Please replace
// this dummy implementation
//
implement
fib_trec(n) = let
//
fun
loop
(
  i: int, f0: int, f1: int
) : int =
  if i < n then loop(i+1, f1, f0+f1) else f0
in
  loop(0, 0, 1)
end // end of [fib_trec]
//
//
(* ****** ****** *)
//
// HX:
// Please replace
// this dummy implementation
//
implement
try_fact((*void*)) = let
//
fun
loop(i: int): int =
  if fact(i) > 0 then loop(i+1) else i
//
in
  loop(0)
end // end of [try_fact]
//
//
(* ****** ****** *)
//
// HX:
// Please replace
// this dummy implementation
//
implement
intsqrt(n) =
if n > 0 then let
  val r0 =
    2*intsqrt(n/4)
  // end of [val]
  val r1 = r0 + 1
in
  if r1 * r1 <= n then r1 else r0
end // end of [then]
else 0 // end of [else]
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
#endif // #ifdef

(* ****** ****** *)

(* end of [assign1_sol.dats] *)
