module TennisTests exposing (all)

import Test exposing (..)
import Expect
import Tennis


all : Test
all =
    describe "Cart Tests"
        [ test "Empty cart has total of 0" <|
            \() ->
                Expect.equal Tennis.something 123
        ]
