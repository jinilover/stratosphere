{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html

module Stratosphere.Resources.GreengrassResourceDefinition where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassResourceDefinitionResourceDefinitionVersion

-- | Full data type definition for GreengrassResourceDefinition. See
-- 'greengrassResourceDefinition' for a more convenient constructor.
data GreengrassResourceDefinition =
  GreengrassResourceDefinition
  { _greengrassResourceDefinitionInitialVersion :: Maybe GreengrassResourceDefinitionResourceDefinitionVersion
  , _greengrassResourceDefinitionName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties GreengrassResourceDefinition where
  toResourceProperties GreengrassResourceDefinition{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Greengrass::ResourceDefinition"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("InitialVersion",) . toJSON) _greengrassResourceDefinitionInitialVersion
        , (Just . ("Name",) . toJSON) _greengrassResourceDefinitionName
        ]
    }

-- | Constructor for 'GreengrassResourceDefinition' containing required fields
-- as arguments.
greengrassResourceDefinition
  :: Val Text -- ^ 'grdName'
  -> GreengrassResourceDefinition
greengrassResourceDefinition namearg =
  GreengrassResourceDefinition
  { _greengrassResourceDefinitionInitialVersion = Nothing
  , _greengrassResourceDefinitionName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html#cfn-greengrass-resourcedefinition-initialversion
grdInitialVersion :: Lens' GreengrassResourceDefinition (Maybe GreengrassResourceDefinitionResourceDefinitionVersion)
grdInitialVersion = lens _greengrassResourceDefinitionInitialVersion (\s a -> s { _greengrassResourceDefinitionInitialVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html#cfn-greengrass-resourcedefinition-name
grdName :: Lens' GreengrassResourceDefinition (Val Text)
grdName = lens _greengrassResourceDefinitionName (\s a -> s { _greengrassResourceDefinitionName = a })
