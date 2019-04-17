module PalindromeList exposing (reverse, boolString, isPalindrome)

import Html exposing (text)

reverse : List a -> List a
reverse list =
    case list of
        [] -> []
        x::xs -> (reverse xs) ++ [x]

isPalindrome : List a -> Bool
isPalindrome list =
    if list == reverse list then
        True
    else
        False

boolString : Bool -> String
boolString x =
    case x of
        True -> "True"
        False -> "False"

main =
    text (boolString <| isPalindrome [1, 2, 1])


-- Comparing halfs of lists
isPalindrome : List a -> Bool
isPalindrome xs =
    let
        s = (List.length xs) // 2
    in
        List.take s xs == List.take s (List.reverse xs)