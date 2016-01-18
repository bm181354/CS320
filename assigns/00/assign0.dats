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
// Due Tuesday, January 26, 2014 at 11:59pm
//
*)
(* ****** ****** *)
//
#include "share/atspre_staload.hats"
//
(* ****** ****** *)

(*
Given 3 nonegative integers x, y and z, they
are triangular if and only if the sum of any of
two of them is strictly greater than the third.
*)
(*
//
// Please implement [triangle_test],
// which tests whether 3 given integers are triangular.
//
*)

(* ****** ****** *)
//
(*
** 10 points
*)
extern
fun
triangle_test
  (x: int, y: int, z: int): bool
//
(* ****** ****** *)

implement
main0 (argc, argv) =
{
//
// HX: here is some testing code:
//
val () = assertloc (triangle_test (2, 3, 4)) // true
val () = assertloc (triangle_test (3, 4, 5)) // true
val () = assertloc (~triangle_test (2, 3, 5)) // ~false
val () = assertloc (~triangle_test (1, 5, 6)) // ~false
//
val () = println! ("Good news: Your code has passed initial testing!")
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [assign0.dats] *)
