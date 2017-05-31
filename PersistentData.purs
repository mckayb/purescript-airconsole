module AirConsole.PersistentData where

import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal)
import AirConsole.FFI (runEffFn1, runEffFn3)

requestPersistentData :: forall e a. AirConsoleGlobal -> Array String -> Eff e a
requestPersistentData x ids = runEffFn1 "requestPersistentData" x ids

storePersistentData :: forall v uid e a. AirConsoleGlobal -> String -> v -> uid -> Eff e a
storePersistentData x k v id = runEffFn3 "storePersistentData" x k v id
