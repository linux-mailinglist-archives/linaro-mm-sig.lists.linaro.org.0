Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B0CB967CB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Sep 2025 17:04:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F30C45DCA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Sep 2025 15:04:26 +0000 (UTC)
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011008.outbound.protection.outlook.com [40.107.208.8])
	by lists.linaro.org (Postfix) with ESMTPS id 2FE483F6E9
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Sep 2025 15:04:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=Dipu7TKS;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.208.8 as permitted sender) smtp.mailfrom=jgg@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MhYEAE1r/HVlbTgqnkoFx+JLUhYpIKQTsXMt49ZY+EIUOkJzccT4+ikGBcILCP9WF9mYIwi3UGnk0qk3YRCsZutVCQA8uT6Twb+rm6hoQSW1QguyyVXEw5ovQn76HuGnK7/zd0+UMyVKzPkBN6UeucmuC4yiVVRCJhwpe3A4N1FGzWdnbhB21nEBn4BHryl1LJP5pbEr8QQ4nPF0i+T5w8r2NzQ0eVXbzccDLOC4RfSh/QfZpB2i7DC1lFZE1UjXX1KZj+PEJTdKNmS+dhKu1scEPe+m3/f0BMBoOilfV1/qz1hCDZHTZw6K7urzMO9+dndjJyc7rTiNH8bfIR6RyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xq62VKE0UuO7QG4pwwwx315tG/517L6WeCLY/0sBacQ=;
 b=Mg6d/vt1yTbspgZ+N4nzydY1n6Xy3Lhdpku5TMjC7QThT5PGDmrMEseZYdgt1+U3ktZHbix/oAzndY+kWnxZKmjLEX18XZ5VNJkk7ru4fZzUOHoOEXsPLl8kng48hOq/tp2LHkbUzcaIB4IUuCIp2OqfBpulbA66P0/VOwcPPcPXCE1SIMGbKhGQFYpWq2ruHGPX2V4dVGpIlI4JimTH5BBaSHPh7M6eWy5eUrBEEM4kOS9U2rOllUi88CxBG7Y0H2YTG5+KQB4lSllSbaXkFIZmQyIj++LHXw04n42lwCj3u+PtC4DASAUQubnWIFQWHm9jadhU3BrFO7oOpSxblQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xq62VKE0UuO7QG4pwwwx315tG/517L6WeCLY/0sBacQ=;
 b=Dipu7TKSBAt+KjTfGqzDV/hIg8KxWpiS+VBtfq2e/dXWSh21B/PcmmuQFAcF3Ry+np2yNiYkelihtJyyFCsElRy/pBFZAu6jLejrDJHcNeW1AvD4DB0zlO0woRupM4WkSVg1Jo4F9Q3KmlBsSf6/8MnnO3//VqEfR9JhebP/Xi8cRyhipZmJbufJzwkBkSQ5689KmGhKueuy3lxaje/jbuoHl+/9FYQGSh5inrMEpD/dAYVE0B7ENerUgDj6aAq7gUoKF44IJabicdq0VY7ejBtE88htDfrF+W8WAa54NeJlj4XGUNFalz31RarGMNLHdg3Gp955zbl6eFGHfpbG2g==
Received: from PH7PR12MB5757.namprd12.prod.outlook.com (2603:10b6:510:1d0::13)
 by CYYPR12MB8938.namprd12.prod.outlook.com (2603:10b6:930:c7::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Tue, 23 Sep
 2025 15:04:16 +0000
Received: from PH7PR12MB5757.namprd12.prod.outlook.com
 ([fe80::f012:300c:6bf4:7632]) by PH7PR12MB5757.namprd12.prod.outlook.com
 ([fe80::f012:300c:6bf4:7632%2]) with mapi id 15.20.9137.018; Tue, 23 Sep 2025
 15:04:16 +0000
Date: Tue, 23 Sep 2025 12:04:14 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Alex Williamson <alex.williamson@redhat.com>
Message-ID: <20250923150414.GA2608121@nvidia.com>
References: <cover.1757589589.git.leon@kernel.org>
 <1e2cb89ea76a92949d06a804e3ab97478e7cacbb.1757589589.git.leon@kernel.org>
 <20250922150032.3e3da410.alex.williamson@redhat.com>
Content-Disposition: inline
In-Reply-To: <20250922150032.3e3da410.alex.williamson@redhat.com>
X-ClientProxiedBy: BYAPR06CA0019.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::32) To PH7PR12MB5757.namprd12.prod.outlook.com
 (2603:10b6:510:1d0::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5757:EE_|CYYPR12MB8938:EE_
X-MS-Office365-Filtering-Correlation-Id: d9930fd3-8169-4247-a758-08ddfab276be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?Rr4CWuS4bJ58B5Jkt7V32zYPxy3isl9SouCyEZNIsbZP7Sa9UWg48ZyHaFmc?=
 =?us-ascii?Q?ZW0uIjFZJe0KhjfK2zO0hS+s3MeOFI1/l6M9snpTKsMpNYUfW/wZ334il3E8?=
 =?us-ascii?Q?R/6Eb7iauI8fSVR6rYACau/Hlnnp88EzBtIvEglCndKITRsUPQ3jdf48pXkT?=
 =?us-ascii?Q?pOH97U0Cu0sKr59TexUuad9zNIZLry2k3vF4mgQcFcWjbm22R7eA/ar4pcuF?=
 =?us-ascii?Q?f6gBzYpin4gBSwXtdGcL1pX/AEbvBfYy45xTbr/9P78NW9391v4y7ShL3sGx?=
 =?us-ascii?Q?+sAsjDbKewKi2Ejnz7QimtFHRqr4CcI2gFOnsPoUQI/HdxOmUCV860kSvRhZ?=
 =?us-ascii?Q?/u7F4VXDrBTmRXP858poNkd4QLfB1A0qe0GVbAdKnec1W8jeqrwdH8zi1iT7?=
 =?us-ascii?Q?cyGqSfNFPakNTUAWM3NXNaUt8/ZMWgxjqEu7RuM4MLA+PcuaOoax+bkcTZWI?=
 =?us-ascii?Q?vyDCwwRI8gcy4GkXh1ET4t+x7NgPbUPNK825Pqj/OkF98TtCXNFL3/ZUlHk1?=
 =?us-ascii?Q?eAscAjFtwcQ29QZEcGc63ua62f4uwaMsYVsYsEVrCBgchBpvzokkFukgF/eB?=
 =?us-ascii?Q?3MwXBntUyjYPFN7rJZRIGLKC4yMDLNV74OElciyKJpY8S65Uuxli2gRJ+eCG?=
 =?us-ascii?Q?07gPF7jy8sg1ODTrdYmbOWlIg/7SreXdDobIFVxHrGtkoZrKgaFF3F87JU0k?=
 =?us-ascii?Q?afkj130+QyxGVByWytn7vA+Z1nX+e/iRzqwdmxCPSiAleWiQBIhvCwbWHqz/?=
 =?us-ascii?Q?dqVTtHfzaTm0JEE8a3+oMeQ4fXvIU8kSA7IQGo9AVzNEg5uJoywG421KpC/2?=
 =?us-ascii?Q?J0I3UV1cT2Lp01nHcvWyOGqgL4HR6sP58tftvWGT0dbz/Y8fDNycZ5GSTRHx?=
 =?us-ascii?Q?m1p1/u5YiCFn8QD+rl8YgOXMaabD5HHOHC8fKptSJ7uXyk0hEOJgjWYZOtbq?=
 =?us-ascii?Q?X++yydo18z+LvOhK3XzPU6+mUhnNHipy6im/kl/YcVGQehnSqONM5Mf0mhwQ?=
 =?us-ascii?Q?FhX5QKJWefOc/RzM3fFd1uefmUTQySWvZbMCubVTHxd+DyYI23OEu2fFN83k?=
 =?us-ascii?Q?FZWjRViKzqdapXO8H/L78rUETbAjp3yOjRREG1nq71I7BQYmEQV5P24XHOgR?=
 =?us-ascii?Q?lNF6nY9zny3LEg99+4zrt4yaMpqLllbhCNz9nayZBjvobvFbPnAc140pJ+jN?=
 =?us-ascii?Q?gUeORMEhjF4TWyGWNPqy4MyFzTW+RKWH54nebrLcdEKHvHU9p7hEELrTqrQ/?=
 =?us-ascii?Q?/xFm17SLfW1QRnoNqz1pjE9brlYtntZYvU6WtzCjHftJmVcRBwDp51mcvt+R?=
 =?us-ascii?Q?r2Q31euQCV51+ZWeWTw3T5fgWXgDD0OLDZgDbUcq5l1dG1bannQFjeXDNCsC?=
 =?us-ascii?Q?qDDB4A7tILhOowPVyRJO68DzYvll576LvElYWmn7MituBaxmVXBJO9U6OIRN?=
 =?us-ascii?Q?UggjY2kI/MM=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5757.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ZxXI8S0BCAVc9ZVvVvntaugaWQehAd8dITHBcEJnY4XIXvWTW+uYkIOvcMgO?=
 =?us-ascii?Q?lH12dKUpk7WHbLBNVaXizn0S1MYNmxteYGTfFP+9gOfPedYOimFMasf3ZgQg?=
 =?us-ascii?Q?yihnLEPESRfyx1hNPP9l33Wm4zvJRDV/cmkhv+/91ytmjIzAKO8bh9n7g2Ii?=
 =?us-ascii?Q?wZu/aF6lBWQ91OiNMrowNlVj2aMQIZS2TVyaLdeWBMKxjvsVgSVNjsel3HN5?=
 =?us-ascii?Q?vQXqDe5VCLnmVL9i15djZhM6p6zWuZ75TgwlktYWCwGeg+qu0jJ5bl94VNDU?=
 =?us-ascii?Q?4mN+6KpmGZfd0fCecFU1CVYG8EsTH4wKIqF2z/jg3oAktNsCNbxEIXrdykrI?=
 =?us-ascii?Q?5xF1qJVSCaVhZFTP4Qi4cfmEswVG9AXtD8bPB8iNqzQNahRLS6jFuJ9a6BKy?=
 =?us-ascii?Q?+pFCBI3TLRp7i6SdIvCEU3Gvfao5TO2Y0PBnnZyxhsWC16Lu/NDpPcslCqVX?=
 =?us-ascii?Q?qC8ZUqEHOQ+v4NYFA0+Bolm2+7wRohkl7BUIpn536QU9SZaUzcDunqzJDDdT?=
 =?us-ascii?Q?t+opWasXjKkrgsOsimaskVWePwUxaln5DlvXeD0I5+AjfWR3J1DGBq2hYzSX?=
 =?us-ascii?Q?Wrx3oIvjv+W/G0/dRCzDnIxj7ywTVuAb9v+0FzsjPcxcHeevDcOTRje11ced?=
 =?us-ascii?Q?LXhpxgMmqbApAj3AJThoUEkysQvM06ljY/+iH4/H9kjPbwNg1SJ5Cxfe8C5L?=
 =?us-ascii?Q?W6YVCP7mlQ9xqIHZXHFJFzPBhzhmg/kg04hALXUfDo5XokzfLnn9cH2m77If?=
 =?us-ascii?Q?CGWjUgvO/wi1rJ8huiAmqnbEgfh6PIaNWYVjPBcQTN3x8NGUAdgW68E0juNa?=
 =?us-ascii?Q?uOwpFqUWq4rZB/tsVgrLi2lZuWKKBN7rYebzx8qbKGs3QwPlN8AWPxq3xfyK?=
 =?us-ascii?Q?dPnjJcVB3BJMVEPLulbXdfM8BUvGSra3FJRtEsNmsktLxtgwXuCuI8uOCMSx?=
 =?us-ascii?Q?CBccdg5Y02ruyZUVTRJH+3svgnB8WpZqwrcUXbcqNbwNVoNTvlwNVZuaXMZw?=
 =?us-ascii?Q?ZUr+YQ9hjX8Lkntztdaa/XTOVlbglg9hMGS25Xg1W7Cx/Te0xpjyPgAV26aV?=
 =?us-ascii?Q?IMXFTPHvFUJsWgdghFMk31jlXZT31iJ84FKhHzANh/gxDS/6gLJvJt1VFmq/?=
 =?us-ascii?Q?+AfoEl9Rp5x3u9MKDqQdug3R+6QXcE1H2kGjjgRvROlADs/LlUdnrMfV+wPA?=
 =?us-ascii?Q?07UPmATx8fMaAAIzZgnVzBZNChAo1ExS3gJqEVqtEJBCDnWo68tTlagEjgQX?=
 =?us-ascii?Q?wfxFhDBGQm3tZPow4aA7PvuebscWGbnVsNBSG9wgcHUaPyosmpCfqDivwObJ?=
 =?us-ascii?Q?WYFacDdknTCCivAYpgvCqfMchq/qztZLbOTHmvwKIUL6ANWaAK/xnSuxQIkH?=
 =?us-ascii?Q?Tmu+Bwgg+jFgNQA29Y1HasmUWfR0mmrkttluDLDXiZ/tg9+qevM5EvBH+igH?=
 =?us-ascii?Q?jivnHDkp2qCmkGIV+SJ3cyZe7dCJbvbGenPqVW5xw15lqfjuNcSCojF2bbcQ?=
 =?us-ascii?Q?od3JqW3Yg+TlqhC45k+dxEJcL94IJjUR1wjhYvVGK+zdkGeD0YKWdOV5Sxes?=
 =?us-ascii?Q?TSkhtr6dGWiiSgAhKE9TeMY1awwDo28v/z3SjrU8?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9930fd3-8169-4247-a758-08ddfab276be
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5757.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2025 15:04:16.1476
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8hxtONvGpKFxbmoT9uN/4PUAM8svOXGdFvLkVm46AsLF8a0g8WVJSR5KPxIyYR4I
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR12MB8938
X-Rspamd-Queue-Id: 2FE483F6E9
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.96 / 15.00];
	BAYES_HAM(-2.96)[99.83%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.208.8:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[40.107.208.8:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 76C5DDICZ4IEOMVFR5QQUI3NHUQFEC7T
X-Message-ID-Hash: 76C5DDICZ4IEOMVFR5QQUI3NHUQFEC7T
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Leon Romanovsky <leon@kernel.org>, Leon Romanovsky <leonro@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 03/10] PCI/P2PDMA: Refactor to separate core P2P functionality from memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/76C5DDICZ4IEOMVFR5QQUI3NHUQFEC7T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Sep 22, 2025 at 03:00:32PM -0600, Alex Williamson wrote:
> But then later in patch 8/ and again in 10/ why exactly do we cache
> the provider on the vfio_pci_core_device rather than ask for it on
> demand from the p2pdma?

It makes the most sense if the P2P is activated once during probe(),
it is just a cheap memory allocation, so no reason not to.

If you try to do it on-demand then it will require more locking.

> It also seems like the coordination of a valid provider is ad-hoc
> between p2pdma and vfio-pci.  For example, this only fills providers
> for MMIO BARs and vfio-pci validates that dmabuf operations are for
> MMIO BARs, but it would be more consistent if vfio-pci relied on p2pdma
> to give it a valid provider for a given BAR.  Thanks,

Yeah, validate_dmabuf_input() should check
priv->vdev->provider[priv->bar] for NULL and I think we should
directly store the non-NUL: provider in the dmabuf priv struct instead
of the bar index and replace these:

+       provider = priv->vdev->provider[priv->bar];
+       provider = priv->vdev->provider[priv->bar];

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
