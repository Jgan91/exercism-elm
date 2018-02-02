module Pangram exposing (..)


alphabet = String.split "" "abcdefghijklmnopqrstuvwxyz"


isPangram string =
  List.all (hasLetter string) alphabet


hasLetter string char =
  String.toLower string
    |> String.contains char
