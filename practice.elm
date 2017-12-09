import Html exposing (Attribute, Html, div, text)
import Html.Attributes exposing (style)

labelStyle : Attribute msg
labelStyle =
  style
  [ ("backgroundColor", "#006e54")
  , ("border", "solid 1px #006e54")
  , ("color", "#ffffff")
  , ("float", "left")
  , ("fontSize", "32px")
  , ("height", "50px")
  , ("textAlign", "center")
  , ("width", "60px")
  ]

textStyle : Attribute msg
textStyle =
  style
  [ ("border", "solid 1px #006e54")
  , ("color", "#302833")
  , ("float", "none")
  , ("fontSize", "32px")
  , ("height", "50px")
  , ("marginLeft", "60px")
  , ("paddingLeft", "8px")
  , ("width", "400px")
  ]

succ : Int -> Int
succ x =
  x + 1

getx : Float -> Float -> Float -> Float -> Float -> Float
getx r a c theta phi =
  r * (cos (degrees theta)) + a * (cos ((degrees phi) + (degrees (c * theta))))

gety : Float -> Float -> Float -> Float -> Float -> Float
gety r a c theta phi =
  r * (sin (degrees theta)) + a * (sin ((degrees phi) + (degrees (c * theta))))

main : Html a
main =
  let
    r = 120
    a = 130
    c = 1
    theta = 30
    phi = 0
    x = getx r a c theta phi
    y = gety r a c theta phi
    xlabel = div [labelStyle] [text "x = "]
    xtext = div [textStyle] [text (toString x)]
    ylabel = div [labelStyle] [text "y = "]
    ytext = div [textStyle] [text (toString y)]
  in
    div [] [xlabel, xtext, ylabel, ytext]
