module Main exposing (..)

import Html exposing (..)

import RandomGifPair exposing (init, update, view, Model, Msg)


main : Program Never RandomGifPair.Model RandomGifPair.Msg
main =
  Html.program
    { init = init "funny cats" "funny dogs"
    , view = view
    , update = update
    , subscriptions = subscriptions
    }


subscriptions : a -> Sub msg
subscriptions model = Sub.none
