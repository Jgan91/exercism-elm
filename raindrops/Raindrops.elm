module Raindrops exposing (..)


raindrops int =
  let
    pling = if int % 3 == 0 then "Pling" else ""
    plang = if int % 5 == 0 then "Plang" else ""
    plong = if int % 7 == 0 then "Plong" else ""
    raindropSpeak = pling ++ plang ++ plong
  in
    if raindropSpeak /= "" then raindropSpeak else toString int
