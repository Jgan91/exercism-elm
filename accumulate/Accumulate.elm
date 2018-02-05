module Accumulate exposing (..)


accumulate function list =
  case list of
    [] ->
      []
    x::xs ->
      function x :: accumulate function xs
