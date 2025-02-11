{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html

module Stratosphere.ResourceProperties.CodeCommitRepositoryRepositoryTrigger where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeCommitRepositoryRepositoryTrigger. See
-- 'codeCommitRepositoryRepositoryTrigger' for a more convenient
-- constructor.
data CodeCommitRepositoryRepositoryTrigger =
  CodeCommitRepositoryRepositoryTrigger
  { _codeCommitRepositoryRepositoryTriggerBranches :: Maybe (ValList Text)
  , _codeCommitRepositoryRepositoryTriggerCustomData :: Maybe (Val Text)
  , _codeCommitRepositoryRepositoryTriggerDestinationArn :: Maybe (Val Text)
  , _codeCommitRepositoryRepositoryTriggerEvents :: Maybe (ValList Text)
  , _codeCommitRepositoryRepositoryTriggerName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeCommitRepositoryRepositoryTrigger where
  toJSON CodeCommitRepositoryRepositoryTrigger{..} =
    object $
    catMaybes
    [ fmap (("Branches",) . toJSON) _codeCommitRepositoryRepositoryTriggerBranches
    , fmap (("CustomData",) . toJSON) _codeCommitRepositoryRepositoryTriggerCustomData
    , fmap (("DestinationArn",) . toJSON) _codeCommitRepositoryRepositoryTriggerDestinationArn
    , fmap (("Events",) . toJSON) _codeCommitRepositoryRepositoryTriggerEvents
    , fmap (("Name",) . toJSON) _codeCommitRepositoryRepositoryTriggerName
    ]

-- | Constructor for 'CodeCommitRepositoryRepositoryTrigger' containing
-- required fields as arguments.
codeCommitRepositoryRepositoryTrigger
  :: CodeCommitRepositoryRepositoryTrigger
codeCommitRepositoryRepositoryTrigger  =
  CodeCommitRepositoryRepositoryTrigger
  { _codeCommitRepositoryRepositoryTriggerBranches = Nothing
  , _codeCommitRepositoryRepositoryTriggerCustomData = Nothing
  , _codeCommitRepositoryRepositoryTriggerDestinationArn = Nothing
  , _codeCommitRepositoryRepositoryTriggerEvents = Nothing
  , _codeCommitRepositoryRepositoryTriggerName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-branches
ccrrtBranches :: Lens' CodeCommitRepositoryRepositoryTrigger (Maybe (ValList Text))
ccrrtBranches = lens _codeCommitRepositoryRepositoryTriggerBranches (\s a -> s { _codeCommitRepositoryRepositoryTriggerBranches = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-customdata
ccrrtCustomData :: Lens' CodeCommitRepositoryRepositoryTrigger (Maybe (Val Text))
ccrrtCustomData = lens _codeCommitRepositoryRepositoryTriggerCustomData (\s a -> s { _codeCommitRepositoryRepositoryTriggerCustomData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-destinationarn
ccrrtDestinationArn :: Lens' CodeCommitRepositoryRepositoryTrigger (Maybe (Val Text))
ccrrtDestinationArn = lens _codeCommitRepositoryRepositoryTriggerDestinationArn (\s a -> s { _codeCommitRepositoryRepositoryTriggerDestinationArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-events
ccrrtEvents :: Lens' CodeCommitRepositoryRepositoryTrigger (Maybe (ValList Text))
ccrrtEvents = lens _codeCommitRepositoryRepositoryTriggerEvents (\s a -> s { _codeCommitRepositoryRepositoryTriggerEvents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-name
ccrrtName :: Lens' CodeCommitRepositoryRepositoryTrigger (Maybe (Val Text))
ccrrtName = lens _codeCommitRepositoryRepositoryTriggerName (\s a -> s { _codeCommitRepositoryRepositoryTriggerName = a })
