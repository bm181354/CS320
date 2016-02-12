(* ****** ****** *)

#include "./../assign2-2.dats"

(* ****** ****** *)
//
fun
fact(n: int): int =
  if n > 0 then n * fact(n-1) else 0
//
(* ****** ****** *)

implement
mylist_length(xs) = let
//
fun
loop(xs: mylist, res: int): int =
(
  case+ xs of
  | mylist_nil() => res
  | mylist_cons(_, xs) => loop(xs, res+1)
)
//
in
  loop(xs, 0)
end // end of [mylist_length]

(* ****** ****** *)
//
implement
mylist_fromto(m, n) =
if m < n
  then mylist_cons(m, mylist_fromto(m+1, n)) else mylist_nil()
// end of [if]
//
(* ****** ****** *)

implement
mylist_mul(xs) =
(
case+ xs of
| mylist_nil() => 1 | mylist_cons(x, xs) => x * mylist_mul(xs)
)

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
val () =
(
  print! "xs = [";
  mylist_print(xs); println! ("]")
)
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

(* end of [assign2-2_sol.dats] *)
