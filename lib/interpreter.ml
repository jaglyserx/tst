let run source =
  let tokens = Scanner.scan source in
  List.iter (fun token -> print_endline (Token.to_string token)) tokens

let run_file path = In_channel.with_open_bin path In_channel.input_all |> run

let rec run_prompt () =
  print_string "> ";
  flush stdout;

  match input_line with
  | line ->
      run line;
      run_prompt ()
  | exception End_of_file -> ()
