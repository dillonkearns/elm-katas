module Main exposing (main)

import Html exposing (..)
import Tennis


type Msg
    = NoOp


type alias Model =
    Tennis.Game


view : Model -> Html Msg
view model =
    div []
        [ text (Tennis.scoreToString model) ]


init : Model
init =
    Tennis.init


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
