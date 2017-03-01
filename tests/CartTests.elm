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
                        Cart.Item "Phaser" 123 ""
                in
                    Expect.equal (Cart.empty |> Cart.add phaser |> Cart.total) 123
        , test "Cart has correct total" <|
            \() ->
                let
                    bloodWine =
                        Cart.Item "Blood Wine" 1 ""
                in
                    Expect.equal (Cart.empty |> Cart.add bloodWine |> Cart.total) 1
        , test "Cart with two items has total same as items" <|
            \() ->
                let
                    ale =
                        Cart.Item "Romulin Ale" 5 ""

                    phaser =
                        Cart.Item "Phaser" 3 ""

                    cart =
                        Cart.empty |> Cart.add ale |> Cart.add phaser
                in
                    Expect.equal (Cart.total cart) 8
        ]
