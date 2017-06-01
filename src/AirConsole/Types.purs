module AirConsole.Types
    ( AirConsoleGlobal
    , DeviceID
    , Orientation
    , PlayerNumber
    , AirConsoleOpts
    , MandatoryAirConsoleOpts
    , getAirConsoleOpts
    ) where

import Data.Maybe (Maybe(Nothing))
import AirConsole.FFI (merge)

foreign import data AirConsoleGlobal :: Type

type DeviceID = Number
type Orientation = String
type PlayerNumber = Number

type MandatoryAirConsoleOpts r = (orientation :: Orientation | r)
type OptionalAirConsoleOpts r = ( orientation :: Orientation
                                , synchronize_time :: Maybe Boolean
                                , setup_document :: Maybe Boolean
                                , device_motion :: Maybe Number
                                | r
                                )
type AirConsoleOpts r = Record (MandatoryAirConsoleOpts r)

getAirConsoleOpts
  :: forall r s
   . Union r ( synchronize_time :: Maybe Boolean
             , setup_document :: Maybe Boolean
             , device_motion :: Maybe Number
             )
             ( synchronize_time :: Maybe Boolean
             , setup_document :: Maybe Boolean
             , device_motion :: Maybe Number
             | s
             )
  => Record (MandatoryAirConsoleOpts r)
  -> Record (OptionalAirConsoleOpts s)
getAirConsoleOpts p = merge p { synchronize_time: Nothing
                              , setup_document: Nothing
                              , device_motion: Nothing
                              }
