module Tennis exposing (..)


type alias Game =
    ( Int, Int )


init : Game
init =
    ( 0, 0 )


player1Scores : Game -> Game
player1Scores ( first, second ) =
    ( first + 1, second )


player2Scores : Game -> Game
player2Scores ( first, second ) =
    ( first, second + 1 )


scoreToString : Game -> String
scoreToString game =
    case game of
        ( 0, 0 ) ->
            "Love-Love"

        ( 1, 0 ) ->
            "15-Love"

        ( 0, 1 ) ->
            "Love-15"

        ( 1, 1 ) ->
            "15-All"

        ( 2, 1 ) ->
            "30-15"

        _ ->
            "Unhandled score"
