
staload "./hello.sats"

(* ****** ****** *)

implement
hello() =
println! ("Hello, world!")

(* ****** ****** *)

implement
hello_from(name) =
println! ("Hello from [", name, "]")

(* ****** ****** *)

implement
main0 () =
{
  val () = hello()
  val () = hello_from("hwxi")
}