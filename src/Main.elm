module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)
import Cart


type Msg
    = NoOp


type alias Model =
    { cart : Cart.Cart
    , inventory : List Cart.Item
    }


viewCartTotal : Cart.Cart -> Html Msg
viewCartTotal cart =
    text <| "Cart total is: " ++ (cart |> Cart.total |> toString)


viewInventory : List Cart.Item -> Html Msg
viewInventory inventory =
    div []
        [ h1 [] [ text "Inventory" ]
        , ul [] (List.map viewInventoryItem inventory)
        ]


viewInventoryItem : Cart.Item -> Html Msg
viewInventoryItem item =
    div [] [ text item.name, viewCost item.cost ]


quatlooBadge : Html Msg
quatlooBadge =
    img [ src "./assets/quatloo.png", style [ ( "max-width", "10px" ), ( "padding-left", "3px" ), ( "padding-right", "3px" ) ] ] []


viewCost : Int -> Html Msg
viewCost int =
    span [] [ quatlooBadge, text (toString int) ]


view : Model -> Html Msg
view model =
    div []
        [ div [] [ viewInventory model.inventory ]
        , div [] [ viewCartTotal model.cart ]
        ]


inventory : List Cart.Item
inventory =
    [ Cart.Item "Phaser" 456 ]


init : ( Model, Cmd Msg )
init =
    { cart = Cart.empty, inventory = inventory } ! []


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    model ! []


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , update = update
        , subscriptions = \_ -> Sub.none
        , view = view
        }
