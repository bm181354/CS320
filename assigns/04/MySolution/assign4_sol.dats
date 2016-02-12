(* ****** ****** *)

#include "./../assign4.dats"

(* ****** ****** *)

(*
** HX-2016-02-12:
** please implement mylist_zip3 here
*)

(* ****** ****** *)

implement
show_poles
(
  R, H, xs1, xs2, xs3
) = let
//
fun
show_disk3
(
  xyz: (int, int, int)
) : void =
{
  val () = show_disk(R, xyz.0)
  val () = show_disk(R, xyz.1)
  val () = show_disk(R, xyz.2)
  val () = print_newline((*void*))
}
//
val xs1 = pole_padding(H, xs1)
val xs2 = pole_padding(H, xs2)
val xs3 = pole_padding(H, xs3)
//
val xyzs = mylist_zip3<int,int,int>(xs1, xs2, xs3)
//
in
  mylist_foreach(xyzs, lam(xyz) => show_disk3(xyz))
end // end of [show_poles]

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
val width = 10
val height = 10
//
val P1 = cons0(1, cons0(3, nil0()))
val P2 = cons0(2, cons0(4, cons0(5, nil0())))
val P3 = cons0(6, cons0(7, cons0(8, nil0())))
//
val () = show_poles(width, height, P1, P2, P3)
//
val () = println! ("Good news: Your code has passed initial testing!")
//
} (* end of [main0] *)
#endif // #ifdef

(* ****** ****** *)

(* end of [assign4_sol.dats] *)
