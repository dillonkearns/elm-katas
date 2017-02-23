module Main exposing (main)

import Html exposing (..)


type Msg
    = NoOp


type alias Model =
    Int


view : Int -> Html Msg
view model =
    text "Hello!"


init : ( Model, Cmd Msg )
init =
    123 ! []


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    model ! []


main : Program Never Int Msg
main =
    Html.program
        { init = init
        , update = update
        , subscriptions = \_ -> Sub.none
        , view = view
        }
