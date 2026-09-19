type kind =
  (* Single-character tokens. *)
  | LeftParen
  | RightParen
  | LeftBrace
  | RightBrace
  | Comma
  | Dot
  | Minus
  | Plus
  | Semicolon
  | Slash
  | Star
  (* One or two character tokens. *)
  | Bang
  | BangEqual
  | Equal
  | EqualEqual
  | Greater
  | GreaterEqual
  | Less
  | LessEqual
  (* Literals. *)
  | Identifier
  | String
  | Number
  (* Keywords. *)
  | And
  | Class
  | Else
  | False
  | Fun
  | For
  | If
  | Nil
  | Or
  | Print
  | Return
  | Super
  | This
  | True
  | Var
  | While
  | Eof
[@@deriving show]

type literal = String of string | Number of float
type t = { kind : kind; lexeme : string; literal : literal option; line : int }

let to_string token = show_kind token.kind
