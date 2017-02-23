module Cart exposing (..)


type alias Cart =
    List Item


type alias Item =
    { name : String, cost : Int, imageUrl : String }


empty : Cart
empty =
    []


add : Item -> Cart -> Cart
add item cart =
    item :: cart


total : Cart -> number
total cart =
    if List.length cart > 0 then
        123
    else
        0
