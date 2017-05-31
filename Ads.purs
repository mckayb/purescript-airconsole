module AirConsole.Ads where

import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal)
import AirConsole.FFI (runEffFn0)

showAd :: forall e a. AirConsoleGlobal -> Eff e a
showAd x = runEffFn0 "showAd" x
