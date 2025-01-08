Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A61EFA05CB5
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Jan 2025 14:24:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1A3B465FC
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Jan 2025 13:24:12 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2056.outbound.protection.outlook.com [40.107.223.56])
	by lists.linaro.org (Postfix) with ESMTPS id D36EC3F622
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Jan 2025 13:24:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=HgUvY9tP;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.223.56 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GhVSm46zr8mTBT2fSnSsC136ybbMaobOQA7rhyUj9swbQLYA2IFiiR8QyetgpBx2dxrBHg4YgwT8x9cYAyYgZ+xQoJSZVYAPHOW531qktjLS8Y3Vi8oFpBrWCxY0mntJCfZS7h+jbG5vdRFKDaPZqbcBzhkkkqn9710H20e7VugwF1LTRRVls3NT9pvanCc+h3Q69yFw6RvxRd3C9+EtvGi4wXnugR0qMQDH2HM6EEdN5W9M/1uS28mrS4z33iI9FZSGMveSPnPxmjUcv86zn1A/Fw/hKxMuszb3zuMM3zgZgTPlyJQ3oWMSkzzOyxLr1fmbQeriS3hBgiKtaKH/kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5+ykCuqe/n8BsRDVoZVSfG2+0a3v/sSx/fhXnr6WOao=;
 b=HlcH0XVIZfrKujlWYpibZUbmtBjUi3rSkjRfJGJ9wa8gBjg0u6Ax/vG+zUmotH2/iK+eKhZf/BzNti71gHkk7jKj/ti6xH+NnJzIoMGRVLtVCPZrlaLMUpOvY2vANc4ITI2ev7kyH3DMS28vaMLjaNze/ZsVu6HMV4KOms/I0UKkfM//cyaoYnlSDHOfWZ5ddCWwAHKSyPD5ofq7ZtIk6f0A2oDRNZr9OyZ+Znak50x+lHeHsIKItpQhq4YO0mWdz+MGCJE1wO45QulZWBKVxEy1OkzR0myy3wHzVrNDNTXoFnKeuP7U6H+2lX4SdeClJPIjpAhwURTVa0+pBgAxGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5+ykCuqe/n8BsRDVoZVSfG2+0a3v/sSx/fhXnr6WOao=;
 b=HgUvY9tP3Z1M1+YkYL0Kl3Z4PTDAgQWtfFjGK8tqMvI73+HzT1O9upPYm00tEDYYixpinOnLI+BheaovdSpJUlzG33iNR3JrE6LIDdAmc109l1GVaaNG/WEeA72Lv2rVXv79rn1TqwRz7ZU7JiSsW1O9BXgJpQmM7pPQ6WQmqLt6C7bo5Y0SlLun40moI7t18DTujhs70yIErSJ6DBrTraRNl7nufQNW79a507E7RVm55K4Au7ofMdIfj6+grb9ovaP7GclZf2wJ+x+qfYc7INqo9vudU9a19aV9okSn9oiX/oKzY+JWM66Gg1ZATsxYQ4JLKY9ajaL3KGEO3yvtxA==
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by PH0PR12MB7886.namprd12.prod.outlook.com (2603:10b6:510:26e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.15; Wed, 8 Jan
 2025 13:24:00 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%4]) with mapi id 15.20.8314.015; Wed, 8 Jan 2025
 13:23:59 +0000
Date: Wed, 8 Jan 2025 09:23:58 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
	Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>
Message-ID: <20250108132358.GP5556@nvidia.com>
References: <20250107142719.179636-1-yilun.xu@linux.intel.com>
 <20250107142719.179636-2-yilun.xu@linux.intel.com>
 <b1f3c179-31a9-4592-a35b-b96d2e8e8261@amd.com>
Content-Disposition: inline
In-Reply-To: <b1f3c179-31a9-4592-a35b-b96d2e8e8261@amd.com>
X-ClientProxiedBy: BN9PR03CA0221.namprd03.prod.outlook.com
 (2603:10b6:408:f8::16) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|PH0PR12MB7886:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a0dee02-c885-433f-2def-08dd2fe7b61d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|7416014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TkI0SzdhSkY3MVdSNnB5YU5hazlHbXcvcHpLTGRsNXpHOEpyamliOTIrQm5L?=
 =?utf-8?B?Q1pENHYzSjhaR1NOd2NRL0Jtc1l6c0JoSkErcXB3Tm03bmxmK3NmakJzWnlS?=
 =?utf-8?B?VDYyZVBzUU5TUGNlL2NkNUpvaE9NalNqWFdkc3JEbEJLWVdzVGRDaEppV2dt?=
 =?utf-8?B?QU1Uc2JkMkRVL1lFRlQyZGtiZWVTeUJpbHZtSGFsSjNBM1lkRUYyRmZTOFEx?=
 =?utf-8?B?cGxYM0N1TERtVnVsWDNMUHZ6QUY4V1VTMnF4WGhGL1J0NEgwNHBkMGxsWWxF?=
 =?utf-8?B?YU1IdFMydUlNK0xXQWlHRzhMK2pJQ0hscGdIeURCN0RiQThzWXpmcUt6K1pD?=
 =?utf-8?B?R1N6WmxIcXZxdzNMTzFuQ3pDb0ZYNmpRTFU0T0NIdWJUb2dWeUd5dGN0emF1?=
 =?utf-8?B?SnlySUVmUk9NaTI2L2lBeWxZQjdaeFlXYUNjTG1rWmNPYmRLU3VMOHRuZ1l3?=
 =?utf-8?B?aG8ybk5velFRd2QyRnY4UFNKVWhBMTVGaVZRZXBsTWNiNytpeVYwQ0pwOW1m?=
 =?utf-8?B?YnBjNFFxTElaMHJKWVBQSU1DMGlkWklMRk1vSFdxbEZxNHhJanNYOFdjUk1L?=
 =?utf-8?B?WEZPTm9vM2FMUDg2anZzdnJXZ0liQVR3ZVJHRVhCclNGbmNGZlhGUWtsbmVu?=
 =?utf-8?B?czlZRS9PQUlCU2NjNlh1am1rMzJWK1Rkby9nMFc5aFZ2NGN6MXljdWNNSytX?=
 =?utf-8?B?SGlzNElXTHRuZEJwR3BnajJacW93V1ltdXJoNVZia0xaUnA2S1FHR0hCZUdZ?=
 =?utf-8?B?V0dwSHhFVWNGQVlqWUdCOVQwMWFDdEMxMXpndmZkSEJqMStHbmlWc3N6MStR?=
 =?utf-8?B?eEVVdzQwUmlsVUtZQXBoU1huOXh4YW9FRjhmQUJXalJHUjY1QmFRM0hmNzBH?=
 =?utf-8?B?cVo5RXJFUWxFYnpLQWZjeXRLUGNYN1p6aGs2NHMyNHdiVTJZOE1iWTVGV1ZS?=
 =?utf-8?B?dE53WCtaMEk3MHY4QlBoWFlGcWhaZ3o0OHJBQnY3ZHhkTFNwUTk5T0NqSERm?=
 =?utf-8?B?UDJkNWZ3YjhkWUJ5Qmx5QjBaQjIybklHUGo4dy9SSFJpMWdVeTk4QkFGbkZ0?=
 =?utf-8?B?V2ZsOWExc3V4UWRDcnNJb01NNmtDaERWZG9KVXorOGRoc2RVV01lTXVaMjRt?=
 =?utf-8?B?empyZW4weHlwWkJQTmhiMlI0S3Erdkp0K1lhS3hVakRKd1U3Q0tSZ2pSL2I0?=
 =?utf-8?B?cW91c0plNW9TMy8vbUdSNkhtaGZURVBDMm9uYlp4cFFNd2dIUnpPV0NDUW9L?=
 =?utf-8?B?b2I5ZklnY2w4a05GeE1MUWcvYm9TUnBnelVoWHYwVFFlRWxPWTVMaXN2WHhW?=
 =?utf-8?B?UGNDY0UvUS9CcGJQVzdXeGJnRzczUUVhNCs5UE9KZ0lZOCszSEp6ZFZTYUdi?=
 =?utf-8?B?U0NtK3VBL0YwVnQ2dlQyQTkrUWREMnltRy85R2EyTjZ6ZEt5YkxMekowaDVo?=
 =?utf-8?B?TXA5alZ3NktldEsvNS8vcmRNUjZoRGVOT3Q2L0NxTTBnaUxJQ3hXQUJ6OGZS?=
 =?utf-8?B?UU1Ra0NlcEZudWpxSlI2QjJWcHdMTERCL0JRQnlKVWN2akhsQlZ2NGRkTXhy?=
 =?utf-8?B?S3E3WGtWWDBVbWRTS2hZbXkxWXRIODJrcitGMFVKd0FCSkRKTUhyMUVWVm9L?=
 =?utf-8?B?V013TG1sWVBDeFI1dExndy9uV25FQk52ejdWS2U0UU5oN0FXNDA1YWZUQ0da?=
 =?utf-8?B?eDRoNHZ4d3dBQUtiS0lLQXNrQUdnTzBnbFRzMXlqSnRFakJmRitERWpJZUti?=
 =?utf-8?B?MitIRG96eHNtRDFHSHZRYjFhYkRvQW42ZnFEUWo4M1dCOVcvcE1EZE53SDQy?=
 =?utf-8?B?dkhQNm1mcVFiQzh4U2lUeGRWWTZPaGh5NzZYaGpvMTVSaThnRm1MNzBpcXdY?=
 =?utf-8?Q?2hS0vPvk/MYiE?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB8659.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(7416014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aVJWbnhZdjVEWFBXM282V01SRUEzVVVNdU9weXprK2xZZmtJU1ZJOHJsSDQ1?=
 =?utf-8?B?RkNsMUE4a1BlUHpDbzhuUHhXRXVvU3NQaVNpWEpiK252TzQwVS9iNkhmQkVQ?=
 =?utf-8?B?Rm9va0JTMlI5VEM4aTJUU0haSjc4bzNRYVh3K3ZDZXRobVo0VCtMQjQ2dW92?=
 =?utf-8?B?TDhLcFNLZmp0RDN6dVI2QXdVbEZtRG9LVW5rQytVdDJLZFIycktoZ3VCVVpi?=
 =?utf-8?B?ZmthYUMwOWxraHp2TnRtdTFBY2FLdTBQWjRUc212TFlzcVEyRkVBM1BnT2dy?=
 =?utf-8?B?ek1tcE9TRzhxTmJuSGYrQWdmR3JEYUpDYzVoN2JRZWROdjJtcnZjeEplbW1D?=
 =?utf-8?B?YVhkd0grd3F4VEVBRGtHbHJ5bERGcS9RTlZlOXNpNkpBY29yMmZyL0NVQjYz?=
 =?utf-8?B?MWNTYldzc1BFcERxK3ZTUkRhSVNQdG1CS3ZNUFJ6U2ZwSEpzMU04RTFKaDJY?=
 =?utf-8?B?TGh3bitrdFdJUjlQdTZJbFZ2NmExNFBpVFJSWUUyc3ZZZEpiV214VUtFU1lk?=
 =?utf-8?B?Vk5MTThoSHQzaE43WDIxQlJQMnBhVmJWMHNyRUdNZThNa0VVSTB0VDhvKzJT?=
 =?utf-8?B?akZLWWJIM2dVNjBEbkZmbVoxLzA5alNPOHRRL29pU0NqQ2VqYlNHZVQzNks3?=
 =?utf-8?B?dTlUT3VhQTRvMG9jbFl6STBhNU1VYTZ0Tm9pODE3UmJqNXlMMWhwTDU3bHdF?=
 =?utf-8?B?Nm9mZmFNNHlsbTZYMFh3cG9HdlFkMWh4TlRsWHdxUXdUK2h4ZzNHb1JWZGhC?=
 =?utf-8?B?M1R5Smp3eHNKQjJrOU5ScTJrclhuT1Vqd0syS2U2blNNMXNwdE1rZHF3T0xa?=
 =?utf-8?B?ZXk0aGhBTTh4dEVxeFQ2dmV4NERRMGx4THJFUkJhZFYzd1J6eWZnelp4QlJh?=
 =?utf-8?B?dzRDYTBmbHZ3VW9UZEN6bDFHSEFVckl3eG1za0hYMm9OUFRGZUphU1c3OVYw?=
 =?utf-8?B?SzJaZ0ZOSnpMdTlNTk0vei9KczRwckQ4cU1pZVBYb3hpdklaTksrT2M0bnNt?=
 =?utf-8?B?SlRrOC9hbjlXYzJWcmNWRHFzOFVHU1FRM1o0andyQVpiNVR2SXZIOVhDTXZG?=
 =?utf-8?B?eHBpOUE0NkxEOVJQSlduQm9LbGhnMkZzZTJSV2diRzZvRHA5WlhOK1UrVlVL?=
 =?utf-8?B?Q1pzQko5MHhMdFV6TXMraldlWjQxZE1ncUdKWEkvRjc1aFVLRkU1TitZZldp?=
 =?utf-8?B?bHYreTBSS01pTEY4cEM2aWl2ckFTeWV6WGNuUjZsTG43WlNNMFJIbXViVlRq?=
 =?utf-8?B?cVllaVdhVDI1TTh5a0k1OEQ5RVhISU0xU05ESlVUanE4ckx0bWR3OXRwWEN6?=
 =?utf-8?B?amdnd2VBZTh3TXg3RFlFTStEeE9JWmxJWVhtNVRXMlZJdnZVbEVGeFhFekZj?=
 =?utf-8?B?QnExOVlXSGNuVENESjFqcXNESm9QV3pFN091WXhBOHo4aDlwaWdzRlFNRk9N?=
 =?utf-8?B?cXlxbnB1bFNPblhod0J3ckhYa0pJWU5Eb0ZoRXhCQm1IUk5RemNZYVdEYjJ5?=
 =?utf-8?B?UU1sbm1tRTVMeDRXRGZDaC9uR1VYcjdDcjlVOS9aT0JXeW5Ed1Noc2NYOFRK?=
 =?utf-8?B?QkRoUGdmWXpLQ3MrcUhrcjI1M2Z2ejRQbTZJc0hINDgyR1hoVjErV0FMZzY4?=
 =?utf-8?B?bW9OSXcwTTFaaGVCOHZwdE54MXVjS1ZCZUJJVkpSWmpoSm51NXU0d1pWL1RR?=
 =?utf-8?B?VXMySTV3bFduTWY2NTQwNEFESVRhNThxc0V2WDc4MlB0NDdFMStMclNRTTI3?=
 =?utf-8?B?Q3JCdGt2OW9kV1kveCtYU3FYTjJTc2xndmJRV3VPQXVLbHlveDZGUXZRdnFI?=
 =?utf-8?B?dkdMeGVwQ0o4QTdvTU5FYmdFa2dhVXpXdjlLL1dIRVdVT1h0NFphc3M4L2hw?=
 =?utf-8?B?bkpDMGtmYzhManlyNENJN2xqUkFYdFZjZHBZRVBHMG5SUXRpRlhyaFVLUnZm?=
 =?utf-8?B?YWJiak9lWHFOM1duYlllNXh6YzBGb1grMmtTZmVseVJUaDNJSXpWV0hDNExO?=
 =?utf-8?B?UCtIcGpoS0VrdUZBVEg0VGJiUm1Zb3dPdGRkZ3VpS1QzVzRMcTk4UjdGWFU3?=
 =?utf-8?B?SkJjeGZxa1NhNk1peXl2amJ1NFFNM3Q5ZFV2a013a3hraEliVzdNdUh6bkpF?=
 =?utf-8?Q?FmcRhqBK5cG63W16xiaWcDjyd?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a0dee02-c885-433f-2def-08dd2fe7b61d
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 13:23:59.7407
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: plUh1amnM/PYEi2nqfsvVCNr7/Dok4NKFLtiGixSRKwUyixggdUo9PbslCsSK77M
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB7886
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D36EC3F622
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.223.56:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[25];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.223.56:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	URIBL_BLOCKED(0.00)[NAM11-DM6-obe.outbound.protection.outlook.com:helo];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
Message-ID-Hash: 3SHG5RSM7YYL4DKMFPUWOQA2VGTZZGKA
X-Message-ID-Hash: 3SHG5RSM7YYL4DKMFPUWOQA2VGTZZGKA
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Xu Yilun <yilun.xu@linux.intel.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3SHG5RSM7YYL4DKMFPUWOQA2VGTZZGKA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKYW4gMDgsIDIwMjUgYXQgMDk6MDE6NDZBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gQW0gMDcuMDEuMjUgdW0gMTU6Mjcgc2NocmllYiBYdSBZaWx1bjoNCj4gPiBJ
bnRyb2R1Y2UgYSBuZXcgQVBJIGZvciBkbWEtYnVmIGltcG9ydGVyLCBhbHNvIGFkZCBhIGRtYV9i
dWZfb3BzDQo+ID4gY2FsbGJhY2sgZm9yIGRtYS1idWYgZXhwb3J0ZXIuIFRoaXMgQVBJIGlzIGZv
ciBzdWJzeXN0ZW0gaW1wb3J0ZXJzIHdobw0KPiA+IG1hcCB0aGUgZG1hLWJ1ZiB0byBzb21lIHVz
ZXIgZGVmaW5lZCBhZGRyZXNzIHNwYWNlLCBlLmcuIGZvciBJT01NVUZEIHRvDQo+ID4gbWFwIHRo
ZSBkbWEtYnVmIHRvIHVzZXJzcGFjZSBJT1ZBIHZpYSBJT01NVSBwYWdlIHRhYmxlLCBvciBmb3Ig
S1ZNIHRvDQo+ID4gbWFwIHRoZSBkbWEtYnVmIHRvIEdQQSB2aWEgS1ZNIE1NVSAoZS5nLiBFUFQp
Lg0KPiA+IA0KPiA+IEN1cnJlbnRseSBkbWEtYnVmIGlzIG9ubHkgdXNlZCB0byBnZXQgRE1BIGFk
ZHJlc3MgZm9yIGRldmljZSdzIGRlZmF1bHQNCj4gPiBkb21haW4gYnkgdXNpbmcga2VybmVsIERN
QSBBUElzLiBCdXQgZm9yIHRoZXNlIG5ldyB1c2UtY2FzZXMsIGltcG9ydGVycw0KPiA+IG9ubHkg
bmVlZCB0aGUgcGZuIG9mIHRoZSBkbWEtYnVmIHJlc291cmNlIHRvIGJ1aWxkIHRoZWlyIG93biBt
YXBwaW5nDQo+ID4gdGFibGVzLg0KPiANCj4gQXMgZmFyIGFzIEkgY2FuIHNlZSBJIGhhdmUgdG8g
ZnVuZGFtZW50YWxseSByZWplY3QgdGhpcyB3aG9sZSBhcHByb2FjaC4NCj4gDQo+IEl0J3MgaW50
ZW50aW9uYWwgRE1BLWJ1ZiBkZXNpZ24gdGhhdCB3ZSBkb24ndCBleHBvc2Ugc3RydWN0IHBhZ2Vz
IG5vciBQRk5zDQo+IHRvIHRoZSBpbXBvcnRlci4gRXNzZW50aWFsbHkgRE1BLWJ1ZiBvbmx5IHRy
YW5zcG9ydHMgRE1BIGFkZHJlc3Nlcy4NCj4gDQo+IEluIG90aGVyIHdvcmRzIHRoZSBtYXBwaW5n
IGlzIGRvbmUgYnkgdGhlIGV4cG9ydGVyIGFuZCAqbm90KiB0aGUgaW1wb3J0ZXIuDQo+IA0KPiBX
aGF0IHdlIGNlcnRhaW5seSBjYW4gZG8gaXMgdG8gYW5ub3RhdGUgdGhvc2UgRE1BIGFkZHJlc3Nl
cyB0byBhIGJldHRlcg0KPiBzcGVjaWZ5IGluIHdoaWNoIGRvbWFpbiB0aGV5IGFyZSBhcHBsaWNh
YmxlLCBlLmcuIGlmIHRoZXkgYXJlIFBDSWUgYnVzDQo+IGFkZHJlc3NlcyBvciBzb21lIGludGVy
IGRldmljZSBidXMgYWRkcmVzc2VzIGV0Yy4uLg0KPiANCj4gQnV0IG1vdmluZyB0aGUgZnVuY3Rp
b25hbGl0eSB0byBtYXAgdGhlIHBhZ2VzL1BGTnMgdG8gRE1BIGFkZHJlc3NlcyBpbnRvIHRoZQ0K
PiBpbXBvcnRlciBpcyBhbiBhYnNvbHV0ZWx5IGNsZWFyIE5PLUdPLg0KDQpPaD8NCg0KSGF2aW5n
IHRoZSBpbXBvcnRlciBkbyB0aGUgbWFwcGluZyBpcyB0aGUgY29ycmVjdCB3YXkgdG8gb3BlcmF0
ZSB0aGUNCkRNQSBBUEkgYW5kIHRoZSBuZXcgQVBJIHRoYXQgTGVvbiBoYXMgYnVpbHQgdG8gZml4
IHRoZSBzY2F0dGVybGlzdA0KYWJ1c2UgaW4gZG1hYnVmIHJlbGllcyBvbiBpbXBvcnRlciBtYXBw
aW5nIGFzIHBhcnQgb2YgaXQncw0KY29uc3RydWN0aW9uLg0KDQpXaHkgb24gZWFydGggZG8geW91
IHdhbnQgdGhlIGV4cG9ydGVyIHRvIG1hcD8gVGhhdCBpcyBjb21wbGV0ZWx5DQpiYWNrd2FyZHMg
YW5kIHVud29ya2FibGUgaW4gbWFueSBjYXNlcy4gVGhlIGRpc2Z1bmN0aW9uYWwgUDJQIHN1cHBv
cnQNCmluIGRtYWJ1ZiBpcyBsaWtlIHRoYXQgcHJpbmNpcGFsbHkgYmVjYXVzZSBvZiB0aGlzLg0K
DQpUaGF0IHNhaWQsIEkgZG9uJ3QgdGhpbmsgZ2V0X3BmbigpIGlzIGFuIGVzcGVjaWFsbHkgZ29v
ZCBpbnRlcmZhY2UsDQpidXQgd2Ugd2lsbCBuZWVkIHRvIGNvbWUgd2l0aCBzb21ldGhpbmcgdGhh
dCBwYXNzZXMgdGhlIHBoeXNpY2FsIHBmbg0Kb3V0Lg0KDQpKYXNvbg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
