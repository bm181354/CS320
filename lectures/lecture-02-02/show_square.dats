(*
** Code used for lecture-02-02
*)

(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
//
(* ****** ****** *)

extern
fun
show_square(n: int): void

(* ****** ****** *)

implement
show_square(n) = let
//
fun print_row(i: int): void =
  if i < n
    then (print "*"; print_row(i+1))
    else print_newline()
  // end of [if]
//
fun print_nrow(i: int): void =
  if i < n then (print_row(0); print_nrow(i+1)) else ()
//
in
  print_nrow(0)
end // end of [show_square]

(* ****** ****** *)

implement
main0() =
{
//
val () = show_square(3)
val () = show_square(5)
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [show_square.dats] *)
