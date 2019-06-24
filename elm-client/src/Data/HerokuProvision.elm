{-
   FISSION
   Easily use IPFS from Web 2.0 applications

   OpenAPI spec version: 1.0.0
   Contact: support@fission.codes

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.HerokuProvision exposing (HerokuProvision, herokuProvisionDecoder, herokuProvisionEncoder)

import Data.UserID exposing (UserID, userIDDecoder, userIDEncoder)
import Data.UserConfig exposing (UserConfig, userConfigDecoder, userConfigEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias HerokuProvision =
    { id : UserID
    , config : UserConfig
    , message : Maybe String
    }


herokuProvisionDecoder : Decoder HerokuProvision
herokuProvisionDecoder =
    decode HerokuProvision
        |> required "id" userIDDecoder
        |> required "config" userConfigDecoder
        |> optional "message" (Decode.nullable Decode.string) Nothing



herokuProvisionEncoder : HerokuProvision -> Encode.Value
herokuProvisionEncoder model =
    Encode.object
        [ ( "id", userIDEncoder model.id )
        , ( "config", userConfigEncoder model.config )
        , ( "message", withDefault Encode.null (map Encode.string model.message) )
        ]

