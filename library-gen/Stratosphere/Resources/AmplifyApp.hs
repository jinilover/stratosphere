{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html

module Stratosphere.Resources.AmplifyApp where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AmplifyAppBasicAuthConfig
import Stratosphere.ResourceProperties.AmplifyAppCustomRule
import Stratosphere.ResourceProperties.AmplifyAppEnvironmentVariable
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for AmplifyApp. See 'amplifyApp' for a more
-- convenient constructor.
data AmplifyApp =
  AmplifyApp
  { _amplifyAppAccessToken :: Maybe (Val Text)
  , _amplifyAppBasicAuthConfig :: Maybe AmplifyAppBasicAuthConfig
  , _amplifyAppBuildSpec :: Maybe (Val Text)
  , _amplifyAppCustomRules :: Maybe [AmplifyAppCustomRule]
  , _amplifyAppDescription :: Maybe (Val Text)
  , _amplifyAppEnvironmentVariables :: Maybe [AmplifyAppEnvironmentVariable]
  , _amplifyAppIAMServiceRole :: Maybe (Val Text)
  , _amplifyAppName :: Val Text
  , _amplifyAppOauthToken :: Maybe (Val Text)
  , _amplifyAppRepository :: Maybe (Val Text)
  , _amplifyAppTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties AmplifyApp where
  toResourceProperties AmplifyApp{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Amplify::App"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("AccessToken",) . toJSON) _amplifyAppAccessToken
        , fmap (("BasicAuthConfig",) . toJSON) _amplifyAppBasicAuthConfig
        , fmap (("BuildSpec",) . toJSON) _amplifyAppBuildSpec
        , fmap (("CustomRules",) . toJSON) _amplifyAppCustomRules
        , fmap (("Description",) . toJSON) _amplifyAppDescription
        , fmap (("EnvironmentVariables",) . toJSON) _amplifyAppEnvironmentVariables
        , fmap (("IAMServiceRole",) . toJSON) _amplifyAppIAMServiceRole
        , (Just . ("Name",) . toJSON) _amplifyAppName
        , fmap (("OauthToken",) . toJSON) _amplifyAppOauthToken
        , fmap (("Repository",) . toJSON) _amplifyAppRepository
        , fmap (("Tags",) . toJSON) _amplifyAppTags
        ]
    }

-- | Constructor for 'AmplifyApp' containing required fields as arguments.
amplifyApp
  :: Val Text -- ^ 'aaName'
  -> AmplifyApp
amplifyApp namearg =
  AmplifyApp
  { _amplifyAppAccessToken = Nothing
  , _amplifyAppBasicAuthConfig = Nothing
  , _amplifyAppBuildSpec = Nothing
  , _amplifyAppCustomRules = Nothing
  , _amplifyAppDescription = Nothing
  , _amplifyAppEnvironmentVariables = Nothing
  , _amplifyAppIAMServiceRole = Nothing
  , _amplifyAppName = namearg
  , _amplifyAppOauthToken = Nothing
  , _amplifyAppRepository = Nothing
  , _amplifyAppTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-accesstoken
aaAccessToken :: Lens' AmplifyApp (Maybe (Val Text))
aaAccessToken = lens _amplifyAppAccessToken (\s a -> s { _amplifyAppAccessToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-basicauthconfig
aaBasicAuthConfig :: Lens' AmplifyApp (Maybe AmplifyAppBasicAuthConfig)
aaBasicAuthConfig = lens _amplifyAppBasicAuthConfig (\s a -> s { _amplifyAppBasicAuthConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-buildspec
aaBuildSpec :: Lens' AmplifyApp (Maybe (Val Text))
aaBuildSpec = lens _amplifyAppBuildSpec (\s a -> s { _amplifyAppBuildSpec = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-customrules
aaCustomRules :: Lens' AmplifyApp (Maybe [AmplifyAppCustomRule])
aaCustomRules = lens _amplifyAppCustomRules (\s a -> s { _amplifyAppCustomRules = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-description
aaDescription :: Lens' AmplifyApp (Maybe (Val Text))
aaDescription = lens _amplifyAppDescription (\s a -> s { _amplifyAppDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-environmentvariables
aaEnvironmentVariables :: Lens' AmplifyApp (Maybe [AmplifyAppEnvironmentVariable])
aaEnvironmentVariables = lens _amplifyAppEnvironmentVariables (\s a -> s { _amplifyAppEnvironmentVariables = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-iamservicerole
aaIAMServiceRole :: Lens' AmplifyApp (Maybe (Val Text))
aaIAMServiceRole = lens _amplifyAppIAMServiceRole (\s a -> s { _amplifyAppIAMServiceRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-name
aaName :: Lens' AmplifyApp (Val Text)
aaName = lens _amplifyAppName (\s a -> s { _amplifyAppName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-oauthtoken
aaOauthToken :: Lens' AmplifyApp (Maybe (Val Text))
aaOauthToken = lens _amplifyAppOauthToken (\s a -> s { _amplifyAppOauthToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-repository
aaRepository :: Lens' AmplifyApp (Maybe (Val Text))
aaRepository = lens _amplifyAppRepository (\s a -> s { _amplifyAppRepository = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-tags
aaTags :: Lens' AmplifyApp (Maybe [Tag])
aaTags = lens _amplifyAppTags (\s a -> s { _amplifyAppTags = a })
