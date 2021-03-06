module Update exposing (update)

import Model exposing (Model)
import Msg exposing (Msg(..))


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        KeyPress key ->
            { model | currency = "USD" } ! []

        Select currency ->
            { model | currency = currency } ! []