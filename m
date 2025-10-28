Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F37FC1498D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Oct 2025 13:21:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E69053F7E1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Oct 2025 12:21:27 +0000 (UTC)
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012068.outbound.protection.outlook.com [40.93.195.68])
	by lists.linaro.org (Postfix) with ESMTPS id B81793F772
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Oct 2025 12:21:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=aWrqoRwe;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.93.195.68 as permitted sender) smtp.mailfrom=jgg@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CPu0pWJ5VtdBCo+xx7Or5VKztgA+GNZOE9pYtqCJ7Lntijg35t/GM38gtSWkkZL7zkbStUw6ngCX8Q+7ztqx1rI5W4Qaia01Kgrr2MmnDr2UREpCYwuKDCVQqV3/DD9KohMbEXw9hSZOlDrKETNIvjT1eBkLDOhCT5mtpj7L5VuK0v1xGuHKTCgaczNTgG6T3nUM3us/H1NWS0EoAFtKMHd9zO7B+VSdXToCUSWfwtYjV1KJKuSxERf+hOUxyKdM7ggPZglC2Hf0zA8ASQOwAIqZhO9BeY1I5qQAvNEHm/P7b172NplVZwUY5qHmHd2efY+C8XJqP6oyLW33rzBZvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lirVx9XA1fZo/0BpEihzOAbcz4ot3c347zSHMJz/3Ws=;
 b=TLJwZ7ZOO/eSoo7kfQlSWzy2K0s59ZtP6g77d5IO3S7bBQBG23+B8TMvUYQo2+tLNBzd5xBhKKO4J16lt6z0kvKXeeKRjdVFmAcmUpi+/zT7A5rYTCFoyTDn0I9NGi5ECR2VFQYukm7u5PBO3ZZtM78PQnXefOJKnEjVIWQGCaX4NErScgV5/GZpaIbfowp82ryJpopCFAU8o5Y1hpxa2Q/UDDvRQS0dWsYWrzFcP9DvdmAmu4GON59lH/XTpdvdyzYB7qQfgaS37+XK6gq6yAMt+dPKuE6eKJwtBRl/CGzWckvvSkj8ZmjpKyaX7xlQPQ9Ua7fZ76X8JhZ2/Ynz9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lirVx9XA1fZo/0BpEihzOAbcz4ot3c347zSHMJz/3Ws=;
 b=aWrqoRwepRF3PES63Af7N8F9W2w91wN8JPjofq6JVMzHUMMOUYY2xu8u6iaMahbhypuumwbaLS6DJ2JeN0lHk2YI4jf2hllhAqeIMr/DOKD1CthMbcBc1YE7T02VjLq+iZMpq9r7Laf0hU8LlanwsxwP7u6+y0Lx7c4GBED5zwUO2P4bTmGIeWdi8aoSXVRNRCmEKW+h23zE56Pzc0Bed2nHrArbOVV3Se+4hAjO5hjOosrSqbvoAZJqNgAxujzhToYPyg2vgW3IlkAffXjNA8yPfehH9sNm2vL4LpGQeby2dC8zmwWJdng6WRps5npq3xg3C/HSQbKqNZWZIpoIrg==
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by SA1PR12MB7245.namprd12.prod.outlook.com (2603:10b6:806:2bf::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Tue, 28 Oct
 2025 12:21:12 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9275.011; Tue, 28 Oct 2025
 12:21:12 +0000
Date: Tue, 28 Oct 2025 09:21:11 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Message-ID: <20251028122111.GG1018328@nvidia.com>
References: <20251027044712.1676175-1-vivek.kasireddy@intel.com>
 <20251027044712.1676175-2-vivek.kasireddy@intel.com>
 <20251027174723.GB1018328@nvidia.com>
 <IA0PR11MB718509D24638796FCAFACF79F8FDA@IA0PR11MB7185.namprd11.prod.outlook.com>
Content-Disposition: inline
In-Reply-To: <IA0PR11MB718509D24638796FCAFACF79F8FDA@IA0PR11MB7185.namprd11.prod.outlook.com>
X-ClientProxiedBy: BL6PEPF00013E0F.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:22e:400:0:1001:0:13) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|SA1PR12MB7245:EE_
X-MS-Office365-Filtering-Correlation-Id: faecdd47-df59-4da6-774d-08de161c7b7a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?mkHxd/HJwkMA1tyuUzHVkiERQG8Wirk7C6mnQucYZpnjJE91nbTGpHR2dhZG?=
 =?us-ascii?Q?5xpLHwS95YGJvp/erkVyOo9zKiH3QK8xzEwba2QJhn69OSMAmC4gJlBbxoOD?=
 =?us-ascii?Q?6QCBQuzwQnKP7LRQu5hUgLPA4XnzXiqEx0iDbmBaUutwDGlq1UhDM9WwTc7W?=
 =?us-ascii?Q?Bew5upK8LuojQV9Yp5laCr2vgirgVvwvSGz4lmUxo6vDDFsd+lZa+HrvvG5B?=
 =?us-ascii?Q?jJ1nlNmCPo7oEg9YY0jl8IFxdo3uOaH7/qZO34OfPvan2l9gxzNqfKKeOW5x?=
 =?us-ascii?Q?OsATkapLaDvbB85HZcVs6izXLdpr88dAetio8ZhSoYCmVgVcB/K3fj3RThlf?=
 =?us-ascii?Q?ecN+KHjTS6ZQnRrdadANXtXM3gjfLonj0PzagsaCOMoSH9O/E2/a1Sfkfb1b?=
 =?us-ascii?Q?XPo43k+IjxK8uoI8JSXfGFEORc89pmHUuI3UuDDfedfjb3SIhvJ2Ikocym/o?=
 =?us-ascii?Q?tQiHub7QHxPqDncjRlEIJZ2Se0SFpc6/XKwUtA2LWZ8qNiy2MxQ6xxwTxfj0?=
 =?us-ascii?Q?+87+RHoKu0/YZP+WbNlW7BOLKn024cq01a03ZfsJGjgZAu4tQOqiwZiv5AjR?=
 =?us-ascii?Q?XwTfPSxJ8KIqZ0QKfIC4qgRGh5gr8RRRYEpzAvSMSSHwSjoibOzjUtA2yglq?=
 =?us-ascii?Q?oWfvEXjbNOZEdzFbkTHwelkdVkBw9bitdtdg5UtPwidSIsdRTA4tGsUhcCLq?=
 =?us-ascii?Q?JPMhisy4JRSObarJaYoYANbxXaoekpkw051myJaqanJtJQbNXqkfLpExxUFI?=
 =?us-ascii?Q?nelyWh7XlVXnW3qQzwlhQf8upb975QkIV1zj3tV8LKSLSqanZX//++pEpy6d?=
 =?us-ascii?Q?zYOx8z0Yoy7M+IMHg0V9iyez80A1Bt5RbjUrsPj5mFM6L8Lyfi1BoQ1fWGDz?=
 =?us-ascii?Q?WeuzPl4y2J1vi8NmUEotUo3sgBqIdJ6499MljMy5Z6a8Nh6QZvkjSdoa5AtB?=
 =?us-ascii?Q?PKIm2LYonfrUoFbMYRAzR5M2jYsPsgSiCIAwyDNBt9W0mPkl1KFIfcZq6qLf?=
 =?us-ascii?Q?b11B5NpPRG0/6VUElhHWLUuy0kTarYNdpUh9FX1EEvA6osTYQmuzyp6c0dJ7?=
 =?us-ascii?Q?dNgte4I4Nc4MxIoLQtGZDr3YxAjMujlWydARcXvAQqT0ECoKBadhs3G4twx6?=
 =?us-ascii?Q?d1myjKFEzfcD8BHKNCCSIj4Q1WjlDGTjJdG6AUdiJboZQqm7wcM4OFxJHvjk?=
 =?us-ascii?Q?JwQeyl89Z7a2tVdy9uhiNtnwg9sJVLdh2C0dAzL5dORfGiGInzDP1tD/tBcw?=
 =?us-ascii?Q?P93Hn5VFXhBSChNdRucVXiGt4UG0yL2F3RAHYCaLHHv8gygkkXZJ+oId5DVA?=
 =?us-ascii?Q?tBBelFCyhacZ7UASydoWdyLr1UNqUtJ9UOfyPsGCt9hqsFQD87vVullmGvZi?=
 =?us-ascii?Q?zPPm5c/8EdJwKcWfQjS4NGvkNRQI5hCOww3cZIQ+bv7CaPCLI19RjYlbQUf7?=
 =?us-ascii?Q?o3pMG5mAHkuVlhunqYbZjxj6SpUDikz7?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3613.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?zjR3w0T8vAXoOFZlL660pHXi6I0brM0Ysq3sY3uQ9t+IRGm162F/qwJByDrc?=
 =?us-ascii?Q?P/sUCwzIcyj6i4IbWFnSBgx2yfHIaRaA2U0+aoq4YRjiwOi7SJS0t6jSz8XT?=
 =?us-ascii?Q?GewiLkp5WDY4h/eDBcEL4nUfU6DsLeVqa6Gula6+gXMZWRt/Hd5E3TNeYme3?=
 =?us-ascii?Q?odf+ztWet8ld511tfpidovIoQHXSaXC9EXpJxWUvvRnxnhbKgxj1IST8SYp5?=
 =?us-ascii?Q?jorWL+MNpTkDQyLkzgoRdMTjxme/OMBzQVRIevHD/k2PSrOpUTt0RjvE7Bfv?=
 =?us-ascii?Q?jrnJyU6Xvvff68O5eOMwzSCk1+DcH9yAwvndkPO2NBu7+a84ZhDKZNYt5213?=
 =?us-ascii?Q?MFKBt60d8NBFb7iIUkZlHQus9p2p73Wss3whFeQ/qgNiHgek8Cn+JI+XuTPF?=
 =?us-ascii?Q?y/GCwOpk0fUKOaf6y9QR40p+tBKmiNJd7PU7K+NBvTHN1Rfxx9l1hQhS+92l?=
 =?us-ascii?Q?klTGqNX0X1RuVrA9RxiIwNZ6PgVL0LiMlf9LI8rIjjRkP4j7znDez6p6BJFf?=
 =?us-ascii?Q?QNpgW9KoAzNM5VGliRnt5z04EBXAoN3b4yIZZR1QKdVdIsAVwj4adfdMUl9v?=
 =?us-ascii?Q?PVOj/AGaQHctx31im9O0BvJ5/5G+Ypb+KjroDkFkuUDG81Axyl1CFqvagWZa?=
 =?us-ascii?Q?D+GCzzr7IOX5tcr7ws0sVXfK/1r99LdZ73BqPJUaW7w4R1Bkt2cWWdePs1og?=
 =?us-ascii?Q?+/J6ZndDrtrkqXVm74rJcGdLyS6wvcwozSxscapYww3LFFElWoTHZ4ZsDO4o?=
 =?us-ascii?Q?cvMUYKnF0oBTiLEIQmN9wX71H5W0lIOKpVdpZPmIenpb+DLmI9+aakZe84jy?=
 =?us-ascii?Q?Eq0Hz6SXl3xVHulApL6ZKlbugd/6I+VFnO7brCF2tZVa3GfZWEZltVK+lcwk?=
 =?us-ascii?Q?HD88BYgAaPi/R37Dky+Z6Z85jm0iqkaNzNDhg9LchTEfaptBzew28Hq8SB4j?=
 =?us-ascii?Q?t8MInMrRlijzFmEE45k0DczTSw6bllEO30jbfTtCxG9rAM6kN+vQr3dGM/DX?=
 =?us-ascii?Q?XeO61DBra1Et55N84pbwCM2R40u8DVD3c0Y6BWR1A5y/MOxGmcrL1Vs4eGzQ?=
 =?us-ascii?Q?AE43ZhhD6ZaREVHS2ZdlnDxUY9jD79Tg1Le1nGT9nZkiJmdTMSXjI/hhQe+O?=
 =?us-ascii?Q?Pol7DM1SPYnnkSHKar1cWH+/iPuANWzEC/eBRNvfR3iO9Zdcabm4VhkgwcPR?=
 =?us-ascii?Q?xvJYgx0ottM6HjXMWKrP4KtTdbj/zSz2GM/EV/3LZzTu7D9FzfrYcEiohfkL?=
 =?us-ascii?Q?YXMnT+ZaLS3d2lxglV+dFYc2+Ou/YS8vgmwWd4wafyZirgWVTGRKdy7Q3dCU?=
 =?us-ascii?Q?L/DUrW78W1IiCzeb96SO1KM2nwGQaFXWDUmFm1fPanbHl2YNkC3thUzgAChQ?=
 =?us-ascii?Q?Mm51iAmjHGY9dLmp17WvgyVQKnXdFXsTcVxFEPHamlQ554EXg1k8zYOlPKHL?=
 =?us-ascii?Q?Y1vJasuO/GbvSI+thCyYbYQ5AyGt4pholmlanmXBBFOtQY838eebR/HCV+Le?=
 =?us-ascii?Q?fvE5SzJK+qTpHv0M4qg2+WZPyMYXC9UaY+/MM7NLAti26n31d1j4Pc/jz1Ue?=
 =?us-ascii?Q?d9kNd6YTQ0h8MMVf2hw=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: faecdd47-df59-4da6-774d-08de161c7b7a
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2025 12:21:12.2999
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PQfycMMYvKRUaC8H3T02LePeWvsF/97kMGDTxpW4ap8BJdrlZlRuz61gFcKO+T8m
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB7245
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B81793F772
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.195.68:from];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	URIBL_BLOCKED(0.00)[nvidia.com:mid,Nvidia.com:dkim,SN4PR2101CU001.outbound.protection.outlook.com:helo];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:208:c1::17:received,40.93.195.68:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: GL26GNWMJPII7UHI3SO3UBHHLX3SIFBO
X-Message-ID-Hash: GL26GNWMJPII7UHI3SO3UBHHLX3SIFBO
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, Christian Koenig <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Simona Vetter <simona.vetter@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 1/8] dma-buf: Add support for map/unmap APIs for interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GL26GNWMJPII7UHI3SO3UBHHLX3SIFBO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Oct 28, 2025 at 05:39:39AM +0000, Kasireddy, Vivek wrote:
> Hi Jason,
> 
> > Subject: Re: [RFC v2 1/8] dma-buf: Add support for map/unmap APIs for
> > interconnects
> > 
> > On Sun, Oct 26, 2025 at 09:44:13PM -0700, Vivek Kasireddy wrote:
> > > For the map operation, the dma-buf core will create an xarray but
> > > the exporter needs to populate it with the interconnect specific
> > > addresses. And, similarly for unmap, the exporter is expected to
> > > cleanup the individual entries of the xarray.
> > 
> > I don't think we should limit this to xarrays, nor do I think it is a
> > great datastructure for what is usually needed here..
> One of the goals (as suggested by Christian) is to have a container that
> can be used with an iterator.

I thought Christian was suggesting to avoid the container and have
some kind of iterator?

> So, instead of creating a new data structure,
> I figured using an xarray would make sense here. And, since the entries
> of an xarray can be of any type, I think another advantage is that the
> dma-buf core only needs to be aware of the xarray but the exporter can
> use an interconnect specific type to populate the entries that the importer
> would be aware of.

It is excessively memory wasteful.

> > I just posted the patches showing what iommufd needs, and it wants
> > something like
> > 
> > struct mapping {
> >    struct p2p_provider *provider;
> >    size_t nelms;
> >    struct phys_vec *phys;
> > };
> > 
> > Which is not something that make sense as an xarray.
> If we do not want to use an xarray, I guess we can try to generalize the
> struct that holds the addresses and any additional info (such as provider).
> Would any of the following look OK to you:

I think just don't try to have a general struct, it is not required
once we have interconnects. Each interconnect can define what makes
sense for it.

> struct dma_buf_ranges {
>         struct range *ranges;
>         unsigned int nranges;
>         void *ranges_data;
> };

Like this is just pointless, it destroys type safety for no benifit.

> > struct dma_buf_iov_interconnect_ops {
> >      struct dma_buf_interconnect_ops ic_ops;
> >      struct xx *(*map)(struct dma_buf_attachment *attach,
> Do we want each specific interconnect to have its own return type for map?

I think yes, then you have type safety and so on. The types should all
be different. We need to get away from using dma_addr_t or phys_addr_t
for something that is not in those address spaces.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
