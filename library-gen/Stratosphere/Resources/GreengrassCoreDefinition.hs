{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinition.html

module Stratosphere.Resources.GreengrassCoreDefinition where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassCoreDefinitionCoreDefinitionVersion

-- | Full data type definition for GreengrassCoreDefinition. See
-- 'greengrassCoreDefinition' for a more convenient constructor.
data GreengrassCoreDefinition =
  GreengrassCoreDefinition
  { _greengrassCoreDefinitionInitialVersion :: Maybe GreengrassCoreDefinitionCoreDefinitionVersion
  , _greengrassCoreDefinitionName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties GreengrassCoreDefinition where
  toResourceProperties GreengrassCoreDefinition{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Greengrass::CoreDefinition"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("InitialVersion",) . toJSON) _greengrassCoreDefinitionInitialVersion
        , (Just . ("Name",) . toJSON) _greengrassCoreDefinitionName
        ]
    }

-- | Constructor for 'GreengrassCoreDefinition' containing required fields as
-- arguments.
greengrassCoreDefinition
  :: Val Text -- ^ 'gcdrName'
  -> GreengrassCoreDefinition
greengrassCoreDefinition namearg =
  GreengrassCoreDefinition
  { _greengrassCoreDefinitionInitialVersion = Nothing
  , _greengrassCoreDefinitionName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinition.html#cfn-greengrass-coredefinition-initialversion
gcdrInitialVersion :: Lens' GreengrassCoreDefinition (Maybe GreengrassCoreDefinitionCoreDefinitionVersion)
gcdrInitialVersion = lens _greengrassCoreDefinitionInitialVersion (\s a -> s { _greengrassCoreDefinitionInitialVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinition.html#cfn-greengrass-coredefinition-name
gcdrName :: Lens' GreengrassCoreDefinition (Val Text)
gcdrName = lens _greengrassCoreDefinitionName (\s a -> s { _greengrassCoreDefinitionName = a })
