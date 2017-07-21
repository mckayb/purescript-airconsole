module AirConsole.Profile where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal, DeviceId, DeviceUid)
import AirConsole.FFI (runEffFn0, runEffFn1, runEffFn2)

editProfile :: forall e. AirConsoleGlobal -> Eff e Unit
editProfile x = runEffFn0 "editProfile" x

getNickname :: forall e. AirConsoleGlobal -> DeviceId -> Eff e String
getNickname x d = runEffFn1 "getNickname" x d

getProfilePicture :: forall id e. AirConsoleGlobal -> DeviceId -> id -> Eff e String
getProfilePicture x id s = runEffFn2 "getProfilePicture" x id s

getUid :: forall e. AirConsoleGlobal -> DeviceId -> Eff e DeviceUid
getUid x d = runEffFn1 "getUid" x d

isUserLoggedIn :: forall e. AirConsoleGlobal -> DeviceId -> Eff e Boolean
isUserLoggedIn x d = runEffFn1 "isUserLoggedIn" x d

requestEmailAddress :: forall e. AirConsoleGlobal -> Eff e Unit
requestEmailAddress x = runEffFn0 "requestEmailAddress" x
