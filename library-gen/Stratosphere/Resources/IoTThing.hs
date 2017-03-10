{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html

module Stratosphere.Resources.IoTThing where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.IoTThingAttributePayload

-- | Full data type definition for IoTThing. See 'ioTThing' for a more
-- convenient constructor.
data IoTThing =
  IoTThing
  { _ioTThingAttributePayload :: Maybe IoTThingAttributePayload
  , _ioTThingThingName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTThing where
  toJSON IoTThing{..} =
    object $
    catMaybes
    [ ("AttributePayload" .=) <$> _ioTThingAttributePayload
    , ("ThingName" .=) <$> _ioTThingThingName
    ]

instance FromJSON IoTThing where
  parseJSON (Object obj) =
    IoTThing <$>
      obj .:? "AttributePayload" <*>
      obj .:? "ThingName"
  parseJSON _ = mempty

-- | Constructor for 'IoTThing' containing required fields as arguments.
ioTThing
  :: IoTThing
ioTThing  =
  IoTThing
  { _ioTThingAttributePayload = Nothing
  , _ioTThingThingName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html#cfn-iot-thing-attributepayload
ittAttributePayload :: Lens' IoTThing (Maybe IoTThingAttributePayload)
ittAttributePayload = lens _ioTThingAttributePayload (\s a -> s { _ioTThingAttributePayload = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html#cfn-iot-thing-thingname
ittThingName :: Lens' IoTThing (Maybe (Val Text))
ittThingName = lens _ioTThingThingName (\s a -> s { _ioTThingThingName = a })
