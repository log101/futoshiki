module Pages.Home_ exposing (view)

import Html exposing (Html, div, img, p)
import Html.Attributes exposing (class, src)
import View exposing (View)


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
    div [ class "cell" ] [ p [ class "cell-number" ] [ Html.text (String.fromInt 0) ] ]


verticalArrow : Html msg
verticalArrow =
    div [ class "vertical-arrow" ] []


horizontalArrow : Html msg
horizontalArrow =
    div [ class "horizontal-arrow" ] []


chevronLeft : Html msg
chevronLeft =
    img [ src "/images/chevron-left.png" ] []


chevronRight : Html msg
chevronRight =
    img [ src "/images/chevron-right.png" ] []


chevronUp : Html msg
chevronUp =
    img [ src "/images/chevron-top.png" ] []


chevronBottom : Html msg
chevronBottom =
    img [ src "/images/chevron-bottom.png" ] []
