module Main exposing (..)


import Html exposing (..)
import Html.Attributes exposing (..)

-- MAIN


main : Html msg
main = 
    view ""

-- VIEW


view : a -> Html msg
view _ =
  header []
    [ span 
        [ style "background" "#8625d2"
        , style "color" "white"
        , style "padding" "20px 0"
        , style "font-size" "1.5em"
        , style "display" "flex"
        , style "justify-content" "center"
        ] 
        [ text "Meu Carrinho de Compras" ]
    ]