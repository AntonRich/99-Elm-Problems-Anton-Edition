import Html exposing (text)
import Maybe

-- Look into the end of the file to find more solutions

last : List a -> Maybe a
last xs =
    case xs of
        [] -> Nothing
        [y] -> Just y
        y::ys -> last ys

main =
    case last [ 1, 2, 3, 4] of
        Just a -> text (String.fromInt a)
        Nothing -> text "No element was found present in the list!"


-- last : List a -> Maybe a
-- last xs =
--     xs |> List.reverse |> List.head

-- last : List a -> Maybe a
-- last = List.head << List.reverse