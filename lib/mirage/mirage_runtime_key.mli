(*
 * Copyright (c) 2023 Thomas Gazagnaire <thomas@gazagnaire.org>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *)

(** Runtime key for the Mirage tool. *)

open Functoria
include RUNTIME_KEY

(** {2 OCaml runtime keys}

    The OCaml runtime is usually configurable via the [OCAMLRUNPARAM]
    environment variable. We provide boot parameters covering these options. *)

val backtrace : bool runtime_key
(** [--backtrace]: Output a backtrace if an uncaught exception terminated the
    unikernel. *)

val randomize_hashtables : bool runtime_key
(** [--randomize-hashtables]: Randomize all hash tables. *)

(** {3 GC control}

    The OCaml garbage collector can be configured, as described in detail in
    {{:http://caml.inria.fr/pub/docs/manual-ocaml/libref/Gc.html#TYPEcontrol} GC
      control}.

    The following keys allow boot time configuration. *)

val allocation_policy : [ `Next_fit | `First_fit | `Best_fit ] runtime_key
val minor_heap_size : int option runtime_key
val major_heap_increment : int option runtime_key
val space_overhead : int option runtime_key
val max_space_overhead : int option runtime_key
val gc_verbosity : int option runtime_key
val gc_window_size : int option runtime_key
val custom_major_ratio : int option runtime_key
val custom_minor_ratio : int option runtime_key
val custom_minor_max_size : int option runtime_key

(** {3 Network keys} *)

val interface : ?group:string -> string -> string runtime_key
(** A network interface. *)

(** Ipv4 keys. *)
module V4 : sig
  open Ipaddr.V4

  val network : ?group:string -> Prefix.t -> Prefix.t runtime_key
  (** A network defined by an address and netmask. *)

  val gateway : ?group:string -> t option -> t option runtime_key
  (** A default gateway option. *)
end

(** Ipv6 keys. *)
module V6 : sig
  open Ipaddr.V6

  val network : ?group:string -> Prefix.t option -> Prefix.t option runtime_key
  (** A network defined by an address and netmask. *)

  val gateway : ?group:string -> t option -> t option runtime_key
  (** A default gateway option. *)

  val accept_router_advertisements : ?group:string -> unit -> bool runtime_key
  (** An option whether to accept router advertisements. *)
end

val ipv4_only : ?group:string -> unit -> bool runtime_key
(** An option for dual stack to only use IPv4. *)

val ipv6_only : ?group:string -> unit -> bool runtime_key
(** An option for dual stack to only use IPv6. *)

val resolver : ?default:string list -> unit -> string list option runtime_key
(** The address of the DNS resolver to use. See $REFERENCE for format. *)

val syslog : Ipaddr.t option -> Ipaddr.t option runtime_key
(** The address to send syslog frames to. *)

val syslog_port : int option -> int option runtime_key
(** The port to send syslog frames to. *)

val syslog_hostname : string -> string runtime_key
(** The hostname to use in syslog frames. *)

(** {3 Logs} *)

val logs : Mirage_runtime.log_threshold list runtime_key

(** {3 Startup delay} *)

val delay : int runtime_key
(** The initial delay, specified in seconds, before a unikernel starting up.
    Defaults to 0. Useful for tenders and environments that take some time to
    bring devices up. *)
