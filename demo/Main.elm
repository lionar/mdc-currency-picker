module Main exposing (..)

import App exposing (..)
import Html
import Model exposing (Model)
import Msg exposing (Msg)
import Update exposing (update)
import View exposing (view)


main : Program Never Model Msg
main = Html.program
    { init = init
    , subscriptions = subscriptions
    , update = update
    , view = view
    }