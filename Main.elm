import Html exposing (..)
import Html.App as Html
import Html.Events exposing (..)


main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }


-- MODEL


type alias Model =
  { secretNumber : Int
  , guesses : List Int
  }


init : (Model, Cmd Msg)
init =
  ( Model 0 [], Cmd.none)


-- UPDATE


type Msg
  = NoOp


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NoOp ->
      model ! []


-- VIEW


view : Model -> Html Msg
view model =
  div []
    [ h1 [] [ text "Guess my number" ]
    ]


-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none
