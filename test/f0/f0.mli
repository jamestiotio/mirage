open Functoria.DSL

val register :
  ?init:job impl list ->
  ?src:[ `Auto | `None | `Some of string ] ->
  string ->
  job impl list ->
  unit

module Tool : sig
  val run_with_argv :
    ?help_ppf:Format.formatter ->
    ?err_ppf:Format.formatter ->
    string array ->
    unit
end
