module AirConsole.Messaging where

import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal, DeviceId)
import AirConsole.FFI (runEffFn1, runEffFn2)

broadcast :: forall a e b. AirConsoleGlobal -> a -> Eff e b
broadcast x msg = runEffFn1 "broadcast" x msg

message :: forall a e b. AirConsoleGlobal -> DeviceId -> a -> Eff e b
message x d msg = runEffFn2 "message" x d msg
