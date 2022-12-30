open Printf
open Scanf

let ( ** ) a b = Int64.mul a b
let ( ++ ) a b = Int64.add a b
let ( -- ) a b = Int64.sub a b
let ( // ) a b = Int64.div a b
let ( %% ) a b = Int64.rem a b

let long x = Int64.of_int x
let toint x = Int64.to_int x

module IntMap = Map.Make(struct type t = int let compare = compare end)
module PairMap = Map.Make(struct type t = (int*int) let compare = compare end)
module StringMap = Map.Make(String)

let solve _ =
	()
;;

let () = 
  let t = 1 in
  for i = 1 to t do
	solve()
  done;
;;
