//
// Title:
// Concepts of Programming Languages
// Number: CAS CS 320
// Semester: Spring 2016
// Class Time: TR 12:30-2:00
// Instructor: Hongwei Xi (hwxiATbuDOTedu)
// Teaching Fellow: Hanwen Wu (hwwuATbuDOTedu)
//
(*
//
// Assignment #1
// Due Tuesday, January 26, 2016 at 11:59pm
//
*)
(* ****** ****** *)
//
#include "share/atspre_staload.hats"
//
(* ****** ****** *)
//
extern
fun fib(n: int): int
//
implement
fib(n) =
if n >= 2
  then fib(n-1)+fib(n-2) else n
// end of [if]
//
(* ****** ****** *)
//
(*
** 10 points
** Please give a tail-recursive
** implementation of fib_trec
*)
extern
fun fib_trec(n: int): int // fib_trec(n) = fib(n)
//
(* ****** ****** *)
//
extern
fun
fact(n: int): int
//
implement
fact(n) = if n > 0 then n * fact(n-1) else 1
//
(* ****** ****** *)
//
// HX: 10 points
// Please implement a function [try_fact] that
// finds the first [n] such that fact(n) equals 0:
//
extern
fun try_fact((*void*)): int
//
(* ****** ****** *)
//
(*
Please implement the function sqrt, which, given integer n, finds
the integer k so that k * k <= n < (k + 1) * (k + 1). The complexity
of the implementation should be O(log(n)).

Hint:

For each n >= 1, let n4 = n / 4.  Then either sqrt(n) = 2*sqrt(n4) or
sqrt(n) = 2*sqrt(n4) + 1.

*)
//
(*
** HX: 10 points
*)
extern
fun intsqrt (n: int): int
//
(* ****** ****** *)

implement
main0 (argc, argv) =
{
//
// HX: here is some testing code:
//
val r1 = fib_trec(10)
val () = assertloc(fib(10) = r1)
val () = println! ("fib_trec(10) = ", r1)
//
val r2 = fib_trec(20)
val () = println! ("fib_trec(20) = ", r2)
val () = assertloc(fib(20) = r2)
//
val () = println! ("try_fact() = ", try_fact())
//
val () = assertloc(intsqrt(100*100) = 100)
val () = assertloc(intsqrt(100*100-1) = 99)
//
val () = println! ("Good news: Your code has passed initial testing!")
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [assign1.dats] *)
