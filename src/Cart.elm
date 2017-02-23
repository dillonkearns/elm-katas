module Cart exposing (..)


type alias Cart =
    List Item


type alias Item =
    { name : String, cost : Int }


empty : Cart
empty =
    []


total : Cart -> number
total something =
    0
