module AirConsole.HighScores where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal)
import AirConsole.FFI (runEffFn6)

requestHighScores :: forall e. AirConsoleGlobal -> String -> String -> Array String -> Array String -> Number -> Number -> Eff e Unit
requestHighScores x ln lv uids ranks total top = runEffFn6 "requestHighScores" x ln lv uids ranks total top

storeHighScore :: forall x e. AirConsoleGlobal -> String -> String -> Number -> Array String -> x -> String -> Eff e Unit
storeHighScore x ln lv s id d ss = runEffFn6 "storeHighScore" x ln lv s id d ss
