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
-- MODEL
-- UPDATE
-- SUBSCRIPTIONS
-- VIEW


channelPanel : Element msg
channelPanel =
    column
        [ height fill
        , width <| fillPortion 1
        , Background.color <| rgb255 92 99 118
        , Font.color <| rgb255 255 255 255
        ]
        [ text "channels" ]


chatPanel : Element msg
chatPanel =
    column [ height fill, width <| fillPortion 5 ]
        [ text "chat" ]


main : Html msg
main =
    layout [] <|
        row [ height fill, width fill ]
            [ channelPanel
            , chatPanel
            ]
