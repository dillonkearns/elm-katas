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
        , test "Cart with 1 item has total same as item's" <|
            \() ->
                let
                    phaser =
                        Cart.Item "Phaser" 123
                in
                    Expect.equal (Cart.empty |> Cart.add phaser |> Cart.total) 123
        ]
