module Helper exposing (..)

import Html
import Html.Attributes


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 int1 int2 int3 =
    int1 + int2 + int3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2


type alias Lenguaje =
    { name : String, releaseYear : Int, currentVersion : String }


langs : List Lenguaje
langs =
    [ { name = "elm"
      , releaseYear = 2012
      , currentVersion = "0.19.1"
      }
    , { name = "javascript"
      , releaseYear = 1995
      , currentVersion = "ECMAScript 2025"
      }
    ]


languageNames : List Lenguaje -> List String
languageNames lista =
    List.map .name lista


type alias Usuario =
    { name : String, uType : String }


listaUniversidad : List Usuario
listaUniversidad =
    [ { name = "Roberto"
      , uType = "Student"
      }
    , { name = "Mitsiu"
      , uType = "Professor"
      }
    ]


isStudent : Usuario -> String
isStudent user =
    if user.uType == "Student" then
        user.name

    else
        ""


onlyStudents : List Usuario -> List String
onlyStudents lista =
    List.map isStudent lista


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


listVideogames : List Videogame
listVideogames =
    [ { title = "Control"
      , releaseYear = 2019
      , available = True
      , downloads = 100
      , genres = [ "Action", "Shooter" ]
      }
    , { title = "Ocarina of time"
      , releaseYear = 2019
      , available = True
      , downloads = 100
      , genres = [ "Action", "Adventure" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres videojuego =
    List.map .genres videojuego


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "16 GB"
    , model = "MSI ROG"
    , brand = "MSI"
    , screenSize = "16 pulgadas"
    }


main : Html.Html msg
main =
    Html.div
        []
        [ Html.h1
            []
            [ Html.text "My laptop" ]
        , Html.div
            []
            [ Html.ul
                []
                [ Html.li
                    []
                    [ Html.text ("Ram: " ++ .ram myLaptop) ]
                , Html.li
                    []
                    [ Html.text ("Modelo: " ++ .model myLaptop) ]
                , Html.li
                    []
                    [ Html.text ("Marca: " ++ .brand myLaptop) ]
                , Html.li
                    []
                    [ Html.text ("Pulgadas: " ++ .screenSize myLaptop) ]
                ]
            ]
        ]
