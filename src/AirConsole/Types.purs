module AirConsole.Types where

import Data.Options (Option, opt)

foreign import data AirConsoleGlobal :: Type
foreign import data AirConsoleOption :: Type

type DeviceId = Int
type Orientation = String
type PlayerNumber = Int

orientation :: Option AirConsoleOption Orientation
orientation = opt "orientation"

synchronize_time :: Option AirConsoleOption Boolean
synchronize_time = opt "synchronize_time"

setup_document :: Option AirConsoleOption Boolean
setup_document = opt "setup_document"

device_motion :: Option AirConsoleOption Number
device_motion = opt "device_motion"
