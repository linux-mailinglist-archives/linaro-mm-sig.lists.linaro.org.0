Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AG9OJMgF+mkEIgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 05 May 2026 16:59:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BC54CFD5A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 05 May 2026 16:59:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E9271409C0
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2026 14:59:18 +0000 (UTC)
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010013.outbound.protection.outlook.com [40.93.198.13])
	by lists.linaro.org (Postfix) with ESMTPS id BE5373F75A
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2026 14:59:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=FpV1SlrS;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.93.198.13 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=auLRFohXePwnRUTqgfqoj9uAQHytXOKCMT0gmyEDrv1f4+mztojufybb3SswD5HQzvvk2AwFGwGq2fSVBUOtObt94RZ23YKzZe/v4fy7vvBj6Qv4OZlO+syt0yhmhxUZi2M7Ix88BSMXeZsHVX4sQXnORcHumNDxL08LDnKnOgs2zk9megwTmTztGAwH+mbMcK19FHElAo6MvkPO6xfufpzfLquXw3X79FJfsCoKXCI5BU4qjAhYzI9gIAO8X9c/kKGHtf+U3IrVuElyQZsqQMSAsz/XmBqgEG+EhWol+HD6h3d8WVl7Q+InNSAqCKYWKnaK81aODQ9/zp6s/BZU6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8H4qcHbR98Lvxvsl+J8LGw1vDQW8yRmoXONFOPnnLWk=;
 b=j48ac8T5vz2UIlRD/Fj6W4i2HVaA62WM/GPCf74e7zEwpkuC9UJEGfnDoYFR+NCfdIVV9bGQiK3De4Dsy6ZKdQQzvcHB0S5Jyl9gAZycM509ru1YtloQYNE0tCTY2s4VcwNoal0J7XzwJBBlcTM6gPaIu6wAD3zzCEd7aUeymECPRsvJV2bqR3r3JuhrTpkQSLq4teRyICjAVxToqlT9/oK/v9tnraCQkc3yxmZhTmRPX4vMkG4fTF6Cy0mFueLo/2YdGu2OHhHJQKLsL6HFSmJxfgSzJSj31UedG7qAz1XJKFnrftAkQrr0Xja10gikGbP2XtCfHHnq4u86OOcxmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8H4qcHbR98Lvxvsl+J8LGw1vDQW8yRmoXONFOPnnLWk=;
 b=FpV1SlrSExI3u3J2ObvYBaP4dDY6yFBVm55lNBxRZwTXw0sFhoDsutphVS5Djv6kG2/aIvLyjYFigwWZmvu6aOv4Vqtmzz8lrBOlXr84m0zUHVAj2+8NgIdtdd7wU/ZQVHNemPvMfylJNDjNxaD1AMT+tH9hlSlLOAkGPCu1iNuiNhUzLxzDGJKoDHCxoistoublhrdcCFPPL5ufYg19vrpB87EzHRcwHkb+5V6Gty3V5mBvbLxLLC3RLm8g7KF1PYNtBG1gW6Ie+ghKepgtY9zXP86r09+C6ytTmma1ezrX0+AviwBzC1DW433dzXvG1s28bMnf5gLKKh1vrygA4w==
Received: from LV8PR12MB9620.namprd12.prod.outlook.com (2603:10b6:408:2a1::19)
 by IA0PR12MB8254.namprd12.prod.outlook.com (2603:10b6:208:408::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.27; Tue, 5 May
 2026 14:59:03 +0000
Received: from LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528]) by LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528%5]) with mapi id 15.20.9870.023; Tue, 5 May 2026
 14:59:03 +0000
Date: Tue, 5 May 2026 11:59:00 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Alex Williamson <alex@shazbot.org>
Message-ID: <afoFtHGCl6oSeOoc@nvidia.com>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-5-mattev@meta.com>
 <20260501161915.75525c15@shazbot.org>
 <afhNeYS174EW7RYp@nvidia.com>
 <20260505104911.GB11063@unreal>
 <20260505085058.74c34290@shazbot.org>
Content-Disposition: inline
In-Reply-To: <20260505085058.74c34290@shazbot.org>
X-ClientProxiedBy: FR2P281CA0150.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98::11) To LV8PR12MB9620.namprd12.prod.outlook.com
 (2603:10b6:408:2a1::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR12MB9620:EE_|IA0PR12MB8254:EE_
X-MS-Office365-Filtering-Correlation-Id: 5eba83bb-f57e-489b-d0f2-08deaab6d8db
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|1800799024|366016|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	yYEsPW9M9LiXuDHVQHWu167Rv1tcECZbr3J7noUj23/PmCSihM2s1LxoYiF01I48C8ztWOx2bH6cGU+CbE7A6EsG48g6TdO8d2BooKvgheQNawApBJuz6RvgbyFnd6fQwC9tJJCEKPvcEb5UjcE7U1MrHHPA4hT6RVwoNW7SU0wHRo8SV5SN/qYeMBTPMQQZVVDgXXDal4L6ADQ00zFYM1yGX+ti74OBHgErEmnL2xyUww9Zth7brZd+YIY2NCa2FsBm5KLWoNM+FIYlWUjMF+Pe5j8HobglIHuUqCBM0SneNkr9yr30bhwGfqIn5G6qiGsn7BFEigzyEHnhoFTBYipnttGpfnNvJZwi1qToAWeXeUC/eX8qOKJRNszb/zP8uQc86/y56m4UwOWNE3c8Gwg6q5V+bTHw41YBiWkh+KGIosod/hA11L3nPU/Suz6YKLBkgv2990DjJT4q6YQRsNDTceipGnkN8jmoLUzgj6XVdIwUulWnSsq6wLSbdQTF+7SwYbmwl2gWiXU5vsKrJClk8CzTWrspl+UnFJIOTPf7ztsh0Zbx19ueu7pLt6CWSsGNVXDK4xR714ldeHo1lFKg9jPftdcTDZ951eDzb9aCi828pTO4CHHea4O7uhfeDxV3xxx44rJauir/B6l2f8Yl3qErKAUNXOkNZYAG92slevWDBPyUQDYDKgzdzZbY
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV8PR12MB9620.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?EGbjWwi9J/EujTfH7gLteUl8OJUc2ZKwZhteR3KMr5I+iHWaAtvbaTlbpyHL?=
 =?us-ascii?Q?PH0O1Q9YeSY8BRid3o1WyBJoFTtI69z4UzENsgd0oOnnkPMXsOGBO+iWZTir?=
 =?us-ascii?Q?4dNLAs6nMtd50thh8hQ8bNdGykJOkO8nWOk+yvFdaiiRPUYXnWZuViXIJfQb?=
 =?us-ascii?Q?xvqaen7Z40sEP5BiE6j4qX5E1kB3HZorjxhk4ziplwwRFIu9m8QPlBOtdgiL?=
 =?us-ascii?Q?FguDONZ4TmKmfx7XrJQgPZsn5+VxcnyiHmjRkGt45Uv1IoIR27WzzMti7HaU?=
 =?us-ascii?Q?JI5Cbiv6CyV9NerY4y5aLWOQ8KvegE6rHfXPQjlP9xCS1Zpg4xgDD6k9JpnX?=
 =?us-ascii?Q?nJBrEDkJQganH2UFCgEWTw4wv/Ji7ZDrCvKFJIww52jZ7Evbj53inbqvbSmE?=
 =?us-ascii?Q?rPh/VNKwcBkrSaT770ZWvFS7is7P3CeCTjNd61pQmTDfU4unwt6wwZvLst8c?=
 =?us-ascii?Q?U/tO/X5pOT/IXT25LJAXfjLlKFGz/ljOCDAoiCWvO+MNJDYz4MiPEfCTmd0d?=
 =?us-ascii?Q?WmWJbClXqjhkqo6GYcd4rCzNCsPgRrNzD9vJGQ9T0IvdZ6Sn+rfU0s4qBKuF?=
 =?us-ascii?Q?FAcuptDbqZxTbE8TI2ANsJlla3rNlmU76HUe+Ebcl8tSuc6wynM5A7K23gTQ?=
 =?us-ascii?Q?bdus5hFaZ5B6/JwJnpjPVg2fmPGq2zkDXkTeSxqr1lrXA2GU/0TLTvA08lIj?=
 =?us-ascii?Q?DA+D6BUg6J1MUATp4EqdTua6tZIrXCJp3c7iHVk0pFuYszk+vtqSnxAn6qWa?=
 =?us-ascii?Q?BEnCk2Q3m1uN98VdsfIFcJjAPWBXRl7ifKHykHyhhYA2CrjVVQSk7QM+24OE?=
 =?us-ascii?Q?AoFnBWIwIR/wSHS2jffsPJUX+nfnM4f2rii3jT97GlEBgDj//F5IBYhxK/aL?=
 =?us-ascii?Q?BHIZW4OnhG+N235cdX3AfZCTHJi1RisgHWR7thFvCcM2/EJ+fk9LbffUiSLa?=
 =?us-ascii?Q?dLUYut1DyYjrY/4FeNULq9icpVSV28GvB8koK8g0B3fdvF9EYLMaviyVeQrl?=
 =?us-ascii?Q?tk0HmVd5MgfyIMf5tfIwn9iypNVA6HNwHCH7BHCI6wFiuI31z0i2Vt83fUAz?=
 =?us-ascii?Q?FqHcx1PqJzk4JgCC0X0sk2tB3+/fiodklzXazMuZ1Ld4RlYB/AfSm4Zg5M6Q?=
 =?us-ascii?Q?uc5eEgUFdcF4p5/hisWKuPUYLh6SdvRk0W5xCPsqRMc7wIcoHFey37Sk9OLy?=
 =?us-ascii?Q?PhWuiYr+5H6S9tRq8Dd3A7U/x5phWgqphnP1hpN+br4a7QEPZ+BMkVvLjST1?=
 =?us-ascii?Q?AtIMrCJQ3lezs0+wiinOqq8Ol7uOtl0AA5P0W66y+No9qkjdLD3ONIIfuKy4?=
 =?us-ascii?Q?EFFI9FOMYarWl4C04h7zvoyDLCzHnqgBymdMd7CUnpVzJk6bCHfVS3K3tyJz?=
 =?us-ascii?Q?lmmXU6/CJ1SYAzLPcSnDhq9w0gYUlEv3zKMQWXyKEZdR58hNCGi5fKyrVdiB?=
 =?us-ascii?Q?GgBrh7waSts9XE0XJjT42ch+2LSEeyhbdUvHYfwVaAYSjxzBJgc/dgyB0uyu?=
 =?us-ascii?Q?1scB8qOoqHi+EgpC4FkEm5T30wmqAdkZLn7lxTc1LiRa9EpYeSQRbs/dQD+r?=
 =?us-ascii?Q?UA24+2LOgWhjtedYn2TtSGvLT5lPnsVvPs58KISg8kK1iulC0x1O3DEv2tDe?=
 =?us-ascii?Q?PXobubbOZYmzWvSVFm5zb0GssqKKnpqnGi7zdQAMVkzSwrnanBozia+ioop1?=
 =?us-ascii?Q?PuSKEhPYTLvTRNgByDWhrVlxhuyzEi5JhBzbTYuHWRk7nExZ?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5eba83bb-f57e-489b-d0f2-08deaab6d8db
X-MS-Exchange-CrossTenant-AuthSource: LV8PR12MB9620.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2026 14:59:03.4189
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T7k7cF9UcmrPle3n47bDyIx2SkhiCvsXXwZ0F3G8LfVO/0tlqh8SPkO/Ynous8Mw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8254
X-Spamd-Bar: ----
Message-ID-Hash: PAQ74BEH5ZIXSMMUG4X5IWDHFQYS5CLM
X-Message-ID-Hash: PAQ74BEH5ZIXSMMUG4X5IWDHFQYS5CLM
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Leon Romanovsky <leon@kernel.org>, Matt Evans <mattev@meta.com>, Alex Mastro <amastro@fb.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/9] vfio/pci: Convert BAR mmap() to use a DMABUF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PAQ74BEH5ZIXSMMUG4X5IWDHFQYS5CLM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 29BC54CFD5A
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
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[19];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jgg@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.981];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]

On Tue, May 05, 2026 at 08:50:58AM -0600, Alex Williamson wrote:
> On Tue, 5 May 2026 13:49:11 +0300
> Leon Romanovsky <leon@kernel.org> wrote:
> 
> > On Mon, May 04, 2026 at 04:40:41AM -0300, Jason Gunthorpe wrote:
> > > On Fri, May 01, 2026 at 04:19:15PM -0600, Alex Williamson wrote:
> > >   
> > > > Exporting dma-bufs from vfio-pci is a feature, but mmap of MMIO BARs is
> > > > a legacy requirement.  That legacy requirement now depends on
> > > > PCI_P2PDMA, which depends on 64BIT and ZONE_DEVICE.  
> > > 
> > > That should be split up now, Leon missed it when he added the new
> > > APIs that didn't require ZONE_DEVICE..  
> > 
> > Sorry, what did I miss here?  
> > VFIO_DMABUF is an optional feature and is enabled only when P2P support is  
> > available. It does not affect legacy systems where P2P cannot be enabled.
> 
> If we look at the long term view of moving exclusively to cdev/iommufd,
> where VFIO_DMABUF becomes the mechanism for implementing P2P DMA
> mappings, VFIO_DMABUF may be optional, but it's highly desirable for
> legacy compatibility.  There's an argument though that providing P2P
> compatibility on platforms that support PCI_P2PDMA is probably
> sufficient.

The whole reason we developed the P2PDMA stuff the way we did was so
that all VFIO platforms could use it and get P2P. Thec code is fine,
there is a kconfig/kbuild issue that we can't enable P2PDMA without
also ZONE_DEVICE and those need to be split up. Once P2PDMA is
available on all arches it is no longer a concern..

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
