module AirConsole.PersistentData where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal)
import AirConsole.FFI (runEffFn1, runEffFn3)

requestPersistentData :: forall e. AirConsoleGlobal -> Array String -> Eff e Unit
requestPersistentData x ids = runEffFn1 "requestPersistentData" x ids

storePersistentData :: forall v uid e. AirConsoleGlobal -> String -> v -> uid -> Eff e Unit
storePersistentData x k v id = runEffFn3 "storePersistentData" x k v id
