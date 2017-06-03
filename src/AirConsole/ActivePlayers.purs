module AirConsole.ActivePlayers where

import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal, PlayerNumber, DeviceId)
import AirConsole.FFI (runEffFn0, runEffFn1)

convertDeviceIdToPlayerNumber :: forall e a. AirConsoleGlobal -> DeviceId -> Eff e a
convertDeviceIdToPlayerNumber x n = runEffFn1 "convertDeviceIdToPlayerNumber" x n

convertPlayerNumberToDeviceId :: forall e a. AirConsoleGlobal -> PlayerNumber -> Eff e a
convertPlayerNumberToDeviceId x n = runEffFn1 "convertPlayerNumberToDeviceId" x n

getActivePlayerDeviceIds :: forall e a. AirConsoleGlobal -> Eff e a
getActivePlayerDeviceIds x = runEffFn0 "getActivePlayerDeviceIds" x

setActivePlayers :: forall e a. AirConsoleGlobal -> Number -> Eff e a
setActivePlayers x m = runEffFn1 "setActivePlayers" x m
