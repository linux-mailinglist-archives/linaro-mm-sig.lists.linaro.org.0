Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OvTB2e162kJQgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 20:24:39 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDB5462631
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 20:24:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6DB1640511
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 18:24:37 +0000 (UTC)
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012035.outbound.protection.outlook.com [52.101.53.35])
	by lists.linaro.org (Postfix) with ESMTPS id E7E824047B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 18:24:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=m9C5DOr3;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 52.101.53.35 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LqpLfBBA0T9cTdAHGxyeH2oA04kQUDG0fy5/Fwx45JXpHUU72fecTAF+OYEWR3Xe/9I2RrFT9OQa/ILTC5ddrD1rUmyLfYP+p+3Q5N6clHk9qsEP0ifk8sNHUL5BG8KIX8yVrDMGjd73xFZYwm0t0ooT0u1Ike4Nnw8ZrUXg/3eMBtv8j2B2cqL+0Au9gWAXmCvhLAg+m/S8bJnJpZwNSveGC26vC9g4TiqaGrmfrftNRlOWBYl2FaZHn0sc189TPWNqZFGqOoMtE7bxR59ACASMJY2IQLwGWdfEwJvvNyZpKgBwPSBxHjbcmW36JMbqjyWKZihbKCSaSs6yrIRh9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ue7CWObGoOKcMVhLsqB5ihqxfWXufGlUXxhpqsj8bps=;
 b=rZi4gSZUA2tzmyJUd6n+tw7AphCzh6AN7MyBMFGB7hWoUqkbz3dvQcnRX4VXhXEbqDxrr0MANaSEg5pPOJQDd0Nf71Ai+IcUoNm00zerwIUfsEtC+uSzkUVG1/Dqxlq16grgm27kawHQtY4lMJxIR52Fp/SGSp89due5wRnXW+eqfeGWdRP4sbTthvAdAoaKgqsyoRt2FLk8Cu5aw7FGZsnI9zkTaHigw5gVbsR1++9fFNGub3A9c1hE24Z2I2b9GXWkobR7lVxAILLcicwazoEbLzTu00WJ4Y64Sl+LqD+Bap7WqvEjZrVMx8zGv24YOiWEE2UxMvGlkXY3/u1pZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ue7CWObGoOKcMVhLsqB5ihqxfWXufGlUXxhpqsj8bps=;
 b=m9C5DOr31POMYjC+Gsu/HKahwFd684hXOWGm6/JT47V3ha02QGe0mqzwTPG7WDLIYb6szwKSA0eHVLJ1h84E4RIHYFXI708c7ssFkMVHEfsUZ9TGQ2RIOtnJ56JlvKnDJG7k3Ztlb7RaOXiksdHem2duPNEVtMX9muE/4a/+Lrdnfyy3Ajn1ucexXxRecE5vfvPvly+3BqBooI2u5BPlFVxN/sVyk10x8UaTetqj6gkYPPYF4MruD2VDOXDWSUn6V1W6tecVE32HDIxUJ7wB5BXASoDBXpfuyy36Ib62IBt9Ps9rlmw9A3rjUPAn5EB9TDUYLndVJMaMsgPHOp/ydg==
Received: from LV8PR12MB9620.namprd12.prod.outlook.com (2603:10b6:408:2a1::19)
 by DS7PR12MB8321.namprd12.prod.outlook.com (2603:10b6:8:ec::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.22; Fri, 24 Apr
 2026 18:24:28 +0000
Received: from LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528]) by LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528%5]) with mapi id 15.20.9846.019; Fri, 24 Apr 2026
 18:24:28 +0000
Date: Fri, 24 Apr 2026 15:24:26 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Matt Evans <mattev@meta.com>
Message-ID: <20260424182426.GG3444440@nvidia.com>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-4-mattev@meta.com>
Content-Disposition: inline
In-Reply-To: <20260416131815.2729131-4-mattev@meta.com>
X-ClientProxiedBy: BLAPR03CA0157.namprd03.prod.outlook.com
 (2603:10b6:208:32f::27) To LV8PR12MB9620.namprd12.prod.outlook.com
 (2603:10b6:408:2a1::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR12MB9620:EE_|DS7PR12MB8321:EE_
X-MS-Office365-Filtering-Correlation-Id: a5b4f0fd-2136-4e3c-6648-08dea22eb8bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|7416014|376014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	gaE4VQqeDbeyB77jC+E7zHkG3ZlwNMV3gE6k1fzddfaKdKNT1DdCN/a+U2RXpjEvKbBt+sMwIlUHIsFUJPCSTrrOTjKMK5NWWiKMdS8xZ9S81IyFP6+encW+zCCPqFS91mpamF/ymPNz9ra6eHLqYMH6kdQhzyPQJFFIados2Lb/oVD5LPbYGgOGFp6HLyKvh9eMtv5B++BpW3oGX8xO9xh69TkpQNJCaa9u3YLDPY6a+qIeDEBEGR/pATwipGf8WLVCHNQ6tbmfMBs6fLKTUEhPcWHJTtGepyCkn8Rp0MayqRTAQrZex9vixqhaOoCA6tkmxxvD4Uuyrz5rFIMz9Q0i1nFKMKBWtTIVXZKF1FI0Jxy9ayJSlBQMkdeoU8bzs0vqHtF64EYLm/qd4rHV7bV9iUSdzL+aerOW4ofuoi/bqBSaRBnV3L0q1+RoC/eAWFbn45Q8X7PpQ7r3/1Syg2I0KaTT1JIf0jDBS6F+hL7rLzpuiFNqKKRl6CmUgbWoeYr7S7xuzRH38eLau0HXgj6sVHCUh1hayafLwE1cc3eCqqdACdFz6GizjPdAtHdlPQRnQorKVBvfakdy9+a1FczBQPGsqCmLeERG4ufv5SYtKMpkMhIwTfeXuMNMq3ZugafNisIX/8cFVfmu7HeNyNdgPe8N41J8YERKOswswhukxB4jR6qriCCUCOQ8Si9EzMRihpmBPlzBMrkiNaJUIMVfxns+It7//HWS0XlvvgA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV8PR12MB9620.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?C5OQSmVruXyiL5c5N3C2EbKUN+pMNq5Ob9f4aSn2LqZEW+U+zQ6CT0MCCb+Y?=
 =?us-ascii?Q?3yEKIsl8bBSYWKrzF06dRpk6foB+mH3Ca3O5lEwFRGWifWbTGHisl84cq2Ia?=
 =?us-ascii?Q?dnI0ygKzfcjh1MYOdjCahAzN1Uyof0WbTee+WmUChITKlAz6hFQ457vvRmnM?=
 =?us-ascii?Q?CB5oLAQizb2J7dLIx9ysM8CTVIme+09ZFi6TX54I9qv/aCzyJAWggLfiTO8+?=
 =?us-ascii?Q?UdDAg3bH4RpE7mgIrMOOO6G879rv7A2flpR0i3MTW66O9f+LYZ8UdsNtE+in?=
 =?us-ascii?Q?2teZJ8HLvkHnkbeTMzQG2J5ceiMIf2m6LaJSZOoTVV23W2r7xhvegmLfL7eK?=
 =?us-ascii?Q?e+S2FlcJP4onjGCI7TBJhhTx5V4M0MReWgj0npjdux3tgdRMvVtHoUzfVyBO?=
 =?us-ascii?Q?RiBMbmgifhmdLRUEDVFWr/ONzESpH0fzARoJf2D3fTXhn3Wpfxq/iiOebNbE?=
 =?us-ascii?Q?aBGOOE8IQm6uqtPHxLn219fjqJ8f823FkjW6U2LXA6CWZgg+MFFW3yKLzvcp?=
 =?us-ascii?Q?ropeYp3SxuiaG2RgSFI3g3jfoiClPw/faHdZGNiuLAI40i2XOE6xP8/P3Zsq?=
 =?us-ascii?Q?CJK9BE13fxJoRzreC01xgk7W4fkBxSbYAM2V78I8AHdtlGkY2aaj7fNVdsIj?=
 =?us-ascii?Q?vzYX11mXRVWzF0wT1zT22btDDj/FIZ6wem9df1E3oe7pDggkJ6bdGXyK2Xv1?=
 =?us-ascii?Q?6Q8i64tc22KHSYf8ZjeflgkUtNTzdcuLfV5mezXu/yF+YkHSveOFXwi5NCla?=
 =?us-ascii?Q?bqyXRkUKY89D9JWY+K0m/OULe9Lg0lGHheRPhnbCm7mKxzbrC8B0RBquaupP?=
 =?us-ascii?Q?lnA8JCLXHMs0DfgWfx1tJ4iQXGFtfJQws9MiaWxY5EfSJqJ7uZ4uuOKNDR0U?=
 =?us-ascii?Q?ue5hkqJI7wkaVoE8/nRkkt2MFUrLqQp3hEFw6YfmF1lsmJUwNa4dnUy7jsGE?=
 =?us-ascii?Q?RJ5c7407PCWHZiUSGMfyDt5NsfK+JlnS3vYz6aU8iY8yY+Nnjzaxfj1x8MDU?=
 =?us-ascii?Q?2g5P9xRaqvzD58W9FzFfltBX64jf6+bUkyJK27dXggYsy6GkysEpO8Iqjz9d?=
 =?us-ascii?Q?xPUhO4pkNrbv5zKtJ9f4yeN/eVtJ7ARA7R8j7iKEyD4SrFWaDIWLSz6DpXyq?=
 =?us-ascii?Q?ws/INZVJhWFbQrH75HDgeJkeZ5I2vl+CH/TtbNsRrvqiYM1hzuNHeih9SKDN?=
 =?us-ascii?Q?5n+F4T7HYfe3KByLpRzaCEEbktsGOU/KWzi7LatlPmPInA8DzECxMHsTfyg4?=
 =?us-ascii?Q?+jMyySbkCcxNjYliaFX5crk/rsilJo4tlTVy0lj3MFwP2Uv9QePqRO/QzVUB?=
 =?us-ascii?Q?rxbkGTRCLxluceHrIMV9IheTnIN9H96sKvdLIMssqg7t9ykDhmd6fbG6adQm?=
 =?us-ascii?Q?51uvJI3DKqwiY2lA6DaMMiyKI8KvOEbAEJth5d5R9K4q8BRku9HYsL3AcCMM?=
 =?us-ascii?Q?6o94q9ONnHfdTRSCnn6coFofB6Vfz5/iuvp29uDi9ywYTOqrnW8X9xVb3Z3o?=
 =?us-ascii?Q?ccUCdTOrSzBXX0neFaxqDuVX379fM8oGwNNL0Ya9xypiHeVorzMpCE67TDb1?=
 =?us-ascii?Q?W7du0jvxmSsQtu9oWMOahqymx7I5fvcQ3dbw5nOGum1wdljfmq0BBYOWWkmv?=
 =?us-ascii?Q?lgAXtfmDASxg6D3Ef94DE/bRimm7IzuG+arvOW8Pfcvy35HDXmteRv1mlaqq?=
 =?us-ascii?Q?z8Nxy1ZVJ1LbZvgycfvvCkyEaGsuPItHgIlxC/qEZ00A8dxO?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5b4f0fd-2136-4e3c-6648-08dea22eb8bf
X-MS-Exchange-CrossTenant-AuthSource: LV8PR12MB9620.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2026 18:24:28.7017
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fy5eIBoxSsbLV3inmdlqwh1xdfdmnzxtz1FbNEVOoGm6vSpnLrpo++5VulVHCWxw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB8321
X-Spamd-Bar: ------
Message-ID-Hash: WUMCCAHEFIKLP4OHSW2ERN762X5XORG2
X-Message-ID-Hash: WUMCCAHEFIKLP4OHSW2ERN762X5XORG2
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Alex Mastro <amastro@fb.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] vfio/pci: Add a helper to create a DMABUF for a BAR-map VMA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WUMCCAHEFIKLP4OHSW2ERN762X5XORG2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: ACDB5462631
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jgg@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:-]

On Thu, Apr 16, 2026 at 06:17:46AM -0700, Matt Evans wrote:
> +int vfio_pci_core_mmap_prep_dmabuf(struct vfio_pci_core_device *vdev,
> +				   struct vm_area_struct *vma,
> +				   u64 phys_start, u64 req_len,
> +				   unsigned int res_index)
> +{
> +	struct vfio_pci_dma_buf *priv;
> +	const unsigned int nr_ranges = 1;
> +	int ret;
> +
> +	priv = kzalloc_obj(*priv);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	priv->phys_vec = kzalloc_obj(*priv->phys_vec);
> +	if (!priv->phys_vec) {
> +		ret = -ENOMEM;
> +		goto err_free_priv;
> +	}
> +
> +	/*
> +	 * The mmap() request's vma->vm_offs might be non-zero, but
> +	 * the DMABUF is created from _offset zero_ of the BAR.  The
> +	 * portion between zero and the vm_offs is inaccessible
> +	 * through this VMA, but this approach keeps the
> +	 * /proc/<pid>/maps offset somewhat consistent with the
> +	 * pre-DMABUF code.  Size includes the offset portion.

I'm not sure I understand this comment?

For the old path vm_pgoff for byte 0 of the bar starts at some large
offset

For the new path vm_pgoff for byte 0 of the first range starts at 0

> +	 * This differs from an mmap() of an explicitly-exported
> +	 * DMABUF which is an arbitrary slice of the BAR, would be
> +	 * created with the desired offset+size, and would usually be
> +	 * mmap()ed with pgoff = 0.
> +	 *
> +	 * Both are equivalent and vfio_pci_dma_buf_find_pfn() finds
> +	 * the same PFNs.
> +	 */
> +	priv->vdev = vdev;
> +	priv->nr_ranges = nr_ranges;
> +	priv->size = (vma->vm_pgoff << PAGE_SHIFT) + req_len;

And why is size being calculated from pgoff ?

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
