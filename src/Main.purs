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
  pure $ maybe 5000 (fromMaybe 5000 <<< fromString) portEnv

main :: HTTPure.ServerM
main = do
  port <- lookupPort
  HTTPure.serve port (const $ HTTPure.ok "hello world!") $ 
    log $ "Running on port " <> show port
  