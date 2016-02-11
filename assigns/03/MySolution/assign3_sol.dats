(* ****** ****** *)

#include "./../assign3.dats"

(* ****** ****** *)
extern
fun
show_diskx
(
  radius: int, x: int
) : void
//
(* ****** ****** *)
//

//////////////////////////////////////////////////////////////////////////////// 
//(credit: Help from TA for syntaxically construct, Discussion with Peter and Robin for some 
// list idea)
implement show_poles(width, height, P1, P2, P3) = 
   case- (P1,P2,P3) of
 | (nil0(),nil0(),nil0()) => ()
 | (nil0(),cons0(Y,YY),cons0(Z,ZZ)) =>
    let
           val _ = print!("     XXXXXXXXXXX    ")  // padding 
           val _ = show_disk((width),Y)
           val _ = show_disk((width),Z)
           val _ = println!(" ")
    in 
        show_poles(width,height,P1,YY,ZZ)
    end
 | (cons0(X,XX),cons0(Y,YY),cons0(Z,ZZ)) => 
       let 
           
           val _ = show_disk(width,X)
           val _ = show_disk(width,Y)
           val _ = show_disk(width,Z)
           val _ = println!(" ")
       in
         show_poles(width,height,XX,YY,ZZ); 
       end    
 //=============================================================================
/////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
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
val P2 = cons0(1,cons0(2, cons0(4, nil0())))
val P3 = cons0(6, cons0(7,cons0(8, nil0())))
//

val () = show_poles(width, height, P1, P2, P3)
//
val () = println! ("Good news: Your code has passed initial testing!")
//
} (* end of [main0] *)
#endif // #ifdef

(* ****** ****** *)

(* end of [assign3_sol.dats] *)
