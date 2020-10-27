module Tennis exposing (..)

{-| Thanks to Emily Bache for the inspiration from the tennis refactoring repo: <https://github.com/emilybache/Tennis-Refactoring-Kata/blob/master/ruby/tennis.rb>
-}

import Dict


score p1Points p2Points =
    let
        result =
            ""

        tempScore =
            0

        result2 =
            if p1Points == p2Points then
                Dict.fromList
                    [ ( 0, "Love-All" )
                    , ( 1, "Fifteen-All" )
                    , ( 2, "Thirty-All" )
                    ]
                    |> Dict.get p1Points
                    |> Maybe.withDefault "Deuce"

            else if p1Points >= 4 || p2Points >= 4 then
                let
                    minusResult =
                        p1Points - p2Points
                in
                if minusResult == 1 then
                    "Advantage player1"

                else if minusResult == -1 then
                    "Advantage player2"

                else if minusResult >= 2 then
                    "Win for player1"

                else
                    "Win for player2"

            else
                List.range 1 3
                    |> List.map
                        (\i ->
                            if i == 1 then
                                Just <| lookupPoints p1Points

                            else if i == 2 then
                                Just <| "-"

                            else
                                Just <| lookupPoints p2Points
                        )
                    |> List.filterMap identity
                    |> String.join ""
    in
    result2


lookupPoints points =
    Dict.fromList
        [ ( 0, "Love" )
        , ( 1, "Fifteen" )
        , ( 2, "Thirty" )
        , ( 3, "Forty" )
        ]
        |> Dict.get points
        |> Maybe.withDefault "Unknown"
