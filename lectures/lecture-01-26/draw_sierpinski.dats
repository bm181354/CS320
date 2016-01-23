(*
**
*)

(* ****** ****** *)
//
#include
"share/atspre_define.hats"
#include
"share/atspre_staload.hats"
#include
"share/HATS/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)

#define NROW 48
#define NCOL 80

(* ****** ****** *)
//
val
theCanvas =
matrixref_make_elt<int>(i2sz(NROW), i2sz(NCOL), 0)
//
(* ****** ****** *)
//
fun
theCanvas_clear() =
matrixref_foreach_cloref
  (theCanvas, i2sz(NROW), i2sz(NCOL), lam(x) => (x := 0))
//
(* ****** ****** *)
//
fun
theCanvas_print() = let
//
fun
loop
(
  i:natLte(NROW)
, j: natLte(NCOL)
) : void =
  if i < NROW then
  (
    if j < NCOL
      then (print_string(if theCanvas[i, NCOL, j] = 0 then " " else "X"); loop(i, j+1))
      else (print_newline(); loop(i+1, 0))
  )
//
in
  loop(0, 0)
end // end of [theCanvas_print]
//
(* ****** ****** *)
//
extern
fun
draw_point(x: int, y: int): void
//
implement
draw_point(x, y) = let
//
val x = g1ofg0(x) and y = g1ofg0(y)
//
(*
val () = println! ("draw_point: x = ", x)
val () = println! ("draw_point: y = ", y)
*)
//
in
  if x < 0 then ()
  else if y < 0 then ()
  else if x >= NCOL then ()
  else if y >= NROW then ()
  else (theCanvas[y, NCOL, x] := 1)
end // end of [draw_point]
//
(* ****** ****** *)

typedef
point = (int, int)

(* ****** ****** *)
//
extern
fun
midpoint(p1: point, p2: point): point
//
(* ****** ****** *)

implement
midpoint(p1, p2) = ((p1.0+p2.0)/2, (p1.1+p2.1)/2)

(* ****** ****** *)
//
extern
fun
draw_hline
  (x1: int, x2: int, y: int): void
//
(* ****** ****** *)

implement
draw_hline
  (x1, x2, y) = let
//
fun loop (x1: int): void =
  if x1 <= x2 then (draw_point(x1, y); loop(x1+1)) else ()
//
in
  loop (x1)
end // end of [draw_hline]
//
(* ****** ****** *)
//
extern
fun
draw_triangle_0
  (p1: point, p2: point, p3: point): void
extern
fun
draw_triangle_1
  (p1: point, p2: point, p3: point): void
//
(* ****** ****** *)

implement
draw_triangle_0
  (p1, p2, p3) = let
//
val x1 = p1.0 and y1 = p1.1
val x2 = p2.0 and y2 = p2.1
val x3 = p3.0 and y3 = p3.1
//
val () = assertloc (y2 = y3)
val () = assertloc (x1 + x1 = x2 + x3)
//
val dir =
  (if y1 >= y2 then 1 else ~1): int
//
fun
loop
(
  x2: int, x3: int, y2: int
) : void = let
//
val () = draw_point(x2, y2)
val () = draw_point(x3, y2)
//
in
//
if y1 != y2
  then loop(x2+1, x3-1, y2+dir) else ()
//
end (* end of [loop] *)
//
in
  draw_hline(x2+1, x3-1, y2); loop (x2, x3, y2)
end // end of [draw_triangle_0]

(* ****** ****** *)

implement
draw_triangle_1
  (p1, p2, p3) = let
//
val x1 = p1.0 and y1 = p1.1
val x2 = p2.0 and y2 = p2.1
val x3 = p3.0 and y3 = p3.1
//
val () = assertloc (y2 = y3)
val () = assertloc (x1 + x1 = x2 + x3)
//
val dir =
  (if y1 >= y2 then 1 else ~1): int
//
fun
loop
(
  x2: int, x3: int, y2: int
) : void = let
//
val () = draw_hline(x2, x3, y2)
//
in
  if y1 != y2 then loop(x2+1, x3-1, y2+dir) else ()
end // end of [loop]
//
in
  loop (x2, x3, y2)
end // end of [draw_triangle_1]

(* ****** ****** *)
//
extern
fun
draw_sierpinski
  (p1: point, p2: point, p3: point, n: int): void
extern
fun
draw_sierpinski_aux
  (p1: point, p2: point, p3: point, n: int): void
//
(* ****** ****** *)

implement
draw_sierpinski
  (p1, p2, p3, n) =
(
  if n > 0
    then draw_sierpinski_aux(p1, p2, p3, n)
    else ()
  // end of [if]
) (* end of [draw_sierpinski] *)

implement
draw_sierpinski_aux
  (p1, p2, p3, n) = let
//
  val p12 = midpoint(p1, p2)
  val p23 = midpoint(p2, p3)
  val p31 = midpoint(p3, p1)
//
  val () = draw_triangle_1(p23, p12, p31)
  val () = draw_sierpinski(p1, p12, p31, n-1)
  val () = draw_sierpinski(p12, p2, p23, n-1)
  val () = draw_sierpinski(p31, p23, p3, n-1)
//
in
  // nothing
end // end of [draw_sierpinski_aux]

(* ****** ****** *)
//
extern
fun
draw_sierpinski_demo
  (level: int): void = "mac#"
//
(* ****** ****** *)

implement
draw_sierpinski_demo
  (level) = let
//
val p1 = (32, 0 )
val p2 = (0 , 32)
val p3 = (64, 32)
//
val () = draw_triangle_0(p1, p2, p3)
val () = draw_sierpinski(p1, p2, p3, level)
//
in
  // nothing
end // end of [draw_sierpinski_demo]

(* ****** ****** *)

implement
main0() = () where
{
  val () = draw_sierpinski_demo(3)
  val () = theCanvas_print((*void*))
}

(* ****** ****** *)

(* end of [draw_sierpinski.dats] *)
