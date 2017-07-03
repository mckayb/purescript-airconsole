module AirConsole.Global where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Types ( AirConsoleGlobal
                        , AirConsoleOption
                        , DeviceId
                        , Orientation
                        , PlayerNumber
                        )
import AirConsole.FFI (unsafeSetFieldEff)
import Data.Options (Options, options)
import Data.Foreign (Foreign)

foreign import getAirConsoleGlobalImpl :: forall e. Foreign -> Eff e AirConsoleGlobal
foreign import orientationPortrait :: Orientation
foreign import orientationLandscape :: Orientation
foreign import screen :: DeviceId

getAirConsoleGlobal :: forall e. Options AirConsoleOption -> Eff e AirConsoleGlobal
getAirConsoleGlobal opts = getAirConsoleGlobalImpl (options opts)

onDisconnect :: forall e a e2. (DeviceId -> Eff e a) -> AirConsoleGlobal -> Eff e2 Unit
onDisconnect f x = unsafeSetFieldEff "onDisconnect" f x

onConnect :: forall e a e2. (DeviceId -> Eff e a) -> AirConsoleGlobal -> Eff e2 Unit
onConnect f x = unsafeSetFieldEff "onConnect" f x

onReady :: forall e a. (String -> Eff e a) -> AirConsoleGlobal -> Eff e Unit
onReady f x = unsafeSetFieldEff "onReady" f x

onMessage :: forall x e a e2. (DeviceId -> x -> Eff e a) -> AirConsoleGlobal -> Eff e2 Unit
onMessage f x = unsafeSetFieldEff "onMessage" f x

onCustomDeviceStateChange :: forall x e a e2. (DeviceId -> x -> Eff e a) -> AirConsoleGlobal -> Eff e2 Unit
onCustomDeviceStateChange f x = unsafeSetFieldEff "onCustomDeviceStateChange" f x

onDeviceStateChange :: forall x e a e2. (DeviceId -> x -> Eff e a) -> AirConsoleGlobal -> Eff e2 Unit
onDeviceStateChange f x = unsafeSetFieldEff "onDeviceStateChange" f x

onDeviceProfileChange :: forall e a e2. (DeviceId -> Eff e a) -> AirConsoleGlobal -> Eff e2 Unit
onDeviceProfileChange f x = unsafeSetFieldEff "onDeviceProfileChange" f x

onEmailAddress :: forall e a e2. (String -> Eff e a) -> AirConsoleGlobal -> Eff e2 Unit
onEmailAddress f x = unsafeSetFieldEff "onEmailAddress" f x

onActivePlayersChange :: forall e a e2. (PlayerNumber -> Eff e a) -> AirConsoleGlobal -> Eff e2 Unit
onActivePlayersChange f x = unsafeSetFieldEff "onActivePlayersChange" f x

onDeviceMotion :: forall x e a e2. (x -> Eff e a) -> AirConsoleGlobal -> Eff e2 Unit
onDeviceMotion f x = unsafeSetFieldEff "onDeviceMotion" f x

onAdComplete :: forall e a e2. (Boolean -> Eff e a) -> AirConsoleGlobal -> Eff e2 Unit
onAdComplete f x = unsafeSetFieldEff "onAdComplete" f x

onAdShow :: forall x e a e2. (x -> Eff e a) -> AirConsoleGlobal -> Eff e2 Unit
onAdShow f x = unsafeSetFieldEff "onAdComplete" f x

onPersistentDataLoaded :: forall x e a e2. (x -> Eff e a) -> AirConsoleGlobal -> Eff e2 Unit
onPersistentDataLoaded f x = unsafeSetFieldEff "onPersistentDataLoaded" f x

onPersistentDataStored :: forall e a e2. (String -> Eff e a) -> AirConsoleGlobal -> Eff e2 Unit
onPersistentDataStored f x = unsafeSetFieldEff "onPersistentDataStored" f x

onHighScores :: forall x e a e2. (Array x -> Eff e a) -> AirConsoleGlobal -> Eff e2 Unit
onHighScores f x = unsafeSetFieldEff "onHighScores" f x

onHighScoreStored :: forall x e a e2. (x -> Eff e a) -> AirConsoleGlobal -> Eff e2 Unit
onHighScoreStored f x = unsafeSetFieldEff "onHighScoreStored" f x
