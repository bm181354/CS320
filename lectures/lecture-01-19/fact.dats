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

fun fact(n: int): int =
  if n > 0 then n * fact(n-1) else 1

(* ****** ****** *)

implement
main0 () = println! ("fact(10) = ", fact(10))

(* ****** ****** *)

(* end of [fact.dats] *)
