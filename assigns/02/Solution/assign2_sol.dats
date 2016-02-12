(* ****** ****** *)

#include "./../assign2.dats"

(* ****** ****** *)
//
fun
drawChar
  (n:int, c: char): void =
  if n>0 then (print(c); drawChar(n-1, c))
//
implement
show_triangle
  (level) = let
//
fun
loop1
(
  n: int, i: int
) : void =
  if n>0 then
  {
    val () = drawChar(n-1, ' ')
    val () = drawChar(2*i+1, '*')
    val () = drawChar(n-1, ' ')
    val () = print_newline()
    val () = loop1(n-1, i+1)
  } else () // end of [if]
//
in
  loop1(level, 0)
end // end of [show_triangle]
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
val () = show_triangle(5)
//
val () = println! ("Good news: Your code has passed initial testing!")
//
} (* end of [main0] *)
#endif // #ifdef

(* ****** ****** *)

(* end of [assign2_sol.dats] *)
