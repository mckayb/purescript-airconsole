module AirConsole.Navigation where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal)
import AirConsole.FFI (runEffFn0, runEffFn1)

navigateHome :: forall e. AirConsoleGlobal -> Eff e Unit
navigateHome x = runEffFn0 "navigateHome" x

navigateTo :: forall e. AirConsoleGlobal -> String -> Eff e Unit
navigateTo x u = runEffFn1 "navigateTo" x u

openExternalUrl :: forall e. AirConsoleGlobal -> String -> Eff e Unit
openExternalUrl x u = runEffFn1 "openExternalUrl" x u
