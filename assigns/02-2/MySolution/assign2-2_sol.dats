//==========================================
//*Name: Biken Maharjan
//*Course: CS320
//*
//*----------------------------------------
//*Pattern Matching, range, tail-recursive 
//==========================================

#include "./../assign2-2.dats"

(* ****** ****** *)
//
fun
fact(n: int): int =
  if n > 0 then n * fact(n-1) else 0
//
(* ****** ****** *)
////////////////////////////////////////////////////
implement
mylist_fromto(n, y) =
  if n < y then
    mylist_cons(y-1, mylist_fromto(n, y-1)) 
  else 
    mylist_nil()
////////////////////////////////////////////////////
implement mylist_mul( xs:mylist) =
case xs of 
| mylist_nil() => 1
| mylist_cons(y,xs) => y * (mylist_mul(xs))
////////////////////////////////////////////////////
val length = 1
 extern
    fun helper(l:int,xp:mylist):int
    //-----------------------------------------------
   implement 
     helper(l,xp) =
         let
           val xm = mylist_length(xp)
          in  
           length 
          end                        
////////////////////////////////////////////////////
//==============[implementation of length]=========
implement mylist_length(xs:mylist) =
   case xs of
   | mylist_nil() => 0
   | mylist_cons(x,xs1) => if (x = 0)
                              then length
                            else
                              helper(length+1,xs1)
//////////////////////////////////////////////////////                          
   
(**** using ifdef for multiple test code *****)
#ifdef
MAIN_NONE
#then
#else
implement
main0 (argc, argv) =  
{

// HX: here is some testing code:
val N = 10
val xs = mylist_fromto(0,N)
val () =
(
  print! "xs = [";
  mylist_print(xs); println! ("]")
)
val xp = mylist_mul(xs)
val () = assertloc(fact(N) = mylist_mul(xs)*N)
val () = assertloc(mylist_length(xs) = N)
val () = println! ("Good news: Your code has passed initial testing!")
} (* end of [main0] *)
#endif // #ifdef

(* ****** ****** *)

(* end of [assign2-2_sol.dats] *)
