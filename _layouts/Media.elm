module Media exposing (header, layout, main, markdown)

import Elmstatic exposing (..)
import Html exposing (..)
import Html.Attributes as Attr exposing (alt, attribute, class, href, src)
import Markdown
import Styles


markdown : String -> Html Never
markdown s =
    let
        mdOptions : Markdown.Options
        mdOptions =
            { defaultHighlighting = Just "elm"
            , githubFlavored = Just { tables = False, breaks = False }
            , sanitize = False
            , smartypants = True
            }
    in
    Markdown.toHtmlWith mdOptions [ attribute "class" "markdown" ] s


header : List (Html Never)
header =
    [ div [ class "header-logo" ]
        [ a [ href "/" ]
            [ img [ alt "The Game Of Life Logo", src "/img/game of life logo.png", attribute "width" "500" ]
                []
            ]
        ]
    , div [ class "navigation" ]
        [ ul []
            [ li []
                [ a [ href "/posts" ]
                    [ text "News" ]
                ]
            , li []
                [ a [ href "/concerts" ]
                    [ text "Concerts" ]
                ]
            , li []
                [ a [ href "/media" ]
                    [ text "Media" ]
                ]
            , li []
                [ a [ href "/software" ]
                    [ text "Software" ]
                ]
            , li []
                [ a [ href "/about" ]
                    [ text "About" ]
                ]
            , li []
                [ a [ href "/contact" ]
                    [ text "Contact" ]
                ]
            ]
        ]
    ]


layout : String -> List (Html Never) -> List (Html Never)
layout title contentItems =
    header
        ++ [ div [ class "content" ]
                [ h1 [] [ text title ]
                , div [ class "media-gallery" ] contentItems
                ]

           -- , footer
           , Elmstatic.stylesheet "/styles.css"
           , Styles.styles
           ]


main : Elmstatic.Layout
main =
    Elmstatic.layout Elmstatic.decodePage <|
        \content ->
            Ok <| layout content.title [ markdown content.content ]
