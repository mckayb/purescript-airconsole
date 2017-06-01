module AirConsole.ControllerInputs where

import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal)
import AirConsole.FFI (runEffFn1)

vibrate :: forall e a. AirConsoleGlobal -> Number -> Eff e a
vibrate x t = runEffFn1 "vibrate" x t
