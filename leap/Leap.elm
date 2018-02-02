module Leap exposing (..)


isLeapYear year =
  if year % 100 == 0 && not (year % 400 == 0) then
    False
  else if year % 4 == 0 then
    True
  else
    False
