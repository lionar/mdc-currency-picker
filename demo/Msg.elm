module Msg exposing (Msg(..))

import Keyboard


type Msg 
    = KeyPress Keyboard.KeyCode
    | Select String
