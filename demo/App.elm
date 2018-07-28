module App exposing (..)

import Mdc.CurrencyPicker as CurrencyPicker
import Model exposing (Model)
import Msg exposing (Msg)


defaultModel : Model
defaultModel =
    { currency = "EUR"
    }


init : ( Model, Cmd Msg )
init =
    defaultModel ! []


subscriptions : Model -> Sub Msg
subscriptions model =
    CurrencyPicker.subscriptions Msg.KeyPress