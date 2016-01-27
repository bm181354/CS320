
extern
fun
draw_point(x: int, y: int): void

extern
fun
draw_hline(x: int, y: int, len: int): void
extern
fun
draw_vline(x: int, y: int, len: int): void

implement
draw_hline(x, y, len) =
if
len > 0
then let
  val () = draw_point(x, y)
in
  draw_hline(x+1, y, len-1)
end // end of [then]
else () // end of [else]

implement
draw_vline(x, y, len) =
if
len > 0
then let
  val () = draw_point(x, y)
in
  draw_vline(x, y+1, len-1)
end // end of [then]
else () // end of [else]
