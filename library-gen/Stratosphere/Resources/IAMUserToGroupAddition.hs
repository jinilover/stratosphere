{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html

module Stratosphere.Resources.IAMUserToGroupAddition where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for IAMUserToGroupAddition. See
-- 'iamUserToGroupAddition' for a more convenient constructor.
data IAMUserToGroupAddition =
  IAMUserToGroupAddition
  { _iAMUserToGroupAdditionGroupName :: Val Text
  , _iAMUserToGroupAdditionUsers :: [Val Text]
  } deriving (Show, Eq)

instance ToJSON IAMUserToGroupAddition where
  toJSON IAMUserToGroupAddition{..} =
    object $
    catMaybes
    [ Just ("GroupName" .= _iAMUserToGroupAdditionGroupName)
    , Just ("Users" .= _iAMUserToGroupAdditionUsers)
    ]

instance FromJSON IAMUserToGroupAddition where
  parseJSON (Object obj) =
    IAMUserToGroupAddition <$>
      obj .: "GroupName" <*>
      obj .: "Users"
  parseJSON _ = mempty

-- | Constructor for 'IAMUserToGroupAddition' containing required fields as
-- arguments.
iamUserToGroupAddition
  :: Val Text -- ^ 'iamutgaGroupName'
  -> [Val Text] -- ^ 'iamutgaUsers'
  -> IAMUserToGroupAddition
iamUserToGroupAddition groupNamearg usersarg =
  IAMUserToGroupAddition
  { _iAMUserToGroupAdditionGroupName = groupNamearg
  , _iAMUserToGroupAdditionUsers = usersarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html#cfn-iam-addusertogroup-groupname
iamutgaGroupName :: Lens' IAMUserToGroupAddition (Val Text)
iamutgaGroupName = lens _iAMUserToGroupAdditionGroupName (\s a -> s { _iAMUserToGroupAdditionGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html#cfn-iam-addusertogroup-users
iamutgaUsers :: Lens' IAMUserToGroupAddition [Val Text]
iamutgaUsers = lens _iAMUserToGroupAdditionUsers (\s a -> s { _iAMUserToGroupAdditionUsers = a })
