module Triangle exposing (..)


import Set


version : Int
version =
    2

type Triangle = Equilateral | Isosceles | Scalene


triangleKind : Float -> Float -> Float -> ( Result String Triangle)
triangleKind x y z =
  let
    listSides = List.sort [x, y, z]
  in
    if List.any lessThanEqual0 listSides then
      Err "Invalid lengths"
    else if violatesInequality listSides then
      Err "Violates inequality"
    else
      case listSides |> Set.fromList |> Set.size of
        1 -> Ok Equilateral
        2 -> Ok Isosceles
        _ -> Ok Scalene


lessThanEqual0 x =
  x <= 0

violatesInequality list =
  case list of
    [x, y, z] ->
      if x + y < z then
        True
      else
        False
    _ ->
      False
