module Main exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)

type alias Model =
  { count : Int
  , increments : Int
  , decrements : Int
  }


type Msg
  = Increment
  | Decrement


initialModel : Model
initialModel =
  { count = 0
  , increments = 0
  , decrements = 0
  }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    Increment -> ( { model | count = model.count + 1, increments = model.increments + 1 }, Cmd.none )
    Decrement -> ( { model | count = model.count - 1, decrements = model.decrements + 1 }, Cmd.none )


view : Model -> Html Msg
view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div    [] [ text (toString model.count) ]
    , button [ onClick Increment ] [ text "+" ]
    , h3     [] [ text ("increments = " ++ (toString model.increments))]
    , h3     [] [ text ("decrements = " ++ (toString model.decrements))]
    ]


main : Program Never Model Msg
main =
  Html.program
    { init = ( initialModel, Cmd.none )
    , view = view
    , update = update
    , subscriptions = subscriptions
    }


subscriptions: a -> Sub msg
subscriptions model = Sub.none
