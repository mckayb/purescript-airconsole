module AirConsole.Connectivity where

import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal, DeviceId)
import AirConsole.FFI (runEffFn0, runFn0)
import AirConsole.Effects (SERVER_TIME)

getControllerDeviceIds :: AirConsoleGlobal -> Array DeviceId
getControllerDeviceIds x = runFn0 "getControllerDeviceIds" x

getDeviceId :: AirConsoleGlobal -> DeviceId
getDeviceId x = runFn0 "getDeviceId" x

getMasterControllerDeviceId :: AirConsoleGlobal -> DeviceId
getMasterControllerDeviceId x = runFn0 "getMasterControllerDeviceId" x

getServerTime :: AirConsoleGlobal -> Eff (server_time :: SERVER_TIME) Number
getServerTime x = runEffFn0 "getServerTime" x
