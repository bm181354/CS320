(*
** Build one's own library
*)

(* ****** ****** *)

staload "libats/ML/SATS/basis.sats"

(* ****** ****** *)

(*
//
datatype
list0(a:t@ype) =
| list0_nil of ()
| list0_cons of (a, list0(a))
//
#define nil0 list0_nil
#define :: list0_cons
#define cons0 list0_cons
//
*)

(* ****** ****** *)
//
extern
fun
{a:t@ype}
mylist_append : (list0(a), list0(a)) -> list0(a)
//
(* ****** ****** *)

implement
{a}(*tmp*)
mylist_append
  (xs, ys) = let
//
fun
append
(
  xs: list0(a), ys: list0(a)
) : list0(a) =
  case+ xs of
  | list0_nil() => ys
  | list0_cons(x, xs) => list0_cons(x, append(xs, ys))
//
in
  append(xs, ys)
end // end of [mylist_append]

(* ****** ****** *)
//
extern
fun
{a:t@ype}
mylist_reverse : (list0(a)) -> list0(a)
extern
fun
{a:t@ype}
mylist_revappend : (list0(a), list0(a)) -> list0(a)
//
(* ****** ****** *)
//
implement
{a}
mylist_reverse(xs) = 
mylist_revappend<a>(xs, list0_nil())
//
implement
{a}
mylist_revappend(xs, ys) = let
//
fun
revappend
(
  xs: list0(a), ys: list0(a)
) : list0(a) =
  case+ xs of
  | list0_nil() => ys
  | list0_cons(x, xs) =>
      revappend(xs, list0_cons(x, ys))
    // end of [list0_cons]
//
in
  revappend(xs, ys)
end // end of [mylist_append]

(* ****** ****** *)

(* end of [mylist.dats] *)
