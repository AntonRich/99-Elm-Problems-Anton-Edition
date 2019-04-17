import Html exposing (text)
import Maybe exposing (..)

nextToLast : List a -> Maybe a
nextToLast list =
    case List.reverse list of
         [] -> Nothing
         y::ys -> List.head ys

main =
    case nextToLast <| List.range 1 10 of
        Nothing -> text "Look at you, trying to learn ELM"
        Just a -> text (String.fromInt a)

-- nextToLast : List a -> Maybe a
-- nextToLast list =
--     list |> List.reverse |> List.drop 1 |> List.head


-- nextToLast : List a -> Maybe a
-- nextToLast = List.head << Maybe.withDefault [] << List.tail << List.reverse

-- nextToLast : List a -> Maybe a
-- nextToLast list =
--     case list of
--         [] -> Nothing
--         [y] -> Nothing
--         [y, z] -> Just y
--         y::ys -> nextToLast ys