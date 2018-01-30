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
                    |> Tennis.gameScoreToString
                    |> Expect.equal "Love-all"
        , test "player 1 scores" <|
            \_ ->
                Tennis.init
                    |> Tennis.player1Scores
                    |> Tennis.gameScoreToString
                    |> Expect.equal "15-Love"
        , test "player 1 scores two times" <|
            \_ ->
                Tennis.init
                    |> Tennis.player1Scores
                    |> Tennis.player1Scores
                    |> Tennis.gameScoreToString
                    |> Expect.equal "30-Love"
        , test "player 1 scores three times" <|
            \_ ->
                Tennis.init
                    |> Tennis.player1Scores
                    |> Tennis.player1Scores
                    |> Tennis.player1Scores
                    |> Tennis.gameScoreToString
                    |> Expect.equal "40-Love"
        , test "player 1 ace game" <|
            \_ ->
                Tennis.init
                    |> Tennis.player1Scores
                    |> Tennis.player1Scores
                    |> Tennis.player1Scores
                    |> Tennis.player1Scores
                    |> Tennis.gameScoreToString
                    |> Expect.equal "Player 1 wins"
        , test "player 2 ace game" <|
            \_ ->
                Tennis.init
                    |> Tennis.player2Scores
                    |> Tennis.player2Scores
                    |> Tennis.player2Scores
                    |> Tennis.player2Scores
                    |> Tennis.gameScoreToString
                    |> Expect.equal "Player 2 wins"
        , test "player 2 scores" <|
            \_ ->
                Tennis.init
                    |> Tennis.player2Scores
                    |> Tennis.gameScoreToString
                    |> Expect.equal "Love-15"
        , test "players are tied" <|
            \_ ->
                Tennis.init
                    |> Tennis.player1Scores
                    |> Tennis.player2Scores
                    |> Tennis.gameScoreToString
                    |> Expect.equal "15-all"
        , test "deuce" <|
            \_ ->
                Tennis.init
                    |> Tennis.player1Scores
                    |> Tennis.player1Scores
                    |> Tennis.player1Scores
                    |> Tennis.player2Scores
                    |> Tennis.player2Scores
                    |> Tennis.player2Scores
                    |> Tennis.gameScoreToString
                    |> Expect.equal "Deuce"
        , test "just under ad" <|
            \_ ->
                Tennis.init
                    |> Tennis.player1Scores
                    |> Tennis.player1Scores
                    |> Tennis.player1Scores
                    |> Tennis.player2Scores
                    |> Tennis.player2Scores
                    |> Tennis.gameScoreToString
                    |> Expect.equal "40-30"
        , test "ad-in" <|
            \_ ->
                Tennis.init
                    |> Tennis.player1Scores
                    |> Tennis.player1Scores
                    |> Tennis.player1Scores
                    |> Tennis.player2Scores
                    |> Tennis.player2Scores
                    |> Tennis.player2Scores
                    |> Tennis.player1Scores
                    |> Tennis.gameScoreToString
                    |> Expect.equal "Ad Player 1"
        , test "ad-out" <|
            \_ ->
                Tennis.init
                    |> Tennis.player2Scores
                    |> Tennis.player2Scores
                    |> Tennis.player2Scores
                    |> Tennis.player1Scores
                    |> Tennis.player1Scores
                    |> Tennis.player1Scores
                    |> Tennis.player2Scores
                    |> Tennis.gameScoreToString
                    |> Expect.equal "Ad Player 2"
        ]
