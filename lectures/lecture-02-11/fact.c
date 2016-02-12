/*

int fact(int n)
{
  int res = 1;
  while(n-- > 0) res = n * res;
  return res;
}

*/

(*

fun fact(n:int): int =
  if n > 0 then n * fact(n-1) else 1

*)

int fact(int n)
{
  return (n > 0) ? n * fact(n-1) : 1 ;
}
