{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html

module Stratosphere.Resources.EC2ClientVpnEndpoint where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2ClientVpnEndpointClientAuthenticationRequest
import Stratosphere.ResourceProperties.EC2ClientVpnEndpointConnectionLogOptions
import Stratosphere.ResourceProperties.EC2ClientVpnEndpointTagSpecification

-- | Full data type definition for EC2ClientVpnEndpoint. See
-- 'ec2ClientVpnEndpoint' for a more convenient constructor.
data EC2ClientVpnEndpoint =
  EC2ClientVpnEndpoint
  { _eC2ClientVpnEndpointAuthenticationOptions :: [EC2ClientVpnEndpointClientAuthenticationRequest]
  , _eC2ClientVpnEndpointClientCidrBlock :: Val Text
  , _eC2ClientVpnEndpointConnectionLogOptions :: EC2ClientVpnEndpointConnectionLogOptions
  , _eC2ClientVpnEndpointDescription :: Maybe (Val Text)
  , _eC2ClientVpnEndpointDnsServers :: Maybe (ValList Text)
  , _eC2ClientVpnEndpointServerCertificateArn :: Val Text
  , _eC2ClientVpnEndpointTagSpecifications :: Maybe [EC2ClientVpnEndpointTagSpecification]
  , _eC2ClientVpnEndpointTransportProtocol :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties EC2ClientVpnEndpoint where
  toResourceProperties EC2ClientVpnEndpoint{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::ClientVpnEndpoint"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("AuthenticationOptions",) . toJSON) _eC2ClientVpnEndpointAuthenticationOptions
        , (Just . ("ClientCidrBlock",) . toJSON) _eC2ClientVpnEndpointClientCidrBlock
        , (Just . ("ConnectionLogOptions",) . toJSON) _eC2ClientVpnEndpointConnectionLogOptions
        , fmap (("Description",) . toJSON) _eC2ClientVpnEndpointDescription
        , fmap (("DnsServers",) . toJSON) _eC2ClientVpnEndpointDnsServers
        , (Just . ("ServerCertificateArn",) . toJSON) _eC2ClientVpnEndpointServerCertificateArn
        , fmap (("TagSpecifications",) . toJSON) _eC2ClientVpnEndpointTagSpecifications
        , fmap (("TransportProtocol",) . toJSON) _eC2ClientVpnEndpointTransportProtocol
        ]
    }

-- | Constructor for 'EC2ClientVpnEndpoint' containing required fields as
-- arguments.
ec2ClientVpnEndpoint
  :: [EC2ClientVpnEndpointClientAuthenticationRequest] -- ^ 'eccveAuthenticationOptions'
  -> Val Text -- ^ 'eccveClientCidrBlock'
  -> EC2ClientVpnEndpointConnectionLogOptions -- ^ 'eccveConnectionLogOptions'
  -> Val Text -- ^ 'eccveServerCertificateArn'
  -> EC2ClientVpnEndpoint
ec2ClientVpnEndpoint authenticationOptionsarg clientCidrBlockarg connectionLogOptionsarg serverCertificateArnarg =
  EC2ClientVpnEndpoint
  { _eC2ClientVpnEndpointAuthenticationOptions = authenticationOptionsarg
  , _eC2ClientVpnEndpointClientCidrBlock = clientCidrBlockarg
  , _eC2ClientVpnEndpointConnectionLogOptions = connectionLogOptionsarg
  , _eC2ClientVpnEndpointDescription = Nothing
  , _eC2ClientVpnEndpointDnsServers = Nothing
  , _eC2ClientVpnEndpointServerCertificateArn = serverCertificateArnarg
  , _eC2ClientVpnEndpointTagSpecifications = Nothing
  , _eC2ClientVpnEndpointTransportProtocol = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-authenticationoptions
eccveAuthenticationOptions :: Lens' EC2ClientVpnEndpoint [EC2ClientVpnEndpointClientAuthenticationRequest]
eccveAuthenticationOptions = lens _eC2ClientVpnEndpointAuthenticationOptions (\s a -> s { _eC2ClientVpnEndpointAuthenticationOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-clientcidrblock
eccveClientCidrBlock :: Lens' EC2ClientVpnEndpoint (Val Text)
eccveClientCidrBlock = lens _eC2ClientVpnEndpointClientCidrBlock (\s a -> s { _eC2ClientVpnEndpointClientCidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-connectionlogoptions
eccveConnectionLogOptions :: Lens' EC2ClientVpnEndpoint EC2ClientVpnEndpointConnectionLogOptions
eccveConnectionLogOptions = lens _eC2ClientVpnEndpointConnectionLogOptions (\s a -> s { _eC2ClientVpnEndpointConnectionLogOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-description
eccveDescription :: Lens' EC2ClientVpnEndpoint (Maybe (Val Text))
eccveDescription = lens _eC2ClientVpnEndpointDescription (\s a -> s { _eC2ClientVpnEndpointDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-dnsservers
eccveDnsServers :: Lens' EC2ClientVpnEndpoint (Maybe (ValList Text))
eccveDnsServers = lens _eC2ClientVpnEndpointDnsServers (\s a -> s { _eC2ClientVpnEndpointDnsServers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-servercertificatearn
eccveServerCertificateArn :: Lens' EC2ClientVpnEndpoint (Val Text)
eccveServerCertificateArn = lens _eC2ClientVpnEndpointServerCertificateArn (\s a -> s { _eC2ClientVpnEndpointServerCertificateArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-tagspecifications
eccveTagSpecifications :: Lens' EC2ClientVpnEndpoint (Maybe [EC2ClientVpnEndpointTagSpecification])
eccveTagSpecifications = lens _eC2ClientVpnEndpointTagSpecifications (\s a -> s { _eC2ClientVpnEndpointTagSpecifications = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-transportprotocol
eccveTransportProtocol :: Lens' EC2ClientVpnEndpoint (Maybe (Val Text))
eccveTransportProtocol = lens _eC2ClientVpnEndpointTransportProtocol (\s a -> s { _eC2ClientVpnEndpointTransportProtocol = a })
