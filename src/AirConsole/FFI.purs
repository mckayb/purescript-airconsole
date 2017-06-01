module AirConsole.FFI where

import Prelude (Unit)
import Control.Monad.Eff (Eff)

foreign import unsafeGetField :: forall a b. String -> a -> b
foreign import unsafeSetFieldEff :: forall a b e. String -> a -> b -> Eff e Unit
foreign import runFn0 :: forall a b. String -> a -> b
foreign import runFn1 :: forall a b c. String -> a -> b -> c
foreign import runFn2 :: forall a b c d. String -> a -> b -> c -> d
foreign import runEffFn0 :: forall x e a. String -> x -> Eff e a
foreign import runEffFn1 :: forall x y e a. String -> x -> y -> Eff e a
foreign import runEffFn2 :: forall x y z e a. String -> x -> y -> z -> Eff e a
foreign import runEffFn3 :: forall w x y z e a. String -> w -> x -> y -> z -> Eff e a
foreign import runEffFn6 :: forall s t u w x y z e a. String -> s -> t -> u -> w -> x -> y -> z -> Eff e a

foreign import merge
    :: forall r1 r2 r3
     . Union r1 r2 r3
    => Record r1
    -> Record r2
    -> Record r3
