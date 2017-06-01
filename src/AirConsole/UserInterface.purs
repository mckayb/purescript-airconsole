module AirConsole.UserInterface where

import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal, Orientation)
import AirConsole.FFI (runEffFn1)

setOrientation :: forall e a. AirConsoleGlobal -> Orientation -> Eff e a
setOrientation x s = runEffFn1 "setOrientation" x s

showDefaultUI :: forall e a. AirConsoleGlobal -> Boolean -> Eff e a
showDefaultUI x b = runEffFn1 "showDefaultUI" x b
