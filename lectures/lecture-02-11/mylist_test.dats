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

staload "./../../mylib/mylist.dats"

(* ****** ****** *)

extern
fun
mylist_fromto
  : (int, int) -> list0(int)

(* ****** ****** *)

val xs = mylist_fromto(0, 10)

(* ****** ****** *)

val xs2 =
mylist_filter<int>(xs, lam(x) => x % 2 = 0)

(* ****** ****** *)

implement
{a}(*tmp*)
mylist_length(xs) =
mylist_foldleft<a,int>(xs, 0, lam(i, _) => i+1)

(* ****** ****** *)

implement
{a}(*tmp*)
mylist_length(xs) =
mylist_foldright<a,int>(xs, lam(_, i) => i+1, 0)

(* ****** ****** *)

implement
{a}(*tmp*)
mylist_append(xs, ys) =
mylist_foldright<a,list0(a)>(xs, lam(x, res) => cons0(x, res), ys)

(* ****** ****** *)

implement
{a}(*tmp*)
mylist_revappend(xs, ys) =
mylist_foldleft<a,list0(a)>(xs, ys, lam(res, x) => cons0(x, res))

(* ****** ****** *)

implement
{a}(*tmp*)
mylist_filter(xs, p) =
mylist_foldright<a,list0(a)>
( xs
, lam(x, res) => if p(x) then cons0(x, res) else res, list0_nil()
)

(* ****** ****** *)
  
implement
{a}(*tmp*)
mylist_insort
  (xs) = let
//
fun
insord
(
  xs: list0(a), x0: a
) : list0(a) = (
//
case+ xs of
| nil0() =>
  cons0(x0, nil0)
| cons0(x1, xs2) => let
    val sgn =
    gcompare_val_val<a> (x0, x1)
  in
    if sgn <= 0
      then cons0(x0, xs)
      else cons0(x1, insord(xs2, x0))
    // end of [if]
  end // end of [cons0]
//
) (* insord *)
//
in
//
mylist_foldright<a,list0(a)>
  (xs, lam(x, res) => insord(res, x), list0_nil)
//
end // end of [mylist_insort]
  
(* ****** ****** *)

(* end of [mylist_test.dats] *)
