import Html exposing (text)

-- reverse with foldl
reverse : List a -> List a
reverse = List.foldl (::) []

main =
    text (String.fromList <| reverse <| List.map intToChar <| List.range 1 10)

intToChar : Int -> Char
intToChar x =
    case x of
        0 -> '0'
        1 -> '1'
        2 -> '2'
        3 -> '3'
        4 -> '4'
        5 -> '5'
        6 -> '6'
        7 -> '7'
        8 -> '8'
        9 -> '9'
        _ -> 'z'

-- reverse : List a -> List a
-- reverse xs =
--     case xs of
--         [] -> []
--         y::ys -> (reverse ys) ++ [y]

-- reverse with foldr
-- reverse : List a -> List a
-- reverse = List.foldr (\x acc -> acc ++ [x]) []
