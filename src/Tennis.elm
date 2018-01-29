module Tennis exposing (..)


type alias Game =
    Int


init : Game
init =
    0


player1Scores : Game -> Game
player1Scores game =
    1


scoreToString : Game -> String
scoreToString game =
    case game of
        0 ->
            "Love-Love"

        1 ->
            "15-Love"

        _ ->
            "Unhandled score"
