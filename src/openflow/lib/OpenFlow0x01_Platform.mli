(** An implementation of [PLATFORM]. The documentation for [PLATFORM] describes its features. *)

open Lwt_unix
open OpenFlow0x01

include OpenFlow0x01_PlatformSig.PLATFORM

(** [init_with_port p] accepts connections from switches on port [p], which
    is usually [6633]. *)
val init_with_port : int -> unit Lwt.t

(** [init_with_port p] accepts connections from switches on port [p], which
    is usually [6633]. *)
val init_with_port : int -> unit Lwt.t

(** [connect_to_controller] connect to controller running on [hostname]:[port]. *)
val connect_to_controller : string -> int -> unit Lwt.t

(** [shutdown] shuts down the server gracefully *) 
val shutdown : unit -> unit 
