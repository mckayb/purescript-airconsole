module AirConsole.Ads where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal)
import AirConsole.FFI (runEffFn0)

showAd :: forall e. AirConsoleGlobal -> Eff e Unit
showAd x = runEffFn0 "showAd" x
