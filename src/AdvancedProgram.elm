module AdvancedProgram exposing (main)

import Html exposing (..)


type Msg
    = NoOp


type alias Model =
    Int


view : Model -> Html Msg
view model =
    div [] []


init : ( Model, Cmd Msg )
init =
    ( 0, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


url : String
url =
    "http://localhost:1234/data.json"


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }
