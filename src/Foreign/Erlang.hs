-- |
-- Module      : Foreign.Erlang
-- Copyright   : (c) Eric Sessoms, 2008
--               (c) Artúr Poór, 2015
--               (c) Arnold Szederjesi-Dragomir, 2021
-- License     : GPL3
-- 
-- Maintainer  : szederjesiarnold@gmail.com
-- Stability   : experimental
-- Portability : portable
--
-- Speaks the Erlang network protocol and impersonates an Erlang node
-- on the network.  Fully capable of bi-directional communication with
-- Erlang.  Erlang types are, as far as reasonable, mapped to Haskell
-- types.  Messages to Erlang are just function calls in Haskell, and
-- messages from Erlang are delivered to MVars.
--

module Foreign.Erlang (
    module Foreign.Erlang.Network
  , module Foreign.Erlang.OTP
  , module Foreign.Erlang.Processes
  , module Foreign.Erlang.Types
  , module Foreign.Erlang.Utilities
  ) where

import Foreign.Erlang.Network hiding (toNetwork, erlConnect)
import Foreign.Erlang.OTP
import Foreign.Erlang.Processes
import Foreign.Erlang.Utilities
    
import Foreign.Erlang.Types (Erlang(..), ErlType(..), nth)
