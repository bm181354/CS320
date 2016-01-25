(* ****** ****** *)

#include "./../assign1.dats"

(* ****** ****** *)
//
// HX:
// Please replace
// this dummy implementation
//
implement
fib_trec(n) = 
 let
   //val y =1
   //val x =0
   fun fib_more(x:int, y:int, n:int)=
   if 
    n >0 then fib_more(y,x+y,n-1)
   else
    x
 in
   fib_more(0,1,n)
 end
  
//
(* ****** ****** *)
//
// HX:
// Please replace
// this dummy implementation
//
implement
try_fact((*void*)) = 
 let 
     //val num = n
     fun more_f(n:int,y:int) =
     if n = 0 then y else more_f(n-1,n*y)
   in
     more_f(9,1) 
   end 
//
(* ****** ****** *)
//
// HX:
// Please replace
// this dummy implementation
//



implement intsqrt(n) = 
let 
(* ****** ****** *)
 fun sqrt(n:int):int =
 if n >= 1 
 then 2*sqrt(n/4)
 else 1
(*****************)
in
sqrt(n)
end

//

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
val r1 = fib_trec(10)
val () = assertloc(fib(10) = r1)
val () = println! ("fib_trec(10) = ", r1)
//
val r2 = fib_trec(20)
val () = println! ("fib_trec(20) = ", r2)
val () = assertloc(fib(20) = r2)
//
val () = println! ("try_fact() = ", try_fact())
//
val () = assertloc(intsqrt(100*100) = 100)
val () = assertloc(intsqrt(100*100-1) = 99)
//
val () = println! ("Good news: Your code has passed initial testing!")
//
} (* end of [main0] *)
#endif // #ifdef

(* ****** ****** *)

(* end of [assign1_sol.dats] *)
