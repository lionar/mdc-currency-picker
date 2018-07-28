module Mdc.CurrencyPicker exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, src)
import Html.Events exposing (onClick)
import Keyboard


type alias Config msg =
    { msgs : Msgs msg
    , selected : String
    }


type alias Msgs msg =
    { select : String -> msg 
    }


subscriptions : (Keyboard.KeyCode -> msg) -> Sub msg
subscriptions keyMsg =
    Keyboard.downs keyMsg


view : Config msg -> Html msg
view config =
    ul [ class "md-currency-picker" ]
        <| List.map (item config) items


items : List (String, String) 
items =
    [ ("EUR", "assets/flags/eu.png")
    , ("USD", "assets/flags/us.png")
    , ("GBP", "assets/flags/uk.png")
    , ("CAD", "assets/flags/ca.png")
    ]


item : Config msg -> (String, String) -> Html msg
item { msgs, selected } (currency, imageUrl) =
    li 
        [ onClick <| msgs.select currency
        , selectedClass currency selected
        ] 
        [ img [ src imageUrl ] [], text currency ]


selectedClass : String -> String -> Attribute msg
selectedClass currency selected =
    if currency == selected then
        class "selected"
    else
        class ""