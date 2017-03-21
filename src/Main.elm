module Main exposing (main)

import Tennis
import Html exposing (..)


-- import Html.Attributes exposing (..)
-- import Html.Events exposing (onClick)


type Msg
    = NoOp


type alias Model =
    Tennis.Game


view : Model -> Html Msg
view model =
    div []
        [ text (Tennis.score model) ]


init : ( Model, Cmd Msg )
init =
    Tennis.init ! []


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model ! []


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , update = update
        , subscriptions = \_ -> Sub.none
        , view = view
        }
