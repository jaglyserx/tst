let () =
  match Array.length Sys.argv with
  | 1 -> print_endline "here's for one"
  | 2 -> print_endline "here's for two"
  | _ -> prerr_endline "here's err"
