module AirConsole.Premium where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal, DeviceId)
import AirConsole.FFI (runEffFn0, runEffFn1)

getPremium :: forall e. AirConsoleGlobal -> Eff e Unit
getPremium x = runEffFn0 "getPremium" x

getPremiumDeviceIds :: forall e. AirConsoleGlobal -> Eff e (Array DeviceId)
getPremiumDeviceIds x = runEffFn0 "getPremiumDeviceIds" x

isPremium :: forall e. AirConsoleGlobal -> DeviceId -> Eff e Boolean
isPremium x d = runEffFn1 "isPremium" x d
