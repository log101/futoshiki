module Pages.Utils exposing (view)

import Html
import View exposing (View)

view : View msg
view =
    { title = "Homepage"
    , body = [ Html.text (boardToString board)]
    }

board : List (List Int)
board = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]

intListToString : List Int -> String
intListToString l =
    String.join "," (List.map String.fromInt l)

boardToString : List (List Int) -> String
boardToString l = String.join " | " (List.map intListToString l)
