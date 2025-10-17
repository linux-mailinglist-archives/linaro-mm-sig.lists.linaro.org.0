Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F12BE8B2B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Oct 2025 15:02:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CCC5B45602
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Oct 2025 13:02:58 +0000 (UTC)
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010033.outbound.protection.outlook.com [52.101.56.33])
	by lists.linaro.org (Postfix) with ESMTPS id 6BCED4431C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Oct 2025 13:02:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=Ohjt06Fa;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 52.101.56.33 as permitted sender) smtp.mailfrom=jgg@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rqxt2sBjLSz3F2gVFGjE89KB4f3RF4z6dg0fv7uHRgVaocrSh2FkbEcdcsp0rMVBFH3CE+1hJHX7b/qv5cNJSjZrdWKltiOqA6Kn0DvSxOnXntbpnKDyAzkn2sYx21BCA5x/AYAaqulVR+fBzt0VTqb/1/cE7u9VoumbCcO+1nNVfGF1fdXWF7FOZF4Z23nnkbQw9bPVs7o2OOQkZ3fIfyScRpGir/Tp6jHACgcop0VbpCbcl9L32UXheiCeuJs9Ouap8SN5mMbxY9wYmcqw6QW3NryTet3zl66NjQuNjoPN/6KHuzqAcHcKVT0cIwxZ14tUsT33HH5PxmX0/iLYLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Ktu16vhpUQBiWdzHr20Owj43/LJm4WTNNvSLRjexYo=;
 b=o6Wz7p4ah+F0eSLUq7imB7o8hdJ3ou5Y3SsUv5O8bUImpjZgRNTl+gI2UPflJx8ETIh/9C2Fq3hRJAxtXPDfADw72qEW4zzr115FpQWuTLpNDrJR4PHP0ijwnHk09kpey4QizMyEbNV6ns9cfYDsFle/q4OUAs3TenEzSN6WbEMKI/r4t8H2gj0PnVAGfjvaUPtAWGT0DHQ6a55u6mMCi5zkkc2IPlKbMhUQinX0v3CWFtT2ZkpptqQu3erPFPCgmqGyxv9e3d7IXATmFFsQB94Lp19KuYkoMjvU8/08MSHbcMmqHNucSDR7Qbg4myZsPjdKXre0lY0XPJA/O+xCLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Ktu16vhpUQBiWdzHr20Owj43/LJm4WTNNvSLRjexYo=;
 b=Ohjt06FaVK7aL7YcdnPFHTiu47BbGAUfBOI5vKZFkLPOmao2avPVIqGvx0vYliB1vD0/5Ji9S920wp8ApffL/SvwLJdv4uGa+MfX67Sk8HhddET+Lfu6oeuM6S2eu97s1YfqghdqXolVB1JgWtTdcKe2zYp8Qb1xEozSGbKtTli9Jl6c0lR/sXxZtS7dc+nj+9jggQ4jCr0pDY0Ov+5B4gtNryQSLjcF4OVw167i1dO/PoTGSXbUx2sDKWajTDApQ9QYDrxC2sYnlVQvaFq0kE+UWJ5uvzzSzSap0/RYlls/6m7H1tItV9iloabkIemD61y+GLYVMCldq4n5SF3+TA==
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by SA1PR12MB7248.namprd12.prod.outlook.com (2603:10b6:806:2be::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.12; Fri, 17 Oct
 2025 13:02:52 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9228.010; Fri, 17 Oct 2025
 13:02:51 +0000
Date: Fri, 17 Oct 2025 10:02:49 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20251017130249.GA309181@nvidia.com>
References: <cover.1760368250.git.leon@kernel.org>
 <72ecaa13864ca346797e342d23a7929562788148.1760368250.git.leon@kernel.org>
Content-Disposition: inline
In-Reply-To: <72ecaa13864ca346797e342d23a7929562788148.1760368250.git.leon@kernel.org>
X-ClientProxiedBy: DM6PR02CA0118.namprd02.prod.outlook.com
 (2603:10b6:5:1b4::20) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|SA1PR12MB7248:EE_
X-MS-Office365-Filtering-Correlation-Id: 7888e815-4cfd-43e2-f2b3-08de0d7d7a2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?e3qzdWRJS3F+ga0gPQ6IO+zbYNZyLOGK41lUFj1lh8lr0l9icWHvj4OxNE9E?=
 =?us-ascii?Q?J+eyhi2H7b7Rl5uqwWiB/YvkDvXtVP2vDFknvfCeO6UUqEXi3esXVXZ5mCp6?=
 =?us-ascii?Q?Jba3EL90Hhjkkb0qQcIpi/aKLh2yY7ypymblQO9U20nLoGTBzhkTMbUTYZg1?=
 =?us-ascii?Q?kxyZA2ahYdTvdAkgykNsK/qmDzEs1joSoDMGVgubpla6vRGwu2qBntasFAVH?=
 =?us-ascii?Q?/lfy9bt7GV9H/868+HZmDmAKP8xbvck3DILvUlh+NxHE6+41e9H/BoUMu5ep?=
 =?us-ascii?Q?tvwdVdsm6lkDMa6T2xPeDgW4GoXSrj+oCd8j4HsI9X4kgxxoDIm89Y3iERyq?=
 =?us-ascii?Q?f6y396Fp0D4dkAQMh4w2x+IfaH3PVoGxtSAZ9nrGP9/FijBjbj+1oYYAayk/?=
 =?us-ascii?Q?scefXx6kcP+WjnYzaHDOVIbXn17E/Zac8tG2bh2UoQQYrBrENa9MWtRZ78Kl?=
 =?us-ascii?Q?AEwTeUU2BnwmXrx0+GXJVOujRuwtXKm81fSHg11vgL2wU5XwX6Qfhh5A/P3c?=
 =?us-ascii?Q?Z7Dg1qVRHJQCT+r9JRx3NplM90uJGZNWp+AaRRzWr0JqqOmlZdlHkH8YhKxp?=
 =?us-ascii?Q?DxvtwqBpj0sWluMyJWEfPMkp6jDfTsHWCqhP20YDEglvhtGp9Oex+UVJNGKW?=
 =?us-ascii?Q?Gydy2wTW54R8J6oDvlZ5clMlYHqGgcgf2OnaOuzUZysn3A6LcAi4zEghI2F3?=
 =?us-ascii?Q?CrRo+bE2bfM8hjOUPH4pNb2buCGDxt2pFbSyzJGChpyXM3dl9oExGODwSfm9?=
 =?us-ascii?Q?AVjg+QQqdGgv5hFU3vathonjAG1vPk5H0t42sDFzJdaEiAXPiIPE6qBpy9r9?=
 =?us-ascii?Q?OO8X47G8dJlP713ZeLZHF97BxeNJJcaB4N7NLYiK4hxy9aUwBzDOwaACAhgZ?=
 =?us-ascii?Q?kUyrLAGGO1WpK5UBWi6AFv+vixSEvbQLc/UJwUnxrHEb6joEKdzQwAoi7+R/?=
 =?us-ascii?Q?3GEpIb0pSG9+vKHuxJdx6woqGS7V0u+4puotgLZ5V042A4YsDI4DwerioG9X?=
 =?us-ascii?Q?PnSPqPpFln65GcHkwK0moMAzSBTiHeq8d56JWc6HZBBpT3TB1SfHneYepBIE?=
 =?us-ascii?Q?sA5ZBOq2c86UdFWeDHPEjSc4C354fsncdIPurC8tJe0mFeU8TGdtV7jnBFyf?=
 =?us-ascii?Q?UAF+V2AuHToxp5TARKUxjazWJAxoqFGw27jUOuAY50yYfeGowZO7s5lMNzpu?=
 =?us-ascii?Q?y90m7ihb1XLiwEi6D8M3utH5YaAvVmTJ3MrVoDOq/g+s+okjO4HFV2QzxJgr?=
 =?us-ascii?Q?tlZnlLs4gIwRXbIC2UHPQFgM8bpFG7EH4cp2JDQGgU4RiKWjhwMUKtZlXbwo?=
 =?us-ascii?Q?CVB4ULyU0ui2a+GDlZHiGSHrXvhq6huIC/EQpzomCvK+3uU0Aru68yfC8Kxk?=
 =?us-ascii?Q?iFAhXMkjXix31h5fu8irZBsyth3QtX9WwpjNvSoJhE2a/1LyZ71QPZkDK4p5?=
 =?us-ascii?Q?m2z9g/EUr9xF+5Jq3nT86konexgo9yZn?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3613.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?sNlVMXDhZ9rB87a8A3wL79gdfhABVoef32BvmEOaedj4HJhVUxqF8PDOs4xo?=
 =?us-ascii?Q?qoAGZQ6MU7oQSIczMqIyQ6xLNcItSgo4R8cLYWHTZhZWwdj08WSuNiLZHpdB?=
 =?us-ascii?Q?QCrXPhEoSbpxW7QC1eYUd6Qqv+v2UUgMyZFg/38Z+q4lpgF9hg2FrUeysi9j?=
 =?us-ascii?Q?ofYAsHLFLH3vKgrX4TVPwznw5TGKbVUVE7kP3HwjglhV/9XkjOjFWkiE8izk?=
 =?us-ascii?Q?mrgWjVhakv/miVJhc/0ec/HbyE6tk0ARAGv7R2FQYKaOF7gkBuNKSjw5C2sL?=
 =?us-ascii?Q?yu5O1oG/amdDbNMrZnDlVeN/C+Bjs/2QevmnujOksxyBzRnCA6A6GWhmpm5r?=
 =?us-ascii?Q?uWD4dzfhGj0pZWJuBZ6FqE+Dp8c/z1OhsYpePdNX0J2HKsDzB2DDHh5cUuGq?=
 =?us-ascii?Q?4iQyH/BVy1Co3aac290x/Oyyw2pyY2j+uFcYx9z2Pg1T8wIpfyvlaREZrtqk?=
 =?us-ascii?Q?dCDDw5OdYPkvEP3wz+hGygARnHm1uiZISiWs9w2g7lbMyx9H/4Q9xSCp6MJA?=
 =?us-ascii?Q?e9AvX/fGoSIz3xSw5ouiycRc8SS49qs2b2A6Sjv6A0RorlDSt6KUFwWf5vXj?=
 =?us-ascii?Q?LoCBLL5+IEWDATGlrhnRFpyC8OQwfu/NqW6y69gva3Dr6GtCahXa/O0IOJmT?=
 =?us-ascii?Q?U8P5mun+KMxV3IxYi5l0BPSnWbrPXZhkDVCSqvtDXO1lMEc6fJGT/uvh608o?=
 =?us-ascii?Q?Dqxn78o6NAYrFJQF+L72NHrAnLbWkX71lk2s3bbUb+/gKM6fhS8HAQERUTnV?=
 =?us-ascii?Q?BWeQd1yQzvdP8t3gU+3R0i6UYHPwmsC4Uwq7R5BTiLeaXmcanYjy45FhQ7D8?=
 =?us-ascii?Q?Glqklc3cgZXkCjOZXIcrzDdU+EwdeAMpwtqKstwXP/Z2yIr3LNh0xBwPnSOM?=
 =?us-ascii?Q?5q+mRwz03/onCtCO8KTibQ9rDMBD6jo36h4pcShk4jZvrSAbT5YarCyn0h3A?=
 =?us-ascii?Q?9LyCccDoNfW6OVzFyU66wGsScQDqbl+/WG2ODo5atQ5JRh2RlQ1FJ6xG0jnn?=
 =?us-ascii?Q?lvKlw4juHWsfuh0kLA5QDcIpPjlSbr/pzp21kJrDzrP9Ae6FZ1Acwtw8fgmq?=
 =?us-ascii?Q?DO6rCHgQWR9VAmN+ZgQDOythfO5euzazb5NcSvs4OdaowxE8i4c7GZAddjLe?=
 =?us-ascii?Q?Blrl3aEs1QOBQqh+YMB2HUW+ZvtXczQzXDTJLVbXn2cBFg+L2OfbyMurkUZw?=
 =?us-ascii?Q?PNXnauWC6kL4ZFllIaGRpSwZ/GYVfm9Zp+gMT1Eh9zGBZgyxk/ftFpLWxMyc?=
 =?us-ascii?Q?FOUt39+ImbmtMCqaaLKkWZk/TBgcmhEG6KC5jT6+3hzZVNA51NeC4eJNk0uh?=
 =?us-ascii?Q?gIGqaob+BZo0sm+jVsv1LaC7khudtOfyMu/b/zPFY/fZDSJQEBDLkGLdapd0?=
 =?us-ascii?Q?lKmNGNP+3rhzzSzPHVbDwMWT6tcXzxUDXuuxnJFTbmh3OfQpN3lb5wIrMA7Q?=
 =?us-ascii?Q?f+qEF1ADt/mWFGp6QLyJC6oJNpnkHwcN3pq8MHBwo02iqEniKqAVFxS1kSI3?=
 =?us-ascii?Q?2+g8S8Dbch6dj+DX4x/49OEd8x6Td3scDBhrFH9Gf4CJg5NFe58l/fJ1RjKU?=
 =?us-ascii?Q?XhyqUqlMl8wUTzos3f52OibsxcHMjr6VG6wp/NyK?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7888e815-4cfd-43e2-f2b3-08de0d7d7a2a
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2025 13:02:51.3411
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UfGgdCT5ntYNQ/NKPRSCMwpRZsTU6JT2RWtHqdk4ObpxKM94NamxtXpXUwAWvTs6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB7248
X-Rspamd-Queue-Id: 6BCED4431C
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.56.33:from];
	RCPT_COUNT_TWELVE(0.00)[23];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: VGQTZHZLCOUQY46GFA3FOOPXWSUJZ25X
X-Message-ID-Hash: VGQTZHZLCOUQY46GFA3FOOPXWSUJZ25X
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex.williamson@redhat.com>, Leon Romanovsky <leonro@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 9/9] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VGQTZHZLCOUQY46GFA3FOOPXWSUJZ25X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Oct 13, 2025 at 06:26:11PM +0300, Leon Romanovsky wrote:
> +static void dma_ranges_to_p2p_phys(struct vfio_pci_dma_buf *priv,
> +				   struct vfio_device_feature_dma_buf *dma_buf,
> +				   struct vfio_region_dma_range *dma_ranges,
> +				   struct p2pdma_provider *provider)
> +{
> +	struct pci_dev *pdev = priv->vdev->pdev;
> +	phys_addr_t pci_start;
> +	u32 i;
> +
> +	pci_start = pci_resource_start(pdev, dma_buf->region_index);
> +	for (i = 0; i < dma_buf->nr_ranges; i++) {
> +		priv->phys_vec[i].len = dma_ranges[i].length;
> +		priv->phys_vec[i].paddr = pci_start + dma_ranges[i].offset;
> +		priv->size += priv->phys_vec[i].len;
> +	}

This is missing validation, the userspace can pass in any
length/offset but the resource is of limited size. Like this:

static int dma_ranges_to_p2p_phys(struct vfio_pci_dma_buf *priv,
				  struct vfio_device_feature_dma_buf *dma_buf,
				  struct vfio_region_dma_range *dma_ranges,
				  struct p2pdma_provider *provider)
{
	struct pci_dev *pdev = priv->vdev->pdev;
	phys_addr_t len = pci_resource_len(pdev, dma_buf->region_index);
	phys_addr_t pci_start;
	phys_addr_t pci_last;
	u32 i;

	if (!len)
		return -EINVAL;
	pci_start = pci_resource_start(pdev, dma_buf->region_index);
	pci_last = pci_start + len - 1;
	for (i = 0; i < dma_buf->nr_ranges; i++) {
		phys_addr_t last;

		if (!dma_ranges[i].length)
			return -EINVAL;

		if (check_add_overflow(pci_start, dma_ranges[i].offset,
				       &priv->phys_vec[i].paddr) ||
		    check_add_overflow(priv->phys_vec[i].paddr,
				       dma_ranges[i].length - 1, &last))
			return -EOVERFLOW;
		if (last > pci_last)
			return -EINVAL;

		priv->phys_vec[i].len = dma_ranges[i].length;
		priv->size += priv->phys_vec[i].len;
	}
	priv->nr_ranges = dma_buf->nr_ranges;
	priv->provider = provider;
	return 0;
}

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
