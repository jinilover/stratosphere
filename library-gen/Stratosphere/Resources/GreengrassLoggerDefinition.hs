{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinition.html

module Stratosphere.Resources.GreengrassLoggerDefinition where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassLoggerDefinitionLoggerDefinitionVersion

-- | Full data type definition for GreengrassLoggerDefinition. See
-- 'greengrassLoggerDefinition' for a more convenient constructor.
data GreengrassLoggerDefinition =
  GreengrassLoggerDefinition
  { _greengrassLoggerDefinitionInitialVersion :: Maybe GreengrassLoggerDefinitionLoggerDefinitionVersion
  , _greengrassLoggerDefinitionName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties GreengrassLoggerDefinition where
  toResourceProperties GreengrassLoggerDefinition{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Greengrass::LoggerDefinition"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("InitialVersion",) . toJSON) _greengrassLoggerDefinitionInitialVersion
        , (Just . ("Name",) . toJSON) _greengrassLoggerDefinitionName
        ]
    }

-- | Constructor for 'GreengrassLoggerDefinition' containing required fields
-- as arguments.
greengrassLoggerDefinition
  :: Val Text -- ^ 'gldName'
  -> GreengrassLoggerDefinition
greengrassLoggerDefinition namearg =
  GreengrassLoggerDefinition
  { _greengrassLoggerDefinitionInitialVersion = Nothing
  , _greengrassLoggerDefinitionName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinition.html#cfn-greengrass-loggerdefinition-initialversion
gldInitialVersion :: Lens' GreengrassLoggerDefinition (Maybe GreengrassLoggerDefinitionLoggerDefinitionVersion)
gldInitialVersion = lens _greengrassLoggerDefinitionInitialVersion (\s a -> s { _greengrassLoggerDefinitionInitialVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinition.html#cfn-greengrass-loggerdefinition-name
gldName :: Lens' GreengrassLoggerDefinition (Val Text)
gldName = lens _greengrassLoggerDefinitionName (\s a -> s { _greengrassLoggerDefinitionName = a })
