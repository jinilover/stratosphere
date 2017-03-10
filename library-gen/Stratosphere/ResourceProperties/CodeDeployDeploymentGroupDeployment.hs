{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupDeployment where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupRevision

-- | Full data type definition for CodeDeployDeploymentGroupDeployment. See
-- 'codeDeployDeploymentGroupDeployment' for a more convenient constructor.
data CodeDeployDeploymentGroupDeployment =
  CodeDeployDeploymentGroupDeployment
  { _codeDeployDeploymentGroupDeploymentDescription :: Maybe (Val Text)
  , _codeDeployDeploymentGroupDeploymentIgnoreApplicationStopFailures :: Maybe (Val Bool')
  , _codeDeployDeploymentGroupDeploymentRevision :: CodeDeployDeploymentGroupRevision
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupDeployment where
  toJSON CodeDeployDeploymentGroupDeployment{..} =
    object $
    catMaybes
    [ ("Description" .=) <$> _codeDeployDeploymentGroupDeploymentDescription
    , ("IgnoreApplicationStopFailures" .=) <$> _codeDeployDeploymentGroupDeploymentIgnoreApplicationStopFailures
    , Just ("Revision" .= _codeDeployDeploymentGroupDeploymentRevision)
    ]

instance FromJSON CodeDeployDeploymentGroupDeployment where
  parseJSON (Object obj) =
    CodeDeployDeploymentGroupDeployment <$>
      obj .:? "Description" <*>
      obj .:? "IgnoreApplicationStopFailures" <*>
      obj .: "Revision"
  parseJSON _ = mempty

-- | Constructor for 'CodeDeployDeploymentGroupDeployment' containing required
-- fields as arguments.
codeDeployDeploymentGroupDeployment
  :: CodeDeployDeploymentGroupRevision -- ^ 'cddgdRevision'
  -> CodeDeployDeploymentGroupDeployment
codeDeployDeploymentGroupDeployment revisionarg =
  CodeDeployDeploymentGroupDeployment
  { _codeDeployDeploymentGroupDeploymentDescription = Nothing
  , _codeDeployDeploymentGroupDeploymentIgnoreApplicationStopFailures = Nothing
  , _codeDeployDeploymentGroupDeploymentRevision = revisionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html#cfn-properties-codedeploy-deploymentgroup-deployment-description
cddgdDescription :: Lens' CodeDeployDeploymentGroupDeployment (Maybe (Val Text))
cddgdDescription = lens _codeDeployDeploymentGroupDeploymentDescription (\s a -> s { _codeDeployDeploymentGroupDeploymentDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html#cfn-properties-codedeploy-deploymentgroup-deployment-ignoreapplicationstopfailures
cddgdIgnoreApplicationStopFailures :: Lens' CodeDeployDeploymentGroupDeployment (Maybe (Val Bool'))
cddgdIgnoreApplicationStopFailures = lens _codeDeployDeploymentGroupDeploymentIgnoreApplicationStopFailures (\s a -> s { _codeDeployDeploymentGroupDeploymentIgnoreApplicationStopFailures = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision
cddgdRevision :: Lens' CodeDeployDeploymentGroupDeployment CodeDeployDeploymentGroupRevision
cddgdRevision = lens _codeDeployDeploymentGroupDeploymentRevision (\s a -> s { _codeDeployDeploymentGroupDeploymentRevision = a })
