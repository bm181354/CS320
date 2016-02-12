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
// Assignment #4-2
// Due Wednesday, February 17, 2016 at 11:59pm
//
*)
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
//
// HX: 5 points
// [mylist_last] returns the last
// element in xs, where xs is assumed
// to be non-empty.
//
extern
fun
{a:t@ype}
mylist_last(xs: list0(a)): a
//
(* ****** ****** *)
//
// HX: 5 points
// [mylist_init] returns the initial
// segment of xs that contains all of
// the elements in xs except the last one
//
extern
fun
{a:t@ype}
mylist_init(xs: list0(a)): list0(a)
//
(* ****** ****** *)
//
// HX: 5 points
// [mylist_snoc] puts x0 at the end of xs
// 
//
extern
fun
{a:t@ype}
mylist_snoc(xs: list0(a), x0: a): list0(a)
//
(* ****** ****** *)
//
// HX: 5 points
// [mylist_tabulate] returns a list consisting
// of f(0), f(1), ..., f(n-1)
//
extern
fun
{a:t@ype}
mylist_tabulate(n: int, f: (int) -<cloref1> a): list0(a)
//
(* ****** ****** *)

(* end of [assign4-2.dats] *)
