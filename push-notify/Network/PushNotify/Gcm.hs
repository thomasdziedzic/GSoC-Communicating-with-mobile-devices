-- GSoC 2013 - Communicating with mobile devices.

-- | This library defines an API for communicating with Android powered devices, sending Push Notifications through Google Cloud Messaging.

module Network.PushNotify.Gcm
    ( 
    -- * GCM Service
      sendGCM
    -- * GCM Settings
    , GCMAppConfig(..)
    , RegId
    -- * GCM Messages
    , GCMmessage(..)
    -- * GCM Result
    , GCMresult(..)
    ) where

import Network.PushNotify.Gcm.Types
import Network.PushNotify.Gcm.Send
