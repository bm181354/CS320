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
// Assignment #2-2
// Due Wednesday, February 3, 2016 at 11:59pm
//
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
(* ****** ****** *)
//
extern
fun
mylist_print(mylist): void
//
implement
mylist_print(xs) =
  fprint_list_sep<int>(stdout_ref, $UNSAFE.cast(xs), ", ")
//
(* ****** ****** *)
//
(*
//
// HX: 10 points
//
** Please give a tail-recursive
** implementation of mylist_length
*)
//  
extern
fun
mylist_length : (mylist) -> int  
//
(* ****** ****** *)
//
(*
//
// HX: 10 points
//
** Given two integers m and n,
** mylist_fromto returns the list
** consisting of m, m+1, ..., n-1
*)
//
extern
fun
mylist_fromto : (int, int) -> mylist
//
(* ****** ****** *)
//
(*
//
// HX: 10 points
//
** mylist_mul returns the product of
** a given list of integers
**
*)
extern fun mylist_mul : mylist -> int
//
(* ****** ****** *)

(* end of [assign2-2.dats] *)
