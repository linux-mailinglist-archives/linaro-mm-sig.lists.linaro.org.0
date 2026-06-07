Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aO83FEVKKWpsTwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:28:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FBE668CAB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:28:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=Nvidia.com header.s=selector2 header.b=eJYNGFI1;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=nvidia.com (policy=reject);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 02D5E40A75
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:28:04 +0000 (UTC)
Received: from DM5PR21CU001.outbound.protection.outlook.com (mail-centralusazon11011000.outbound.protection.outlook.com [52.101.62.0])
	by lists.linaro.org (Postfix) with ESMTPS id 2C04D3F75A
	for <linaro-mm-sig@lists.linaro.org>; Sun,  7 Jun 2026 12:34:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j0PFEVFnFM9d6nDFAxp+Jb+bnrS+NRj4P4wicxPOQYkEjyUdUQtqetUT5lCU+pQK8Fkuq89dQAm2DSEOBe7aCDXjFWxkGDltp0FqpHDglmC5lD5RwOgxUXNHeHW6IgU4OlcY8Eq35WT9TCU/6U3vPTg81H9CbBYJPADTlhmP+IPuvpUZ1Ag+NTkOsy/ofv3ekc1NBDqI1EsXW5uCjzXjPS0tvipb/LGnFBd6lpJG/CiexZlW1ndstoPGSsLwHTVh6LWe7m87GMx9U20FOO6MnA8YyfUOHJ/yb2mns5VdFf+PE9ZuZWoAz7JF7Q+2F/25ntan9M5N7Z8wewmbMa9INQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FVuf3WInoQEmhFFrLrzPKPVPU7kyhxSwZEXv1aE/0Jw=;
 b=ZOzOdm81vEvY5zz9tkc7D5hnZ5fEUPogtzwOM4nP94KNk6P6DfeoF56IU3j0ixGlehOYFgPmhhFFe2OKC8MvOEalNVc3HIxE7cGY5fI4okwvXFtWSCTTOd18TDfQhNZJyrS/QM6hazdeOROAKWsb6XkPMtZNOldHeUZLZTNhAWUUNJk348hNatXPd0Opu5nl507ooCzeSWPPE5iQhYOu+WnSQ39GheXoSvPi5FwEnXO3d+DLLqZfV/Q152gQUSCp81mK2JEZmKhuhHhlbTtIhFc8bvpKacSzog35Vx9LJsgThNz5kG+Hfd+A6hlobDcpVGM6MilyGdwKooicTbebHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FVuf3WInoQEmhFFrLrzPKPVPU7kyhxSwZEXv1aE/0Jw=;
 b=eJYNGFI1bSVXMC/4JOmrbB18xKDYRTLV2zGdgxPIlo2vcsbjWAKzEHXOIuQegLrp9FZEYyqEkHGUCezmmFalFrHm0d9yBQgFA2Bk4cRVs4mefmw8hsgtcsWbc2bHRNjjQo67knnIXjzfJMHLJa2filPFgPTe34g30sm7GnHcsWwNI1NzqINjhXEcVRAN9i/WfJfvM8gXGBuOKbaQx6XRxdwWyvuUg0yPSI7DjIHlgAQPNiw/+VnLUmW9DqbXsJSVekXiSFMGK+pTDKGqOYhh0pTrIoov4uwL8kDIBPuL2vHH23SfbJScXrtnx+xib8YlvX+SBEtvP1OLnF66tf5cqQ==
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by SA0PR12MB4352.namprd12.prod.outlook.com (2603:10b6:806:9c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Sun, 7 Jun 2026
 12:34:01 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%4]) with mapi id 15.21.0092.011; Sun, 7 Jun 2026
 12:34:01 +0000
Date: Sun, 07 Jun 2026 21:33:58 +0900
Message-Id: <DJ2TJQ7IMR2M.OEQDKYEC8HKS@nvidia.com>
From: "Alexandre Courbot" <acourbot@nvidia.com>
To: "Lyude Paul" <lyude@redhat.com>
References: <20260604192740.659240-1-lyude@redhat.com>
 <20260604192740.659240-3-lyude@redhat.com>
In-Reply-To: <20260604192740.659240-3-lyude@redhat.com>
X-ClientProxiedBy: TYCP286CA0314.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:38b::18) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|SA0PR12MB4352:EE_
X-MS-Office365-Filtering-Correlation-Id: 4cca71fc-d6ee-407d-ac2f-08dec4910de0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|10070799003|366016|7416014|376014|22082099003|18002099003|6133799003|4143699003|5023799004|11063799006|56012099006|3023799007;
X-Microsoft-Antispam-Message-Info: 
	rPJopLwuEOcO0PEhlmIdE7VHfv3o5mx8BLvN6tSPU7jbeMBcg+dCQ0urydZK6gbJZLWXyKp/RsZ2SWNZ+SYUdQgMflSzOXsD2U/wx0duS5O8649m/pc22F+mThnc88ZgsC4jMao3sTLx3O+NA2JCQEdndmfJL34i7ZXR41h0YqBVGCLO7YI190nc7hbLhxsIf1/WZRx0yZ2bEcWT0lZuM5SXd8HAUfnURtmomeqWDPpcKQCHoWWixEFF53U/j9VHNE9KOGBi8ULSc2cKRLwcVIFQCvLQQIT2VJeSIs/b4tYSUHy4BdlOIpH+nTgkSERem/VET6AxzIu/vfCGsU7dZ54VvnzSEe++swzWNwUskyXPLSsPwEUa5oiiNwRZRHs8RbatXX+ypmh/pirJArpHRAhLWKyWgLYdwIC4+gYZqycC/UMH8sqBm/U++Iw2xNEyhvgnrR5xlZF7k4ZKLTXwHscFRdyN96S4/z/a7akmmRUBE2B2bkZJeWcSwJLkf+NaB8sFh7jSuePITV1p0FnGI/oruuqPzdU+dyOcE8a5Nzybf+xPT6qBF0uZwkuYou54Cyq1V5Kb93Uhn6h7jTvQkwslmsvX6o6+D5rH1uearzrZzsF1H5Rzbkej9f0K+ccGFmVpQsasxRQTdcm9dieWuda8cL4/f/8WShEJScD3Xrc9fI2yMF5kMM0uNlGxkMSQ
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH2PR12MB3990.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(366016)(7416014)(376014)(22082099003)(18002099003)(6133799003)(4143699003)(5023799004)(11063799006)(56012099006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MUpSTGRYMStnZmtFZWp3K3A5SEdRTmxZc0pCUkl2N3NRTnF1ZmZuTFN5MFBP?=
 =?utf-8?B?UUwxNkUwVVFEbE95SEtha01EYmo2T1pKYVNIaWY3emV4MmlqT1VoeUQ1MEx6?=
 =?utf-8?B?Mlpsd0JFSkZqVTl5Vnhodm9XV2pqM1M1dDE0cGtBcjFIYmpCb0M1dnN0Qk03?=
 =?utf-8?B?NHI3NGUrTHB0djI4clppdFUyeitRbVUzRXNDSFBoalFVeWNsN1lKWG5Qa0JI?=
 =?utf-8?B?aUE4WjViWTJRdjB2Qi9EZXY3bDRIL1BWTTM3anI0M0dTQnljdVorQzF1dWtm?=
 =?utf-8?B?aGFDcnVRN1hWWTZKdlFYVGNodTFPa1J0cjJvVXJSMi9WMFM0ZEZ1RnFJbmk4?=
 =?utf-8?B?Q3JwSTM4dllOR1I1cWZ6NHZSMFJWTWNhNGpWMVhYYkM4MGNMTFhHWG1raXRZ?=
 =?utf-8?B?aW1ycmVjZ2xKdHU2TjZTOXE3eWx5N2xHNW5YdzdQVVkvU1BtRWFJeGhGdTJP?=
 =?utf-8?B?c1FsZlg5SHJJQjgzWkRPMmNnVWlyT1dTbjZnbGlIb0QyYjYwSEFBdXdJVmRZ?=
 =?utf-8?B?VG5sUXRLaEN2TUUrWm5pN0doYzZ6ckZGUVdKL2ZFMEpoZmpRbmhxamZZb0RP?=
 =?utf-8?B?VGhHUVZKaHFVMWxoZXdDVm1zTzZVczRxa0w3NUVrK0x3ejdMRDMrVXdHOU12?=
 =?utf-8?B?Q0VHWUpwTUQ3SlZmelYwWHZDcWsveUtoeEZQYVh3OTdKWVAwYzNNbjhhYjYx?=
 =?utf-8?B?dDcweHBDeWZUclBKS2ZPMkdpR0RFN25ZL3IzK3VRem5YYlBoL3ozdnpNdVhM?=
 =?utf-8?B?cVE4eHlLenpMbjZRZWJEaCt6QmlBdUovZVBtSS9ERlBIRGc2c2xUYWRBSGxE?=
 =?utf-8?B?V0tMRmdMdzBQbTllZkFhZ1lYQXYzUTZBNkJNQ1JIbmxDNTVQMitsRXVqRFMx?=
 =?utf-8?B?blhDZzVKaVdFdE9tc3lWVS8xbjZ1ajl4TW1XNHVGWVJpbVcwNWMwYStEazlL?=
 =?utf-8?B?dnB0N0lRQk1MQkdyV3ZLRy85WThNc0dLZDBvaXJrRGo5Z1ZnS1VBTVg2R2JN?=
 =?utf-8?B?OHpBN0hsWlc3WklHZktDeStkdHNTOFNCNnNCY0NuSzFQQTZvSDI0elROU3pa?=
 =?utf-8?B?dkp3S2xkN01jK0lHbDJjeUVSRkN0WVBLKytWZUdMMmZmYzZEY2Z3REF1Q2s0?=
 =?utf-8?B?ckVKMSszejVhVHB3alE3NHkxdUtBd3FyWS9kRFJIZGI0QVhHanZLSk41MnF1?=
 =?utf-8?B?YXBvaCtMdGViOGcyemVsTk8wL2NWbFBYOGE4UzB6alM2M0lIbTJ2bXZrbG1l?=
 =?utf-8?B?TjVQVEtrYUsvZVdONXEyUFBaMWQxbTBWUzJMby91Y3F6YlZJK2YxM0dqM3Ry?=
 =?utf-8?B?dzVlVUErQng5cXQ3UlBpUXhEWHdZN3VaNWNZMGtBU245emIrRkhpby9xY0pu?=
 =?utf-8?B?U1VDTWlGVWZ1WjBqVm5lNFFCc0hiUFhrUVlncXhXa0RpN1A1cGF1Ky9nTUUr?=
 =?utf-8?B?NmtERlNSYUt5UDlHOUpQSlcwbUZleXhYUkJ0ZzhicnUwdTNaN1U4U0Zha2lo?=
 =?utf-8?B?K3I4TldTUmpuMjhUdDBTRVJoUW1hT0tOUDVrNURWT2swdm85R29sOTQ4ZUN3?=
 =?utf-8?B?M1hvcVRoUklobklHZjdKMjMwOTBXYXNyaHY5ME1XQXhzNkpyenlvc0JaSVp0?=
 =?utf-8?B?VnZNUERRRENMNDhBeDFKUFBYbFFWZGlyWjBkNlNVMFRtQ1BIMTE0cU9qYUU5?=
 =?utf-8?B?SDFWOFJjRGxTL3l0MHRHNEk4UHhoeTNIbW9UNEh0bTBWeE5GUm9KT2xTeTZU?=
 =?utf-8?B?QXg3TzhERWtyeEt2dTkzTDZuUkhuREh0R2J3SEtWZXRLanM0cWxiSjY5bWQw?=
 =?utf-8?B?MjdraCtFQVRyeG1jcGF4dWNmR1NUS3VHQ2NHN3lyTThpMlFzWWJUcGlwNm5M?=
 =?utf-8?B?eUphb2c5R3hJR0lYbzhDZVVSRmFadzFkVWJPUDZLUVY1S3I0enMwODNUNFU4?=
 =?utf-8?B?Vm5tbGVJZ3gxRkRTUHFBZThmRUtDVDdWem9LNVdyY1RYK092b012TVRxOUpi?=
 =?utf-8?B?S0U1cDh2TjhnWGN5dFdUWjVyZ05Xejc2SXBRaHRNVGpDY3IyTk96czRaT0cy?=
 =?utf-8?B?cng3WkswTHkzNkZBS0kxenhwY0tQdGQ1L0d1SEp6UUlsUkJaTERMbmJ5U3hj?=
 =?utf-8?B?d2wzT1A1QW0yWEg0Umd2NnRMZmtsYzREUTMxaTZpM2Y4VFZjbWJmY2tHVzU0?=
 =?utf-8?B?RWZXeWl6Q0txQlN2dngzSkhqNFR6UFJpcDJ0WWhYeGNsbVUwNmQ1SFRYUVRl?=
 =?utf-8?B?WDJmR2VPVTlkWjdiMEZzQTNWenNRcEViREM1SnRyZGs4NHF1MDMrek5BRytp?=
 =?utf-8?B?c2JQcVFqYlVWY3Npcjd0S1ZxSnRiYXJId2s1eXVvSWFGei9RVVBaTmg4WlJE?=
 =?utf-8?Q?VikyhiL8WXn3qNzKgQ3yEZ40ZT94AlzTpo2agr/ektzSh?=
X-MS-Exchange-AntiSpam-MessageData-1: 1hJvcPWQn5MY3Q==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cca71fc-d6ee-407d-ac2f-08dec4910de0
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2026 12:34:01.6887
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: umlapvDdwAfi1upbisJUaVXXPd0TBbRs3CS+aZXJzmZUpoaOmuy7MFiuyZPpFqlTC3lFDBrkVoMZ/38zh9XYBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR12MB4352
X-Spamd-Bar: ----
X-MailFrom: acourbot@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LXSJUAEQNAUK4YNIFYGHPZNSOHMQYVJA
X-Message-ID-Hash: LXSJUAEQNAUK4YNIFYGHPZNSOHMQYVJA
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:27:22 +0000
CC: dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Miguel Ojeda <ojeda@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Alice Ryhl <aliceryhl@google.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v18 2/4] rust: drm: gem: shmem: Add vmap functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LXSJUAEQNAUK4YNIFYGHPZNSOHMQYVJA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [5.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	DATE_IN_PAST(1.00)[70];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:lyude@redhat.com,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:nouveau@lists.freedesktop.org,m:gary@garyguo.net,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:ojeda@kernel.org,m:maarten.lankhorst@linux.intel.com,m:aliceryhl@google.com,m:simona@ffwll.ch,m:linux-kernel@vger.kernel.org,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:rafael@kernel.org,m:tzimmermann@suse.de,m:mripard@kernel.org,m:airlied@gmail.com,m:lossin@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:dakr@kernel.org,m:mkchauras@gmail.com,m:lina+kernel@asahilina.net,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina@asahilina.net,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[acourbot@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,garyguo.net,amd.com,lists.linux.dev,kernel.org,linux.intel.com,google.com,ffwll.ch,linaro.org,suse.de,gmail.com,lists.linaro.org,asahilina.net,collabora.com,linuxfoundation.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[acourbot@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email,nvidia.com:email,nvidia.com:mid,nvidia.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E0FBE668CAB

On Fri Jun 5, 2026 at 4:24 AM JST, Lyude Paul wrote:
> One of the more obvious use cases for gem shmem objects is the ability to
> create mappings into their contents. So, let's hook this up in our rust
> bindings.
>
> Signed-off-by: Lyude Paul <lyude@redhat.com>

Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>

A few final nits below.

<...>
> +    /// Unmap a vmap from the gem object.
> +    ///
> +    /// # Safety
> +    ///
> +    /// - The caller promises that `map` is a valid vmap on this gem object.
> +    /// - The caller promises that the memory pointed to by map will no longer be accesed through
> +    ///   this instance.
> +    unsafe fn raw_vunmap(&self, mut map: bindings::iosys_map) {
> +        let _guard = DmaResvGuard::new(self);
> +
> +        // SAFETY:
> +        // - This function is safe to call with the DMA reservation lock held.
> +        // - Our `ARef` is proof that the underlying gem object here is initialized and thus safe to

We aren't necessarily backed by a `ARef` anymore, but maybe we can refer
to the `Safety` comment instead.

> +        //   dereference.
> +        unsafe { bindings::drm_gem_shmem_vunmap_locked(self.as_raw_shmem(), &mut map) };
> +    }
> +
> +    /// Creates and returns a virtual kernel memory mapping for this object.
> +    #[inline]
> +    pub fn vmap<const SIZE: usize>(&self) -> Result<VMapRef<'_, T, C, SIZE>> {
> +        self.make_vmap()
> +    }
> +
> +    /// Creates and returns an owned reference to a virtual kernel memory mapping for this object.
> +    #[inline]
> +    pub fn owned_vmap<const SIZE: usize>(&self) -> Result<VMapOwned<T, C, SIZE>> {
> +        self.make_vmap()
> +    }
>  }
>  
>  impl<T: DriverObject, C: DeviceContext> Deref for Object<T, C> {
> @@ -257,7 +339,6 @@ impl<T: DriverObject, C: DeviceContext> driver::AllocImpl for Object<T, C> {
>  
>  impl<'a, T: DriverObject, C: DeviceContext> DmaResvGuard<'a, T, C> {
>      #[inline(always)]
> -    #[expect(unused)]
>      fn new(obj: &'a Object<T, C>) -> Self {
>          // SAFETY: This lock is initialized throughout the lifetime of `object`.
>          unsafe { bindings::dma_resv_lock(obj.raw_dma_resv(), ptr::null_mut()) };
> @@ -273,3 +354,232 @@ fn drop(&mut self) {
>          unsafe { bindings::dma_resv_unlock(self.0.raw_dma_resv()) };
>      }
>  }
> +
> +macro_rules! impl_vmap_io_capable {
> +    ($impl:ident, $ty:ty) => {
> +        impl<D, R, C, const SIZE: usize> IoCapable<$ty> for $impl<D, R, C, SIZE>
> +        where
> +            D: DriverObject,
> +            C: DeviceContext,
> +            R: Deref<Target = Object<D, C>>,
> +        {
> +            #[inline(always)]
> +            unsafe fn io_read(&self, address: usize) -> $ty {
> +                let ptr = address as *mut $ty;
> +
> +                // SAFETY: The safety contract of `io_read` guarantees that address is a valid
> +                // address within the bounds of `Self` of at least the size of $ty, and is properly
> +                // aligned.
> +                unsafe { ptr::read(ptr) }
> +            }
> +
> +            #[inline(always)]
> +            unsafe fn io_write(&self, value: $ty, address: usize) {
> +                let ptr = address as *mut $ty;
> +
> +                // SAFETY: The safety contract of `io_write` guarantees that address is a valid
> +                // address within the bounds of `Self` of at least the size of $ty, and is properly
> +                // aligned.
> +                unsafe { ptr::write(ptr, value) }
> +            }
> +        }
> +    };
> +}

I would maybe move the macro definition right before its use, since it
is very local and the code reads more naturally if `VMap` is introduced
before imho.

> +
> +/// A reference to a virtual mapping for an shmem-based GEM object in kernel address space.
> +///
> +/// # Invariants
> +///
> +/// - The size of `owner` is >= SIZE.
> +/// - The memory pointed to by addr remains valid at least until this object is dropped.

nit: `addr`.

(also noticed a few other missing `` quotes in the patch)

<...>
> +impl_vmap_io_capable!(VMap, u8);
> +impl_vmap_io_capable!(VMap, u16);
> +impl_vmap_io_capable!(VMap, u32);
> +#[cfg(CONFIG_64BIT)]
> +impl_vmap_io_capable!(VMap, u64);

Having to specify `VMap` seems a bit redundant. Since the macro is only
usable on `VMap` due to its constraints, and even has it in its name, I
guess you can just hardcode it.

> +
> +#[kunit_tests(rust_drm_gem_shmem)]
<...>
> +    #[test]
> +    fn compile_time_vmap_sizes() -> Result {
> +        let (_dev, drm) = create_drm_dev()?;
> +
> +        let obj = Object::<KunitObject, _>::new(&drm, PAGE_SIZE, ObjectConfig::default(), ())?;
> +
> +        // Try creating a normal vmap
> +        obj.vmap::<PAGE_SIZE>()?;
> +
> +        // Try creating a vmap that's smaller then the size we specified
> +        obj.vmap::<{ PAGE_SIZE - 100 }>()?;

For these two, maybe also check that `maxsize()` and `owner()` have the
expected value?

`owned_vmap` also doesn't appear to be tested, although I am not sure
whether that would bring much more coverage, so please take this as just
a sidenote.

> +
> +        // Make sure creating a vmap that's too large fails
> +        assert!(obj.vmap::<{ PAGE_SIZE + 200 }>().is_err());
> +
> +        Ok(())
> +    }
> +
> +    #[test]
> +    fn vmap_io() -> Result {
> +        let (_dev, drm) = create_drm_dev()?;
> +
> +        let obj = Object::<KunitObject, _>::new(&drm, PAGE_SIZE, ObjectConfig::default(), ())?;
> +
> +        let vmap = obj.vmap::<PAGE_SIZE>()?;
> +
> +        vmap.write8(0xDE, 0x0);
> +        assert_eq!(vmap.read8(0x0), 0xDE);
> +        vmap.write32(0xFFFFFFFF, 0x20);

Let's maybe use a more varied pattern (e.g. `0xFEDCBA98`) so the
ordering is also properly tested by the tests below.

> +
> +        assert_eq!(vmap.read32(0x20), 0xFFFFFFFF);
> +
> +        assert_eq!(vmap.read8(0x20), 0xFF);
> +        assert_eq!(vmap.read8(0x21), 0xFF);
> +        assert_eq!(vmap.read8(0x22), 0xFF);
> +        assert_eq!(vmap.read8(0x23), 0xFF);
> +
> +        Ok(())
> +    }
> +}
> -- 
> 2.54.0


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
