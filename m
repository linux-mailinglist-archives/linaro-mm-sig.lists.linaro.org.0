Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEDqLyz94GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:15:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 830D241069E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:15:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9436A409B3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:15:55 +0000 (UTC)
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010069.outbound.protection.outlook.com [40.93.198.69])
	by lists.linaro.org (Postfix) with ESMTPS id DA0643F803
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 23:29:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=CtkifwCj;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of nicolinc@nvidia.com designates 40.93.198.69 as permitted sender) smtp.mailfrom=nicolinc@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w3FsTNDy1CckLk2d62tMZp8PacgqqlTIwHk7MFi+qQBS9JLwZlZNxXTUcFHmxmYTHeJZAz0k/4pgbiN1Q4wDdVt6uxf88jkGUlzOXGS0TlcXV6opikaqIVNe9oniXkGtn4xiLoUuMEG/641B/46MJ0Q6wM7GkXK6QFua8mBKZnPZOhLG7uQbkb8iUgE2may6ZildP8aDTbVSY9nwFNPsihGe1IP7XGIhQwQDhjDyGoMfYlfhZ4SLzf4Ht57AUUIkaB4LnYQv2nUGrjxJCnxOyRFvEoThZS3YrOUER+ZRpDYipt8HpuZhyYdOUT4w4dVw6YKdbyvU1Rs8yKva2CB+tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9WmMZWL8CXvh2Bb/VvJrY0DIjLzzelgHlIEeavOKrhw=;
 b=WVXI1Kqv/g5Gy0k9mrO7RNv9vGbbNZaV7X/+fgV+G5+vrVkCc5hjbdGiUQrxr8AtdzHgeExkh3VP3HjCtVYjwdYGIAXQvWzQJrBUMDRpInYEyDZTnxEtl2fdAfAOKWyO9slvTyQrzbKyE9Vzg6Z5Pq5+b2OwHwR7CPYg04OxV/WEPcD+slKkALxkzJ5JSPS9JAd/+n4f/KtXvNd2Ex9C4UIRfIaXL13hBe2ie4/lyl3hXpBjASk7WJ1NDL3qHRcNMgfsR4rPIGJjcObMEYUYnNSw8lucsCaK3Jz4AVUn5gqF3FmQzaO+xXFndxH7R37DphRVZDz3UTtO5Pe/kmPdkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=ffwll.ch smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9WmMZWL8CXvh2Bb/VvJrY0DIjLzzelgHlIEeavOKrhw=;
 b=CtkifwCjBv+YEjyXJoniq6JQE1dqEf8NF0AY1mvstGI6gVXg+2mim7AWosqd0F+GcfMD1NIsYl3tQyNDIUAXhOZEwOe0mkippynbQfZa6yCoEh48VWtqhIg7TUrUg2OjDJyQ1O2WIi3dDHlMnXgngX8ToPLfYROUy1sk2Rx0V+M+5Be+2jios+FYP8NmjzKVOwQpNnxikUg2QYttLzzK4YL/1HwGYs3edH85p+CAbPFngTV9QVb6cRnaCBzryHgjyRN5rGlnD54uSVRolSWY+5ks/WzZm1WTy2zaGFhoLeAmjGmnDi8wwB0x7wTzXWODPRDdfMKdhwNZFUo/inAnEA==
Received: from PH8P221CA0063.NAMP221.PROD.OUTLOOK.COM (2603:10b6:510:349::15)
 by MW4PR12MB7261.namprd12.prod.outlook.com (2603:10b6:303:229::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Thu, 13 Nov
 2025 23:28:59 +0000
Received: from CY4PEPF0000E9DC.namprd05.prod.outlook.com
 (2603:10b6:510:349:cafe::97) by PH8P221CA0063.outlook.office365.com
 (2603:10b6:510:349::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9320.17 via Frontend Transport; Thu,
 13 Nov 2025 23:29:10 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 CY4PEPF0000E9DC.mail.protection.outlook.com (10.167.241.75) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9320.13 via Frontend Transport; Thu, 13 Nov 2025 23:28:57 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 13 Nov
 2025 15:28:45 -0800
Received: from rnnvmail201.nvidia.com (10.129.68.8) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 13 Nov
 2025 15:28:44 -0800
Received: from Asurada-Nvidia (10.127.8.11) by mail.nvidia.com (10.129.68.8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 13 Nov 2025 15:28:43 -0800
Date: Thu, 13 Nov 2025 15:28:41 -0800
From: Nicolin Chen <nicolinc@nvidia.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <aRZpqbBHUYKNwRJT@Asurada-Nvidia>
References: <0-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
 <5-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <5-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000E9DC:EE_|MW4PR12MB7261:EE_
X-MS-Office365-Filtering-Correlation-Id: d25a23e7-4b13-41df-fc73-08de230c6b41
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|82310400026|376014|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?9Xj7sPplIyhjLSsmg/znM4V43WSyaJilkD5r84qZG9RFh66PqWLTU2wQNhJt?=
 =?us-ascii?Q?JE/I8Zj/GWRpHn2Eml9TF/mwUlfp49jab/Uh39/pT9bwQTe/DJlT6XHuGQdY?=
 =?us-ascii?Q?59rgSUTFCTT0G6bWKKo1NW6upW61p3o0ss9bSRr6TArtUPx1pHmy23GI/wkq?=
 =?us-ascii?Q?0CqvUPZziraKAhVW8/gK3Hsr15OBvWkxQD/vYYhvefngVdF7njRVTUJNsMmY?=
 =?us-ascii?Q?OR8QuU04LFiyGGEcE4Ub85vWxr4lddj3KAcBClYoRJ5N00ITfAK2ncvpMu/6?=
 =?us-ascii?Q?03pGmTDAm1rP4Zw7l76r/UBOBkVS+2DCFjwNDk1yGPXbGVKjNYSj8O7+67um?=
 =?us-ascii?Q?QvgVsrmmRImWsW/l1Bc06TF+CCKifplMF2BavC+D1LkvcG5FLQOhwN6hViqL?=
 =?us-ascii?Q?hChokEO8Gxg/2jXYQiPkruG2jYXtIdZcuM+na0WBDIDNGDGyoEXDWp3itV1B?=
 =?us-ascii?Q?J7nJgHmSTGkxTzFguhRiHDQvKpTUEL9+62DkE1m+TLI/MkJV/YZTrKURjVwx?=
 =?us-ascii?Q?gRY1NjpRRzAIx9i+zZmFxgmKAMS+sWiEibwTM+3evrMDPWt2gZIPrPZgM2II?=
 =?us-ascii?Q?9VYDu/R8JQq0ahUjuS2FPdAn7GD2AJCohUab35nHV4Qo3rBVzUx/tJCJsB1m?=
 =?us-ascii?Q?SGXm0zGsF7fIzSQc+KMbMqg2XWxt4hgI0ONUr9xIgA5gVYcBVp/0+X1C3lf2?=
 =?us-ascii?Q?ANrFIDQ3qbl0ln6123fQNwFVzjAKT2qqawrFmxk5Dal40CG687JuX4hq+mUQ?=
 =?us-ascii?Q?fz2gpQBrvQtJNh5zVIKYvCXEbTYvLVvyDJuxH/84/SpMlKJx5GY322UqpReS?=
 =?us-ascii?Q?pg4WU2Ie4jtZityaHs2Aeau5MeoNt+Sll8Ip/eaej5ZMTx97zdDA3Oz0BXjZ?=
 =?us-ascii?Q?oE5cd+pNcsgG5/54eaaef1u6Q7l00bNuPeA6aArzy2CIQxHzx10gzHDTJHM/?=
 =?us-ascii?Q?w+NbkTqhCLnueCVbhsrgT46fLEElOhdPESxUVP8FHfBZdJAKs3B3vIBGK6EL?=
 =?us-ascii?Q?5blFsEGl+xnJzQiCMBkcLqtitE2VX96EkiJpjedG2IYy9p0R/7tTpPthyV+n?=
 =?us-ascii?Q?vRCpw2el/cXJ1cGd/4tKm2gbGFKLGXVPTngioUpF5OWbgd/0AboK/0+Lbd45?=
 =?us-ascii?Q?tf6cSOATWPDSyYxstGXjoiyNO6dxA+P0zt+5BtOF11UI8n8n4APSo9rZu3E9?=
 =?us-ascii?Q?if01QK/KZcOVySNesXZaZ80W4dBFQ/aXcljIwvwV1p8LrH97TpVP2RusyOBT?=
 =?us-ascii?Q?25615mR1B/idJLywnsWFhZsD4fYwK1fQHfcnN972dNwdshaHADcaH8d2y6/V?=
 =?us-ascii?Q?J4YjdLC4cdnYEja2IiFaXG8vC7Y+KVuGsfblNo1w6FotQiV/gNbLvVq7YTyL?=
 =?us-ascii?Q?RB0CUn1vHL+FnxuDMOKavRMttyheomnrAYXTm7iKLhxASFNieuCV2OVLc5go?=
 =?us-ascii?Q?1fNLNgNMOsiDng0xiagu4Sd4hWtw6kzMgE2gElWwPhm6BpdMYoV8adODyx3j?=
 =?us-ascii?Q?/44CnRpsNbLT70N99Oppj3GXVV8qZrtwj3NjpKjKu+AwmFHsGYL3jGW/vDMd?=
 =?us-ascii?Q?doRPXRKkyS3BmtTxD/s=3D?=
X-Forefront-Antispam-Report: 
	CIP:216.228.117.160;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge1.nvidia.com;CAT:NONE;SFS:(13230040)(7416014)(82310400026)(376014)(1800799024)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2025 23:28:57.8172
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d25a23e7-4b13-41df-fc73-08de230c6b41
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.160];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	CY4PEPF0000E9DC.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7261
X-Spamd-Bar: ----
X-MailFrom: nicolinc@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MBMJDLBY7PEE7V6LZTJSFRWRVETGT64L
X-Message-ID-Hash: MBMJDLBY7PEE7V6LZTJSFRWRVETGT64L
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:56:56 +0000
CC: Alex Williamson <alex@shazbot.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Joerg Roedel <joro@8bytes.org>, Kevin Tian <kevin.tian@intel.com>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Will Deacon <will@kernel.org>, Krishnakant Jaju <kjaju@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Matt Ochs <mochs@nvidia.com>, patches@lists.linux.dev, Simona Vetter <simona.vetter@ffwll.ch>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Xu Yilun <yilun.xu@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] iommufd: Allow MMIO pages in a batch
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MBMJDLBY7PEE7V6LZTJSFRWRVETGT64L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	DATE_IN_PAST(1.00)[3687];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[nicolinc@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	NEURAL_HAM(-0.00)[-0.652];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 830D241069E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Nov 07, 2025 at 12:49:37PM -0400, Jason Gunthorpe wrote:
> Addresses intended for MMIO should be propagated through to the iommu with
> the IOMMU_MMIO flag set.
> 
> Keep track in the batch if all the pfns are cachable or mmio and flush the
> batch out of it ever needs to be changed. Switch to IOMMU_MMIO if the
> batch is MMIO when mapping the iommu.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>

Reviewed-by: Nicolin Chen <nicolinc@nvidia.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
