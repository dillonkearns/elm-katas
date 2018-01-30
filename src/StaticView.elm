module StaticView exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)


view =
    h1 [ class "page-title" ] [ text "Hello" ]
