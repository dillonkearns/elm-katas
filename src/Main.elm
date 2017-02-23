module Main exposing (main)

import Html exposing (..)
import Cart


type Msg
    = NoOp


type alias Model =
    Cart.Cart


view : Model -> Html Msg
view model =
    text <| "Cart total is: " ++ (model |> Cart.total |> toString)


init : ( Model, Cmd Msg )
init =
    Cart.empty ! []


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    model ! []


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , update = update
        , subscriptions = \_ -> Sub.none
        , view = view
        }
