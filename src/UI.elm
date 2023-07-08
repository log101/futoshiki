module UI exposing (h1, layout)

import Gen.Route as Route exposing (Route)
import Html exposing (Html)
import Html.Attributes as Attr


layout : List (Html msg) -> List (Html msg)
layout children =
    let
        viewLink : String -> Route -> Html msg
        viewLink label route =
            Html.a [ Attr.href (Route.toHref route) ] [ Html.text label ]
    in
    [ Html.div [ Attr.class "container" ]
        [ Html.header [ Attr.class "navbar" ]
            [ Html.strong [ Attr.class "brand" ] [ viewLink "Home" Route.Home_ ]
            , viewLink "Sandbox" Route.Sandbox
            , Html.div [ Attr.class "splitter" ] []
            ]
        , Html.main_ [] children
        ]
    ]


h1 : String -> Html msg
h1 label =
    Html.h1 [] [ Html.text label ]
