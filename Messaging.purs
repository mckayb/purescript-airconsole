module AirConsole.Messaging where

import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal, DeviceID)
import AirConsole.FFI (runEffFn1, runEffFn2)

broadcast :: forall e a. AirConsoleGlobal -> String -> Eff e a
broadcast x msg = runEffFn1 "broadcast" x msg

message :: forall e a. AirConsoleGlobal -> DeviceID -> String -> Eff e a
message x d msg = runEffFn2 "message" x d msg
