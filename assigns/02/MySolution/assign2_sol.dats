//==========================================
//*Name: Biken Maharjan
//*Course: CS320
//*
//*----------------------------------------
//*Pascal triangle/Pyramid assignment
//==========================================
(* ****** ****** *)

#include "./../assign2.dats"

(* ****** ****** *)
//
// HX:
// Please replace
// this dummy implementation
//=====================================================================
// Note for the Assignment 
// height should be constant // this is the factor  which determines the height
// width is incremented by +2
// x,y coordinates are changing  // position of the coordinates 
// x is decrement by 1
// y is being incremented by 1 
// if pyramid is of 3 rows that max space it can have in a row in (3-1)
////////////////////////////////////////////////////////////////////////
extern fun draw_help(x:int,y:int):void
extern fun draw(n:int,l:int,master:int,space:int):void 
val length = 0
////////////////////////////////////////////////////////////////////////
(***CREDIT For this part T.A guided me to avoid some syntaxical error on 
nexted loop and intial process logic.***)

implement draw(n:int,l:int,master:int,space:int) =  // master here hold the information
   if (master > 0) then                             // of the row 
   if (n > 0) then
     let 
       val _ = print!(" ")
     in
    draw(n-1,l,master,space)
     end
     //-----------------------
    else if (l > 0)  then
      let 
        val _= print!("*")
        val length = l
      in
      draw(n,l-1,master,space)
      end
      //-----------------------
    else
    let
       val _=   println!(" ")
       val nspace = space + 2
    in
    draw(master-1,nspace,master-1,nspace)
    end
    //--------------------------
else ()
/////////////////////////////////////////////////////////////////////////////
implement
show_triangle(level) =
let 
  val space = level-1 
in
draw(level,1,level,1) //(space for current row,star,master,space for other row)
end
//println! ("Not yet implemented: show_triangle(", level, ")")
//
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
val () = show_triangle(3)
val () = println!()
val () = show_triangle(5)
//
val () = println! ("Good news: Your code has passed initial testing!")
//
} (* end of [main0] *)
#endif // #ifdef

(* ****** ****** *)

(* end of [assign2_sol.dats] *)
