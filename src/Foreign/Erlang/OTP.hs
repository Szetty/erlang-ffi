-- |
-- Module      : Foreign.Erlang.OTP
-- Copyright   : (c) Eric Sessoms, 2008
--               (c) Artúr Poór, 2015
--               (c) Arnold Szederjesi-Dragomir, 2021
-- License     : GPL3
-- 
-- Maintainer  : szederjesiarnold@gmail.com
-- Stability   : experimental
-- Portability : portable
--

module Foreign.Erlang.OTP (
    module Foreign.Erlang.OTP.GenServer
  , module Foreign.Erlang.OTP.Mnesia
  ) where

import Foreign.Erlang.OTP.GenServer
import Foreign.Erlang.OTP.Mnesia
