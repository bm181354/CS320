(*
** Code used for lecture-02-02
*)

(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
//
(* ****** ****** *)
//
// polymorphic lists
//
datatype
mylist(a:t@ype) =
| mylist_nil of ()
| mylist_cons of (a, mylist(a))
//
(* ****** ****** *)
//
extern
fun{a:t@ype}
mylist_length : (mylist(a)) -> int
//
implement{a}
mylist_length(xs) =
case xs of
| mylist_nil() => 0 // clause
| mylist_cons(x1, xs2) => mylist_length<a>(xs2) + 1 // clause
//
(* ****** ****** *)
//
extern
fun
mylist_build_int
  (n: int): mylist(int)
//
implement
mylist_build_int(n) = let
//
fun
loop (i: int, res: mylist(int)): mylist(int) =
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
// list concatenation
//
extern
fun{a:t@ype}
mylist_append : (mylist(a), mylist(a)) -> mylist(a)
//
implement
{a}
mylist_append(xs, ys) =
case xs of
| mylist_nil() => ys
| mylist_cons(x, xs) => mylist_cons(x, mylist_append<a>(xs, ys))
//
(* ****** ****** *)
//
extern
fun{a:t@ype}
mylist_reverse : (mylist(a)) -> mylist(a)
//
extern
fun
{a:t@ype}
mylist_revappend : (mylist(a), mylist(a)) -> mylist(a)
//
implement
{a}
mylist_reverse(xs) = 
mylist_revappend<a>(xs, mylist_nil())
//
implement
{a}
mylist_revappend(xs, ys) =
case xs of
| mylist_nil() => ys
| mylist_cons(x, xs) => mylist_revappend<a>(xs, mylist_cons(x, ys))
//
(* ****** ****** *)
//
extern
fun
mylist_print_int(mylist(int)): void
//
implement
mylist_print_int(xs) =
  fprint_list_sep<int>(stdout_ref, $UNSAFE.cast(xs), ";")
//
(* ****** ****** *)

implement
main0() =
{
//
  val xs =
  mylist_build_int(10)
  val () = println! ("xs=")
  val () = mylist_print_int(xs)
  val () = print_newline()
//
  val xs2 =
    mylist_append<int>(xs, xs)
  val () =
    println!("append(xs, xs):")
  val () = mylist_print_int(xs2)
  val () = print_newline()
//
  val xs_r =
    mylist_reverse<int>(xs)
  val () =
    println! ("reverse(xs):")
  val () = mylist_print_int(xs_r)
  val () = print_newline()
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [mylist2.dats] *)
