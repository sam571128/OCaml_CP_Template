open Printf
open Scanf

let read_int _ = bscanf Scanning.stdin " %d " (fun x -> x)
let read_string _ = bscanf Scanning.stdin " %s " (fun x -> x)

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
