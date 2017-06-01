module AirConsole.Navigation where

import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal)
import AirConsole.FFI (runEffFn0, runEffFn1)

navigateHome :: forall e a. AirConsoleGlobal -> Eff e a
navigateHome x = runEffFn0 "navigateHome" x

navigateTo :: forall e a. AirConsoleGlobal -> String -> Eff e a
navigateTo x u = runEffFn1 "navigateTo" x u

openExternalUrl :: forall e a. AirConsoleGlobal -> String -> Eff e a
openExternalUrl x u = runEffFn1 "openExternalUrl" x u
