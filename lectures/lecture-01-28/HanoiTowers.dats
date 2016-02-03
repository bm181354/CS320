(* ****** ****** *)
//
// Solving the
// HanoiTowers problem
//
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
//
(* ****** ****** *)

abstype pole

(* ****** ****** *)

(*
extern
fun
move(A: pole, B: pole): void
*)
extern
fun
move(A: pole, B: pole): (pole, pole)

(* ****** ****** *)

extern
fun
nmove
(
  n: int, A: pole, B: pole, C: pole
) : (pole, pole, pole)

(* ****** ****** *)

implement
nmove(n, A, B, C) =
if
n > 0
then let
(*
  val X = nmove(n-1, A, C, B)
  val A = X.0
  val C = X.1
  val B = X.2
*)
  val (A, C, B) = nmove(n-1, A, C, B)
  val (A, B) = move(A, B)
  val (C, B, A) = nmove(n-1, C, B, A)
in
  (A, B, C)
end // end of [then]
else (A, B, C)

(* ****** ****** *)

implement main0 () =

(* ****** ****** *)

(* end of [HanoiTowers.dats] *)
