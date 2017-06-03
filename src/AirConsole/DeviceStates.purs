module AirConsole.DeviceStates where

import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal, DeviceId)
import AirConsole.FFI (runEffFn1, runEffFn2)

getCustomDeviceState :: forall e a. AirConsoleGlobal -> DeviceId -> Eff e a
getCustomDeviceState x d = runEffFn1 "getCustomDeviceState" x d

setCustomDeviceState :: forall s e a. AirConsoleGlobal -> s -> Eff e a
setCustomDeviceState x s = runEffFn1 "setCustomDeviceState" x s

setCustomDeviceStateProperty :: forall v e a. AirConsoleGlobal -> String -> v -> Eff e a
setCustomDeviceStateProperty x k v = runEffFn2 "setCustomDeviceStateProperty"x k v
