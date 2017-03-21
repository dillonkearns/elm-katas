module TennisTests exposing (all)

import Test exposing (..)
import Expect
import Tennis


all : Test
all =
    describe "Tennis Tests"
        [ test "new game" <|
            \() ->
                Tennis.init
                    |> Tennis.score
                    |> Expect.equal "Love-Love"
        ]
