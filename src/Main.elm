module Main exposing (main)

import Html exposing (..)


type Msg
    = NoOp


type alias Model =
    Int


view : Model -> Html Msg
view model =
    div [] []


init : Model
init =
    0


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = init
        , update = update
        , view = view
        }
