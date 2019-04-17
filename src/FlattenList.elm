module FlattenList exposing (..)

import Html exposing (text)

-- Flatten a nested list into a single list. Because
-- Lists in Elm are homogeneous we need to define
-- what a nested list is.
-- type NestedList a = Elem a | List [NestedList a]

type NestedList a
    = Elem a
    | Sublist (List (NestedList a))

flatten : NestedList a -> List a
flatten nestedList =
    let
        getValue nestValues acc =
            case nestValues of
                Elem a ->
                    a :: acc

                Sublist (x::_) ->
                    x :: acc
                
                Sublist (_::xs) ->
                    case xs of
                        Elem b ->
                            b :: acc
                        
                        Sublist 


    in
        getValue nestedList []


n10 =
    Sublist [Elem 1, Elem 2]

nl1 =
    Sublist
        [ Elem 1
        , Sublist
            [ Sublist
                [ Elem 2
                , Sublist [ Elem 3, Elem 4]
                ]
            , Elem 5
            ]
        , Elem 6
        , Sublist [ Elem 7, Elem 8, Elem 9 ]
        ]

main =
    -- text <| boolString <| flatten nl1 == List.range 1 9
    text <| boolString <| getValue nl1 == List.range 1 9

boolString : Bool -> String
boolString x =
    case x of
        True -> "True"
        False -> "False"