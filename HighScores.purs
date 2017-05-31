module AirConsole.HighScores where

import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal)
import AirConsole.FFI (runEffFn6)

requestHighScores :: forall e a. AirConsoleGlobal -> String -> String -> Array String -> Array String -> Number -> Number -> Eff e a
requestHighScores x ln lv uids ranks total top = runEffFn6 "requestHighScores" x ln lv uids ranks total top

storeHighScore :: forall x e a. AirConsoleGlobal -> String -> String -> Number -> Array String -> x -> String -> Eff e a
storeHighScore x ln lv s id d ss = runEffFn6 "storeHighScore" x ln lv s id d ss
