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
     fun more_f(n:int,y:int) =
     if (n*y) = 0 then n else more_f(n+1,n*y)
   in
     more_f(1,1) 
 end  

(* ****** ****** *)
//
// HX:
// Please replace
// this dummy implementation
//
implement intsqrt(n):int = 
let
  fun sqrt(n:int): int =
 if (n >= 1) then 
   let    
       val n4 = n / 4
       val r0 = 2 * sqrt (n4) 
       val r1 = r0 + 1
   in
       if ((r1*r1) <= n) then r1 else r0
   end
 else 0 
in
 sqrt(n) 
end
 
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
val () = println!("Check")
//
val () = println! ("Good news: Your code has passed initial testing!")
//
} (* end of [main0] *)
#endif // #ifdef

(* ****** ****** *)

(* end of [assign1_sol.dats] *)
