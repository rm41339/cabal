{-# LANGUAGE DeriveGeneric #-}

module Distribution.Verbosity.Internal
  ( VerbosityLevel (..)
  , VerbosityFlag (..)
  ) where

import Distribution.Compat.Prelude
import Prelude ()

data VerbosityLevel = Silent | Normal | Verbose | Deafening
  deriving (Generic, Show, Read, Eq, Ord, Enum, Bounded)

instance Binary VerbosityLevel
instance Structured VerbosityLevel

instance NFData VerbosityLevel where 
  rnf = genericRnf

data VerbosityFlag
  = VCallStack
  | VCallSite
  | VNoWrap
  | VMarkOutput
  | VTimestamp
  | -- | @since 3.4.0.0
    VStderr
  | VNoWarn
  deriving (Generic, Show, Read, Eq, Ord, Enum, Bounded)

instance Binary VerbosityFlag
instance Structured VerbosityFlag

instance NFData VerbosityFlag where 
  rnf = genericRnf
