(*
**
*)

(* ****** ****** *)

abstype point

(* ****** ****** *)

extern
fun midpoint (p1: point, p2: point): point

extern
fun drawTriangle(p1: point, p2: point, p3: point): void

extern
fun drawSierpinski(p1: point, p2: point, p3: point, n: int): void
extern
fun drawSierpinski_aux(p1: point, p2: point, p3: point, n: int): void

(* ****** ****** *)

implement
drawSierpinski
  (p1, p2, p3, n) =
  if n > 0
    then drawSierpinski_aux(p1, p2, p3, n) else ()
  // end of [if]

implement
drawSierpinski_aux
  (p1, p2, p3, n) = let
//
  val p12 = midpoint(p1, p2)
  val p23 = midpoint(p2, p3)
  val p31 = midpoint(p3, p1)
//
(*
  val () = drawTriangle(p12, p23, p31)
  val () = drawSierpinski(p1, p12, p31, n-1)
  val () = drawSierpinski(p12, p2, p23, n-1)
  val () = drawSierpinski(p31, p23, p3, n-1)
*)
//
in
  drawTriangle(p12, p23, p31);
  drawSierpinski(p1, p12, p31, n-1);
  drawSierpinski(p12, p2, p23, n-1);
  drawSierpinski(p31, p23, p3, n-1);
end // end of [drawSierpinski_aux]

(* ****** ****** *)

(* end of [draw.dats] *)
