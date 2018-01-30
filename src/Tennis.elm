module Tennis exposing (gameScoreToString, init, player1Scores, player2Scores)


type alias Game =
    ( Int, Int )


init : Game
init =
    ( 0, 0 )


player1Scores : Game -> Game
player1Scores ( player1, player2 ) =
    ( player1 + 1, player2 )


player2Scores : Game -> Game
player2Scores ( player1, player2 ) =
    ( player1, player2 + 1 )


gameScoreToString : Game -> String
gameScoreToString (( player1Score, player2Score ) as game) =
    if isTiedScore game then
        tiedScoreToString player1Score
    else if isAdScore game then
        if player1Score > player2Score then
            "Ad Player 1"
        else
            "Ad Player 2"
    else if player1Score > 3 then
        "Player 1 wins"
    else if player2Score > 3 then
        "Player 2 wins"
    else
        playerScoreToString player1Score ++ "-" ++ playerScoreToString player2Score


tiedScoreToString : Int -> String
tiedScoreToString tiedScore =
    if tiedScore >= 3 then
        "Deuce"
    else
        playerScoreToString tiedScore ++ "-all"


isAdScore : Game -> Bool
isAdScore ( player1Score, player2Score ) =
    (max player1Score player2Score > 3)
        && (player2Score
                - player1Score
                |> abs
                |> (\difference -> difference == 1)
           )


isTiedScore : Game -> Bool
isTiedScore ( player1Score, player2Score ) =
    player1Score == player2Score


playerScoreToString : Int -> String
playerScoreToString score =
    case score of
        0 ->
            "Love"

        1 ->
            "15"

        2 ->
            "30"

        3 ->
            "40"

        _ ->
            "Unhandled score"
