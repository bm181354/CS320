abstype pole

extern
fun move(A: pole, B: pole): void

extern
fun nmove(n: int, A: pole, B: pole, C: pole): void

implement
nmove(n, A, B, C) =
if
n > 0
then let
  val () = nmove(n-1, A, C, B)
  val () = move(A, B)
  val () = nmove(n-1, C, B, A)
in
end // end of [then]
else ()
