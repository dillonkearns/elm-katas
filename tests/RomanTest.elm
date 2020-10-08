module RomanTest exposing (suite)

import Expect
import RomanNumerals
import Test exposing (..)


pairs : List ( Int, String )
pairs =
    [ ( 1, "I" )
    , ( 2, "II" )
    , ( 4, "IV" )
    , ( 5, "V" )
    , ( 6, "VI" )
    , ( 7, "VII" )
    , ( 8, "VIII" )
    , ( 9, "IX" )

    -- , ( 10, "X" )
    -- , ( 11, "XI" )
    -- , ( 12, "XII" )
    -- , ( 14, "XIV" )
    -- , ( 15, "XV" )
    -- , ( 16, "XVI" )
    -- , ( 17, "XVII" )
    -- , ( 18, "XVIII" )
    -- , ( 19, "XIX" )
    -- , ( 20, "XX" )
    -- , ( 29, "XXIX" )
    -- , ( 30, "XXX" )
    -- , ( 40, "XL" )
    -- , ( 49, "XLIX" )
    -- , ( 51, "LI" )
    ]


suite : Test
suite =
    describe "Roman"
        (List.map makeTest pairs)


makeTest ( n, roman ) =
    test ("convert digit " ++ String.fromInt n ++ " to letter " ++ roman) <|
        \_ ->
            RomanNumerals.convert n
                |> Expect.equal roman
