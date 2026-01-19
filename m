Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD18D3A5F7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 11:56:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B681540140
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 10:56:46 +0000 (UTC)
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010048.outbound.protection.outlook.com [52.101.61.48])
	by lists.linaro.org (Postfix) with ESMTPS id 14F123F6FF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 10:56:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=daeq5mSv;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.61.48 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cYhPcNa55dJBjOAgb7ys8xkfEEoIm8TR2X9fZK0eg0CqDv8rh7u6nL+Hcf7tdx57zYzA/PNlu2VmB3XOdFIAI9lrLQk2/VkCGqEuirZb+xvOH4ISOas3prXkcVbxMWPvNwYv28vokCeSS0bq0XFIpC2Dj7hO6QSp1tzYAY2lHU5QopE8ZwbtVgjOYb7MyCzAKhRI7O5p5i1fU2xuM/E6jy98er/pqDaHRm3oFhXwoWJThdQeVBv3tcxD/JlBJEb1bKcgbzPRQwfxpWUpfvE25Q+mVSHbMtwvciSgktF8/jRdvHaZjYvUTBQfAo7B44Jn4D5OpcgOZ96gNgZwAU/L0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5J5B22JfMFKxjXVfYMZAjnMIyGnXaUzR9ufqMmg07Zs=;
 b=RS/kSCarI5Hc6DTf2fv0H48F1X9e9ezlG/+/7qPV4OFx5hhXNsLqzP9wqGv2w0+1mZ0skI/aKLb/Jht5fV9DzIcvwA3RGs3SgiPzpaCz1hC2wSGdcQ3dZI44hMyi1ehqlGunj+BCpCtLwgAl72ge9yBNnbh85+z8jR18yGh/YZ7ZRRn/A91KX/f0Xj4DmAmxTZ10vfSgsjLCiRUTlSmC7PI7NJR6uyc53TRjXYGre0hHBJaOpIxP0ih6qnVVg4l5l24g49lYNSYpEgYwoUXlYV7sZ/0o88vPihNPMu+TyiSO6q8y1CoowjxsAxaIaD0makp/A0M6xYVLvPICmy6G0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5J5B22JfMFKxjXVfYMZAjnMIyGnXaUzR9ufqMmg07Zs=;
 b=daeq5mSveIyDyZe+ZJUsYGARmKqTq5yp0iN3goE7qSz4PF8RBLja2oDOgsEAtAwJw8FmRlkcgnWyZOYJkAu+VzwXqCX6Vm+DPRv+hz2T7d3Uovj3ZgsctJmPYcPLpYuynrI8850t0LDVao29G+7+4+curfJTni57WNpjGdZiv0I=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CYYPR12MB8889.namprd12.prod.outlook.com (2603:10b6:930:cb::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.11; Mon, 19 Jan
 2026 10:56:37 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9520.011; Mon, 19 Jan 2026
 10:56:37 +0000
Message-ID: <9eba2527-a06e-4f74-a7d6-93f6f91e00e9@amd.com>
Date: Mon, 19 Jan 2026 11:56:16 +0100
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>, Sumit Semwal
 <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu
 <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Alex Williamson <alex@shazbot.org>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-2-a03bb27c0875@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260118-dmabuf-revoke-v2-2-a03bb27c0875@nvidia.com>
X-ClientProxiedBy: BN9PR03CA0394.namprd03.prod.outlook.com
 (2603:10b6:408:111::9) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CYYPR12MB8889:EE_
X-MS-Office365-Filtering-Correlation-Id: 272541fe-1544-4749-5878-08de57496ac1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|366016|1800799024|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eUY1aVJ3MWJ4ekZGK0FUMmNzbWJka2NXR01DS2YzRzJBRUtYVjhhb0VFNjdW?=
 =?utf-8?B?ckFObng2MktBT0tWOFpEMVBMMlg5Z0NPbGY2Q3dDdHNvTmwzVHVVY3dMV1BK?=
 =?utf-8?B?Sy9WcDR1Wi9tY0pFb21FZURSRzV0cGhNcE90cHd5djhWT0NnWkJ3VmNRalVy?=
 =?utf-8?B?NWpZdDl1cmcyRllVejBZcnA2ak54YlUyK004QVZyN2lqbDhZemRCY0FmbUkx?=
 =?utf-8?B?QzFDR1l4MjdRN05meUlRaTBmTTNqazVsTmxsU3F6WmxoR3U0QkdaZ1RKRnNG?=
 =?utf-8?B?enVoSmVJcGNuRElhN1BtdUFsUmhjV2I4a2hmTlJzVGVnZTRNcVorNHZLOGJp?=
 =?utf-8?B?ZzJEZ1RmS2o5anQ2SjBid2FWeElQekNPZWZwUWozTUZSbklxNndTV3RkTDBj?=
 =?utf-8?B?anB6T0VSYk03NnJ6bWd1b25yTVdhcVFBbmNBVFJMU1A0U2wzREZkamVwZk1t?=
 =?utf-8?B?ZkNWaTFDRE9mVzVuU2ZkSVpxbkhBb3RiZGYzUGNBMUkxeUxxZ2JiNDZjMEVh?=
 =?utf-8?B?VmV3TWsyeG5uOHJXVlYxeTg1d1VuN3p6bzcvUXBBd1IvZlJRREs4Ymhicmds?=
 =?utf-8?B?a3RMTHVLOFMrZ3haYXRYWWMzWVNQTFlFSHI2cWo1MHNFcFNDRVNBUFRpNTAv?=
 =?utf-8?B?UkZ2MmRvOS9Yd2NhVlRjOU8xamdSV3RwcWhuOGkrWXczZVo5L1hscHNidW5x?=
 =?utf-8?B?NXpOZ1JFakZZbEFQV1REUW9xbXZnemJjUlFoMUZhZE1zOHJZeWhyUkUzeEE0?=
 =?utf-8?B?RU93UDUwMjhzMytzREFldm1pS2Y2amxqMjJ2aFRpRm1pc2V4WTArQkdZbDBU?=
 =?utf-8?B?L3gvdmNRaVhVemFYZnhqalZQK1JyL2M0STRRTzQ3Ky8yYWw3eGZaZFZvRGh5?=
 =?utf-8?B?eDJMRnpCV3pCWTN5UFJwRWFYb2Ria213RHJZanlPRFpWQWkyUHVrV3BnOXlj?=
 =?utf-8?B?bkQ1TEFiVHlMR09hUXJmM0x2bzNPYkJMU1hrZlZ1TndPT3Z2NDduYUZxSzRp?=
 =?utf-8?B?V3J2WG5BWTNwdTV1eW55YlQxaVBCWjNFOXVZZWpGM2pkZUtEZkl3OHZQblp0?=
 =?utf-8?B?RkdmOEkzMmlwNXZMRVg3dkpTREVSYlV6SkdEdm43RWJzekEwS1cwNlFoWGNl?=
 =?utf-8?B?TSszdGh6eFdvWkppbW94LzBFNnpzcXRFcHRFU29BUElVMkloOGpCcW5lT1dm?=
 =?utf-8?B?em12cTRHOGNLeXFxSHdkeklLcC9UbFF5dFB1YUs2eU4rNlF2emp4TUlwZEZl?=
 =?utf-8?B?SitaaVA0bHcxdnU1Q3cyaVYyV3ZFVXh5K01pMVVWY3RhVERPdXpPM2ZDZHlB?=
 =?utf-8?B?VFZYMW5xaEJTMlpocTNlVjFnOUlLdVJDb1FVUXBmTkhIMW1UOE16NFgrd2J0?=
 =?utf-8?B?L3R0ZWYreUM2TUdMSS9Vdnl2bThqQ0JMK0dMS1BMZFZ4NlNaVVJjbHdhdkhG?=
 =?utf-8?B?OWtKRnEyejJicmt4ZmxLVzNaVnNOQVMvQTh2YnF2NjBYS2FYSFZHVHNUa3Fl?=
 =?utf-8?B?ZUFtMnpmSnpuYjVXSFV1N2JKZ3ZTemF4bWZDMG5yU1p2Z1IweTZSV29DbU9E?=
 =?utf-8?B?UkZyRkJIb21KM0FuaElzc2YxSG5BSkszMHkrb2VXQ1NBcjlVYjFuNEZnWnBC?=
 =?utf-8?B?c0VaVERHOTNUcG5IRVcwTytaUUFlWlcvUWZ4aG0zWGk5MC90MTRIa3NQL0o5?=
 =?utf-8?B?bTN5UitYNDZaZWFZY2lRSXhIcGRldGxVSEFjdHFYeFZRblIrVHp2UXJSQVNx?=
 =?utf-8?B?THpoaTZYSnZ5aUxnTE9vNjhNWXBaVS9QUytnSzZnVFZ4UUN0RFE2SGZzODZu?=
 =?utf-8?B?UzY0OVM5MUpocWVrK1cxK3Z5K0RIUDJScUJHeE4xM3h3Z1FJekNDY2tHUnhx?=
 =?utf-8?B?UW54bnQvdEhSaWdocnRESW1YZ2ZDcFlHaXQreWVxeEZwR3VFZ3R5bHVraGhD?=
 =?utf-8?B?NDNENlJKS1JoODFQelB0ZG1BdWVWMnlhSW9YSUYvT1hmWnVTTHN0U0RQKzhO?=
 =?utf-8?B?NkpWZHFGSzRZZ0hhMHZHcWpmbzBZdU51YlpScU9ka1RySmZaU1Z4NG12VG9u?=
 =?utf-8?B?em9MeUowci9HQlBIUkNTUlFOUXZXNnlGRGlIUlRKbXo1Sy9MM0VSQ2V1WXhp?=
 =?utf-8?B?MkZYenJpeWZtemxLRFgyUlZHZjgyNXAySjJGM2phMS90RVZqck1WeVJCMERn?=
 =?utf-8?B?Umc9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YTNKeXIyYjBqY25VcWFYL2cxQzhPd1pmTGd4SmU5K2RtbWVOdFlIQzVmb3N3?=
 =?utf-8?B?eEcxa2g1WHhDcVl6VGoyQU1wMzhCbVVVd0VHanBLa09tRU9ZOC9uM0w3Qkd5?=
 =?utf-8?B?a2lSZDZzdC9qMlFHbUZyaC9DVStFUnQxZnVGNnlWZWFjSldCaUdrZjY0TWxV?=
 =?utf-8?B?OXQ1OTZwOUc0UythVStXN3pZMU15c2hwcmRPZVp0Nm9NYkxhYmw4enpUa2th?=
 =?utf-8?B?ZERVeHA1UmlPaWJwUm1heVBnd0I4RldNWTF1NGJtRHRJbC90ekFRb2hFdWU0?=
 =?utf-8?B?NU9aWTlGem9uZ1pkQTRDK2ZTVjJPOUdpRGxsWEZTNkJDSW12cHRwODZLcmNL?=
 =?utf-8?B?a2pHQzBlNG9aSTU4bVhBYTdPSUF1S3NGQlVrR29SY0ZEVStRdDJ3MHl5VVBF?=
 =?utf-8?B?QUY2by9BMW5acjFQV0Q4UWZzbklCWU1Nam5XVUtMTjVoWkNyMzFCNGpYcmhn?=
 =?utf-8?B?MHIzZlpBQWg2SzhjZnRjaEp2dGRnUXRXZ2UwN0hFTGpUR3hLclBVdW9KOC9V?=
 =?utf-8?B?MDhZTTJwaHpDQSsvZnNFTUE4VjVYaVJJaUlSbWcvaXZFcXkzNDQrYUxPdGhx?=
 =?utf-8?B?NFAyMm8ycFE2d1dZc3IzYmlBaElhQXNaVFVkMjBlRFVhZTY4MzlyeXFhejBB?=
 =?utf-8?B?cVpmbDdmVU9CdlErQm9sV0loMytOSThYSGszWUh0RGdlTDZPZ213LzE4aFRh?=
 =?utf-8?B?MFRpRTh2RkM2Zkl1cnkwWW91WkZQbU4rUFhZMVpqYmF2T2l0cHhBR241akRX?=
 =?utf-8?B?eDdJUHpoQklTU0VPZlFaMHI2K3Q3NGNiV2NzQXc2eGtuMUZnNy82NTR6Tm1y?=
 =?utf-8?B?dEpvYWpQRnZSSkZ0Rmx3NUJSZ3VLVFBhd3BWRUttd2t1SkZpdklkUXVGa1FE?=
 =?utf-8?B?RFp2c0ZkR3ZjMnpIbkV1NVl0cjM3WmVJVkZxM2NpK2tzdm9iWXZ3aEhHa1BO?=
 =?utf-8?B?WWIyUHhLYlpTUFN3anIrVWQ5NCtoM0xjQ2dEalNWRURVc2FxTnFMOFZEOEVX?=
 =?utf-8?B?YlNMcThseE52SXloZ05RZ1kzUlZUQnJFWXRUVE5HSktxLzNsY3ZEa0lmbVNZ?=
 =?utf-8?B?c3BSZGpGRlMwL0NJdCttWlNjK1d6VStNZXNPTkthUkpXMmIyaTBta0E0eWhZ?=
 =?utf-8?B?TUdvcmFJTkI2ZEFNTElNeXNnVENRRDdYR0wwcDBVMHhlYlV4L0luQUVwd3Vw?=
 =?utf-8?B?Q2FDdTA3Z1U3SGFUZE5jTGlFb05wV3BEbkNzbGh3bHRwMHk2eS9Fa0RVVHpM?=
 =?utf-8?B?SHdEUUVHTjZmdiszZEJSK0FSS05aUVEzQTNON0ZpRVNjNUpBT05CUzR2Q1JE?=
 =?utf-8?B?ZjNtTTN6bzVaWWlCWDRVWDByVHdOSThaQnlnSSs2enRNNUNtVGk3dm5wMmcr?=
 =?utf-8?B?OWxod2Z6SDlvb0djMmhVNmd3bHB3ZTRDK25Jb3hWd2M5RXFYdGJGVmZieXpC?=
 =?utf-8?B?bEIrQSt0S0hQT2toQ1c0WGVCRGNuOGsra3BqcmNHcitTSFJLWVlxaHdzME5K?=
 =?utf-8?B?S01iK3pGdnp5TjA2Mk8rNmtXMlJ1OWlNUllqV2UzYlZiQlhEaHhhOGZ2M3Ro?=
 =?utf-8?B?aHlNSkt6bFM0LzVwQTByUG52L05lYnc1OVREeU41dFlieDdORnB3MzVwUVhD?=
 =?utf-8?B?ZXdmaGhXZjhKSEZwM1QvZTh5cEdmbzgxMkVwOEgzYTVKeEg5TnNodGtRQmhq?=
 =?utf-8?B?ZHRaSDFMay9HWkpsYkhtOW5KQzgyNXUvdlNmSklwUUl0ODF3Qm95REx3d1Uy?=
 =?utf-8?B?ZXhrTjdQTm5MYjg2TFFlMHRRQy9QeTJvcW5EUHB3N0ZWTlVGTCttQ3FrK2hw?=
 =?utf-8?B?c3pUUnhVL0xobW1NTU1mOGk3TDNJK3Y0OXBYWCtRNlBEcHF0SUVFZ01VYXUr?=
 =?utf-8?B?OHA5clptbnBjWDJGRlJhTEFHK1ZaSHdKcElGcXNMamphbHE1dDgzT2NtQktW?=
 =?utf-8?B?TCs2clhKVENDS2E3U1lGMlpvKzlBWkYzREMrUnR6MEszalNNNjdnUjZhRW96?=
 =?utf-8?B?RjUyck5JSlY3QmprTDhHbjhDa3o5UjdUR2VaRmNsWjNNWXc4ZGorbkFCSkZJ?=
 =?utf-8?B?MnRLYTNTZzUzQU9abHg4bzIyRm53MUZTVXdQRFhVZlpkQXk3cGFJdVFmcU9E?=
 =?utf-8?B?cjd4K1pqem1sK1FZQmE4Yk93andDUVBKekhFYzFhMldmbkpVZW9WbnJoNEZL?=
 =?utf-8?B?UkkySVFSRDhLUVIwLzUyQjg2WkNib25mR0FHdkp5emNLQ0ZDaXdWYXpjYVNQ?=
 =?utf-8?B?K0RaZWFhVmNtU21hRjB0T2Y0Vi94YlRydmpWaU1qdUxKS0VNU0NlK1NVSUNB?=
 =?utf-8?Q?HnpKRGA4egU6rU4unB?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 272541fe-1544-4749-5878-08de57496ac1
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 10:56:37.2044
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 71Ob/ahZDo+new+8LaAlaElOj4PDkQ58m0R0bMuoumfp4pVgiGDEV65MbL0LZ2lQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR12MB8889
X-Rspamd-Queue-Id: 14F123F6FF
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.61.48:from];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[31];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[52.101.61.48:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: CIWA4U5K2CJ2KNVKG44JEKAFF3BLG35G
X-Message-ID-Hash: CIWA4U5K2CJ2KNVKG44JEKAFF3BLG35G
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/4] dma-buf: Document revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CIWA4U5K2CJ2KNVKG44JEKAFF3BLG35G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMS8xOC8yNiAxMzowOCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiBGcm9tOiBMZW9uIFJv
bWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiANCj4gRG9jdW1lbnQgYSBETUEtYnVmIHJl
dm9rZSBtZWNoYW5pc20gdGhhdCBhbGxvd3MgYW4gZXhwb3J0ZXIgdG8gZXhwbGljaXRseQ0KPiBp
bnZhbGlkYXRlICgia2lsbCIpIGEgc2hhcmVkIGJ1ZmZlciBhZnRlciBpdCBoYXMgYmVlbiBoYW5k
ZWQgb3V0IHRvDQo+IGltcG9ydGVycy4gT25jZSByZXZva2VkLCBhbGwgZnVydGhlciBDUFUgYW5k
IGRldmljZSBhY2Nlc3MgaXMgYmxvY2tlZCwgYW5kDQo+IGltcG9ydGVycyBjb25zaXN0ZW50bHkg
b2JzZXJ2ZSBmYWlsdXJlLg0KPiANCj4gVGhpcyByZXF1aXJlcyBib3RoIGltcG9ydGVycyBhbmQg
ZXhwb3J0ZXJzIHRvIGhvbm9yIHRoZSByZXZva2UgY29udHJhY3QuDQo+IA0KPiBGb3IgaW1wb3J0
ZXJzLCB0aGlzIG1lYW5zIGltcGxlbWVudGluZyAuaW52YWxpZGF0ZV9tYXBwaW5ncygpIGFuZCBj
YWxsaW5nDQo+IGRtYV9idWZfcGluKCkgYWZ0ZXIgdGhlIERNQeKAkWJ1ZiBpcyBhdHRhY2hlZCB0
byB2ZXJpZnkgdGhlIGV4cG9ydGVy4oCZcyBzdXBwb3J0DQo+IGZvciByZXZvY2F0aW9uLg0KPiAN
Cj4gRm9yIGV4cG9ydGVycywgdGhpcyBtZWFucyBpbXBsZW1lbnRpbmcgdGhlIC5waW4oKSBjYWxs
YmFjaywgd2hpY2ggY2hlY2tzDQo+IHRoZSBETUHigJFidWYgYXR0YWNobWVudCBmb3IgYSB2YWxp
ZCByZXZva2UgaW1wbGVtZW50YXRpb24uDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBMZW9uIFJvbWFu
b3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiAtLS0NCj4gIGluY2x1ZGUvbGludXgvZG1hLWJ1
Zi5oIHwgMTkgKysrKysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2Vy
dGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2lu
Y2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+IGluZGV4IDFiMzk3NjM1Yzc5My4uZTBiYzBiNzExOWY1
IDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPiArKysgYi9pbmNsdWRl
L2xpbnV4L2RtYS1idWYuaA0KPiBAQCAtNTc5LDYgKzU3OSwyNSBAQCBzdGF0aWMgaW5saW5lIGJv
b2wgZG1hX2J1Zl9pc19keW5hbWljKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQo+ICAJcmV0dXJu
ICEhZG1hYnVmLT5vcHMtPnBpbjsNCj4gIH0NCj4gIA0KPiArLyoqDQo+ICsgKiBkbWFfYnVmX2F0
dGFjaG1lbnRfaXNfcmV2b2tlIC0gY2hlY2sgaWYgYSBETUEtYnVmIGltcG9ydGVyIGltcGxlbWVu
dHMNCj4gKyAqIHJldm9rZSBzZW1hbnRpY3MuDQo+ICsgKiBAYXR0YWNoOiB0aGUgRE1BLWJ1ZiBh
dHRhY2htZW50IHRvIGNoZWNrDQo+ICsgKg0KDQo+ICsgKiBSZXR1cm5zIHRydWUgaWYgRE1BLWJ1
ZiBpbXBvcnRlciBob25vcnMgcmV2b2tlIHNlbWFudGljcywgd2hpY2ggaXMNCj4gKyAqIG5lZ290
aWF0ZWQgd2l0aCB0aGUgZXhwb3J0ZXIsIGJ5IG1ha2luZyBzdXJlIHRoYXQgaW1wb3J0ZXIgaW1w
bGVtZW50cw0KPiArICogLmludmFsaWRhdGVfbWFwcGluZ3MoKSBjYWxsYmFjayBhbmQgY2FsbHMg
dG8gZG1hX2J1Zl9waW4oKSBhZnRlcg0KPiArICogRE1BLWJ1ZiBhdHRhY2guDQoNClRoYXQgd29y
ZGluZyBpcyB0byB1bmNsZWFyLiBTb21ldGhpbmcgbGlrZToNCg0KUmV0dXJucyB0cnVlIGlmIHRo
ZSBETUEtYnVmIGltcG9ydGVyIGNhbiBoYW5kbGUgaW52YWxpZGF0aW5nIGl0J3MgbWFwcGluZ3Mg
YXQgYW55IHRpbWUsIGV2ZW4gYWZ0ZXIgcGlubmluZyBhIGJ1ZmZlci4NCg0KPiArICovDQo+ICtz
dGF0aWMgaW5saW5lIGJvb2wNCj4gK2RtYV9idWZfYXR0YWNobWVudF9pc19yZXZva2Uoc3RydWN0
IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQ0KDQpUaGF0J3MgY2xlYXJseSBub3QgYSBnb29k
IG5hbWUuIEJ1dCB0aGF0IGlzIGFscmVhZHkgZGlzY3Vzc2VkIGluIGFub3RoZXIgdGhyZWFkLg0K
DQo+ICt7DQo+ICsJcmV0dXJuIElTX0VOQUJMRUQoQ09ORklHX0RNQUJVRl9NT1ZFX05PVElGWSkg
JiYNCg0KT2gsIHdlIHNob3VsZCBoYXZlIHJlbmFtZWQgdGhhdCBhcyB3ZWxsLiBPciBtYXliZSBp
dCBpcyB0aW1lIHRvIGNvbXBsZXRlbHkgcmVtb3ZlIHRoYXQgY29uZmlnIG9wdGlvbi4NCg0KPiAr
CSAgICAgICBkbWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNoLT5kbWFidWYpICYmDQoNClRoaXMgaXMg
Y2hlY2tpbmcgZXhwb3J0ZXIgYW5kIG5vdCBpbXBvcnRlciBjYXBhYmlsaXRpZXMsIHBsZWFzZSBk
cm9wLg0KDQo+ICsJICAgICAgIChhdHRhY2gtPmltcG9ydGVyX29wcyAmJg0KPiArCQlhdHRhY2gt
PmltcG9ydGVyX29wcy0+aW52YWxpZGF0ZV9tYXBwaW5ncyk7DQoNClNvIHdoZW4gaW52YWxpZGF0
ZV9tYXBwaW5ncyBpcyBpbXBsZW1lbnRlZCB3ZSBuZWVkIHRvIGJlIGFibGUgdG8gY2FsbCBpdCBh
dCBhbnkgdGltZS4gWWVhaCB0aGF0IHNvdW5kcyBsaWtlIGEgdmFsaWQgYXBwcm9hY2ggdG8gbWUu
DQoNCkJ1dCB3ZSBuZWVkIHRvIHJlbW92ZSB0aGUgUkROQSBjYWxsYmFjayB3aXRoIHRoZSB3YXJu
aW5nIHRoZW4gdG8gcHJvcGVybHkgc2lnbmFsIHRoYXQuIEFuZCBhbHNvIHBsZWFzZSBkb2N1bWVu
dCB0aGF0IGluIHRoZSBjYWxsYmFjayBrZXJuZWxkb2MuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4u
DQoNCj4gK30NCj4gKw0KPiAgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqZG1hX2J1Zl9hdHRh
Y2goc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwNCj4gIAkJCQkJICBzdHJ1Y3QgZGV2aWNlICpkZXYp
Ow0KPiAgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqDQo+IA0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
