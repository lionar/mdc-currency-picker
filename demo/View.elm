module View exposing (view)

import Html exposing (..)
import Model exposing (Model)
import Mdc.CurrencyPicker as CurrencyPicker
import Msg exposing (Msg(Select))


view : Model -> Html Msg
view model =
    CurrencyPicker.view 
        { msgs = { select = Select }
        , selected = model.currency
        }