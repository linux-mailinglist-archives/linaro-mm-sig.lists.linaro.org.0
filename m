Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D3581A18307
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Jan 2025 18:36:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7E789445D5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Jan 2025 17:36:56 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2076.outbound.protection.outlook.com [40.107.95.76])
	by lists.linaro.org (Postfix) with ESMTPS id 308093F88C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jan 2025 17:36:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=OCg6nl5n;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.95.76 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZlVhasKcYa0vStXjisgMFOAVsRuwpbqt2FiExzvtSPpBgdqZdbEqQyTkWh3nCZ4lAzPjmRfKSuqzmNG0TM/OWhFE68iGjd2B2uLIfHfJ0n2Ig+kHdXKcGhAedeBuo+u+OumXalFXjm9OG2oDOoKDHvTKxoUzG/H+SG0iv9HuwerxzkyZA5FzWaTTCjxISoco9gRmLOZf+cVJv7moGbuTLiK2euw6MiEea60fO56OXL9qsm0w1jGsBZL/ddN9dGeiOo6UFRNfrhrtNmY0BuzxENEGSeRa1QQykqHtueHSsrYwMYXVbqCtKjW6pJ7ocWWN0OxmeSHFKATfHjhD/dXcuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KDh4rUwZpBIAG3sfK5QrswT/nUdtatxAPWY7uLb/Tx0=;
 b=nZdYgsGz8GVEJy6WeVS1UONlG2ingoS/t3FO7A2oQ8PXIOSLCnMKc63iPouwRo9SrMdJDcvU/SxqniewnIDFy/cTE8bijPaVYO/wlQIgpMCcwoFG2ThugMIHmNs66V7lRPO/XZjt+59TlJn4avvK+v0bqHk3FxoCflDdc7OZBWjzVYhihly186MImN7isjV/2gec45nGbQ3bqdvDzWLdp+LnNahBtNlGh9AmXAuIxd0fsXqmbOPSdEzPZK+3IeGuBaIsOZvH4xTJj1dL+mFcdgzxBdpTvnJzW2O2PDCF8omWQJHZz4YrpQFNPYJ+yyohiDoA8seYuNuPwXVL4ELyow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KDh4rUwZpBIAG3sfK5QrswT/nUdtatxAPWY7uLb/Tx0=;
 b=OCg6nl5nA3Zs1SHOlVleQ3wAL7vMFppDf8tprGIN15CzgKrYIobzvNCuPbWBZccSIvUPaFRpmJzoMRNp7r6E3mik34Ft8skjqU7ksnXdFwG0XSiCq45Mfy/2OFU5FvrXxLFu6hCEgiU7FQHMznGXQIncB53L6U1LwwY+QyeJJcenXncFeHKDm3WfLaAloNoDm/ncFOzQwn8Jgo7xrp1phHysfH5lUgnHgFUeKlYzJd3qb9rGB6+MpBPR5n1tQhqrtT6W+X0DkMwNUcUg/Bc0OuhbA+cTkn1CezWzw2p0UJTq56YuC+ZlLD0L8XaYupBx2GXnkgPXoYtz6WecOeKCqg==
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by SA1PR12MB6727.namprd12.prod.outlook.com (2603:10b6:806:256::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.20; Tue, 21 Jan
 2025 17:36:35 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%5]) with mapi id 15.20.8356.010; Tue, 21 Jan 2025
 17:36:35 +0000
Date: Tue, 21 Jan 2025 13:36:33 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
	Xu Yilun <yilun.xu@linux.intel.com>, Christoph Hellwig <hch@lst.de>,
	Leon Romanovsky <leonro@nvidia.com>, kvm@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org,
	pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com,
	vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com,
	yilun.xu@intel.com, linux-coco@lists.linux.dev,
	linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com,
	leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com,
	tao1.su@intel.com
Message-ID: <20250121173633.GU5556@nvidia.com>
References: <Z4Z4NKqVG2Vbv98Q@phenom.ffwll.local>
 <20250114173103.GE5556@nvidia.com>
 <Z4d4AaLGrhRa5KLJ@phenom.ffwll.local>
 <420bd2ea-d87c-4f01-883e-a7a5cf1635fe@amd.com>
 <Z4psR1qoNQUQf3Q2@phenom.ffwll.local>
 <c10ae58f-280c-4131-802f-d7f62595d013@amd.com>
 <20250120175901.GP5556@nvidia.com>
 <Z46a7y02ONFZrS8Y@phenom.ffwll.local>
 <20250120194804.GT5556@nvidia.com>
 <Z4_HNA4QQbIsK8D9@phenom.ffwll.local>
Content-Disposition: inline
In-Reply-To: <Z4_HNA4QQbIsK8D9@phenom.ffwll.local>
X-ClientProxiedBy: BN9PR03CA0439.namprd03.prod.outlook.com
 (2603:10b6:408:113::24) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|SA1PR12MB6727:EE_
X-MS-Office365-Filtering-Correlation-Id: cd3ff1fb-6493-4d9a-3b36-08dd3a4226b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|7416014|376014|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cVNKQysxeFhWbW5LbUZkdlFIclF5RHRxSlViaEZVS0tNMVlZVXZlVEE4VXJX?=
 =?utf-8?B?UnI4Ym5LQ2ZzaGJaZEsxUEFScGRWOGJCd1NyT0xlWjFibEo2akxnOC9CM2FN?=
 =?utf-8?B?eWFOelhyVTA1dFpHQzRWdThUQ3FuZUtuSEVDU1FoN1VVUTBxcElJOGhONFZQ?=
 =?utf-8?B?dnNwTmxlRVdjTDIzT2JHazBSYzlpT1hxMXhxVy9xK3BhMzZMb3BCamVwbWp6?=
 =?utf-8?B?NW5JU3NicnNQOGVPenF2bDVBdWFBRytyRnhYNXNwTG9rSFAzbFZ2WmNIbkZ5?=
 =?utf-8?B?ZXB0VVhoRTJKZnFTQ3hhSlVaeUovZkxGZE4rZFVWMHZsREtBMFg3M1kxVjN3?=
 =?utf-8?B?VE1EU2w2cUN4OVJ5cVBZMmhnU0RNNHZjNVdxQ3BGZ1l4M2V2bmgrTlpmb2Ex?=
 =?utf-8?B?N1FxMDNZZU5jbnRZZkl1dDMwUkZHNUhmMnZUd0ozYkxMZlVOdTBKME85czFU?=
 =?utf-8?B?cWdNM3BQQVkrYmpEcS9MOGxvaTlTUEpXREFNcFBHcGxoNis3R1ZTY2thYjY5?=
 =?utf-8?B?WTFqYWQyMmdOT00vcmFwRExaTGxPR3pSWnJlZXJmd3VEdjh5R2p1NHI4NHZk?=
 =?utf-8?B?dmQ4NTNaTzcwNkRyQkY0b00wZWFkamRoN0VvWWpEaENUcVU3eDMzYUJDTlo4?=
 =?utf-8?B?aThFZ3FaNTl1eXlGQ3Z6OFRhYmh5aE1oNFJCcEJRMzZCblRSQXpQWHh5NzIy?=
 =?utf-8?B?U0hyY1l1L0xiaVlsNVNrTDFRNTdnM3dRaWtHTDJvRy9ENHhIQjVSNHZuMHFV?=
 =?utf-8?B?U1kveHZSSm9pcWV2aTZrTjA2aFU0dlRPUko4OWtvamYxdmtUTnU3YjVVSng3?=
 =?utf-8?B?QWVhMXoyZHIzNHV0NDJGbmdRMjhQeXdYTTM1ZVBZM2plL3BqZFJua2hFSFV2?=
 =?utf-8?B?YlV2YlJTRllyYzJGb3NZd0RsRDdQS21qa05UeXBUMHV1dHZyOHEzZEFtTHVV?=
 =?utf-8?B?cjBRVmllTmNPUmNRRC8ySHpjYkJ1SnZyeGk4a01qdFRUZDloOGFvNEdwR3Bz?=
 =?utf-8?B?anllblJrbEpuM3UwSnBTQVBRWUJTVXB6ekRGTUhwa1pNUi9WM0Z1VXhjY2tP?=
 =?utf-8?B?bHZKL1M1NmFNYmZQUm1BSmxUYVhnS1EyUjdnWlY3TkdLNVFvUlkwZ3dxNzNB?=
 =?utf-8?B?bjYycnBPaCtsL2VqaWJYR3JPVWdLM2FKR01sM2NJb0VILzZUY2NpQW44VDR5?=
 =?utf-8?B?UHRreWRncUxUUlBEUk1sWU1yMExWa0x2MnBiM2czWjU5Ym1xRExjYTlORS8r?=
 =?utf-8?B?OFlTNFUxd0VVM3FjbUZGZkRVV1owWC8xdzdjNDNIS09adWJVVjFaOXBxbmZv?=
 =?utf-8?B?eTN4RCtMcG4wdmFEZ3R3UC9oanVqUzZieEFnV0d2VDhxU3p3Q3czdHNPTkVa?=
 =?utf-8?B?YmxiMm1Vc2Rib0l5cU02NDBhZ0psVVpvU1FmR2R2NE5QWU5mNkJwNWZhNXdu?=
 =?utf-8?B?N0lUR0dvYmxucXBaWFNwNHRBeWxOYVBTOWJ0WlNsRmFSY1JOc3ZlL0h3SFQx?=
 =?utf-8?B?RUQ2ZE4zR2FvRzRDNXBYZkZzOHNpNzZ3cG5pRFYyN2RyeDNoSTVrbVdmUzNP?=
 =?utf-8?B?L0pibmcvL2VERTRoMEo4WTBtbXluRGc0bmN0YTNmTlRTY3YwUzNoQldoSENt?=
 =?utf-8?B?S29kUTYwOThOQUVQNjFEQ0UzbEgzcUxDQllDaWxkeVMvKzErOGNqYzAwYVBS?=
 =?utf-8?B?ZVA0NzRua1BTd1prbExVN1FBMTZJc0l2S2JhQTIwY2dXQmIxakhBYTBZV3ph?=
 =?utf-8?B?WDQ2dzc5OGVVaFFpYmZ3aVJYLzhKN291U0RHZlMrc1Nsb2t0c1FoTzdtYWJG?=
 =?utf-8?B?dEM0WWp4ZVNEVW1BVGZCRFZIMEhRUVlZVDh0UFpqQmpITTRZSVpSanlXWTU0?=
 =?utf-8?B?SjhsN3EySjV4L28xYWFhbHZEc3pON1E3dHgrdWkzSDRXMjVBM3RZNUVIRnlq?=
 =?utf-8?Q?veS4vy0+EgI=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB8659.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TlNpUm9LRVQxK3h3Q3o4amJFRlpYTkpTV29ROTgyVG5DMjVLUkcrT3NoaVJa?=
 =?utf-8?B?T2ozSTZUN1dRVFZpMEFiMHFFL28ra2hYTVVIdFg2Tk8wcnZ4eUFDZ0RuMHMz?=
 =?utf-8?B?SXFBV2ZGaGxRVHJiSkJSeXlFdnROb1ZTTUppTjRTQnkydXVpTFBqUUxtVmxs?=
 =?utf-8?B?OGxjaWpORUtnSHNYSmxUa3BibVY0TWlxWmZMTkNUcURhU0hlUENjWE1USkNu?=
 =?utf-8?B?SlVKWlZ2dVRsS0RMRTZHZjlSTTRmK0x4RWVWN2h5U28xK2NFblQvZlN6Nkd1?=
 =?utf-8?B?WE1SK240aFlVU3UzYWh5NGhQWTVtdE9WYTFRMjhGbFJVei9MaHVHaDRGS3ds?=
 =?utf-8?B?b0V1bFFkQXJmc2RpWmhuQXZoTE5ZVjkzLzExM0lIcGRJbkhBOWRXT0E4SGxq?=
 =?utf-8?B?amh0aWptZXpYODlMMy9Td1dBUUloaGMxZHZJN3lERTg3ZE1rRnNYejdqbW03?=
 =?utf-8?B?MC9pdmNZSm5OZnBzN3JRMldDRE5ZajkyWUJpQUVYdXpGZVZEeXZkOGRQajZN?=
 =?utf-8?B?bDBPRGRrUmdwVVEzZWtidDdMT1ltOGYxS2RWaFE5ZFlNY0MxUjQxb0k5RWN0?=
 =?utf-8?B?ektHK3E1SkE4TW1mR1JaV1Z6OVZoc3VrZTFmRlRZZHhxNnMvYmJ5MXFQSmpv?=
 =?utf-8?B?WnI0OWZ5djl6UWlYOGg0Z3MyVTI0alBqVTA0YjhmY2UvZEhMV0FyeW1SaVhl?=
 =?utf-8?B?Mm1HT3N0TlVvQ2ZqTHRtQk9rbnRlRkN4Tk9ZbUx5bGtobG8yYi9IaXg0SXlE?=
 =?utf-8?B?ZGk5aVE0WFF3cU1qVzNCLzV6ZUtZUUovejhiOHROTVlRWi9ZTjV1ajhVbDl4?=
 =?utf-8?B?Uk5pSUVBd3hRZ0trYWxoTS9sRXB0TURMa3NwNllyZVdUVUgyZnNYaDdnRVJ0?=
 =?utf-8?B?ZlNpVkxhUzRjVmZkTGxOZ2pDa0pGMjRLbm1FcWplQXNkRzNPZDdMNWUyamhO?=
 =?utf-8?B?TkdtaC9YN0RmOTBWcG9JckFqa1ZmSjVMcFdwNldXK011MElUaWMwVzBhdlNr?=
 =?utf-8?B?M1Z4ZC9HTzkwWEhrd1RRTjBLS0paN3pTa1VFaHloTFJ1SjN0UHJheUxGcHgv?=
 =?utf-8?B?TFg0YW1EWlVCYVN5MVdDQ3JUcFA5aHF1Q0hOMkY5ZnExb01UY2xaRVNCTlNx?=
 =?utf-8?B?bFZQUlBEcXJaOEFWbU5sMms0MXMxQkJyLzhIa0VBSStzQjd5YjU2VGdZTlNF?=
 =?utf-8?B?eG5nMmRPam9zTDEveERwcW44UkU0WTdaOHM1Ny9QN0hudWRDZTZNUUlXQ3kw?=
 =?utf-8?B?dmNxanV0d0JIT1kyNjR2QVVESmJyRVBNam8yNEJ3RUNTcWhJcG5RaWtJeWkv?=
 =?utf-8?B?RUtjSmdQWDQ3cUdnTThuaHp5aDdLN1ZrUXBYN05KSDB2N29tT2N5b0tmS1Np?=
 =?utf-8?B?V3JnWnNzUllaa2d0SGdldko0T1BqRWYvKy9pNk5laFdDZlBTWXExUVFnL1lz?=
 =?utf-8?B?UTV1STJ6TTZHUGNCMWNqbk0rUHBpWGxTdEcxdFFyV21aOTEwR21zVERHM0Zl?=
 =?utf-8?B?Y2xoc3drU1VWc2RHSG1hcURlUThiYVpZcWNIbHJqemRoUGxlcTVFRHE2YjYx?=
 =?utf-8?B?WTVvdytxeDBuQ2RSTENiY0RQNWZZSm50UFF6S0xPdGEveFdRMUlFTVhiVXdV?=
 =?utf-8?B?aFJMcWU5SnhDNk9ucWpXT2JUeU55aFlSVitzYUdBMWN1eFUzRUI3L0M4Q2tr?=
 =?utf-8?B?bDBFWFh0Skp4anAydVBwT1lheGFaY25jcU1hajk4WUtsNnB2eWkzQmFqdVBC?=
 =?utf-8?B?OTNvcWYyWmpCaVRoZGRnN1B2eEpsU1psdGtOd3FvdVVnQVY3MmhaY2t0bXgy?=
 =?utf-8?B?K1VNNjRUWkdJRzRLZ1oyRm91UFBZTUJZK3UrOVU3c1pQOXhncDZrWkhwRGxE?=
 =?utf-8?B?RDhIQ0hmNWxXQS9INTZYWmYxY1VGb21PNVNGSjgyWHBELzlBd3I4bDdvUlBi?=
 =?utf-8?B?KzR3RFY1TWhhK3BoRkovckN3Z01lczUyc1RjYlZPbVc4YldwTjYxOExDN1Yy?=
 =?utf-8?B?M1ZTSmlXUVgrNUpLZ3JGcWs2NnZ3cXVyaGNLUHpjS2FZWWJDNnE0elJjVGdC?=
 =?utf-8?B?SlVFdmtzay9WWk56d0doZ3NWT3NCZmZSbEpwT1VKTW5ob0lBSml6L1RhQXJv?=
 =?utf-8?Q?R1ss=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd3ff1fb-6493-4d9a-3b36-08dd3a4226b6
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2025 17:36:35.0823
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jte3i8MA5m3gtd1AePgJlQsQka6r2A3FXEnfKlIWRwaJSdyzWMMu3Ma3ShC4Ahlx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB6727
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 308093F88C
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.95.76:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[24];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.95.76:from];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[Nvidia.com:+]
Message-ID-Hash: WLK5ZD2EBHD7RPBETB2T2S4EIYTHH2Q5
X-Message-ID-Hash: WLK5ZD2EBHD7RPBETB2T2S4EIYTHH2Q5
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WLK5ZD2EBHD7RPBETB2T2S4EIYTHH2Q5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBKYW4gMjEsIDIwMjUgYXQgMDU6MTE6MzJQTSArMDEwMCwgU2ltb25hIFZldHRlciB3
cm90ZToNCj4gT24gTW9uLCBKYW4gMjAsIDIwMjUgYXQgMDM6NDg6MDRQTSAtMDQwMCwgSmFzb24g
R3VudGhvcnBlIHdyb3RlOg0KPiA+IE9uIE1vbiwgSmFuIDIwLCAyMDI1IGF0IDA3OjUwOjIzUE0g
KzAxMDAsIFNpbW9uYSBWZXR0ZXIgd3JvdGU6DQo+ID4gPiBPbiBNb24sIEphbiAyMCwgMjAyNSBh
dCAwMTo1OTowMVBNIC0wNDAwLCBKYXNvbiBHdW50aG9ycGUgd3JvdGU6DQo+ID4gPiA+IE9uIE1v
biwgSmFuIDIwLCAyMDI1IGF0IDAxOjE0OjEyUE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3Jv
dGU6DQo+ID4gPiA+IFdoYXQgaXMgZ29pbmcgd3Jvbmcgd2l0aCB5b3VyIGVtYWlsPyBZb3UgcmVw
bGllZCB0byBTaW1vbmEsIGJ1dA0KPiA+ID4gPiBTaW1vbmEgVmV0dGVyIDxzaW1vbmEudmV0dGVy
QGZmd2xsLmNoPiBpcyBkcm9wcGVkIGZyb20gdGhlIFRvL0NDDQo+ID4gPiA+IGxpc3Q/Pz8gSSBh
ZGRlZCB0aGUgYWRkcmVzcyBiYWNrLCBidXQgc2VlbXMgbGlrZSBhIHdlaXJkIHRoaW5nIHRvDQo+
ID4gPiA+IGhhcHBlbi4NCj4gPiA+IA0KPiA+ID4gTWlnaHQgYWxzbyBiZSBmdW5ueSBtYWlsaW5n
IGxpc3Qgc3R1ZmYsIGRlcGVuZGluZyBob3cgeW91IGdldCB0aGVzZS4gSQ0KPiA+ID4gcmVhZCBt
YWlscyBvdmVyIGxvcmUgYW5kIHByZXR0eSBtdWNoIGlnbm9yZSBjYyAodW5sZXNzIGl0J3Mgbm90
IGFsc28gb24NCj4gPiA+IGFueSBsaXN0LCBzaW5jZSB0aG9zZSB0ZW5kIHRvIGJlIHNlY3VyaXR5
IGlzc3VlcykgYmVjYXVzZSBJIGdldCBjYydlZCBvbg0KPiA+ID4gd2F5IHRvbyBtdWNoIHN0dWZm
IGZvciB0aGF0IHRvIGJlIGEgdXNlZnVsIHNpZ25hbC4NCj4gPiANCj4gPiBPaCBJIHNlZSwgeW91
IGFyZSBzZW5kaW5nIGEgTWFpbC1mb2xsb3d1cC10byBoZWFkZXIgdGhhdCBleGNsdWRlcyB5b3Vy
DQo+ID4gYWRkcmVzcywgc28geW91IGRvbid0IGdldCBhbnkgZW1haWxzIGF0IGFsbC4uIE15IG11
dHQgaXMgZHJvcHBpbmcgeW91DQo+ID4gYXMgd2VsbC4NCj4gPiANCj4gPiA+IFllYWggSSdtIG5v
dCB3b3JyaWVkIGFib3V0IGNwdSBtbWFwIGxvY2tpbmcgc2VtYW50aWNzLiBkcm0vdHRtIGlzIGEg
cHJldHR5DQo+ID4gPiBjbGVhciBleGFtcGxlIHRoYXQgeW91IGNhbiBpbXBsZW1lbnQgZG1hLWJ1
ZiBtbWFwIHdpdGggdGhlIHJ1bGVzIHdlIGhhdmUsDQo+ID4gPiBleGNlcHQgdGhlIHVubWFwX21h
cHBpbmdfcmFuZ2UgbWlnaHQgbmVlZCBhIGJpdCBmdWRnaW5nIHdpdGggYSBzZXBhcmF0ZQ0KPiA+
ID4gYWRkcmVzc19zcGFjZS4NCj4gPiANCj4gPiBGcm9tIG15IHBlcnNwZWN0aXZlIHRoZSBtbWFw
IHRoaW5nIGlzIGEgYml0IG9mIGEgc2lkZS9EUk0tb25seSB0aGluZw0KPiA+IGFzIG5vdGhpbmcg
SSdtIGludGVyZXN0ZWQgaW4gd2FudHMgdG8gbW1hcCBkbWFidWYgaW50byBhIFZNQS4NCj4NCj4g
SSBndWVzcyB3ZSBjb3VsZCBqdXN0IHNraXAgbW1hcCBvbiB0aGVzZSBwZm4gZXhwb3J0ZXJzLCBi
dXQgaXQgYWxzbyBtZWFucw0KPiBhIGJpdCBtb3JlIGJvaWxlcnBsYXRlLiANCg0KSSBoYXZlIGJl
ZW4gYXNzdW1pbmcgdGhhdCBkbWFidWYgbW1hcCByZW1haW5zIHVuY2hhbmdlZCwgdGhhdA0KZXhw
b3J0ZXJzIHdpbGwgY29udGludWUgdG8gaW1wbGVtZW50IHRoYXQgbW1hcCgpIGNhbGxiYWNrIGFz
IHRvZGF5Lg0KDQpNeSBtYWluIGludGVyZXN0IGhhcyBiZWVuIHdoYXQgZGF0YSBzdHJ1Y3R1cmUg
aXMgcHJvZHVjZWQgaW4gdGhlDQphdHRhY2ggQVBJcy4NCg0KRWcgdG9kYXkgd2UgaGF2ZSBhIHN0
cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgdGhhdCByZXR1cm5zIGEgc2dfdGFibGUuDQoNCkknbSBl
eHBlY3Rpbmcgc29tZSBraW5kIG9mIG5ldyBkYXRhIHN0cnVjdHVyZSwgbGV0cyBjYWxsIGl0ICJw
aHlzaWNhbA0KbGlzdCIgdGhhdCBpcyBzb21lIGVmZmljaWVudCBjb2Rpbmcgb2YgbWV0YS9hZGRy
L2xlbiB0dXBsZXMgdGhhdCB3b3Jrcw0Kd2VsbCB3aXRoIHRoZSBuZXcgRE1BIEFQSS4gTWF0dGhl
dyBoYXMgYmVlbiBjYWxsaW5nIHRoaXMgdGhpbmcgcGh5ci4uDQoNClNvLCBJIGltYWdpbmUsIHN0
cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgZ2FpbmluZyBhbiBvcHRpb25hbA0KZmVhdHVyZSBuZWdv
dGlhdGlvbiBhbmQgdGhlbiB3ZSBoYXZlIGluIGRtYV9idWZfYXR0YWNobWVudDoNCg0KICAgICAg
ICB1bmlvbiB7DQogICAgICAgICAgICAgIHN0cnVjdCBzZ190YWJsZSAqc2d0Ow0KCSAgICAgIHN0
cnVjdCBwaHlzaWNhbF9saXN0ICpwaHlyOw0KCX07DQoNClRoYXQncyBiYXNpY2FseSBpdCwgYW4g
YWx0ZXJuYXRpdmUgdG8gc2NhdHRlcmxpc3QgdGhhdCBoYXMgYSBjbGVhbg0KYXJjaGl0ZWN0dXJl
Lg0KDQpOb3csIGlmIHlvdSBhcmUgYXNraW5nIGlmIHRoZSBjdXJyZW50IGRtYWJ1ZiBtbWFwIGNh
bGxiYWNrIGNhbiBiZQ0KaW1wcm92ZWQgd2l0aCB0aGUgYWJvdmU/IE1heWJlPyBwaHlyIHNob3Vs
ZCBoYXZlIHRoZSBuZWNjZXNzYXJ5DQppbmZvcm1hdGlvbiBpbnNpZGUgaXQgdG8gcG9wdWxhdGUg
YSBWTUEgLSBldmVudHVhbGx5IGV2ZW4gZnVsbHkNCmNvcnJlY3RseSB3aXRoIGFsbCB0aGUgcmln
aHQgY2FjaGFibGUvZW5jcnlwdGVkL2ZvcmJpZGRlbi9ldGMgZmxhZ3MuDQoNClNvLCB5b3UgY291
bGQgaW1hZ2luZSB0aGF0IGV4cG9ydGVycyBjb3VsZCBqdXN0IGhhdmUgb25lIHJvdXRpbmUgdG8N
CmdlbmVyYXRlIHRoZSBwaHlyIGxpc3QgYW5kIHRoYXQgZ29lcyBpbnRvIHRoZSBhdHRhY2htZW50
LCBnb2VzIGludG8NCnNvbWUgY29tbW9uIGNvZGUgdG8gZmlsbCBWTUEgUFRFcywgYW5kIHNvbWUg
b3RoZXIgY29tbW9uIGNvZGUgdGhhdA0Kd2lsbCBjb252ZXJ0IGl0IGludG8gdGhlIERNQUJVRiBz
Y2F0dGVybGlzdC4gSWYgcGVyZm9ybWFuY2UgaXMgbm90IGENCmNvbmNlcm4gd2l0aCB0aGVzZSBk
YXRhIHN0cnVjdHVyZSBjb252ZXJzaW9ucyBpdCBjb3VsZCBiZSBhbiBhcHBlYWxpbmcNCnNpbXBs
aWZpY2F0aW9uLg0KDQpBbmQgeWVzLCBJIGNvdWxkIGltYWdpbmUgdGhlIG1ldGEgaW5mb3JtYXRp
b24gYmVpbmcgZGVzY3JpcHRpdmUgZW5vdWdoDQp0byBzdXBwb3J0IHRoZSBwcml2YXRlIGludGVy
Y29ubmVjdCBjYXNlcywgdGhlIGNvbW1vbiBjb2RlIGNvdWxkDQpkZXRlY3QgcHJpdmF0ZSBtZXRh
IGluZm9ybWF0aW9uIGFuZCBqdXN0IGNsZWFubHkgZmFpbC4NCg0KPiBBdCBsZWFzdCB0aGUgZGV2
aWNlIG1hcHBpbmcgLyBkbWFfYnVmX2F0dGFjaG1lbnQNCj4gc2lkZSBzaG91bGQgYmUgZG9hYmxl
IHdpdGgganVzdCB0aGUgcGZuIGFuZCB0aGUgbmV3IGRtYS1hcGk/DQoNClllcywgdGhhdCB3b3Vs
ZCBiZSBteSBmaXJzdCBnb2FsIHBvc3QuIEZpZ3VyZSBvdXQgc29tZSBtZXRhDQppbmZvcm1hdGlv
biBhbmQgYSBjb250YWluZXIgZGF0YSBzdHJ1Y3R1cmUgdGhhdCBhbGxvd3Mgc3RydWN0DQpwYWdl
LWxlc3MgUDJQIG1hcHBpbmcgdGhyb3VnaCB0aGUgbmV3IERNQSBBUEkuDQoNCj4gPiBJJ20gaG9w
aW5nIHdlIGNhbiBnZXQgdG8gc29tZXRoaW5nIHdoZXJlIHdlIGRlc2NyaWJlIG5vdCBqdXN0IGhv
dyB0aGUNCj4gPiBwZm5zIHNob3VsZCBiZSBETUEgbWFwcGVkLCBidXQgYWxzbyBjYW4gZGVzY3Jp
YmUgaG93IHRoZXkgc2hvdWxkIGJlDQo+ID4gQ1BVIG1hcHBlZC4gRm9yIGluc3RhbmNlIHRoYXQg
dGhpcyBQRk4gc3BhY2UgaXMgYWx3YXlzIG1hcHBlZA0KPiA+IHVuY2FjaGFibGUsIGluIENQVSBh
bmQgaW4gSU9NTVUuDQo+IA0KPiBJIHdhcyBwb25kZXJpbmcgd2hldGhlciBkbWFfbW1hcCBhbmQg
ZnJpZW5kcyB3b3VsZCBiZSBhIGdvb2QgcGxhY2UgdG8NCj4gcHJvdG90eXBlIHRoaXMgYW5kIGdv
IGZvciBhIGZ1bGx5IGdlbmVyaWMgaW1wbGVtZW50YXRpb24uIEJ1dCB0aGVuIGV2ZW4NCj4gdGhv
c2UgaGF2ZSBfd2MvX3VuY2FjaGVkIHZhcmlhbnRzLg0KDQpHaXZlbiB0aGF0IHRoZSBpbmFiaWxp
dHkgdG8gY29ycmVjdGx5IERNQSBtYXAgUDJQIE1NSU8gd2l0aG91dCBzdHJ1Y3QNCnBhZ2UgaXMg
YSBjdXJyZW50IHBhaW4gcG9pbnQgYW5kIGN1cnJlbnQgc291cmNlIG9mIGhhY2tzIGluIGRtYWJ1
Zg0KZXhwb3J0ZXJzLCBJIHdhbnRlZCB0byBtYWtlIHJlc29sdmluZyB0aGF0IGEgcHJpb3JpdHku
DQoNCkhvd2V2ZXIsIGlmIHlvdSBtZWFuIHdoYXQgSSBkZXNjcmliZWQgYWJvdmUgZm9yICJmdWxs
eSBnZW5lcmljIFtkbWFidWYNCm1tYXBdIGltcGxlbWVudGF0aW9uIiwgdGhlbiB3ZSdkIGhhdmUg
dGhlIHBoeXIgZGF0YXN0cnVjdHVyZSBhcyBhDQpkZXBlbmRlbmN5IHRvIGF0dGVtcHQgdGhhdCB3
b3JrLg0KDQpwaHlyLCBhbmQgcGFydGljdWxhcmx5IHRoZSBtZXRhIGluZm9ybWF0aW9uLCBoYXMg
YSBudW1iZXIgb2YNCnN0YWtlaG9sZGVycy4gSSB3YXMgdGhpbmtpbmcgb2YgZ29pbmcgZmlyc3Qg
d2l0aCByZG1hJ3MgbWVtb3J5DQpyZWdpc3RyYXRpb24gZmxvdyBiZWNhdXNlIHdlIGFyZSBub3cg
cHJldHR5IGNsb3NlIHRvIGJlaW5nIGFibGUgdG8gZG8NCnN1Y2ggYSBiaWcgY2hhbmdlLCBhbmQg
aXQgY2FuIGRlbW9uc3RyYXRlIG1vc3Qgb2YgdGhlIHJlcXVpcmVtZW50cy4NCg0KQnV0IHRoYXQg
ZG9lc24ndCBtZWFuIG1tYXAgY291bGRuJ3QgZ28gY29uY3VycmVudGx5IG9uIHRoZSBzYW1lIGFn
cmVlZA0KZGF0YXN0cnVjdHVyZSBpZiBwZW9wbGUgYXJlIGludGVyZXN0ZWQuDQoNCj4gPiBXZSBh
bHNvIGhhdmUgY3VycmVudCBidWdzIGluIHRoZSBpb21tdS92ZmlvIHNpZGUgd2hlcmUgd2UgYXJl
IGZ1ZGdpbmcNCj4gPiBDQyBzdHVmZiwgbGlrZSBhc3N1bWluZyBDUFUgbWVtb3J5IGlzIGVuY3J5
cHRlZCAobm90IGFsd2F5cyB0cnVlKSBhbmQNCj4gPiB0aGF0IE1NSU8gaXMgbm9uLWVuY3J5cHRl
ZCAobm90IGFsd2F5cyB0cnVlKQ0KPiANCj4gdGJmIENDIHB0ZSBmbGFncyBJIGp1c3QgZG9uJ3Qg
Z3JvayBhdCBhbGwuIEkndmUgb25jZSB0cmllZCB0byB1bmRlcnN0YW5kDQo+IHdoYXQgY3VycmVu
dCBleHBvcnRlcnMgYW5kIGdwdSBkcml2ZXJzIGRvIGFuZCBqdXN0IGdhdmUgdXAuIEJ1dCB0aGF0
J3MNCj4gYWxzbyBhIGJpdCB3aHkgSSdtIHdvcnJpZWQgaGVyZSBiZWNhdXNlIGl0J3MgYW4gZW5p
Z21hIHRvIG1lLg0KDQpGb3IgQ0MsIGluc2lkZSB0aGUgc2VjdXJlIHdvcmxkLCBpcyBzb21lIGlu
Zm9ybWF0aW9uIGlmIGVhY2ggUEZODQppbnNpZGUgdGhlIFZNIGlzICdlbmNyeXB0ZWQnIG9yIG5v
dC4gQW55IFZNIFBURSAoaW5jbHVkaW5nIHRoZSBJT1BURXMpDQpwb2ludGluZyBhdCB0aGUgUEZO
IG11c3QgbWF0Y2ggdGhlIHNlY3VyZSB3b3JsZCdzIHZpZXcgb2YNCidlbmNyeXB0ZWQnLiBUaGUg
Vk0gY2FuIGFzayB0aGUgc2VjdXJlIHdvcmxkIHRvIGNoYW5nZSBpdHMgdmlldyBhdA0KcnVudGlt
ZS4NCg0KVGhlIHdheSBDQyBoYXMgYmVlbiBib2x0ZWQgb24gdG8gdGhlIGtlcm5lbCBzbyBmYXIg
bGFyZWdseSBoaWRlcyB0aGlzDQpmcm9tIGRyaXZlcnMsIHNvIGl0IGlzIHRyb3VibGVkIHRvIHRl
bGwgaW4gZHJpdmVyIGNvZGUgaWYgdGhlIFBGTiB5b3UNCmhhdmUgaXMgJ2VuY3J5cHRlZCcgb3Ig
bm90LiBSaWdodCBub3cgdGhlIGdlbmVyYWwgcnVsZSAodGhhdCBpcyBub3QNCmFsd2F5cyB0cnVl
KSBpcyB0aGF0IHN0cnVjdCBwYWdlIENQVSBtZW1vcnkgaXMgZW5jcnlwdGVkIGFuZA0KZXZlcnl0
aGluZyBlbHNlIGlzIGRlY3J5cHRlZC4NCg0KU28gcmlnaHQgbm93LCB5b3UgY2FuIG1vc3RseSBp
Z25vcmUgaXQgYW5kIHRoZSBhYm92ZSBhc3N1bXB0aW9uDQpsYXJnZWx5IGhhcHBlbnMgZm9yIHlv
dSB0cmFuc3BhcmVudGx5Lg0KDQpIb3dldmVyLCBzb29uIHdlIHdpbGwgaGF2ZSBlbmNyeXB0ZWQg
UDJQIE1NSU8gd2hpY2ggd2lsbCBzdHJlc3MgdGhpcw0KaGlkaW5nIHN0cmF0ZWd5Lg0KDQo+ID4g
PiBJIHRob3VnaHQgaW9tbXV2MiAob3Igd2hhdGV2ZXIgbGludXggY2FsbHMgdGhlc2UpIGhhcyBm
dWxsIGZhdWx0IHN1cHBvcnQNCj4gPiA+IGFuZCBjb3VsZCBzdXBwb3J0IGN1cnJlbnQgbW92ZSBz
ZW1hbnRpY3MuIEJ1dCB5ZWFoIGZvciBpb21tdSB3aXRob3V0DQo+ID4gPiBmYXVsdCBzdXBwb3J0
IHdlIG5lZWQgc29tZSBraW5kIG9mIHBpbiBvciBhIG5ld2x5IGZvcm1hbGl6ZWQgcmV2b2tlIG1v
ZGVsLg0KPiA+IA0KPiA+IE5vLCB0aGlzIGlzIEhXIGRlcGVuZGVudCwgaW5jbHVkaW5nIFBDSSBk
ZXZpY2UsIGFuZCBJJ20gYXdhcmUgb2Ygbm8gSFcNCj4gPiB0aGF0IGZ1bGx5IGltcGxlbWVudHMg
dGhpcyBpbiBhIHdheSB0aGF0IGNvdWxkIGJlIHVzZWZ1bCB0byBpbXBsZW1lbnQNCj4gPiBhcmJp
dGFyeSBtb3ZlIHNlbWFudGljcyBmb3IgVkZJTy4uDQo+IA0KPiBIbSBJIHRob3VnaHQgd2UndmUg
aGFkIGF0IGxlYXN0IHByb3RvdHlwZXMgZmxvYXRpbmcgYXJvdW5kIG9mIGRldmljZSBmYXVsdA0K
PiByZXBhaXIsIGJ1dCBJIGd1ZXNzIHRoYXQgb25seSB3b3JrcyB3aXRoIEFUUy9wYXNpZCBzdHVm
ZiBhbmQgbm90IGdlbmVyYWwNCj4gaW9tbXUgdHJhZmZpYyBmcm9tIGRldmljZXMuIERlZmluaXRl
bHkgbmVlZHMgc29tZSBkZXZpY2UgY29vcGVyYXRpb24gc2luY2UNCj4gdGhlIHRpbWVvdXRzIG9m
IGEgZnVsbCBmYXVsdCBhcmUgYWxtb3N0IGVuZGxlc3MuDQoNClllcywgZXhhY3RseS4gV2hhdCBh
bGwgcmVhbCBkZXZpY2VzIEknbSBhd2FyZSBoYXZlIGRvbmUgaXMgbWFrZSBhDQpzdWJzZXQgb2Yg
dGhlaXIgdHJhZmZpYyB3b3JrIHdpdGggQVRTIGFuZCBQUkksIGJ1dCBub3QgYWxsIHRoZWlyDQp0
cmFmZmljLiBXaXRob3V0ICphbGwqIHRyYWZmaWMgeW91IGNhbid0IG1ha2UgYW55IGdlbmVyaWMg
YXNzdW1wdGlvbg0KaW4gdGhlIGlvbW11IHRoYXQgYSB0cmFuc2llbnQgbm9uLXByZXNlbnQgd29u
J3QgYmUgZmF0YWwgdG8gdGhlDQpkZXZpY2UuDQoNClN0dWZmIGxpa2UgZG1hYnVmIG1vdmUgc2Vt
YW50aWNzIHJlbHkgb24gdHJhbnNpZW50IG5vbi1wcmVzZW50IGJlaW5nDQpub24tZGlzcnVwdGl2
ZS4uLg0KDQpKYXNvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
