(* ****** ****** *)

#include "./../DigitalClock.dats"

(* ****** ****** *)

(*
//
// HX: 20 points
// Please replace
// the following dummy implementations:
//
*)

(* ****** ****** *)

(*
implement
draw_0(X, Y, W, H) = ()
implement
draw_1(X, Y, W, H) = ()
implement
draw_2(X, Y, W, H) = ()
implement
draw_3(X, Y, W, H) = ()
implement
draw_4(X, Y, W, H) = ()
implement
draw_5(X, Y, W, H) = ()
implement
draw_6(X, Y, W, H) = ()
implement
draw_7(X, Y, W, H) = ()
implement
draw_8(X, Y, W, H) = ()
implement
draw_9(X, Y, W, H) = ()
*)

(* ****** ****** *)

implement
draw_0(X, Y, W, H) =
{
//
val () = draw_hline(X+2, Y, W-1)
val () = draw_hline(X+2, Y+H-1, W-1)
val () = draw_vline(X+2, Y, H)
val () = draw_vline(X+W, Y, H)
//
} (* end of [draw_0] *)

(* ****** ****** *)

implement
draw_1(X, Y, W, H) =
{
//
val () = draw_vline(X+W, Y, H)
//
} (* end of [draw_1] *)

(* ****** ****** *)

implement
draw_2(X, Y, W, H) =
{
//
val () = draw_hline(X+2, Y, W-1)
val () = draw_vline(X+W, Y, H/2)
val () = draw_hline(X+2, Y+(H/2), W-1)
val () = draw_vline(X+2, Y+(H/2), H/2)
val () = draw_hline(X+2, Y+H-1, W-1)
//
} (* end of [draw_2] *)

(* ****** ****** *)

implement
draw_3(X, Y, W, H) =
{
//
val () = draw_hline(X+2, Y, W-1)
val () = draw_vline(X+W, Y, H)
val () = draw_hline(X+2, Y + (H/2), W-1)
val () = draw_hline(X+2, Y+H-1, W-1)
//
} (* end of [draw_3] *)

(* ****** ****** *)

implement
draw_4(X, Y, W, H) =
{
//
val () = draw_vline(X+2,Y, H/2)
val () = draw_hline(X+2,Y+(H/2), W-1)
val () = draw_vline(X+W, Y, H)
//
} (* end of [draw_4] *)

(* ****** ****** *)

implement
draw_5(X, Y, W, H) =
{
val () = draw_hline(X+2, Y, W-1)
val () = draw_vline(X+2, Y, H/2)
val () = draw_hline(X+2, Y+(H/2), W-1)
val () = draw_vline(X+W, Y+(H/2), H/2)
val () = draw_hline(X+2, Y+H-1, W-1)
} (* end of [draw_5] *)

(* ****** ****** *)

implement
draw_6(X, Y, W, H) =
{
//
val () = draw_hline(X+2, Y, W-1)
val () = draw_vline(X+2, Y, H)
val () = draw_hline(X+2, Y + (H/2), W-1)
val () = draw_hline(X+2, Y+H-1, W-1)
val () = draw_vline(X+W, Y + (H/2), H/2)
//
} (* end of [draw_6] *)

(* ****** ****** *)

implement
draw_7(X, Y, W, H) =
{
//
val () = draw_hline(X+2, Y, W-1)
val () = draw_vline(X+W, Y, H)
//
} (* end of [draw_7] *)

(* ****** ****** *)

implement
draw_8(X, Y, W, H) =
{
//
val () = draw_hline(X+2, Y, W-1)
val () = draw_hline(X+2, Y + (H/2), W-1)
val () = draw_hline(X+2, Y+H-1, W-1)
val () = draw_vline(X+2, Y, H)
val () = draw_vline(X+W, Y, H)
//
} (* end of [draw_8] *)

(* ****** ****** *)

implement
draw_9(X, Y, W, H) =
{
//
val () = draw_vline(X+2, Y, H/2)
val () = draw_vline(X+W, Y, H)
val () = draw_hline(X+2, Y, W-1)
val () = draw_hline(X+2, Y + (H/2), W-1)
//
} (* end of [draw_9] *)

(* ****** ****** *)

(* end of [DigitalClock_sol.dats] *)
