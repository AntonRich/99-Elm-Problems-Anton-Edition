import Html exposing (text)

length : List a -> Int
length = List.sum << List.map (\n -> 1)

main =
    text <| String.fromInt <| length <| List.range 1 10


-- length : List a -> Int
-- length xs =
--     List.foldr (\a acc -> acc + 1) 0 xs


-- recursive solution
-- length : List a -> Int
-- length xs
--     case list of
--         [] -> 0
--         _ :: ys -> 1 + length ys


-- recursive solution with an accumulator
-- length : List a -> Int
-- length xs =
--     let
--         recurseLength list acc =
--             case list of
--                 [] -> acc
--                 (_::ys) -> recurseLength ys (acc + 1)
--     in
--         recurseLength xs 0
