resource "aws_iam_policy" "Analytics_Developer" {
  name = "Analytics_Developer"
  description = "EC2,VPC,Region,InstanceType,Volume-size-restrictions"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "VisualEditor0",
      "Effect": "Allow",
      "Action": [
        "ec2:AttachVolume",
        "ec2:DeleteSnapshot",
        "ec2:DeleteTags",
        "ec2:DetachClassicLinkVpc",
        "ec2:AcceptVpcPeeringConnection",
        "ec2:GetConsoleScreenshot",
        "ec2:ReplaceIamInstanceProfileAssociation",
        "ec2:DeleteVolume",
        "ec2:ModifySnapshotAttribute",
        "ec2:StartInstances",
        "ec2:CreateNetworkInterfacePermission",
        "ec2:CreateSnapshot",
        "ec2:DeleteLaunchTemplateVersions",
        "ec2:DetachVolume",
        "ec2:RebootInstances",
        "ec2:AttachClassicLinkVpc",
        "ec2:DeleteLaunchTemplate",
        "ec2:TerminateInstances",
        "ec2:CreateTags",
        "ec2:RunInstances",
        "ec2:StopInstances",
        "ec2:CreateLaunchTemplateVersion",
        "ec2:CreateVolume",
        "ec2:DisassociateIamInstanceProfile",
        "ec2:DeleteDhcpOptions",
        "ec2:ModifyLaunchTemplate",
        "ec2:AssociateIamInstanceProfile"
      ],
      "Resource": "*",
      "Condition": {
        "StringEquals": {
          "ec2:Region": "us-east-1"
        }
      }
    },
    {
      "Sid": "VisualEditor1",
      "Effect": "Allow",
      "Action": "ec2:Describe*",
      "Resource": "*",
      "Condition": {
        "StringEquals": {
          "ec2:Region": "us-east-1"
        }
      }
    },
    {
      "Sid": "VisualEditor2",
      "Effect": "Allow",
      "Action": "elasticloadbalancing:Describe*",
      "Resource": "*",
      "Condition": {
        "StringEquals": {
          "ec2:Region": "us-east-1"
        }
      }
    },
    {
      "Sid": "VisualEditor3",
      "Effect": "Allow",
      "Action": "elasticloadbalancing:Describe*",
      "Resource": "*",
      "Condition": {
        "StringEquals": {
          "ec2:Region": "us-east-1"
        }
      }
    },
    {
      "Sid": "VisualEditor4",
      "Effect": "Allow",
      "Action": "cloudwatch:Describe*",
      "Resource": "*",
      "Condition": {
        "StringEquals": {
          "ec2:Region": "us-east-1"
        }
      }
    },
    {
      "Sid": "VisualEditor5",
      "Effect": "Allow",
      "Action": "autoscaling:Describe*",
      "Resource": "*",
      "Condition": {
        "StringEquals": {
          "ec2:Region": "us-east-1"
        }
      }
    },
    {
      "Sid": "VisualEditor6",
      "Effect": "Allow",
      "Action": [
        "ec2:CreateDhcpOptions",
        "ec2:ModifyVolumeAttribute",
        "ec2:CreateKeyPair",
        "logs:DescribeSubscriptionFilters",
        "cloudtrail:GetTrailStatus",
        "ec2:ResetInstanceAttribute",
        "logs:DescribeMetricFilters",
        "ec2:ReportInstanceStatus",
        "ec2:ModifySpotFleetRequest",
        "logs:FilterLogEvents",
        "logs:DescribeDestinations",
        "ec2:CreateReservedInstancesListing",
        "cloudtrail:LookupEvents",
        "events:DescribeRule",
        "ec2:CancelExportTask",
        "ec2:BundleInstance",
        "ec2:ModifyNetworkInterfaceAttribute",
        "cloudwatch:GetMetricStatistics",
        "ec2:DisassociateRouteTable",
        "events:TestEventPattern",
        "cloudtrail:DescribeTrails",
        "ec2:CreateNetworkInterface",
        "ec2:CancelSpotInstanceRequests",
        "ec2:GetPasswordData",
        "cloudwatch:DescribeAlarms",
        "logs:ListTagsLogGroup",
        "ec2:DeleteSpotDatafeedSubscription",
        "ec2:ImportVolume",
        "ec2:MoveAddressToVpc",
        "ec2:RunScheduledInstances",
        "ec2:ModifyIdentityIdFormat",
        "ec2:ModifyFleet",
        "ec2:RequestSpotFleet",
        "ec2:ModifyImageAttribute",
        "cloudwatch:ListMetrics",
        "ec2:ReleaseHosts",
        "cloudwatch:DescribeAlarmHistory",
        "ec2:CreateSpotDatafeedSubscription",
        "cloudwatch:GetMetricWidgetImage",
        "ec2:ModifyReservedInstances",
        "ec2:ReleaseAddress",
        "ec2:CreateInstanceExportTask",
        "ec2:AssociateDhcpOptions",
        "ec2:ModifyInstancePlacement",
        "ec2:ImportInstance",
        "ec2:AcceptVpcEndpointConnections",
        "ec2:AttachVpnGateway",
        "ec2:ModifyFpgaImageAttribute",
        "ec2:ResetSnapshotAttribute",
        "ec2:CancelConversionTask",
        "ec2:ImportSnapshot",
        "logs:TestMetricFilter",
        "ec2:DisassociateSubnetCidrBlock",
        "ec2:CreateLaunchTemplate",
        "ec2:RestoreAddressToClassic",
        "cloudtrail:ListPublicKeys",
        "ec2:AllocateHosts",
        "ec2:ModifyVpcTenancy",
        "ec2:CancelImportTask",
        "ec2:ModifyIdFormat",
        "ec2:ConfirmProductInstance",
        "ec2:CopySnapshot",
        "ec2:DeleteFlowLogs",
        "ec2:UnmonitorInstances",
        "ec2:MonitorInstances",
        "ec2:GetHostReservationPurchasePreview",
        "ec2:CreateImage",
        "ec2:CopyImage",
        "ec2:AssociateVpcCidrBlock",
        "ec2:AssociateRouteTable",
        "ec2:DisassociateVpcCidrBlock",
        "events:ListRuleNamesByTarget",
        "ec2:GetLaunchTemplateData",
        "ec2:CreatePlacementGroup",
        "cloudwatch:DescribeAlarmsForMetric",
        "cloudwatch:ListDashboards",
        "cloudtrail:ListTags",
        "logs:GetLogEvents",
        "events:ListRules",
        "elasticloadbalancing:Describe*",
        "ec2:ImportImage",
        "events:ListTargetsByRule",
        "ec2:ModifyVolume",
        "ec2:ResetImageAttribute",
        "cloudwatch:GetDashboard",
        "ec2:ResetNetworkInterfaceAttribute",
        "ec2:RegisterImage",
        "ec2:DeleteNetworkInterface",
        "ec2:CreateFleet",
        "ec2:ModifyHosts",
        "ec2:GetReservedInstancesExchangeQuote",
        "ec2:EnableVolumeIO",
        "events:DescribeEventBus",
        "logs:DescribeExportTasks",
        "ec2:CreateFlowLogs",
        "ec2:AssociateSubnetCidrBlock",
        "ec2:AssociateAddress",
        "ec2:CancelBundleTask",
        "ec2:DeleteKeyPair",
        "autoscaling:Describe*",
        "ec2:DeregisterImage",
        "ec2:RequestSpotInstances",
        "cloudwatch:GetMetricData",
        "logs:DescribeLogStreams",
        "ec2:CancelSpotFleetRequests",
        "ec2:DeleteFleets",
        "cloudtrail:GetEventSelectors",
        "ec2:GetConsoleOutput",
        "ec2:DeleteFpgaImage",
        "ec2:DeleteNetworkInterfacePermission",
        "ec2:ModifyInstanceAttribute",
        "logs:DescribeResourcePolicies",
        "ec2:DetachNetworkInterface",
        "ec2:DeletePlacementGroup",
        "logs:DescribeLogGroups",
        "ec2:CopyFpgaImage",
        "ec2:AllocateAddress",
        "ec2:ModifyInstanceCreditSpecification",
        "ec2:CreateFpgaImage",
        "ec2:AcceptReservedInstancesExchangeQuote",
        "ec2:AttachNetworkInterface",
        "ec2:CancelReservedInstancesListing",
        "ec2:ResetFpgaImageAttribute"
      ],
      "Resource": "*"
    },
    {
      "Sid": "VisualEditor7",
      "Effect": "Deny",
      "Action": "ec2:RunInstances",
      "Resource": "arn:aws:ec2:us-east-1:146884837956:volume/*",
      "Condition": {
        "NumericGreaterThanEqualsIfExists": {
          "ec2:VolumeSize": "30"
        }
      }
    },
    {
      "Sid": "VisualEditor8",
      "Effect": "Deny",
      "Action": "ec2:RunInstances",
      "Resource": "arn:aws:ec2:us-east-1:146884837956:subnet/*",
      "Condition": {
        "StringNotLikeIfExists": {
          "ec2:vpc": "arn:aws:ec2:us-east-1:146884837956:vpc/vpc-0d61b82230521abaf"
        }
      }
    },
    {
      "Sid": "VisualEditor9",
      "Effect": "Deny",
      "Action": "ec2:RunInstances",
      "Resource": "arn:aws:ec2:us-east-1:146884837956:instance/*",
      "Condition": {
        "StringNotLikeIfExists": {
          "ec2:InstanceType": "t2.micro"
        }
      }
    }
  ]
}
EOF
}

resource "aws_iam_policy" "Analytics_Developer_EC2_Tagging" {
  name = "Analytics_Developer_EC2_Tagging"
  description = "Restrict to Auto Tagging and limiting to a particular VPC components"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "EC2Tagging",
      "Effect": "Deny",
      "Action": "ec2:RunInstances",
      "Resource": "arn:aws:ec2:us-east-1:146884837956:instance/*",
      "Condition": {
        "StringNotLike": {
          "aws:RequestTag/Name": "analytics-*"
        }
      }
    },
    {
      "Sid": "EC2controlledrestrictiontags",
      "Effect": "Deny",
      "Action": [
        "ec2:RebootInstances",
        "ec2:TerminateInstances",
        "ec2:StartInstances",
        "ec2:StopInstances"
      ],
      "Resource": "arn:aws:ec2:us-east-1:146884837956:instance/*",
      "Condition": {
        "StringNotLike": {
          "ec2:ResourceTag/Name": "analytics-*"
        }
      }
    },
    {
      "Sid": "EC2controlledrestrictiontagstest",
      "Effect": "Deny",
      "Action": [
        "ec2:DeleteTags",
        "ec2:ModifyInstanceAttribute"
      ],
      "Resource": "arn:aws:ec2:us-east-1:146884837956:instance/*",
      "Condition": {
        "StringNotLikeIfExists": {
          "ec2:ResourceTag/Name": "analytics-*"
        }
      }
    },
    {
      "Sid": "EBSvolumetagging",
      "Effect": "Deny",
      "Action": [
        "ec2:DeleteVolume",
        "ec2:CreateVolume"
      ],
      "Resource": "arn:aws:ec2:us-east-1:146884837956:volume/*",
      "Condition": {
        "StringNotLike": {
          "aws:RequestTag/Name": "analytics-*"
        }
      }
    },
    {
      "Sid": "EBSVolumeSIZE",
      "Effect": "Deny",
      "Action": "ec2:CreateVolume",
      "Resource": "arn:aws:ec2:us-east-1:146884837956:volume/*",
      "Condition": {
        "NumericGreaterThanEqualsIfExists": {
          "ec2:VolumeSize": "30"
        }
      }
    }
  ]
}
EOF
}
resource "aws_iam_policy" "Analytics-Developer-S3" {
  name = "Analytics-Developer-S3"
  description = "Full Access - But not Public Access"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "VisualEditor0",
      "Effect": "Allow",
      "Action": [
        "s3:PutAnalyticsConfiguration",
        "s3:GetObjectVersionTagging",
        "s3:CreateBucket",
        "s3:ReplicateObject",
        "s3:GetObjectAcl",
        "s3:DeleteBucketWebsite",
        "s3:PutLifecycleConfiguration",
        "s3:GetObjectVersionAcl",
        "s3:PutBucketAcl",
        "s3:PutObjectTagging",
        "s3:HeadBucket",
        "s3:DeleteObject",
        "s3:DeleteObjectTagging",
        "s3:GetBucketPolicyStatus",
        "s3:GetBucketWebsite",
        "s3:PutReplicationConfiguration",
        "s3:DeleteObjectVersionTagging",
        "s3:GetBucketNotification",
        "s3:PutBucketCORS",
        "s3:DeleteBucketPolicy",
        "s3:GetReplicationConfiguration",
        "s3:ListMultipartUploadParts",
        "s3:PutObject",
        "s3:GetObject",
        "s3:PutBucketNotification",
        "s3:PutBucketLogging",
        "s3:PutObjectVersionAcl",
        "s3:GetAnalyticsConfiguration",
        "s3:GetObjectVersionForReplication",
        "s3:GetLifecycleConfiguration",
        "s3:ListBucketByTags",
        "s3:GetInventoryConfiguration",
        "s3:GetBucketTagging",
        "s3:PutAccelerateConfiguration",
        "s3:DeleteObjectVersion",
        "s3:GetBucketLogging",
        "s3:ListBucketVersions",
        "s3:ReplicateTags",
        "s3:RestoreObject",
        "s3:ListBucket",
        "s3:GetAccelerateConfiguration",
        "s3:GetBucketPolicy",
        "s3:PutEncryptionConfiguration",
        "s3:GetEncryptionConfiguration",
        "s3:GetObjectVersionTorrent",
        "s3:AbortMultipartUpload",
        "s3:PutBucketTagging",
        "s3:GetBucketRequestPayment",
        "s3:GetObjectTagging",
        "s3:GetMetricsConfiguration",
        "s3:DeleteBucket",
        "s3:PutBucketVersioning",
        "s3:PutObjectAcl",
        "s3:GetBucketPublicAccessBlock",
        "s3:ListBucketMultipartUploads",
        "s3:PutMetricsConfiguration",
        "s3:PutObjectVersionTagging",
        "s3:GetBucketVersioning",
        "s3:GetBucketAcl",
        "s3:PutInventoryConfiguration",
        "s3:GetObjectTorrent",
        "s3:ObjectOwnerOverrideToBucketOwner",
        "s3:GetAccountPublicAccessBlock",
        "s3:PutBucketWebsite",
        "s3:ListAllMyBuckets",
        "s3:PutBucketRequestPayment",
        "s3:GetBucketCORS",
        "s3:PutBucketPolicy",
        "s3:GetBucketLocation",
        "s3:ReplicateDelete",
        "s3:GetObjectVersion"
      ],
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_group_policy_attachment" "Analytics_EC2" {
  group      = "${aws_iam_group.Analytics_Admin.name}"
  policy_arn = "${aws_iam_policy.Analytics_Developer.arn}"
}
resource "aws_iam_group_policy_attachment" "Analytics_Tagging" {
  group      = "${aws_iam_group.Analytics_Admin.name}"
  policy_arn = "${aws_iam_policy.Analytics_Developer_EC2_Tagging.arn}"
}
resource "aws_iam_group_policy_attachment" "Analytics_S3user" {
  group      = "${aws_iam_group.Analytics_Admin.name}"
  policy_arn = "${aws_iam_policy.Analytics-Developer-S3.arn}"
}
       
