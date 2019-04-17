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
flatten nestedList = []
    -- let
    --     getValue nestList =
    --         case nestList of
    --             Elem a ->
    --                 a
                
    --             Sublist nestedValue ->
    --                 List.map getValue nestedValue
    -- in
    -- List.map getValue [nestedList]

getValue nestList =
    case nestList of
        Elem a ->
            [a]
                
        Sublist nestedValue ->
            getValue (Sublist nestedValue)

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