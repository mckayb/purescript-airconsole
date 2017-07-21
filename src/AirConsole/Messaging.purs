module AirConsole.Messaging where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal, DeviceId)
import AirConsole.FFI (runEffFn1, runEffFn2)

broadcast :: forall a e. AirConsoleGlobal -> a -> Eff e Unit
broadcast x msg = runEffFn1 "broadcast" x msg

message :: forall a e. AirConsoleGlobal -> DeviceId -> a -> Eff e Unit
message x d msg = runEffFn2 "message" x d msg
