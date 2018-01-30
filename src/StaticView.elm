module StaticView exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


view =
    h1 [ class "page-title" ] [ text "Elm Counter" ]


main =
    view
