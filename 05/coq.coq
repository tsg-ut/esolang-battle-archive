Require Import Coq.Lists.List.
Require Import Io.All.
Require Import Io.System.All.
Require Import ListString.All.

Import ListNotations.
Import C.Notations.

Require Import Ascii String.
Open Scope string_scope.

Fixpoint f x i := 
  match x with
  | String "T" _ => (0,i)
  | String "K" _ => (1,i)
  | String " " r => f r (i+1)
  | _ => (2,0)
  end.

Fixpoint h i j {struct j} := 
	match j with
	| 0 => "A"
	| S m => 
		match i with
		| 0 => "A" ++ (h i m) 
		| S n => " " ++ (h n m)
		end
	end.
			

Fixpoint g t p s res {struct t} := 
	match t with 
	| 0 => System.log (LString.of_string ("XX" ++ res))
	| S n => 
		let! line := System.read_line in
		match line with
		| None => System.log (LString.of_string ("ZZ" ++ res))
		| Some line => 
			let line := (LString.to_string line) in
			let pq := f line 0 in
			match pq with
			| (0,i) => g n i line line
			| (1,j) => System.log (LString.of_string (res ++ (String "010" "") ++ (h j p)))
			| _ => g n p s (res ++ (String "010" "") ++ s) 
			end
		end
	end.

Definition cat (argv : list LString.t) : C.t System.effect unit :=
	g 100 0 "" "".

Definition main := Extraction.launch cat.
