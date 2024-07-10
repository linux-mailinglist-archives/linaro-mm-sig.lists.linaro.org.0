Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 934B092D1C1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jul 2024 14:40:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A068744796
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jul 2024 12:40:17 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2080.outbound.protection.outlook.com [40.107.236.80])
	by lists.linaro.org (Postfix) with ESMTPS id 5B38A3F4C3
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jul 2024 12:40:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=WKpldAj2;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.236.80 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PSZBeV7rJ2FcN+oeAlfUhXI3klCxDBngdiIFxmwwFyDvCIzkMNOSBWkS9Ll3hUhO4UOnS8JJ74LFbKKDg8KqPAahZrP6UDp20Mf1QON6wAz63DTaBkEcrdOVRtAphQp6yaki4pZSqqD/9zJY3O9ecS/BbGmqK+/cWGgOCdXZoVcZYtQ/8kf9n+9EnOASKgcskAAEJ/zakWqOTxAJkxND3RMmhURi5a+HqqX5YBvoJL5Y8Dzov8wsC3+hvE+rPo4YZVdtRkbDq/iz1c287rGGlo+Jnxy6pbcDLOf57QPDd0y0eu9VQTbY1lSoUXkrRYXcAeuL0JVDzIVbru2kNaC+zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S+tKHYOpa87rpMnKL8Ekyv5YF4kSCkXUs9ZxXK/CQx0=;
 b=MFzSfyYO2NZIF5Ww1aQpWV4bVQV4pgRh5nhXaUgihSzrftTHw8EsyoJTkiAX9/NPw5HMSsL6s4x03O7boQricloOnNpzzrcTNZUi4NCSILng4Dk/g4SDCKAcve/lt6guQddQkxL66drgyqJBfqsQqbPIS1RzuSF78QqYEljdoeFW6KxWcnXBWY/IS1UeW4KZvDEZDnucSbBnizKBsnyIiKfZN+5BPpp9AC9YcmrQvUlTkF1thKFCa+6y62mPVzXOTXL0tvEIKe6EnPStVmsGlrFw1NYtGQeg4Q/wYa4gEphpNXeBPqUytpLczlleKrCB9j4bRQuZOevNOPof///1PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S+tKHYOpa87rpMnKL8Ekyv5YF4kSCkXUs9ZxXK/CQx0=;
 b=WKpldAj25Ik736R9suBChss+JlNx3e94vcWiZUjh8+ZEHlby+Ag1YV/NLegOJpK4jdKh8xrfobkyRQ1XQVR2jqWlVGxxrl36li4ywmNXiZ/GVUED2/5rITFqHAMN8Q/A+sJhqBc2MkcfxMwPB59EJgVQSQ10vzlotx68twLlopk=
Received: from SJ0PR12MB5673.namprd12.prod.outlook.com (2603:10b6:a03:42b::13)
 by BL1PR12MB5994.namprd12.prod.outlook.com (2603:10b6:208:39a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.36; Wed, 10 Jul
 2024 12:40:11 +0000
Received: from SJ0PR12MB5673.namprd12.prod.outlook.com
 ([fe80::ec7a:dd71:9d6c:3062]) by SJ0PR12MB5673.namprd12.prod.outlook.com
 ([fe80::ec7a:dd71:9d6c:3062%3]) with mapi id 15.20.7741.027; Wed, 10 Jul 2024
 12:40:11 +0000
Message-ID: <cf3ff1b9-2934-47bd-93c7-5ea55d10c82f@amd.com>
Date: Wed, 10 Jul 2024 14:40:04 +0200
User-Agent: Mozilla Thunderbird
To: Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20240710093120.732208-1-daniel.vetter@ffwll.ch>
 <03f7e2ad-fd5c-4da7-a14c-34c2c158c513@amd.com>
 <CAKMK7uFvCr2qcHun06LC-ON3GBqj8=mCpPGHuAOh9BEyr60fiQ@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAKMK7uFvCr2qcHun06LC-ON3GBqj8=mCpPGHuAOh9BEyr60fiQ@mail.gmail.com>
X-ClientProxiedBy: FR0P281CA0220.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ac::15) To SJ0PR12MB5673.namprd12.prod.outlook.com
 (2603:10b6:a03:42b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR12MB5673:EE_|BL1PR12MB5994:EE_
X-MS-Office365-Filtering-Correlation-Id: b41dac6c-d480-44f9-b034-08dca0dd7007
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UVBJbWlCUys1dzhqOEFIdnhjU0VudDJYaXNTWUlBeElhaXFnTzNQNXJiaUly?=
 =?utf-8?B?dXhUSUYvR3RSaThjLzBkUEZTSFpjWEgxODZTTzh3Q3lyREE3Q2JCU1JLNUEr?=
 =?utf-8?B?Sm1oYzlROU1wMUtBTXB2WEZHSVlOdklVRU55ZVVYYkZBc1krYkttTkFoNk1h?=
 =?utf-8?B?WnEzQmVQb01MdUJhZU95R29EbUNCenBLR2dySGlYcU9ONENjVndibXlYQlNi?=
 =?utf-8?B?bUFaLzhYcVZsS1lka3RSNFlwNmZHbnBHZFZrQ1g3VU0xckh2S1c2eHBOWWxB?=
 =?utf-8?B?aVdJZ0xGTUhFQ2QraWpXNDVZKy9zSzRCYzFzUTVFUGxDdlIxeTQ5azRkVHc0?=
 =?utf-8?B?WW9pREhqcHp6WUJPeUZTaFM3YzZlUThoWnk0a0huS3MwRmtMUlBTektkQlJR?=
 =?utf-8?B?T3B2bmRUS2tOMHIyNW8xTFlSbFd6RGdCWnExMlNqa2VhNkw5ZFEzZWdBNzVF?=
 =?utf-8?B?VWxQVmwxZDZDK01FSTZubkVuRWVyY2s2aVZjMlFHaThlVjkzYURZZldUSWJV?=
 =?utf-8?B?L2NKcHBvaFAvZlpZcVl3VUFjSUxNV3lyU3BxUi9JWVYrTG8vYzVPTmRFeVVQ?=
 =?utf-8?B?QjdQT241cUtFNFdwTkszRUVCdEgrN1FZSStUaFRZaDdOa0ZYSy9uV3hjTk5j?=
 =?utf-8?B?Qy84UXBncnEvSEczQlowSnhhWUR5bi93aU9jSkEwK3JhM29tVUJTdkN3eVU3?=
 =?utf-8?B?NXU4cGdzRzR0aTdqMGJBMEFHQjFhZHdoNUpRY0tvYUd1R1I2bXp6K3BLOGsv?=
 =?utf-8?B?cmtYR0tRbWVZMTRWMks0cjVjWWpCS1pEMTlBalMvenp6LzB2bHFWU3NwS2xp?=
 =?utf-8?B?eFdLVVhFTW9JK1V2Z1NPdjJ2b2ZlR2xGSUNWblR2V2V4b0lRR2xRM2lCS3Zy?=
 =?utf-8?B?WXZUMTd0WWozYkpmU0tTWFhzRWFDVGx6cldsdUxsVUY1cFhGU1kwVVEzZ21u?=
 =?utf-8?B?cU11TnJ0WmxJN2p3WUJLejVRY2YzY1hma0FDajlKa0NxN2lUVVZERFpzenUz?=
 =?utf-8?B?WlNLOVRoZ2FxckpYVllWa3Q1aEdxS0JLaElSVWJuOWZmMk4vaDNkZkowUnUz?=
 =?utf-8?B?ZDJuNy9ZNHpvSENuSjBLRG52YSt0SUE3aUxyOHpoS0w1UE9qNERUWEpIWWJ3?=
 =?utf-8?B?VXd6a2NyZkJjOFhBcko4QUVrT1hUZ0JHQzhhU205Y1U2SWdsUWxoeVNPbm9C?=
 =?utf-8?B?a21YeSt6R1VWa1hweXk3N25QTTQwWDFxRElQcGZOWUVWMThqejQwcDI3UzJh?=
 =?utf-8?B?ZG81SUowVUg2aXcxc3FIaWordnh5cU5nSGhQZ3hpQiswOHVIYk9zRFhTK1BP?=
 =?utf-8?B?cDc4bWFrOEtBME9zVENqQ0JQM011aExnbVkwaG9zbHJFbDVVVlc1aWQyNFhi?=
 =?utf-8?B?UWk3VWxzTDNSYXlReldzTWc2V1Jnb1d6NUZoZG9VOHJhWlpnekR3eG9la2N2?=
 =?utf-8?B?UjdQUFV4eFQ2eS9xRWt3USt4WkNzaFg0dUFNem9iS21ZZXZyTlJpWXlheUdp?=
 =?utf-8?B?dTR4Q2ZpZDM5Ti9aSjN2UXY1eUtxc09kbm5RYWY0WUJpZ0ZLSmk2UkR6TExY?=
 =?utf-8?B?MDlPRHpNN3RxaDlFNytNRkRxbi9xSytrRXdOajlTU1JmUFU1SjVUcDJvZ2Fi?=
 =?utf-8?B?cGpxZno4T2RXVEhQWlRNTzF6OGpBc0oxTlZnejFjcm1LdWRBZlpNVWlZVXdV?=
 =?utf-8?B?ZStUS2g1elBYeFNZVmVteHkyWGlERkhFQ1NLYWMybVAyOUNoQ3FjY3h3Tld1?=
 =?utf-8?Q?09aqy5BGNTpj6FubZ4=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR12MB5673.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RGxHbnNwdlRVamtpYnVKR1VGa3RVcUQxZWtOaWxWYWNraUY5aU5KbEZOWTR5?=
 =?utf-8?B?TlI4bHVEYk1VOHRQTm5NTlVTVFFOMnM3R1I5a1dSNEQwOHlyemtFb2RiaU9k?=
 =?utf-8?B?RXpIMEkrMDU4NlVwWHFJcXBpVS9Ca2hKc2JrWUtHODltQ01HTW9hVm0xRVJv?=
 =?utf-8?B?TFZxNkZrRVVDK2s5aXNPcjVOa2Z5UStkRXZrRkhiaUlwNHNPaGNvYzJpcVRT?=
 =?utf-8?B?cXVnM2swZDE2V3lpNHNjYWVSZ3FoTXVaVkhPUi9rNjlZb3cwSlZZZ3NJNTlB?=
 =?utf-8?B?YUxZS2lzL1JkbnpnVSt6d3VHb01UQi8zWXVkak12TTZxNzRHZzNhUFpvVy9M?=
 =?utf-8?B?UUEwbmNzd1BzM1lYenNOb05kaUpxajBWaGFTd2Ziajl4bHhFNXgwQUMrSVVq?=
 =?utf-8?B?bnBZZFQ1MmNPcFQ1Y0RWS29KQStQOWU2Zm5jbXk2YWxaWVRSRmovNHBrM2lj?=
 =?utf-8?B?WHZzcFVxNUYrNGtFS01uc2xFdGZHNUVpcUtVTE5BMm52N3NISUovWnkvdHp3?=
 =?utf-8?B?em1KQkZGQ3RUVDh4Vzh5QlVkYmZrdFpOR3lkOFpXOGlDMHE0eDhMbVkrOFh2?=
 =?utf-8?B?QndYei9JekNVQXBVYnVuT0pkNE1lRm1MMlFHbkMvcVAwaTNZa2NqbWFhTUZO?=
 =?utf-8?B?QWN1S1FrcFZ6TWlmbENYVFBGWTREVWFpTTdrQXdpK21PcmZyaFJnYVlIQmI2?=
 =?utf-8?B?S1c3dVc0OE4zcE8zalpEcktwOURrT2VGRFhpZHBGRlhSSXB6L2pPQ1V5blFT?=
 =?utf-8?B?OWhmV210NUduL0FxRGZibkJBV2p3czhKc0dHNUxoSHo1MkxYcW8yeW5JWS9X?=
 =?utf-8?B?dGErS0ViZ3pnclQwZ2ZxUkV2eVRhUWlUT3dvYUFlVEl6WkZoRElTOTFSWXdF?=
 =?utf-8?B?RUgvWlYyMkM1dWVKd1h5ZldISGRiM1hUK0x1eGZqdk9WbVFFWmIyR2k0Qzk3?=
 =?utf-8?B?QmRvSzNVL2J2Wk5HNWhpck93N3dnZmRpT2hGaHBjVG43Qk1SNGdMTlFZMWtr?=
 =?utf-8?B?V0IvSTh6YmdRd0FqMDk0eER3YkpoRDRFQnV3MXdMOEcrMGgwZ0ZMakc5blJO?=
 =?utf-8?B?bXJteFVVeUQ1b0Zmblg5TUluWWQwTmEwTzBMdkVXQUVrUUY5RVQrTFhQUnp6?=
 =?utf-8?B?N1lWMHl3OVdZZFQxY0pEaDI3dWZRUUo0anNDdHdBTmFvV2lZRHNtbFJaQVhC?=
 =?utf-8?B?S0RNRk1kcDErd2Y5RGRWMUZkbmViVDNCR1lhTC8yN0hWRmg1elowMnJPY3Vz?=
 =?utf-8?B?R05uVzhnaU9RQlpKUFZ2NmlYdlhzVDBQa2x6RUx0cjc3OVBHdDJob00zSUxU?=
 =?utf-8?B?dms1cWpHQ3c1bFZZUEdxU1RONURtRGduTUdGd0pqUmxoemdCQnFHZEhTT05S?=
 =?utf-8?B?bnZPTGFzb21wR0hReHRqMHV5cTZSclBGZ2Y0cUVJNkd1YzlNSUl4Z2RJQjFJ?=
 =?utf-8?B?RHl3aXlWTWJGZW9jN1p0NmNHSlVaZG9DenRuSzBjZnhoR1g4dVFZdnFHRDFH?=
 =?utf-8?B?TG8veGJBTE92VUcrRWJzU2JJQ0tvV1g0NlVhMGlmNHBOZ2NnV2hTYXdNbjVi?=
 =?utf-8?B?b3Q2TmVOaXovbUg4aDlQSUsreDZEN3FOL3dFN1NSNkVNQWZ2N01xRmtYbXBD?=
 =?utf-8?B?QjBlbFdKbkwrYXptbDUrQ2lLb0Vmd3pzd2d4S0szR3hmQiszUVV1UW12enlJ?=
 =?utf-8?B?V0RYNE96MmdmMVpFWmNYOHk3ZmJtdVdhcG5Wa3lCSzhhVWZJTjZFQzZPaEh4?=
 =?utf-8?B?SDdLVmRtdkRiUzVGRnRwOThTQ0wyWXBZMGlmdnhiOVhIWmY3Wk9SOWhuelAz?=
 =?utf-8?B?aVUzWitjUVRCZjhKUGsyTm0xaHdsUWdOSDROVEVoSHJmbHVkY3JZejhLWSsw?=
 =?utf-8?B?clB2OUw4UEVhZlFpVXkrRFhhZ3I1SmllS0I2S0VWbThYQTFaQmxIMmZoUzJx?=
 =?utf-8?B?aVBER3ZvRFVNSWU4UVdxMk1JZmc1eDh4azVLTGtHbFVGRFBiTTZCSVRiZVFv?=
 =?utf-8?B?NklBQXVUc2Q5b0VDV25tTHpwZ3pTNmcxSjlEMXFuUkd0REhiOWQxbThWdlVD?=
 =?utf-8?B?WWMyZFBwQUNpbXJvd1pUNWlKNm5HZGhJREpOTEZZK2V5anFIcGN0NUQyUlZR?=
 =?utf-8?Q?ZCLQAFtLLX6Hx/5v2f+ZWMvvK?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b41dac6c-d480-44f9-b034-08dca0dd7007
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR12MB5673.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2024 12:40:11.1548
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xQmWEJnFEdt4e2urs/82xb8z6ntgXI4M608HTCGhYnfIuTXiL0VUZblKRaYUvOOV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5994
X-Rspamd-Queue-Id: 5B38A3F4C3
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.99 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.236.80:from];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.236.80:from];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:a03:42b::13:received];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: XSDMTJNCLAYFZOH7UIM2KNYR6BEZQ3U6
X-Message-ID-Hash: XSDMTJNCLAYFZOH7UIM2KNYR6BEZQ3U6
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: DRI Development <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Daniel Vetter <daniel.vetter@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] drm: Add might_fault to drm_modeset_lock priming
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XSDMTJNCLAYFZOH7UIM2KNYR6BEZQ3U6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTAuMDcuMjQgdW0gMTM6NTggc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBXZWQsIDEw
IEp1bCAyMDI0IGF0IDEzOjM5LCBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+IHdyb3RlOg0KPj4gQW0gMTAuMDcuMjQgdW0gMTE6MzEgc2NocmllYiBEYW5pZWwgVmV0
dGVyOg0KPj4+IFdlIGFscmVhZHkgdGVhY2ggbG9ja2RlcCB0aGF0IGRtYV9yZXN2IG5lc3RzIHdp
dGhpbiBkcm1fbW9kZXNldF9sb2NrLA0KPj4+IGJ1dCB0aGVyZSdzIGEgbG90IG1vcmU6IEFsbCBk
cm0ga21zIGlvY3RsIHJlbHkgb24gYmVpbmcgYWJsZSB0bw0KPj4+IHB1dC9nZXRfdXNlciB3aGls
ZSBob2xkaW5nIG1vZGVzZXQgbG9ja3MsIHNvIHdlIHJlYWxseSBuZWVkIGENCj4+PiBtaWdodF9m
YXVsdCBpbiB0aGVyZSB0b28gdG8gY29tcGxldGUgdGhlIHBpY3R1cmUuIEFkZCBpdC4NCj4+IE1o
bSwgbG9ja2RlcCBzaG91bGQgYmUgYWJsZSB0byBkZWR1Y2UgdGhhdCB3aGVuIHRoZXJlIG1pZ2h0
IGJlIGZhdWx0cw0KPj4gdW5kZXIgdGhlIGRtYV9yZXN2IGxvY2sgdGhlcmUgbWlnaHQgYWxzbyBi
ZSBmYXVsdHMgdW5kZXIgdGhlDQo+PiBkcm1fbW9kZXNldF9sb2NrLg0KPiBZb3UncmUgbm90IGFs
bG93ZWQgdG8gdGFrZSBhIGZhdWx0IHVuZGVyIGRtYV9yZXN2LCBiZWNhdXNlIGRyaXZlcnMNCj4g
bWlnaHQgbmVlZCB0byB0YWtlIHRoYXQgbG9jayB0byBoYW5kbGUgZmF1bHRzLiBTbyB1bmZvcnR1
bmF0ZWx5IGluIG91cg0KPiBjb21iaW5lZCBsb2NrZGVwIHByaW1pbmcsIHRoZXJlIHJlYWxseSBz
ZWVtcyB0byBiZSBubyBjaGFpbiB5ZXQgdGhhdA0KPiB0ZWFjaGVzIGFib3V0IGZhdWx0cyBwb3Nz
aWJseSBoYXBwZW5pbmcgd2hpbGUgaG9sZGluZw0KPiBkcm1fbW9kZXNldF9sb2NrLg0KDQpBaCwg
b2YgY291cnNlISBZb3UgYXJlIHJpZ2h0LCBpdCB3YXMganVzdCB0aGUgb3RoZXIgd2F5IGFyb3Vu
ZC4NCg0KVGhhbmtzLA0KQ2hyaXN0aWFuLg0KDQo+IC1TaW1hDQo+DQo+Pj4gTW90aXZhdGVkIGJ5
IGEgc3l6Ym90IHJlcG9ydCB0aGF0IGJsZXcgdXAgb24gYmNhY2hlZnMgZG9pbmcgYW4NCj4+PiB1
bmNvbmRpdGlvbmFsIGNvbnNvbGVfbG9jayB3YXkgZGVlcCBpbiB0aGUgbG9ja2luZyBoaWVyYXJj
aHksIGFuZA0KPj4+IGxvY2tkZXAgb25seSBub3RpY2luZyB0aGUgZGVwZW5jeSBsb29wIGluIGEg
ZHJtIGlvY3RsIGluc3RlYWQgb2YgbXVjaA0KPj4+IGVhcmxpZXIuIFRoaXMgYW5ub3RhdGlvbiB3
aWxsIG1ha2Ugc3VyZSBzdWNoIGlzc3VlcyBoYXZlIGEgbXVjaCBoYXJkZXINCj4+PiB0aW1lIGVz
Y2FwaW5nLg0KPj4+DQo+Pj4gUmVmZXJlbmNlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJp
LWRldmVsLzAwMDAwMDAwMDAwMDczZGI4YjA2MWNkNDM0OTZAZ29vZ2xlLmNvbS8NCj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4NCj4+PiBD
YzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4N
Cj4+PiBDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPg0KPj4+IENjOiBUaG9t
YXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCj4+PiBDYzogU3VtaXQgU2Vtd2Fs
IDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCj4+PiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+Pj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVs
Lm9yZw0KPj4+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4+IE9uIHRoZSBv
dGhlciBoYW5kIHBvaW50aW5nIGl0IG91dCBleHBsaWNpdGx5IGRvZXNuJ3QgaHVydHMgdXMgYXQg
YWxsLCBzbw0KPj4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4uDQo+Pg0KPj4gUmVnYXJkcywNCj4+IENocmlzdGlhbi4NCj4+DQo+Pj4gLS0t
DQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2RybV9tb2RlX2NvbmZpZy5jIHwgMiArKw0KPj4+ICAg
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vZHJtX21vZGVfY29uZmlnLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX21v
ZGVfY29uZmlnLmMNCj4+PiBpbmRleCA1Njg5NzIyNTgyMjIuLjM3ZDJlMGE0ZWY0YiAxMDA2NDQN
Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX21vZGVfY29uZmlnLmMNCj4+PiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vZHJtX21vZGVfY29uZmlnLmMNCj4+PiBAQCAtNDU2LDYgKzQ1Niw4IEBA
IGludCBkcm1tX21vZGVfY29uZmlnX2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldikNCj4+PiAg
ICAgICAgICAgICAgICBpZiAocmV0ID09IC1FREVBRExLKQ0KPj4+ICAgICAgICAgICAgICAgICAg
ICAgICAgcmV0ID0gZHJtX21vZGVzZXRfYmFja29mZigmbW9kZXNldF9jdHgpOw0KPj4+DQo+Pj4g
KyAgICAgICAgICAgICBtaWdodF9mYXVsdCgpOw0KPj4+ICsNCj4+PiAgICAgICAgICAgICAgICB3
d19hY3F1aXJlX2luaXQoJnJlc3ZfY3R4LCAmcmVzZXJ2YXRpb25fd3dfY2xhc3MpOw0KPj4+ICAg
ICAgICAgICAgICAgIHJldCA9IGRtYV9yZXN2X2xvY2soJnJlc3YsICZyZXN2X2N0eCk7DQo+Pj4g
ICAgICAgICAgICAgICAgaWYgKHJldCA9PSAtRURFQURMSykNCj4NCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
