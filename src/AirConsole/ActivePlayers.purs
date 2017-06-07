module AirConsole.ActivePlayers where

import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal, PlayerNumber, DeviceId)
import AirConsole.FFI (runFn0, runFn1, runEffFn1)
import Data.Nullable (Nullable)

convertDeviceIdToPlayerNumber :: AirConsoleGlobal -> DeviceId -> Nullable PlayerNumber
convertDeviceIdToPlayerNumber x n = runFn1 "convertDeviceIdToPlayerNumber" x n

convertPlayerNumberToDeviceId :: AirConsoleGlobal -> PlayerNumber -> Nullable DeviceId
convertPlayerNumberToDeviceId x n = runFn1 "convertPlayerNumberToDeviceId" x n

getActivePlayerDeviceIds :: AirConsoleGlobal -> Array DeviceId
getActivePlayerDeviceIds x = runFn0 "getActivePlayerDeviceIds" x

setActivePlayers :: forall e a. AirConsoleGlobal -> Int -> Eff e a
setActivePlayers x m = runEffFn1 "setActivePlayers" x m
