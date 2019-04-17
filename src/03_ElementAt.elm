import Html exposing (text)
import Maybe exposing (..)

-- and now recursion
elementAt : Int -> List a -> Maybe a
elementAt n list =
    case list of
        [] -> Nothing
        x::xs ->
            if n == 1 then
                Just x
            else
                elementAt (n - 1) xs

main =
    case elementAt 3 <| List.range 1 10 of
        Nothing -> text "You didn't get the number my friend."
        Just x -> text (String.fromInt x)

-- elementAt : Int -> List a -> Maybe a
-- elementAt n =
--     List.head << List.drop (n-1)

-- elementAt : Int -> List a -> Maybe a
-- elementAt n list =
--     if n < 1 then
--         Nothing
--     else
--         case List.drop (n - 1) list of
--             [] -> Nothing
--             y::ys -> Just y