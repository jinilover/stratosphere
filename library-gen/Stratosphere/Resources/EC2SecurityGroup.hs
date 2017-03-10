{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html

module Stratosphere.Resources.EC2SecurityGroup where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EC2SecurityGroupRule
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2SecurityGroup. See 'ec2SecurityGroup'
-- for a more convenient constructor.
data EC2SecurityGroup =
  EC2SecurityGroup
  { _eC2SecurityGroupGroupDescription :: Val Text
  , _eC2SecurityGroupSecurityGroupEgress :: Maybe [EC2SecurityGroupRule]
  , _eC2SecurityGroupSecurityGroupIngress :: Maybe [EC2SecurityGroupRule]
  , _eC2SecurityGroupTags :: Maybe [Tag]
  , _eC2SecurityGroupVpcId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2SecurityGroup where
  toJSON EC2SecurityGroup{..} =
    object $
    catMaybes
    [ Just ("GroupDescription" .= _eC2SecurityGroupGroupDescription)
    , ("SecurityGroupEgress" .=) <$> _eC2SecurityGroupSecurityGroupEgress
    , ("SecurityGroupIngress" .=) <$> _eC2SecurityGroupSecurityGroupIngress
    , ("Tags" .=) <$> _eC2SecurityGroupTags
    , ("VpcId" .=) <$> _eC2SecurityGroupVpcId
    ]

instance FromJSON EC2SecurityGroup where
  parseJSON (Object obj) =
    EC2SecurityGroup <$>
      obj .: "GroupDescription" <*>
      obj .:? "SecurityGroupEgress" <*>
      obj .:? "SecurityGroupIngress" <*>
      obj .:? "Tags" <*>
      obj .:? "VpcId"
  parseJSON _ = mempty

-- | Constructor for 'EC2SecurityGroup' containing required fields as
-- arguments.
ec2SecurityGroup
  :: Val Text -- ^ 'ecsgGroupDescription'
  -> EC2SecurityGroup
ec2SecurityGroup groupDescriptionarg =
  EC2SecurityGroup
  { _eC2SecurityGroupGroupDescription = groupDescriptionarg
  , _eC2SecurityGroupSecurityGroupEgress = Nothing
  , _eC2SecurityGroupSecurityGroupIngress = Nothing
  , _eC2SecurityGroupTags = Nothing
  , _eC2SecurityGroupVpcId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html#cfn-ec2-securitygroup-groupdescription
ecsgGroupDescription :: Lens' EC2SecurityGroup (Val Text)
ecsgGroupDescription = lens _eC2SecurityGroupGroupDescription (\s a -> s { _eC2SecurityGroupGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html#cfn-ec2-securitygroup-securitygroupegress
ecsgSecurityGroupEgress :: Lens' EC2SecurityGroup (Maybe [EC2SecurityGroupRule])
ecsgSecurityGroupEgress = lens _eC2SecurityGroupSecurityGroupEgress (\s a -> s { _eC2SecurityGroupSecurityGroupEgress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html#cfn-ec2-securitygroup-securitygroupingress
ecsgSecurityGroupIngress :: Lens' EC2SecurityGroup (Maybe [EC2SecurityGroupRule])
ecsgSecurityGroupIngress = lens _eC2SecurityGroupSecurityGroupIngress (\s a -> s { _eC2SecurityGroupSecurityGroupIngress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html#cfn-ec2-securitygroup-tags
ecsgTags :: Lens' EC2SecurityGroup (Maybe [Tag])
ecsgTags = lens _eC2SecurityGroupTags (\s a -> s { _eC2SecurityGroupTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html#cfn-ec2-securitygroup-vpcid
ecsgVpcId :: Lens' EC2SecurityGroup (Maybe (Val Text))
ecsgVpcId = lens _eC2SecurityGroupVpcId (\s a -> s { _eC2SecurityGroupVpcId = a })
