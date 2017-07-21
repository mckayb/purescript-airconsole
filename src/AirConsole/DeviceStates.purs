module AirConsole.DeviceStates where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal, DeviceId)
import AirConsole.FFI (runEffFn1, runEffFn2)

getCustomDeviceState :: forall e a. AirConsoleGlobal -> DeviceId -> Eff e a
getCustomDeviceState x d = runEffFn1 "getCustomDeviceState" x d

setCustomDeviceState :: forall s e. AirConsoleGlobal -> s -> Eff e Unit
setCustomDeviceState x s = runEffFn1 "setCustomDeviceState" x s

setCustomDeviceStateProperty :: forall v e. AirConsoleGlobal -> String -> v -> Eff e Unit
setCustomDeviceStateProperty x k v = runEffFn2 "setCustomDeviceStateProperty"x k v
