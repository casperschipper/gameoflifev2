module Concerts exposing (main)
 
import Elmstatic exposing (..)
import Html exposing (..)
import Html.Attributes as Attr exposing (alt, attribute, class, href, src)
import Media
import Post 


main : Elmstatic.Layout
main =
    let
        postItem post =
            div []
                [ a [ href ("/" ++ post.link) ]
                    [ h2 [] [ text post.title ]
                    , Post.metadataHtml post
                    , img [ src post.thumb, class "thumb" ] []
                    ]
                
                ]

        postListContent posts =
            if List.isEmpty posts then
                [ text "No posts yet!" ]

            else
                posts |> List.filter isConcertPost |> List.map postItem

        sortPosts posts =
            List.sortBy .date posts
                |> List.reverse
    in
    Elmstatic.layout Elmstatic.decodePostList <|
        \content ->
            Ok <| Media.layout content.title <| postListContent <| sortPosts content.posts

isConcertPost : Post -> Bool 
isConcertPost post =
    List.member "concerts" post.tags
