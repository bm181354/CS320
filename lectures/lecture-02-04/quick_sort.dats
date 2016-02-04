(*
** Build one's own library
*)

(* ****** ****** *)

#include
"share/atspre_staload.hats"
#include
"share/HATS/atspre_staload_libats_ML.hats"

(* ****** ****** *)

staload "./../../mylib/mylist.dats"

(* ****** ****** *)
//
extern
fun
quick_sort
  (xs: list0(int)): list0(int)
//
(* ****** ****** *)

fun
qsort
(
  xs: list0(int)
) : list0(int) =
(
case+ xs of
| nil0() => nil0()
| cons0(x, xs) => qpart(x, xs, nil0(), nil0())
)

and
qpart
(
  x0: int
, xs: list0(int)
, left: list0(int), right: list0(int)
) : list0(int) =
(
case+ xs of
| nil0() => let
    val left = qsort(left)
    val right = qsort(right)
  in
    mylist_append(left, cons0(x0, right))
  end // end of [nil0]
| cons0(x1, xs2) =>
  if x1 <= x0
    then qpart(x0, xs2, cons0(x1, left), right)
    else qpart(x0, xs2, left, cons0(x1, right))
  // end of [if]
)

(* ****** ****** *)

implement quick_sort(xs) = qsort(xs)

(* ****** ****** *)

val xs = nil0()
val xs = cons0(2, xs)
val xs = cons0(9, xs)
val xs = cons0(3, xs)
val xs = cons0(4, xs)
val xs = cons0(8, xs)
val xs = cons0(7, xs)
val xs = cons0(6, xs)
val xs = cons0(9, xs)

(* ****** ****** *)

val () = print "xs = "
val () =
fprint_list0<int>(stdout_ref, xs)
val () = fprint_newline (stdout_ref)

(* ****** ****** *)

val xs = quick_sort(xs)

(* ****** ****** *)

val () = print "xs = "
val () =
fprint_list0<int>(stdout_ref, xs)
val () = fprint_newline (stdout_ref)

(* ****** ****** *)

implement main0 () = ()

(* ****** ****** *)

(* end of [quick_sort.dats] *)

