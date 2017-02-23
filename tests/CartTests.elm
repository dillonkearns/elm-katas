module CartTests exposing (all)

import Test exposing (..)
import Expect
import Cart


all : Test
all =
    describe "Cart Tests"
        [ test "Empty cart has total of 0" <|
            \() ->
                Expect.equal (Cart.total Cart.empty) 0
        ]
