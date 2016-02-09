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
mylist_head(list0(a)): (a)
extern
fun
{a:t@ype}
mylist_tail(list0(a)): list0(a)
//
(* ****** ****** *)

implement
{a}(*tmp*)
mylist_head(xs) =
(
  case- xs of list0_cons(x, _) => x
)
implement
{a}(*tmp*)
mylist_tail(xs) =
(
  case- xs of list0_cons(_, xs) => xs
)

(* ****** ****** *)
//
extern
fun
{a:t@ype}
mylist_length(list0(a)): int
//
(* ****** ****** *)

implement
{a}(*tmp*)
mylist_length(xs) = let
//
fun loop(xs: list0(a), res: int): int =
  case+ xs of
  | list0_nil() => res | list0_cons(_, xs) => loop(xs, res+1)
//
in
  loop(xs, 0)
end // end of [mylist_length]

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

//
extern
fun
insertion_sort
  (xs: list0(int)): list0(int)
//
(* ****** ****** *)

local

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
    then cons0(x0, xs)
    else cons0(x1, insord(xs2, x0))
  // end of [if]
) (* insord *)

in (* in-of-local *)

implement
insertion_sort
  (xs) =
(
case+ xs of
| nil0() => nil0()
| cons0(x, xs) => insord(insertion_sort(xs), x)
)

end // end of [local]

(* ****** ****** *)
//
extern
fun
quick_sort
  (xs: list0(int)): list0(int)
//
(* ****** ****** *)

local

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

in (* in-of-local *)

implement quick_sort(xs) = qsort(xs)

end // end of [local]

(* ****** ****** *)

(* end of [mylist.dats] *)
