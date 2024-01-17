module Pages.Home_ exposing (Model, Msg, page)

-- import Debug exposing (log)

import Effect exposing (Effect)
import Element exposing (alignTop, centerX, el, fill, height, padding, paddingEach, rgb255, text, width)
import Element.Background exposing (color)
import Element.Border
import Element.Font
import Element.Input exposing (button)
import Page exposing (Page)
import Pages.NotFound_ exposing (Msg)
import Route exposing (Route)
import Shared
import View exposing (View)


page : Shared.Model -> Route () -> Page Model Msg
page shared route =
    Page.new
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }



-- INIT


type alias Model =
    {}


init : () -> ( Model, Effect Msg )
init () =
    ( {}
    , Effect.none
    )



-- UPDATE


type Msg
    = NoOp
    | ButtonPressed


update : Msg -> Model -> ( Model, Effect Msg )
update msg model =
    case msg of
        NoOp ->
            -- let
            --     _ =
            --         log "Current Msg" msg
            -- in
            ( model
            , Effect.none
            )

        ButtonPressed ->
            -- let
            --     _ =
            --         log "Current Msg" msg
            -- in
            ( model
            , Effect.none
            )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> View Msg
view model =
    { title = "Homepage"
    , attributes = []
    , element =
        el [ color (rgb255 21 64 38), width fill, height fill ]
            (el [ alignTop, centerX, padding 10 ]
                (button
                    [ color (rgb255 21 64 78)
                    , paddingEach { top = 10, bottom = 10, left = 6, right = 6 }
                    , Element.Border.solid
                    , Element.Border.width 2
                    , Element.Border.rounded 20
                    , Element.Border.color (rgb255 142 199 80)
                    , Element.Font.color (rgb255 142 199 80)
                    ]
                    { onPress = Just ButtonPressed
                    , label = text "Elm CMS"
                    }
                )
            )
    }
