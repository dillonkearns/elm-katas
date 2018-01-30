module Tennis exposing (gameScoreToString, init, player1Scores, player2Scores)


type alias Game =
    { player1Score : Int
    , player2Score : Int
    }


init : Game
init =
    { player1Score = 0
    , player2Score = 0
    }


player1Scores : Game -> Game
player1Scores game =
    { game | player1Score = game.player1Score + 1 }


player2Scores : Game -> Game
player2Scores game =
    { game | player2Score = game.player2Score + 1 }


gameScoreToString : Game -> String
gameScoreToString ({ player1Score, player2Score } as game) =
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
isAdScore { player1Score, player2Score } =
    (max player1Score player2Score > 3)
        && (player2Score
                - player1Score
                |> abs
                |> (\difference -> difference == 1)
           )


isTiedScore : Game -> Bool
isTiedScore { player1Score, player2Score } =
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
