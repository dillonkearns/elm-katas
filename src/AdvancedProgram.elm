module AdvancedProgram exposing (main)

import Html exposing (..)
import Http
import Json.Decode


type Msg
    = NoOp
    | GotData (Result Http.Error Int)


type alias Model =
    Int


view : Model -> Html Msg
view model =
    div [] []


init : ( Model, Cmd Msg )
init =
    ( 0
    , Http.get url Json.Decode.int |> Http.send GotData
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model
            , Http.get url Json.Decode.int |> Http.send GotData
            )

        GotData data ->
            let
                _ =
                    Debug.log "got data" data
            in
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
