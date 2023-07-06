module Pages.Home_ exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)
import View exposing (View)


view : View msg
view =
    { title = "Futoshiki"
    , body =
        [ div [ class "container" ]
            [ row
                [ cell, verticalArrow, cell, verticalArrow, cell, verticalArrow, cell ]
            , arrowRow [ horizontalArrow, horizontalArrow, horizontalArrow, horizontalArrow ]
            , row
                [ cell, verticalArrow, cell, verticalArrow, cell, verticalArrow, cell ]
            , arrowRow [ horizontalArrow, horizontalArrow, horizontalArrow, horizontalArrow ]
            , row
                [ cell, verticalArrow, cell, verticalArrow, cell, verticalArrow, cell ]
            , arrowRow [ horizontalArrow, horizontalArrow, horizontalArrow, horizontalArrow ]
            , row
                [ cell, verticalArrow, cell, verticalArrow, cell, verticalArrow, cell ]
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
