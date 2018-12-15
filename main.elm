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
        , name
        , blurb
        , menu
        ]


header : Element msg
header =
    row
        [ width fill
        , Background.color <| rgb255 66 134 244
        , Font.color <| rgb255 255 255 255
        , Border.color <| rgb255 255 255 255
        , Border.width 1
        ]
        [ el
            [ width <| fillPortion 1
            , alignTop
            , Border.color (rgb255 255 255 255)
            , Border.width 1
            ]
            (el
                [ centerX ] (text "RCHH"))
        , image
            [ width <| fillPortion 1
            ]
            { src = "/imgs/otter_1.svg", description = "LOGO" }
        ]


name : Element msg
name =
    el
        [ height fill
        , width fill
        , Background.color <| rgb255 66 134 244
        , Font.color <| rgb255 255 255 255
        ]
        (text "NAME")


blurb : Element msg
blurb =
    el
        [ height fill
        , width fill
        , Background.color <| rgb255 255 178 0
        , Font.color <| rgb255 0 0 0
        ]
        (text "BLURB")


menu : Element msg
menu =
    el
        [ height fill
        , width fill
        , Background.color <| rgb255 255 178 0
        , Font.color <| rgb255 0 0 0
        ]
        (text "MENU")
