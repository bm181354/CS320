(* ****** ****** *)

#include "./../assign4-2.dats"

(* ****** ****** *)

(*
** HX-2016-02-12:
** please implement mylist_last
*)

(* ****** ****** *)

(*
** HX-2016-02-12:
** please implement mylist_init
*)

(* ****** ****** *)

(*
** HX-2016-02-12:
** please implement mylist_snoc
*)

(* ****** ****** *)

(*
** HX-2016-02-12:
** please implement mylist_tabulate
*)

(* ****** ****** *)

#ifdef
MAIN_NONE
#then
#else
implement
main0 (argc, argv) =
{
//
// HX: here is some testing code:
//
val N = 10
//
val xs =
mylist_tabulate<int>(N, lam(i) => (i+1))
//
val () = assertloc(mylist_last<int>(xs) = N)
val () = assertloc(mylist_last<int>(mylist_init<int>(xs)) = N-1)
val () = assertloc(mylist_last<int>(mylist_snoc<int>(xs, 2*N)) = 2*N)
//
} (* end of [main0] *)
#endif // #ifdef

(* ****** ****** *)

(* end of [assign4-2_sol.dats] *)
