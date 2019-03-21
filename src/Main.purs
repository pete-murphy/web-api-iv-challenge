module Examples.HelloWorld.Main where

import Prelude

import Effect.Console (log)
import HTTPure as HTTPure

port :: Int
port = 8080

main :: HTTPure.ServerM
main = HTTPure.serve port (const $ HTTPure.ok "hello world!") do 
  log $ "Hello! Server running on port " <> show port