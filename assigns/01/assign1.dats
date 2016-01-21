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
// Assignment #0 (warm-up)
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
extern fun try_fact((*void*)): int
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
val () = println! ("Good news: Your code has passed initial testing!")
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [assign0.dats] *)
