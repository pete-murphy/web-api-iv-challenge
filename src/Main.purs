module Main where

import Prelude

import Data.Int (fromString)
import Data.Maybe (fromMaybe, maybe)
import Effect (Effect)
import Effect.Class.Console (log)
import HTTPure as HTTPure
import Node.Process (lookupEnv)

lookupPort :: Effect Int
lookupPort = do 
  portEnv <- lookupEnv "PORT"
  pure $ maybe 4321 (fromMaybe 1234 <<< fromString) portEnv

main :: HTTPure.ServerM
main = do
  port <- lookupPort
  HTTPure.serve port (const $ HTTPure.ok "hello world!") $ 
    log $ "HTTPure server running on port " <> show port
