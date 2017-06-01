module AirConsole.Premium where

import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal, DeviceID)
import AirConsole.FFI (runEffFn0, runEffFn1)

getPremium :: forall e a. AirConsoleGlobal -> Eff e a
getPremium x = runEffFn0 "getPremium" x

getPremiumDeviceIds :: forall e a. AirConsoleGlobal -> Eff e a
getPremiumDeviceIds x = runEffFn0 "getPremiumDeviceIds" x

isPremium :: forall e a. AirConsoleGlobal -> DeviceID -> Eff e a
isPremium x d = runEffFn1 "isPremium" x d
