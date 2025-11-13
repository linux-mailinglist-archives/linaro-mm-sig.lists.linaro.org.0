Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMLyByf94GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:15:51 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B305D410696
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:15:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CAA5A406BE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:15:49 +0000 (UTC)
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011025.outbound.protection.outlook.com [40.107.208.25])
	by lists.linaro.org (Postfix) with ESMTPS id D93CA3F7EC
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 23:26:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=Gbxz8mt5;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of nicolinc@nvidia.com designates 40.107.208.25 as permitted sender) smtp.mailfrom=nicolinc@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=avY5lCGxd9Ag6iPSu7zP80R9zHI9L/FiAfgn0BNRaWF+fbZ13BHCBRLN2AGLu7Zd0FMQ562ngIi8YbR4lEvaYdFKomL56rqYp5VJj6h/rTxd9zOZJs3Mj38GUJ/NKcM/oMBQArDR4yA5w6zyr6ub/+hRKZrmE2KiS1HjwDzOxOy0pYC5SQXac8GAGPF9f/BVeQIAKvBzUDspMNOSsFRPLVH+aN5pKVqv4EB+pFDglbTUVx4e27O85MkPPkwfuTSXlXTLyAiW9PqqMghgbo5EU+ywCK+JS6ayMpyKx8LXtdgtmpvGy7RQ25KZ8p2uFeSxLE73gmOsKSTHf6VsZirvkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C5yD3B6CM6REeG59S7jRZj/+5X2tCoLL9EFQIFi/kWs=;
 b=a0v8c2c6ZfRmZZm04NleY4QM3hptheb9SU+5nxn8LbeUPJe5z0CD1mGjT+GZC9iXYhuPQpalQ1o2oSNuAwTK2vOyYSJKe6H3NrsILROKCNerifUthz4q70NU2F7mx2DrcVpOujaj2i3Up5AfpHbzD/7v7vSlpZ17KfpL0pt18fS3p9idqcb6sFU+FsWJ8KgAepVH3s2dzoDLQJ4JEayZeeA8dMJsAYUTL5RXpVerJrZvaRtsgg+G/Ts08eCx4/JztLvD1UiGOsCQ15k+ZeggfAw9Vb97joj1xw00ye5Vb4TLOktbjiLnW7KNcvnU9eoeOu0BpM8dpi41SXaCehsjtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=ffwll.ch smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C5yD3B6CM6REeG59S7jRZj/+5X2tCoLL9EFQIFi/kWs=;
 b=Gbxz8mt5p88j12DU6a9dzd6WLaknfLpBTJ9u6eIFmtGwYiFa0P0SgA1qdm5FtyqvBSU/FjF7/WfqfStv2kOwtxBTwwv0I3jc2rfPnk93AMVOSCCsh7h3FLRAN3YR7xEGUuJza4aum16ikiNLAxNZP2146Wem2VMXFVZXSX3RfEfFmLEFMnN2f5WJS7aq11nGAbLn/PYn7v/JyT4osRNmmna0xEiBRP8lZ7dLEMEPq73nTL9cLYzqIChvJdnS9WxTfIt2mHRYw/Hvx+K+tnNixaiJ+eIaNOFCcTm7Qw321YgcEwhbVnzmyJbEi5Aq2P+8iG/84huIRE4kFIUy2dwNqw==
Received: from DS7PR03CA0186.namprd03.prod.outlook.com (2603:10b6:5:3b6::11)
 by MN0PR12MB6104.namprd12.prod.outlook.com (2603:10b6:208:3c8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Thu, 13 Nov
 2025 23:26:26 +0000
Received: from CY4PEPF0000E9DA.namprd05.prod.outlook.com
 (2603:10b6:5:3b6:cafe::94) by DS7PR03CA0186.outlook.office365.com
 (2603:10b6:5:3b6::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9320.16 via Frontend Transport; Thu,
 13 Nov 2025 23:26:25 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 CY4PEPF0000E9DA.mail.protection.outlook.com (10.167.241.73) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9320.13 via Frontend Transport; Thu, 13 Nov 2025 23:26:25 +0000
Received: from rnnvmail203.nvidia.com (10.129.68.9) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 13 Nov
 2025 15:26:05 -0800
Received: from rnnvmail203.nvidia.com (10.129.68.9) by rnnvmail203.nvidia.com
 (10.129.68.9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 13 Nov
 2025 15:26:05 -0800
Received: from Asurada-Nvidia (10.127.8.11) by mail.nvidia.com (10.129.68.9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 13 Nov 2025 15:26:03 -0800
Date: Thu, 13 Nov 2025 15:26:02 -0800
From: Nicolin Chen <nicolinc@nvidia.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <aRZpCqQcSgqTWYvT@Asurada-Nvidia>
References: <0-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
 <4-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000E9DA:EE_|MN0PR12MB6104:EE_
X-MS-Office365-Filtering-Correlation-Id: 73145002-edf2-409f-ebe0-08de230c1081
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|36860700013|7416014|376014|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?pPTHy2j+2qq1M0b0jC3lPucLtN+HcoQbwOqtFIHoOKuYGH5EenGSOaCz/rUp?=
 =?us-ascii?Q?dOZ5p5XFIHhbcph+8m4iTwpjNrB3LPTq00XeLgDjDwXwraWwfVhrXEM2paWZ?=
 =?us-ascii?Q?9BLPCH9V10s+u1K64LnAMNyEj9opIa0/tLjKmt3id6mqW8N6QMwtQJQcMZlB?=
 =?us-ascii?Q?d62TmSvPTgXKZqAgI1gxekG6Cgh5ffbIxm5bgoLX8i/mWtuZ/rcR6Z+5SvvK?=
 =?us-ascii?Q?ST8TKaODGwAkW2oX8KbQ0UL8p7UCsQ09YPrLlrFzx8BObheqKoSb4nOxrqj5?=
 =?us-ascii?Q?YtdNoylVDEDpVvW5g8rd77GX3xEIhnTuk3hF3mhENMSn5AlO75X240QgrNSd?=
 =?us-ascii?Q?sNi1ohfCQwjJXnH8ExF2T4SWcPw3/VlolXx5i4sGAIpwe7375mstBqnfnY/Q?=
 =?us-ascii?Q?csRnd8e4LBQtkXPYY6HnFhG/pcsjDL31bdDsQzdsbHi1dNlLBSYR+IifTvYx?=
 =?us-ascii?Q?/MJjX8kd919nVCVVUpWF9VhHqGuP5CeMu0t2HBEbyWuNCu6nnFRQVtXgp/1W?=
 =?us-ascii?Q?6k3n+cGjjAPfs/rXy6KcoXweefogQZrNY7FieeAcRD1ISUaKhkCncifHKShy?=
 =?us-ascii?Q?bzTZY82sjMl3SvXnbM8ij4AZP1JBaHjzykPWjWS/4/yHYl3mNG6mZXqYzKv7?=
 =?us-ascii?Q?UgFLSx45lsNHVtpX9AzTpiBm3jLuts3T592377GZtzxHuwMxYz8pUPiuRSTh?=
 =?us-ascii?Q?EwhuVwN2P3ZUdPA7NMLG63OWaBnyEFbaaJ+yo4Z50te5RQ+K99sFN2nO/cGW?=
 =?us-ascii?Q?EtD6zEbi+xj4D8Juvk2VdoMN8wHiXbYtUWCTQ8PB+7VM3929C7eWE69d2vws?=
 =?us-ascii?Q?2TQqc5ZQBVgbKSMwORsmDXU58AmvSg+2JmA76VhCKPnV3udDdCGEAIiK4r/b?=
 =?us-ascii?Q?ymfBapu4TNvL9adLpwu6Q4J3Q8sULUGgYMMMqanXlCQvPZagGAVFzf/sKC6H?=
 =?us-ascii?Q?1YlNcgU4jNyZ3s+XIudXalBT9luFxIsFmFWd4xXH02hhI3NG07g2BmOuNxHj?=
 =?us-ascii?Q?lg0A8jHNd3ctJoJLSNPqRXeeJOC4kKJ2p9i7QSjIRWOT+2sVmY/PV2t/U1Vf?=
 =?us-ascii?Q?iuFyK0DLGqASimQYfRwc7E4cAmcRpkSJMRCHmZi37PM72LnB+fIRTjl+4o9C?=
 =?us-ascii?Q?jUYOXSXE7vREzwwldFVknnqhQAr37P33M82QahY0FwAAhNFnjNexeleU4zoM?=
 =?us-ascii?Q?xfCskmdInNqmBdr+iVcHzAm4pHLAJPk0mSOc06euxmno1t4UFx9xMP2vSnmj?=
 =?us-ascii?Q?2lVSDOgZcdfAzraDgzKpuPOUKGOzaF2K/TOJy4VcgqAghQSNq1j/63yqsciX?=
 =?us-ascii?Q?g2q+4817GsCU2TxbQaEHKzWz8wf5FX984UtnSVYbCKauQurOcP+H7nhYQP9h?=
 =?us-ascii?Q?EJFgOdRRjmWxBvkMgqfn31bPqLUF51Hvd/UvrzQaNwuVDN0+hCdb4dn8J86u?=
 =?us-ascii?Q?FdzieiwEPUa8QtDMzvcFadp1AMTf39TpP1elk9xY4uexiz83SkzJfgasAddj?=
 =?us-ascii?Q?yyWLIF5l+qM58dMew2nxwJSObrEjKzgWp40kLv/TcT6anx9zrv0i82cS7Omc?=
 =?us-ascii?Q?MDiWJBOhlyJm5f0ELk4=3D?=
X-Forefront-Antispam-Report: 
	CIP:216.228.117.160;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge1.nvidia.com;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(7416014)(376014)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2025 23:26:25.5417
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 73145002-edf2-409f-ebe0-08de230c1081
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.160];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	CY4PEPF0000E9DA.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6104
X-Spamd-Bar: ----
X-MailFrom: nicolinc@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GEJBR5UERKP6HNDVHSXLIRHPAJUAQEFC
X-Message-ID-Hash: GEJBR5UERKP6HNDVHSXLIRHPAJUAQEFC
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:56:55 +0000
CC: Alex Williamson <alex@shazbot.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Joerg Roedel <joro@8bytes.org>, Kevin Tian <kevin.tian@intel.com>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Will Deacon <will@kernel.org>, Krishnakant Jaju <kjaju@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Matt Ochs <mochs@nvidia.com>, patches@lists.linux.dev, Simona Vetter <simona.vetter@ffwll.ch>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Xu Yilun <yilun.xu@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/9] iommufd: Allow a DMABUF to be revoked
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GEJBR5UERKP6HNDVHSXLIRHPAJUAQEFC/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email];
	FROM_NEQ_ENVFROM(0.00)[nicolinc@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	NEURAL_HAM(-0.00)[-0.658];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: B305D410696
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Nov 07, 2025 at 12:49:36PM -0400, Jason Gunthorpe wrote:
> When connected to VFIO, the only DMABUF exporter that is accepted, the
> move_notify callback will be made when VFIO wants to remove access to the
> MMIO. This is being called revoke.
> 
> Wire up revoke to go through all the iommu_domain's that have mapped the
> DMABUF and unmap them.
> 
> The locking here is unpleasant, since the existing locking scheme was
> designed to come from the iopt through the area to the pages we cannot use
> pages as starting point for the locking. There is no way to obtain the
> domains_rwsem before obtaining the pages mutex to reliably use the
> existing domains_itree.
> 
> Solve this problem by adding a new tracking structure just for DMABUF
> revoke. Record a linked list of areas and domains inside the pages
> mutex. Clean the entries on the list during revoke. The map/unmaps are now
> all done under a pages mutex while updating the tracking linked list so
> nothing can get out of sync. Only one lock is required for revoke
> processing.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
 
Reviewed-by: Nicolin Chen <nicolinc@nvidia.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
