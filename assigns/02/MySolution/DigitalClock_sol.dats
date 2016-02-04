//==========================================
//*Name: Biken Maharjan
//*Course: CS320
//*
//*----------------------------------------
//* DigitalClock Assignment
//==========================================
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
implement
draw_0(X, Y, W, H) =  {
    
    val () = draw_hline(X+1,Y,W-2)
    val () = draw_vline(X+1,Y,W)
    val () = draw_vline(X+7,Y,W)
    val () = draw_hline(X+1,Y+8,W-2)
    
   }

implement
draw_1(X, Y, W, H) = {
    val () = draw_vline(X+6,Y,W)
}

implement
draw_2(X, Y, W, H) = {
    val () = draw_hline(X,Y,W-2)
    val () = draw_vline(X+6,Y-5,W)
    val () = draw_vline(X,Y+5,W)
    val () = draw_hline(X,Y+4,W-2)
    val () = draw_hline(X,Y+8,W-2)
}
// checking for where block [Works]
implement
draw_3(X, Y, W, H) = draw_hline(X,Y+8,W-3) where {
    val () = draw_hline(X,Y,W-3)
    val () = draw_hline(X,Y+4,W-3)
    val () = draw_vline(X+6,Y,W) 
}

implement
draw_4(X, Y, W, H) = {
    val () = draw_vline(X+6,Y,W)
    val () = draw_vline(X,Y,W-5)
    val () = draw_hline(X,Y+4,W-3)
}


implement
draw_5(X, Y, W, H) = draw_hline(X,Y+8,W-2) where {
    val () = draw_hline(X,Y,W-2)
    val () = draw_vline(X,Y-5,W)
    val () = draw_hline(X,Y+4,W-2)
    val () = draw_vline(X+6,Y+5,W)
    //val () = draw_hline(X,Y+8,W-2)
}

implement
draw_6(X, Y, W, H) = {
    val () = draw_hline(X,Y,W-2)
    val () = draw_vline(X,Y,W)
    val () = draw_vline(X+6,Y+5,W)
    val () = draw_hline(X,Y+4,W-2)
    val () = draw_hline(X,Y+8,W-2) 
}

implement
draw_7(X, Y, W, H) = {
    val () = draw_hline(X,Y,W-3)
    val () = draw_vline(X+W-3,Y,H)
}

implement
draw_8(X, Y, W, H) =  {
    
    val () = draw_hline(X,Y,W-2)
    val () = draw_vline(X,Y,W)
    val () = draw_hline(X,Y+4,W-2)
    val () = draw_vline(X+6,Y,W)
    val () = draw_hline(X,Y+8,W-2)
}

implement
draw_9(X, Y, W, H) = 
{
val () = draw_hline(X, Y, W-2)
val () = draw_hline(X, W-5, W-2)
val () = draw_hline(X, Y+H-1, W-2)
val () = draw_vline(X+W-3, Y, H)
val () = draw_vline(X, Y-5, H)
}

(* ****** ****** *)

(* end of [DigitalClock_sol.dats] *)
