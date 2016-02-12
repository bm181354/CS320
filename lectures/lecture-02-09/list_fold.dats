(* ****** ****** *)
//
// For introducing higher-order functions
//
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/HATS/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)

extern
fun
list_fold
(
  xs: list0(int), init: int, fopr: (int, int) -> int
) : int // end-of-function

(* ****** ****** *)

extern
fun
list_sum (xs: list0(int)): int
(*
implement
list_sum(xs) =
(
case+ xs of
| list0_nil() => 0
| list0_cons(x, xs) => x + list_sum(xs)
)
*)

implement
list_sum(xs) =
list_fold(xs, 0, lam(x1, x2) => x1 + x2)

(* ****** ****** *)

extern
fun
list_mul (xs: list0(int)): int
(*
implement
list_mul(xs) =
(
case+ xs of
| list0_nil() => 1
| list0_cons(x, xs) => x * list_mul(xs)
)
*)
implement
list_mul(xs) =
list_fold(xs, 1, lam(x1, x2) => x1 * x2)

(* ****** ****** *)
//
extern
fun
list_max (x0: int, xs: list0(int)): int
//
implement
list_max(x0, xs) =
list_fold(xs, x0, lam(x1, x2) => max(x1, x2))
//
(* ****** ****** *)

(* end of [list_fold.dats] *)
