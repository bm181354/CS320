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
//
extern
fun
mylist_length : (mylist) -> int
//
implement
mylist_length(xs) =
case xs of
| mylist_nil() => 0 // clause
| mylist_cons(x1, xs2) => mylist_length(xs2) + 1 // clause
//
(* ****** ****** *)
//
extern
fun
mylist_build(n: int): mylist
//
implement
mylist_build(n) = let
//
fun
loop (i: int, res: mylist): mylist =
  if i > 0
    then loop(i-1, mylist_cons(i-1, res)) else res
  // end of [if]
//
in
  loop(n, mylist_nil())
end // end of [mylist_build]
//
(* ****** ****** *)
//
extern
fun
mylist_print(mylist): void
//
implement
mylist_print(xs) =
case xs of
| mylist_nil() => ()
| mylist_cons(x, xs) => (println!(x); mylist_print(xs))
//
(* ****** ****** *)
//
// list concatenation
//
extern
fun
mylist_append : (mylist, mylist) -> mylist
//
implement
mylist_append(xs, ys) =
case xs of
| mylist_nil() => ys
| mylist_cons(x, xs) => mylist_cons(x, mylist_append(xs, ys))
//
(* ****** ****** *)
//
extern
fun
mylist_reverse : (mylist) -> mylist
//
extern
fun
mylist_revappend : (mylist, mylist) -> mylist
//
implement
mylist_reverse(xs) = 
mylist_revappend(xs, mylist_nil())
//
implement
mylist_revappend(xs, ys) =
case xs of
| mylist_nil() => ys
| mylist_cons(x, xs) => mylist_revappend(xs, mylist_cons(x, ys))
//
(* ****** ****** *)

implement
main0() =
{
  val xs = mylist_build(10)
  val () = println! ("xs=")
  val () = mylist_print(xs)
//
  val xs2 =
    mylist_append(xs, xs)
  val () =
    println!("append(xs, xs):")
  val () = mylist_print(xs2)
//
  val xs_r =
    mylist_reverse(xs)
  val () =
    println! ("reverse(xs):")
  val () = mylist_print(xs_r)
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [mylist.dats] *)
