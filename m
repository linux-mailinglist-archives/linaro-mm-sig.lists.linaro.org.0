Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKcFNfH44GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:57:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C74A410018
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:57:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 98C11409FB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:57:52 +0000 (UTC)
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013008.outbound.protection.outlook.com [40.107.201.8])
	by lists.linaro.org (Postfix) with ESMTPS id 22AC63F70A
	for <linaro-mm-sig@lists.linaro.org>; Fri,  7 Nov 2025 17:53:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=Fg52mxGH;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of nicolinc@nvidia.com designates 40.107.201.8 as permitted sender) smtp.mailfrom=nicolinc@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H2SKIqQUIARAu+C1QqVCgbptpQ9xuaazEjU4oJRQ9XZqA5gV9Ul+NP4NBFlQW3f3shi6F80gsHiyHhH0Piky9bCIIgT9pLXVbJqKyrj+35jPA7qhjBijmSvUIKmIoCpfgbwZPL/C+qcEN8vD4NUHURBiRB9A0j2Y0Z9AVslmdPG7BTW+eV8IJ40G5Vmh9YSNFX9q3d+rh4lEYDrq9qMdLkARVb+CyUH+1vljAnBONTDPK1HNJAbe3sao22J3/lN9vxGJfyQAtb44ND+O1Gf7s/IBBR12jt2n3U9wT52tDpyKU9yX4dgkFPIF8llWYodXQ9eb+UWBNyQF8eT5JCVtYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yY7noPUHA4SbRdl6rgASjsCdr+Huz31vC/2Dvp53Xxs=;
 b=nsa+yPbvwwGWMEQlXQlV/hneQUcSSiGVd8YM625DAJb/kNl2O51Y0gckC1tIcbu1wVu/8GpCVTRwyJt+I9X2EPAlnKvDY9T+DZ32qptitUG21CFQuvcoIDz/8ApLqhSvklSfwrbwdACoDN8caXIaeC0tvgPLC4r0dMz4UHWZcta9dJLe0skgs2Z7VrEn6ig89Q2mApmW5vIgxQWP5uCvTO9Z0mFBQXSzi8BJ8e5wYlsUz7DovKcZaGID9f9l+myi4cHydbgiEnYHg4Ao/JOhKsMb8T3Py77gPL3DoDDK3vL87QC5NlRNxasr1/5EoCMu9Uba807C3IqCMrkl53kdaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=ffwll.ch smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yY7noPUHA4SbRdl6rgASjsCdr+Huz31vC/2Dvp53Xxs=;
 b=Fg52mxGHWUaMfjcnu7j2GcKXa3IpBCWCAG1mATc4HqsZJx3SmN4EmLJUghuNVc8fMeDJ91YUy7x/VnltkG2U/PQS6AM+ix7yGHUyyJ8ndGKaKthQatq01oRhOLDro/zDKpTuv7M5sm5oelnTUWpPM4JZz914UDL0mW4fZfiExzIPk+qDZpusky66Eo8TPYlcpSQJUV7c8wWeldlpSsEPvWZhZsHKXQwg9RG87quJhJc6W5TXxI/fiKZY8byrHsXcVbN0FrHla3NE4aTSlSuNh2dnGu89tIY44g81IjJtdg4JWxcoiV9kKD4yQ5UTpkxa+BPdjidcfyW/R9rJiv3ckA==
Received: from BN9PR03CA0654.namprd03.prod.outlook.com (2603:10b6:408:13b::29)
 by DM4PR12MB6230.namprd12.prod.outlook.com (2603:10b6:8:a7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Fri, 7 Nov
 2025 17:53:09 +0000
Received: from BN3PEPF0000B072.namprd04.prod.outlook.com
 (2603:10b6:408:13b:cafe::37) by BN9PR03CA0654.outlook.office365.com
 (2603:10b6:408:13b::29) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9298.12 via Frontend Transport; Fri,
 7 Nov 2025 17:52:54 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 BN3PEPF0000B072.mail.protection.outlook.com (10.167.243.117) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9298.6 via Frontend Transport; Fri, 7 Nov 2025 17:53:08 +0000
Received: from rnnvmail202.nvidia.com (10.129.68.7) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 7 Nov
 2025 09:52:49 -0800
Received: from rnnvmail205.nvidia.com (10.129.68.10) by rnnvmail202.nvidia.com
 (10.129.68.7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 7 Nov
 2025 09:52:48 -0800
Received: from Asurada-Nvidia (10.127.8.11) by mail.nvidia.com (10.129.68.10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 7 Nov 2025 09:52:47 -0800
Date: Fri, 7 Nov 2025 09:52:45 -0800
From: Nicolin Chen <nicolinc@nvidia.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <aQ4x7UiMMCB0m0dH@Asurada-Nvidia>
References: <0-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <0-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN3PEPF0000B072:EE_|DM4PR12MB6230:EE_
X-MS-Office365-Filtering-Correlation-Id: e28cb06e-ca58-4c16-7e26-08de1e268332
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|82310400026|376014|7416014|36860700013|13003099007;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?fXUN2uL9Q176+BdCcdfFgIywP7PDpR8VZQMB4A4F/Al4k2QTCEf6iZQy8Yxh?=
 =?us-ascii?Q?LP9F/tugt/yn7LeHjNzOXrD9TIAYjk45r+q3ZGx4O3tihKoZkk5FrXHgpmMQ?=
 =?us-ascii?Q?VrlgxLfn+jzHSdF+r7KEUiIrTqZuz2yr4v3xwOHyiYbUolXiwSwm4ArSQ468?=
 =?us-ascii?Q?V6gsTFddsb2/nc8P/5aMjPJ0fNh0JUz5irYXDveXvVyPdFrNdPV8L+Lmum5D?=
 =?us-ascii?Q?YoGZ62jCfxLypj3prMsGUNzgKauXTPkWGE9RNySnq1W9dY3ouOywJj1okwWC?=
 =?us-ascii?Q?MjMI2OoOANBg4A6xHyb2v78v6lXbVwnb3LSmTwrCj7+QkhcuxhSRblgcE59X?=
 =?us-ascii?Q?NLtbDYctK1plOvO93yqZCYIc0fezkHVxOeCNy8SlaIYE0/Tyw6PvwbzDO8SF?=
 =?us-ascii?Q?yxRvVZ/xU4dKsj/AnNWIqdfKREHFjKbLR9DBqoqm1/OywHw2JuV3KOlyRoNW?=
 =?us-ascii?Q?x/+6VUvzZL/cunVk2rYvCI+ksdZTdrWo3+HQgMkDVpfLyUTFGdYjJt9rKOG1?=
 =?us-ascii?Q?9FaRy3htP19Kwj+HNWIDG2tlHoKi5aN+CapO48OG2uh0pVITZmSW4s2WCdtQ?=
 =?us-ascii?Q?I/OJo8dwbl5gSjxGYVgUFc3kRrN1LwJOSfaXRqOOCNZo+/qbxV+0xhUpN3Jf?=
 =?us-ascii?Q?gRUwxlQBBodVE5hIzacSOsewX9iEm5senC0wnkEuebAryaevhZcptwmRCE0d?=
 =?us-ascii?Q?CWdBlFHNTyUTn8f88RQ/dJvqPucgqfRG2SPXe/fJfF9mC9ZHtEJZPMi4vz0/?=
 =?us-ascii?Q?KVvIdtYuMdmpew3eXcMlGJvJg6Kx1+93DnPAxtnHUM+0o8wn5SIaBpNCKQR8?=
 =?us-ascii?Q?phdc9vnO5OS4G7drWVpYUo/Th26QnMhV/hMxbpnqEHPZFG6UBfe/dgqPHwaN?=
 =?us-ascii?Q?utMtWo0k/N2Fuj7wQeomGMnAuAAU74s+6tW4gRxfkbyjLtgSd9f+v6av1TGJ?=
 =?us-ascii?Q?YBfBnaN/ZAtJpnEHiEeS7C22zQ0uJTnuUrLL88eTDWv+IFAGukymKlEqIjUH?=
 =?us-ascii?Q?6x1DXI7/ykc0cPBVSZ7COizrf0+5NEzkyjWRjk/UCvd/wXymv8YtZXcH2P0o?=
 =?us-ascii?Q?hdMfdZHvYBtD7tgt/EDMFWcDIaeMgtjuxALBJw8FPnukjAnmYgduhOZltRv5?=
 =?us-ascii?Q?DaeAMUwWROEVlQ++q5fzuX6V1XYRh+zCOqlVq3lsNOmPmvpDif/Za3RD9mls?=
 =?us-ascii?Q?/lWH/L7PrxWkAm6nuoEk1lZ+OloXw1/nwWBwEtA9oXbIne9tnUoZaeogxBaK?=
 =?us-ascii?Q?99jzF6wPYLibraR/zaOcCxliyo1maNw/ISMxpm9Tt22EFHZUViYJ/gVazV9f?=
 =?us-ascii?Q?pOo4FPuPWPpAJ9oj9yg4lAs3TfSb19TEfWP3AdiQdvcOlGROKnFc/PpAsTLD?=
 =?us-ascii?Q?JIwHQGOFjpeIN7p/nMuXTUdH1Na8WiesbZRapfFTdQuuQApzyVMcqfJcsf6m?=
 =?us-ascii?Q?5ajReyl0qAuCQqN/x42/BtnbeKI5nkWIvjBAK4f4JStn5ascq/fiNM0bNgKX?=
 =?us-ascii?Q?PqRaL8eM7RDGwQ22sb0CaKg4m2Gs180fDeBSrr4T/PvTRLVjcJuMgPA5gmK7?=
 =?us-ascii?Q?huPa+gNYXQNg3EMb0xiQBjHLKd+nMawc/0Cv8xqX?=
X-Forefront-Antispam-Report: 
	CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(376014)(7416014)(36860700013)(13003099007);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2025 17:53:08.9998
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e28cb06e-ca58-4c16-7e26-08de1e268332
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	BN3PEPF0000B072.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6230
X-Spamd-Bar: ----
X-MailFrom: nicolinc@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UY3X7DQA3WTAXIYQ5P2B2AX6MUAOUGPR
X-Message-ID-Hash: UY3X7DQA3WTAXIYQ5P2B2AX6MUAOUGPR
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:52:45 +0000
CC: Alex Williamson <alex@shazbot.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Joerg Roedel <joro@8bytes.org>, Kevin Tian <kevin.tian@intel.com>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Will Deacon <will@kernel.org>, Krishnakant Jaju <kjaju@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Matt Ochs <mochs@nvidia.com>, patches@lists.linux.dev, Simona Vetter <simona.vetter@ffwll.ch>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Xu Yilun <yilun.xu@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/9] Initial DMABUF support for iommufd
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UY3X7DQA3WTAXIYQ5P2B2AX6MUAOUGPR/>
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
	DATE_IN_PAST(1.00)[3837];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email];
	FROM_NEQ_ENVFROM(0.00)[nicolinc@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	NEURAL_HAM(-0.00)[-0.662];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 9C74A410018
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Nov 07, 2025 at 12:49:32PM -0400, Jason Gunthorpe wrote:
> This is on github: https://github.com/jgunthorpe/linux/commits/iommufd_dmabuf
> 
> v2:
>  - Rebase on Leon's v7
>  - Fix mislocking in an iopt_fill_domain() error path

I have verified this v2 using the branch above, by drafting a QEMU
patch for dmabuf on top of Shameer's vSMMU v5 series:
https://github.com/nicolinc/qemu/commits/wip/iommufd_dmabuf/

With that, I see GPU BAR memory be correctly fetched in the QEMU:
vfio_region_dmabuf Device 0009:01:00.0, region "0009:01:00.0 BAR 0", offset: 0x0, size: 0x1000000
vfio_region_dmabuf Device 0009:01:00.0, region "0009:01:00.0 BAR 2", offset: 0x0, size: 0x44f00000
vfio_region_dmabuf Device 0009:01:00.0, region "0009:01:00.0 BAR 4", offset: 0x0, size: 0x17a0000000

Tested-by: Nicolin Chen <nicolinc@nvidia.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
