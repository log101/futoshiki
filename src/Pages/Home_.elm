module Pages.Home_ exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)
import View exposing (View)
import Html exposing (img)
import Html.Attributes exposing (src)

view : View msg
view =
    { title = "Futoshiki"
    , body =
        [ div [ class "container" ]
            [ div [ class "board" ]
                [ row
                    [ cell, chevronLeft, cell, verticalArrow, cell, verticalArrow, cell ]
                , arrowRow [ horizontalArrow, horizontalArrow, horizontalArrow, horizontalArrow ]
                , row
                    [ cell, verticalArrow, cell, verticalArrow, cell, verticalArrow, cell ]
                , arrowRow [ chevronUp, horizontalArrow, horizontalArrow, horizontalArrow ]
                , row
                    [ cell, verticalArrow, cell, verticalArrow, cell, chevronRight, cell ]
                , arrowRow [ horizontalArrow, chevronBottom, horizontalArrow, horizontalArrow ]
                , row
                    [ cell, chevronLeft, cell, verticalArrow, cell, verticalArrow, cell ]
                ]
            ]
        ]
    }


row : List (Html msg) -> Html msg
row =
    div [ class "row" ]


arrowRow : List (Html msg) -> Html msg
arrowRow =
    div [ class "arrow-row" ]


cell : Html msg
cell =
    div [ class "cell" ] []


verticalArrow : Html msg
verticalArrow =
    div [ class "vertical-arrow" ] []


horizontalArrow : Html msg
horizontalArrow =
    div [ class "horizontal-arrow" ] []


chevronLeft : Html msg
chevronLeft = img [ src "/images/chevron-left.png" ] []

chevronRight : Html msg
chevronRight = img [ src "/images/chevron-right.png" ] []


chevronUp : Html msg
chevronUp = img [ src "/images/chevron-top.png" ] []

chevronBottom : Html msg
chevronBottom = img [ src "/images/chevron-bottom.png" ] []
