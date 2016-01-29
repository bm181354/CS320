(*
** Code used for lecture-01-28
*)

(* ****** ****** *)
//
#include
"share/atspre_staload.hats"  
//
(* ****** ****** *)
//
datatype
mylist =
| mylist_nil of ()
| mylist_cons of (int, mylist)
//
(*

fun mylist_nil(): mylist
fun mylist_cons(int, mylist): mylist
fun mylist_cons : (int, mylist) -> mylist

*)
//
(* ****** ****** *)

extern
fun mylist_length : (mylist) -> int

(* ****** ****** *)

implement
mylist_length(xs) =
case xs of
| mylist_nil() => 0 // clause
| mylist_cons(x1, xs2) => mylist_length(xs2) + 1 // clause

(* ****** ****** *)

extern
fun mylist_build(n: int): mylist

implement
mylist_build(n) = let
//
fun
loop (i: int, res: mylist): mylist =
  if i > 0 then loop(i-1, mylist_cons(i-1, res)) else res
//
in
  loop(n, mylist_nil())
end // end of [mylist_build]

(* ****** ****** *)
//
extern
fun mylist_print(mylist): void
//
implement
mylist_print(xs) =
case xs of
| mylist_nil() => ()
| mylist_cons(x, xs) => (println!(x); mylist_print(xs))
//
(* ****** ****** *)

implement
main0() =
{
  val xs = mylist_build(10)
  val () = mylist_print(xs)
}

(* ****** ****** *)

(* end of [mylist.dats] *)
