{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html

module Stratosphere.Resources.AmplifyBranch where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AmplifyBranchBasicAuthConfig
import Stratosphere.ResourceProperties.AmplifyBranchEnvironmentVariable
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for AmplifyBranch. See 'amplifyBranch' for a
-- more convenient constructor.
data AmplifyBranch =
  AmplifyBranch
  { _amplifyBranchAppId :: Val Text
  , _amplifyBranchBasicAuthConfig :: Maybe AmplifyBranchBasicAuthConfig
  , _amplifyBranchBranchName :: Val Text
  , _amplifyBranchBuildSpec :: Maybe (Val Text)
  , _amplifyBranchDescription :: Maybe (Val Text)
  , _amplifyBranchEnvironmentVariables :: Maybe [AmplifyBranchEnvironmentVariable]
  , _amplifyBranchStage :: Maybe (Val Text)
  , _amplifyBranchTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties AmplifyBranch where
  toResourceProperties AmplifyBranch{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Amplify::Branch"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("AppId",) . toJSON) _amplifyBranchAppId
        , fmap (("BasicAuthConfig",) . toJSON) _amplifyBranchBasicAuthConfig
        , (Just . ("BranchName",) . toJSON) _amplifyBranchBranchName
        , fmap (("BuildSpec",) . toJSON) _amplifyBranchBuildSpec
        , fmap (("Description",) . toJSON) _amplifyBranchDescription
        , fmap (("EnvironmentVariables",) . toJSON) _amplifyBranchEnvironmentVariables
        , fmap (("Stage",) . toJSON) _amplifyBranchStage
        , fmap (("Tags",) . toJSON) _amplifyBranchTags
        ]
    }

-- | Constructor for 'AmplifyBranch' containing required fields as arguments.
amplifyBranch
  :: Val Text -- ^ 'abAppId'
  -> Val Text -- ^ 'abBranchName'
  -> AmplifyBranch
amplifyBranch appIdarg branchNamearg =
  AmplifyBranch
  { _amplifyBranchAppId = appIdarg
  , _amplifyBranchBasicAuthConfig = Nothing
  , _amplifyBranchBranchName = branchNamearg
  , _amplifyBranchBuildSpec = Nothing
  , _amplifyBranchDescription = Nothing
  , _amplifyBranchEnvironmentVariables = Nothing
  , _amplifyBranchStage = Nothing
  , _amplifyBranchTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-appid
abAppId :: Lens' AmplifyBranch (Val Text)
abAppId = lens _amplifyBranchAppId (\s a -> s { _amplifyBranchAppId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-basicauthconfig
abBasicAuthConfig :: Lens' AmplifyBranch (Maybe AmplifyBranchBasicAuthConfig)
abBasicAuthConfig = lens _amplifyBranchBasicAuthConfig (\s a -> s { _amplifyBranchBasicAuthConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-branchname
abBranchName :: Lens' AmplifyBranch (Val Text)
abBranchName = lens _amplifyBranchBranchName (\s a -> s { _amplifyBranchBranchName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-buildspec
abBuildSpec :: Lens' AmplifyBranch (Maybe (Val Text))
abBuildSpec = lens _amplifyBranchBuildSpec (\s a -> s { _amplifyBranchBuildSpec = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-description
abDescription :: Lens' AmplifyBranch (Maybe (Val Text))
abDescription = lens _amplifyBranchDescription (\s a -> s { _amplifyBranchDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-environmentvariables
abEnvironmentVariables :: Lens' AmplifyBranch (Maybe [AmplifyBranchEnvironmentVariable])
abEnvironmentVariables = lens _amplifyBranchEnvironmentVariables (\s a -> s { _amplifyBranchEnvironmentVariables = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-stage
abStage :: Lens' AmplifyBranch (Maybe (Val Text))
abStage = lens _amplifyBranchStage (\s a -> s { _amplifyBranchStage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-tags
abTags :: Lens' AmplifyBranch (Maybe [Tag])
abTags = lens _amplifyBranchTags (\s a -> s { _amplifyBranchTags = a })
