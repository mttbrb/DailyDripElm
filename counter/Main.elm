module Main exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)

type alias Model =
  Int


type Msg
  = Increment
  | Decrement


initialModel : Model
initialModel = 0


update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment -> model + 1
    Decrement -> model - 1


view : Model -> Html Msg
view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div    [] [ text (toString model) ]
    , button [ onClick Increment ] [ text "+" ]
    ]


main : Program Never Int Msg
main =
  Html.beginnerProgram
    { model = initialModel
    , view = view
    , update = update
    }
