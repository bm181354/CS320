(*
//
// Code for lecture-01-19
//
*)

(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
//
(* ****** ****** *)

(*

int fact(int n)
{
  int res = 1;
  while (n-- > 0) { res = n * res; }
  return res ;
}

*)

(* ****** ****** *)
//
extern
fun
fact(n: int): int
//
implement
fact(n) =
  if n > 0 then n * fact(n-1) else 1
//
(* ****** ****** *)
//
extern
fun
fact_trec(n: int): int
//
implement
fact_trec(n) = let
//
fun
loop(i: int, res: int): int =
  if i <= n then loop (i+1, res * i) else res
//
in
  loop(1, 1)
end // end of [fact_trec]

(* ****** ****** *)

implement
main0 () =
{
  val () = println! ("fact(10) = ", fact(10))
  val () = println! ("fact_trec(10) = ", fact_trec(10))
}

(* ****** ****** *)

(* end of [fact.dats] *)
