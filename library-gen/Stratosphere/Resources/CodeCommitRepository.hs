{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html

module Stratosphere.Resources.CodeCommitRepository where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeCommitRepositoryCode
import Stratosphere.ResourceProperties.CodeCommitRepositoryRepositoryTrigger

-- | Full data type definition for CodeCommitRepository. See
-- 'codeCommitRepository' for a more convenient constructor.
data CodeCommitRepository =
  CodeCommitRepository
  { _codeCommitRepositoryCode :: Maybe CodeCommitRepositoryCode
  , _codeCommitRepositoryRepositoryDescription :: Maybe (Val Text)
  , _codeCommitRepositoryRepositoryName :: Val Text
  , _codeCommitRepositoryTriggers :: Maybe [CodeCommitRepositoryRepositoryTrigger]
  } deriving (Show, Eq)

instance ToResourceProperties CodeCommitRepository where
  toResourceProperties CodeCommitRepository{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CodeCommit::Repository"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("Code",) . toJSON) _codeCommitRepositoryCode
        , fmap (("RepositoryDescription",) . toJSON) _codeCommitRepositoryRepositoryDescription
        , (Just . ("RepositoryName",) . toJSON) _codeCommitRepositoryRepositoryName
        , fmap (("Triggers",) . toJSON) _codeCommitRepositoryTriggers
        ]
    }

-- | Constructor for 'CodeCommitRepository' containing required fields as
-- arguments.
codeCommitRepository
  :: Val Text -- ^ 'ccrRepositoryName'
  -> CodeCommitRepository
codeCommitRepository repositoryNamearg =
  CodeCommitRepository
  { _codeCommitRepositoryCode = Nothing
  , _codeCommitRepositoryRepositoryDescription = Nothing
  , _codeCommitRepositoryRepositoryName = repositoryNamearg
  , _codeCommitRepositoryTriggers = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html#cfn-codecommit-repository-code
ccrCode :: Lens' CodeCommitRepository (Maybe CodeCommitRepositoryCode)
ccrCode = lens _codeCommitRepositoryCode (\s a -> s { _codeCommitRepositoryCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html#cfn-codecommit-repository-repositorydescription
ccrRepositoryDescription :: Lens' CodeCommitRepository (Maybe (Val Text))
ccrRepositoryDescription = lens _codeCommitRepositoryRepositoryDescription (\s a -> s { _codeCommitRepositoryRepositoryDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html#cfn-codecommit-repository-repositoryname
ccrRepositoryName :: Lens' CodeCommitRepository (Val Text)
ccrRepositoryName = lens _codeCommitRepositoryRepositoryName (\s a -> s { _codeCommitRepositoryRepositoryName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html#cfn-codecommit-repository-triggers
ccrTriggers :: Lens' CodeCommitRepository (Maybe [CodeCommitRepositoryRepositoryTrigger])
ccrTriggers = lens _codeCommitRepositoryTriggers (\s a -> s { _codeCommitRepositoryTriggers = a })
