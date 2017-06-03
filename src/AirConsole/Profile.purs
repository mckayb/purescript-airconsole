module AirConsole.Profile where

import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal, DeviceId)
import AirConsole.FFI (runEffFn0, runEffFn1, runEffFn2)

editProfile :: forall e a. AirConsoleGlobal -> Eff e a
editProfile x = runEffFn0 "editProfile" x

getNickname :: forall e a. AirConsoleGlobal -> DeviceId -> Eff e a
getNickname x d = runEffFn1 "getNickname" x d

getProfilePicture :: forall id e a. AirConsoleGlobal -> Number -> id -> Eff e a
getProfilePicture x id s = runEffFn2 "getProfilePicture" x id s

getUid :: forall e a. AirConsoleGlobal -> DeviceId -> Eff e a
getUid x d = runEffFn1 "getUid" x d

isUserLoggedIn :: forall e a. AirConsoleGlobal -> DeviceId -> Eff e a
isUserLoggedIn x d = runEffFn1 "isUserLoggedIn" x d

requestEmailAddress :: forall e a. AirConsoleGlobal -> Eff e a
requestEmailAddress x = runEffFn0 "requestEmailAddress" x
