module Pages.Home_ exposing (Model, Msg, page)

import Effect exposing (Effect)
import Element exposing (alignTop, centerX, el, fill, height, padding, rgb255, text, width)
import Element.Background exposing (color)
import Element.Border
import Element.Input exposing (button)
import Html
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
    | Test


update : Msg -> Model -> ( Model, Effect Msg )
update msg model =
    case msg of
        NoOp ->
            ( model
            , Effect.none
            )

        Test ->
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
        el [ color (rgb255 242 199 80), width fill, height fill ]
            (el [ Element.alignTop, centerX, padding 50 ]
                (button [ Element.Border.rounded 30, Element.Border.dotted ]
                    { onPress = Just Test
                    , label = text "Hello, Elm UI! ✨"
                    }
                )
            )
    }
