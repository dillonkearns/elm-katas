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


total : Cart -> Int
total cart =
    List.map .cost cart |> List.sum



-- case List.head cart of
--     Nothing ->
--         0
--
--     Just x ->
--         x.cost
