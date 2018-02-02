module Bob exposing (..)

import Regex


uppercaseLetters = Regex.regex "[A-Za-z]"


hey message =
  if String.toUpper message == message && Regex.contains uppercaseLetters message then
    "Whoa, chill out!"
  else if String.endsWith "?" message then
    "Sure."
  else if String.trim message == "" then
    "Fine. Be that way!"
  else
    "Whatever."
