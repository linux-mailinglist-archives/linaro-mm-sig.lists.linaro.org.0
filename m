Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOEXN9hcAmosrgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2026 00:48:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D920517147
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2026 00:48:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E7553F867
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2026 22:48:55 +0000 (UTC)
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010001.outbound.protection.outlook.com [52.101.46.1])
	by lists.linaro.org (Postfix) with ESMTPS id 582663F75A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 22:48:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=kQ5eDgM5;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 52.101.46.1 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	dmarc=pass (policy=reject) header.from=nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BuzIDk8Tpey0sumH9F3PESFLEK4rU/nCs82HjujT5f8zg8tDYBg0x84/y1iuQ27Uanc/7b2YdRp4r3Yl5jBA23guHI/s9LM3vAx2wE5S5JWnDKedY277IponzEkucipNk0Zp4fm1v5pTvzUm/VJACBcamexHt7fdLff1btmysIAPAj8p1Yo5X4NFgH/hAFZIRxNcTEl9RHm9aOBPhg2R5+odIe8uKX+MlljaXOJMJuHrFXdWOgKkChWGhMradG/pN/r7lalrxt71lALewNxDexnFP1s9HaqZFxXfKxXkjlEk4ZzY+X1FD2DhREmZ4McWYYWAUNDjne2+c6+t1cJU8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=34fmHfHLuYL6yOYa7+w4Tf35A4aKcUPqmxiOnnDyqPY=;
 b=MYLHn1vMEKHvWooWX0HxvcrajC/2H+IJFvPWl8MiagjfLCXJVytQjBZpQK7aWNJEhgmxoOKrJvSGieyAGxD7FvDrxCL+/zZHoGgOFT5jrzbBu7SKZfN6E7JujsG5HPk/bjHA72aQDzz9l0GMcXzjMAym7JkX8e9YS2h2ght7pToGGZk6B4vjCnu2ejBuIOnOLXUtuxbN5jFevbfMSCgSwKt6TDPN5swajFzxLYfmQdQF+taqPAh1nSqqqcIB+S5BO2rQ6q81Y4r+5CCHBygBN9GlWrHvHWeed7JR5k+SQiBEzwp0Iz7SRV02XpFwO84Iag3NrhJMLBAV2tniddipRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=34fmHfHLuYL6yOYa7+w4Tf35A4aKcUPqmxiOnnDyqPY=;
 b=kQ5eDgM5sOq2rU2o+B02Tcvvw9hHVxkbTNZDyVJfBuXyiw3D9Q1i5kUDvdFJWhTRsYqt2B9R2QBuHdsbS+W3IpF4a19HJUzqXCNWfe9a52qGf93vgUiWUfQiAtFcxReNzE7PfuSF/FKBbE9CzMD9SmYaCO7uLcfVFU8b7CrGYsTdxkt1hLMqyIomb0RAUJm/JX5txJ0UOqBxycRmwA1gHT47iGGvgOk8UnVqgW4BQMPfWqwuYRvbzyeRVQJOPwuoK3UxGac2BS9VbejR0ZMsg9z9YI5/n01NjgMTMOGDWSVaPmUMs6uA1ajjCN9KMBqT8yJMWwiFqXyshtDQwgOHJQ==
Received: from LV8PR12MB9620.namprd12.prod.outlook.com (2603:10b6:408:2a1::19)
 by MN0PR12MB6293.namprd12.prod.outlook.com (2603:10b6:208:3c2::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 22:48:42 +0000
Received: from LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528]) by LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528%5]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 22:48:42 +0000
Date: Mon, 11 May 2026 19:48:41 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Xu Yilun <yilun.xu@linux.intel.com>
Message-ID: <20260511224841.GA1197107@nvidia.com>
References: <21-v1-b5cab63049c0+191af-dmabuf_map_type_jgg@nvidia.com>
 <c413710b-4c28-4ed8-88ec-aeb8c4482011@amd.com>
 <20260413121628.GE2588311@nvidia.com>
 <f6d38a08-009c-4efe-9dc3-6bcf00ac35f7@amd.com>
 <20260422115306.GI3199414@nvidia.com>
 <fd8065ce-fd0e-4df5-9c80-8e9603657cfe@amd.com>
 <20260422131337.GJ3199414@nvidia.com>
 <e67426b9-4ded-4f6c-8309-7f847adb4540@amd.com>
 <20260422150000.GK3199414@nvidia.com>
 <af7GzASJiASopYiN@yilunxu-OptiPlex-7050>
Content-Disposition: inline
In-Reply-To: <af7GzASJiASopYiN@yilunxu-OptiPlex-7050>
X-ClientProxiedBy: YT4P288CA0064.CANP288.PROD.OUTLOOK.COM
 (2603:10b6:b01:d2::19) To LV8PR12MB9620.namprd12.prod.outlook.com
 (2603:10b6:408:2a1::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR12MB9620:EE_|MN0PR12MB6293:EE_
X-MS-Office365-Filtering-Correlation-Id: a4ec01ac-6ae7-4d6a-ff39-08deafaf7337
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|376014|366016|1800799024|56012099003|22082099003|18002099003|11063799003;
X-Microsoft-Antispam-Message-Info: 
	NkUryylRYpF4AN+g75t4XKt1Xy6npWeHukAEWYC/k3dvztsZEROaQ92UqepYD6q3prOlBKWxC020O0WrMNJVkxde0yFj8jDfl350jF5If4x+3rwY8kjzsFefo23f4HUKXJKKi+Kwo8waftVBW8a5D4xB2gdk/Q3jq+fgedmuUZ6E1xGb4ST7zSPb8hJoDjnNVB+Z2QyGiUt6wUlxzDQyoNLtpEuGmyDwSacMGD5fFcbahJELtMo9ZNFdu+O2PumuDu0FBC2LbVdzQCeBenNRbyxilKELgOsgqpA5uNy9W1UkIx5myh9PSEZU5rNx39R2oi+uxxueTM7ovseKQxsRWpEGhvU3K16Q6lqZ7HZbml423T2qtKEyOPCdzeM8KD+FDLMeJpucm2O0QIWxiTOXkqK98w4R4xIMf6MTVznfJD+t5SvgfitI8ZU4oHEL9+Xj76TiscDYuq2zHcthv5SVm12KB2BzT17kPWYuyNNLmACugj+RjAy4pTd+7iugc3+WAYuL1E8nYTK++J+fHlnAs3eE75pgRJoWpqDgr89Mk03+kZAhIPxMf27EUhpXSYXgB82YenFSPScjt81i5J31fWVfJIO1uyHLjI9vYehY/KdfNervAJz9oRaPHpyKI0FT4aXCS3V2uT7352y8CBzLaYfiMhzNV2sZNxeViLaArRsP7uwPZTROcNaGz3NYCtT9
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV8PR12MB9620.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024)(56012099003)(22082099003)(18002099003)(11063799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?dVwmFDil+D5xpY6yzP45s/3HQSz5CkfDIBsAXpt1GE/5LyrmJDXE+J+1JME4?=
 =?us-ascii?Q?IU4ynkIYH4j/+XGWdxXKmDVWuJpndn/ZX3popVLdouu6G+JVFZdV5oviI4cv?=
 =?us-ascii?Q?diHmefEzIj7H3YqeBcV6hXztq8/5GTbcyN7tGQteB79f934PbcZrQz1CycZG?=
 =?us-ascii?Q?Yd484vRtiSyRO7KdlsvoLe7np73e/x+zr3LAcDlOp2HDmL7FqTrkzRhxfRVA?=
 =?us-ascii?Q?KoVVM58FNtPR++pVE5Zhba+w6tVZinZN9llf/zGl5pPMg8at1VSk2RXwQrnb?=
 =?us-ascii?Q?c1RPiKCCasZ3T6CKRq/YRq6BWX1BK63VK9eJFk3yGfhBV2x8tocLP5PnuS7+?=
 =?us-ascii?Q?TLVV8JpB7GCgcsKGx8JIBW5PYrmOhHMrWMlE8TwPHfuzX3+v3ECq7+LQOMLL?=
 =?us-ascii?Q?VR2BezLHCzxyaTbKq8gZPoDj8W8YsP2SX2kOQoiBWaf+r6HsOn+tUCLy6ApN?=
 =?us-ascii?Q?JkYhUZ0RKJfuqF/k1c2PezlFyUjbEzW4ZvVqlg4Z8dXKJ2S1+oewqe5gXDk+?=
 =?us-ascii?Q?VT3BREcHgmuvuLjHMfkVGR6n/m9AN4LV0/cKvZMTmQ9RS5ikCH76FMFxi/az?=
 =?us-ascii?Q?q/ylPUrk5BymCBvaicOu+SO2zh5v4EIrB+Q3PzQaGF/Kxk7elnTfRkJxIywx?=
 =?us-ascii?Q?GZazpuPrQpuZm8R2JwgZ2izCnd7AerMCVZgMgkUTcoDvQ8Ev3q4f5FBMMdq7?=
 =?us-ascii?Q?/1WKwszUeOLmdDoZiQdCe2v5XqlZzNeFF0Q4VxUtPzBCNV/8aTeHFyW9YBX0?=
 =?us-ascii?Q?/2VIxFUtCEhI/5MFLmtuME/BAXI3ZtFLNDkCTcIx0aTNe65yCoxQow/atRVz?=
 =?us-ascii?Q?e1HD8PvlDwPO7y88yT4+OYm372zehzcgtvVPQX+9hHr+7G4aR6LoursjvdeC?=
 =?us-ascii?Q?HsZDSP51NVZH8RQq7nIO1DZQpsM3QqrQwz2nIn6RmChCxPuMOWGr9lNyTjXP?=
 =?us-ascii?Q?aQ6HjZ68pBkRmPkbwb+bz1A2ckUh+GrnGhlzX/99RQki3wiPWJl5rwlnYCJY?=
 =?us-ascii?Q?dZmuaa9O0Bm+ZeVdkkluAacDiXN0bSkNhjz5HaoFy/wZb8cWo4YMx9LODaNq?=
 =?us-ascii?Q?Xi4l/ig0u+zQP9KZYATi3d9k8kdbHIk4OlNpQv6RqcHNCHpjHb+241/dc03l?=
 =?us-ascii?Q?2PLUqtu7y/Tq2StBzvY0s36WG6iVZn42RH5/XQ58AkkDxnM1+//FR38u6505?=
 =?us-ascii?Q?EqeMO4avtwCxsi0VAzCr/1KvKn2GTxPL/mkddPo13z6+7LsORAAwBcmL5+1n?=
 =?us-ascii?Q?xI/GbHzQz9Os/pXc3KtlWPdrODdf+MK0TWib2po7NStlpMsGzHUC18ERCQWX?=
 =?us-ascii?Q?/bilgOahvt9AfzeTWI8AWi7f6sM17fDRtrTLZKJz7wYSFrTFF9DjTvm5LZFf?=
 =?us-ascii?Q?ddRFrOjbNVtvusEHFTJhzYNQLo2IAqPSrS6kTWU+l58/hcK7oweSBLcj1b4M?=
 =?us-ascii?Q?Gn5YXnoO7Dm1G0Xc5Ip7bdmFRXB4kHHx6VRTFSLt9uq79EM6vWTsrZu2TUqn?=
 =?us-ascii?Q?tkRjz6CoFs+hwb+/RfRDjD1Qs5NKT8jae0m1/oJHyYh1vWd640itwXzCwsDm?=
 =?us-ascii?Q?iTmfp5GktfFv3gOLBh3/lPSPZqFd2ief8U/BilawA5HE5LnpEmSlvGxEnaMf?=
 =?us-ascii?Q?P0srVi3VrqjOML2Zf7VHIVNdd2EimGJIwjaeClSvp47jbykGBWKzDlOicIKh?=
 =?us-ascii?Q?CDKwhIWqB/5sW77Sar+NWL1vJi7W4wYeCxWeQ2B914o0Nfl2?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4ec01ac-6ae7-4d6a-ff39-08deafaf7337
X-MS-Exchange-CrossTenant-AuthSource: LV8PR12MB9620.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 22:48:42.2994
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2Q5zmiKIXDC058cnpcfzI8Bisrye2BTbX9tIEhtjXqESrfYZJ7J1JueOaKm5zceB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6293
X-Spamd-Bar: ----
Message-ID-Hash: 43GD6QJZY6S4AEGJDF5Q3PRMQ5NEWDZY
X-Message-ID-Hash: 43GD6QJZY6S4AEGJDF5Q3PRMQ5NEWDZY
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, iommu@lists.linux.dev, Kevin Tian <kevin.tian@intel.com>, Leon Romanovsky <leonro@nvidia.com>, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Matthew Brost <matthew.brost@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas Hellstrom <thomas.hellstrom@linux.intel.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 21/26] dma-buf: Add the Physical Address List DMA mapping type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/43GD6QJZY6S4AEGJDF5Q3PRMQ5NEWDZY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 6D920517147
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jgg@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.977];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Action: no action

On Sat, May 09, 2026 at 01:31:56PM +0800, Xu Yilun wrote:
> > Would you be open to an in-between? The exporter and importer both
> > have information that should not leak into each other's drivers. 
> > 
> > What if the dmabuf mapping type core code was the only thing that had
> > access to *BOTH*? The exporter provides the address data, the importer
> > provides the iommu_domain. The core code, and only the core code, has
> > both and does the required operation?
> 
> I think that may not work for KVM. On IOMMU side, IOMMUFD acts as the
> address space (iova) manager and dma_api/IOMMU driver acts as the
> actual page table mapper. But for KVM, it is both. KVM doesn't allow
> another component to provide an unknown address space (GPA space) and
> say "map it", so doesn't expose to other components about "KVM domain".
> 
> Even if we expose "KVM domain", KVM still acts as the importer and the
> mapper, is it wierd to say we trust KVM-the-mapper, but don't trust
> KVM-the-as-manager?
> 
> Is it also wierd that we trust IOMMU-the-mapper, but don't trust
> IOMMUFD-the-as-manager? There are more IOMMU drivers than IOMMUFD...

Yeah, it doesn't work well for kvm, and yes it is really weird and
worse that phys in every way..

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
