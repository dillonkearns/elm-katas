module TennisTest exposing (suite)

import Expect
import Tennis
import Test exposing (..)


suite : Test
suite =
    describe "Tennis"
        [ test "new game" <|
            \_ ->
                Tennis.init
                    |> Tennis.scoreToString
                    |> Expect.equal "Love-Love"
        , test "player 1 scores" <|
            \_ ->
                Tennis.init
                    |> Tennis.player1Scores
                    |> Tennis.scoreToString
                    |> Expect.equal "15-Love"
        ]
