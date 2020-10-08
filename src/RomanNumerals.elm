module RomanNumerals exposing (..)

-- romans


basicNumerals : List ( Int, String )
basicNumerals =
    [ ( 5, "V" )
    , ( 1, "I" )
    ]


convert : Int -> String
convert n =
    modBy 10 n |> convertOne


convertOne : Int -> String
convertOne n =
    case n of
        0 ->
            ""

        1 ->
            "I"

        2 ->
            "II"

        3 ->
            "III"

        4 ->
            "IV"

        5 ->
            "V"

        6 ->
            "VI"

        7 ->
            "VII"

        8 ->
            "VIII"

        9 ->
            "IX"

        _ ->
            "ERROR!!!"
