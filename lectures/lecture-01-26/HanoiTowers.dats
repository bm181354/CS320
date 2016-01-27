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

(*
abstype pole
*)
typedef pole = string

(* ****** ****** *)

extern
fun
move(A: pole, B: pole): void

(* ****** ****** *)
//
implement
move(A, B) =
println! ("Move: ", A, " -> ", B)
//
(* ****** ****** *)

extern
fun
nmove
(
  n: int, A: pole, B: pole, C: pole
) : void // end-of-function

(* ****** ****** *)

implement
nmove(n, A, B, C) =
if
n > 0
then let
  val () = nmove(n-1, A, C, B)
  val () = move(A, B)
  val () = nmove(n-1, C, B, A)
in
end // end of [then]
else ()

(* ****** ****** *)

implement
main0 () = let
//
  val A = "A"
  val B = "B"
  val C = "C"
//
  val () = println! ("For moving 3 disks from ", A, " to ", B, ":")
//
in
  nmove(3, A, B, C)
end // end of [main0]

(* ****** ****** *)

(* end of [HanoiTowers.dats] *)
