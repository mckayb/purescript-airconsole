module AirConsole.UserInterface where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal, Orientation)
import AirConsole.FFI (runEffFn1)

setOrientation :: forall e. AirConsoleGlobal -> Orientation -> Eff e Unit
setOrientation x s = runEffFn1 "setOrientation" x s

showDefaultUI :: forall e. AirConsoleGlobal -> Boolean -> Eff e Unit
showDefaultUI x b = runEffFn1 "showDefaultUI" x b
