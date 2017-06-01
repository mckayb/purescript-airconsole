module AirConsole.Effects where

import Control.Monad.Eff (kind Effect)

foreign import data ACCESS :: Effect
foreign import data CONNECTIVITY :: Effect
foreign import data SERVER_TIME :: Effect
