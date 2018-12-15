-- big Orange+Blue header background
-- big RobOtter logo on top-right
-- Name on top-left
-- blurb on top-left, under the Name
-- menu buttons horizontally across the screen
-- content
-- alt-menu, floating, expanding
-- MENU #1 IDENTITY
-- more info about what is RCHH
-- who are / were the Robotters?
-- MENU #2 CONTACTS
-- social media links (Fb, YouTube)
-- emails, phones, location, etc
-- MENU #3 SPONSORS
-- HAW, companies, etc
-- MENU #4 EUROBOT & NEWS
-- images / videos from past competitions
-- external news about us


module Main exposing (main)

--import Html.Attributes exposing (..)

import Browser
import Browser.Navigation as Nav
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Html exposing (Html)
import Url exposing (..)



-- MAIN FUNCTION


main : Html msg
main =
    layout [] <|
        view



-- MODEL
-- UPDATE
-- SUBSCRIPTIONS
-- VIEW


view : Element msg
view =
    column [ height fill, width fill ]
        [ header
        , menu
        ]


header : Element msg
header =
    wrappedRow
        [ width fill
        , Background.color <| rgb255 255 178 0
        , Font.color <| rgb255 21 42 94
        ]
        [ column
            [ width <| fillPortion 1
            , height fill
            ]
            [ logoName
            , logoSubName
            , blurb
            ]
        , logoImage
        ]


logoName : Element msg
logoName =
    el
        [-- Border.color (rgb255 255 255 255)
         --, Border.width 1
        ]
        (el
            [ centerX
            , Font.family
                [ Font.external { name = "Unlock", url = "https://fonts.googleapis.com/css?family=Unlock" }
                , Font.sansSerif
                ]
            , Font.regular
            , Font.size 400
            ]
            (text "rchh")
        )


logoSubName : Element msg
logoSubName =
    el
        [ width fill
        , alignTop
        ]
        (el
            [ centerX
            , Font.family
                [ Font.external { name = "Unlock", url = "https://fonts.googleapis.com/css?family=Unlock" }
                , Font.sansSerif
                ]
            , Font.regular
            , Font.size 50
            ]
            (text "RobOtter Club Hansestadt Hamburg")
        )


logoImage : Element msg
logoImage =
    image
        [ width <| fillPortion 1 ]
        { src = "/imgs/otter_1.svg", description = "LOGO" }


blurb : Element msg
blurb =
    el
        [ centerY
        , centerX
        ]
        (paragraph []
            [ text "We are the "
            , el [ Font.bold ] (text "HAW Hamburg")
            , text " university club of robotics. Every year we assemble a team of students to participate in the "
            , el [ Font.bold ] (text "Eurobot")
            , text " event, among other international competitions for autonomous robots. All our mechanical otters are self-developed, allowing the club members to put into practice their knowledge in the fields of electrical engineering, software construction and project managment."
            ]
        )


menu : Element msg
menu =
    el
        [ height fill
        , width fill
        , Background.color <| rgb255 255 178 0
        , Font.color <| rgb255 0 0 0
        ]
        (text "MENU")
