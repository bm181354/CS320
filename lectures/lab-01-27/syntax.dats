

(* 

this is a block comment

*)


// this is a single line comment
(* or this *)


// in dats file, use "extern"
// fun name (a list of binding type): return type 
extern fun function_name(int, int): bool


// implement name (a list of binding name) = exp 
implement function_name(x, y) = let 
	
	// let bindings in exp end 

	// bindings
	val x1 = x + 1 
	val y1 = y + 1

	val x = y + 2 // first evaluate y+2, then bind to x by push the mapping onto the env  
	val y = x + 2 // first evaluate x+2, then bind to y by push the mapping onto the env

	// exp where { bindings }
    // direct recursion
	fun loop(x:string, n:int): void = () where {
		val _ = println! x 
		val _ = if n > 0 then loop (x, n-1) 
	}

	// mutual recursion
	fun is_even (x: int): bool = 
		if x = 0 then true else is_odd (x - 1)
	and is_odd (x: int): bool = 
		if x = 0 then false else is_even (x - 1)


in 
 	// andalso &&
 	// orelse ||
 	// if exp then exp else exp 
	if x = y andalso x > 0
	then true 
	else is_even (x) orelse x mod 2 = 0
end 




