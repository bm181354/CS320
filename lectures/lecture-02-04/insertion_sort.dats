(*
** Build one's own library
*)

(* ****** ****** *)

#include
"share/atspre_staload.hats"
#include
"share/HATS/atspre_staload_libats_ML.hats"

(* ****** ****** *)
//
extern
fun
insertion_sort
  (xs: list0(int)): list0(int)
//
(* ****** ****** *)

fun
insord
(
  xs: list0(int), x0: int
) : list0(int) =
(
case+ xs of
| nil0() => cons0(x0, nil0)
| cons0(x1, xs2) =>
  if x0 <= x1
    then cons0(x0, xs) else cons0(x1, insord(xs2, x0))
  // end of [if]
)

(* ****** ****** *)

implement
insertion_sort
  (xs) =
(
case+ xs of
| nil0() => nil0()
| cons0(x, xs) => insord(insertion_sort(xs), x)
)

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

(*
val out = stdout_ref
val err = stderr_ref
*)

(* ****** ****** *)

val () = print "xs = "
val () =
fprint_list0<int>(stdout_ref, xs)
val () = fprint_newline (stdout_ref)

(* ****** ****** *)

val xs = insertion_sort(xs)

(* ****** ****** *)

val () = print "xs = "
val () =
fprint_list0<int>(stdout_ref, xs)
val () = fprint_newline (stdout_ref)

(* ****** ****** *)

implement main0 () = ()

(* ****** ****** *)

(* end of [insertion_sort.dats] *)

