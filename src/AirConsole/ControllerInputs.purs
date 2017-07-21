module AirConsole.ControllerInputs where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal)
import AirConsole.FFI (runEffFn1)

vibrate :: forall e. AirConsoleGlobal -> Int -> Eff e Unit
vibrate x t = runEffFn1 "vibrate" x t
