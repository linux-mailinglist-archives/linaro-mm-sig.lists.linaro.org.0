Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9D89449C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Aug 2024 12:54:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 305ED4473C
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Aug 2024 10:54:46 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam02on2084.outbound.protection.outlook.com [40.107.212.84])
	by lists.linaro.org (Postfix) with ESMTPS id 21CE14473B
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Aug 2024 10:54:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=YsGvA+HS;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.212.84 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sy3KA2Zdl9GxUBL8BKsOO35389EzBL0RnQfdQcK5g854/ObOP8YIv3BfXhM2aonP/NNkbyFE3gSi82Q1y6NOWtWKQxPERKdIK9YDHjVBsTh7bGIM8nxcAaG16dHK+TOsSbMe+m7QFS3I7gMq+xmKm+3BhqQc5rixRfJsDtiDhBJpjHxSUfdthRo/lOI92+xHYQHjql3HFgPvWAl7vCUMpZNr9MQ08bcZtaYHYLISeonLA4phBXghfAfUqQ2K5Xqk2NIWqSTrA6i5KOrhOrSi7ilxbPO2Jw86SPbfYRP+cngx32oczufKkky0EIjFmK1J2Uyj0DhsFKN3Zm+x+SDaVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FmL3JiKBQl2gFWYzE35YZjs8sHYypIWK0NiNAlww6Ak=;
 b=vlZCRFDT26ddEtXYzUYp+PqjqXx7n3Y9WE075ihk02O4gIlLICEXBupg8Y0N5cixFslToU0InvdQIWi5g2LfKFIou52uHsBWulv2sPlc2giTHX6daLy/NOvvdspaWc9C1yA6nTIjFBrFkrPBaVkgsWjDuXe1Ni83cTJNnL7qKybQTVOL1nwXZbcNg1Qzmw0hfuF6mnOHNlPCZCTm7YvZqm9zAlejzfsHN6RFo4FvbRnSV6xI8Z2nbRAYBAaECmmz0d/XP9SA+OtIZTnnQPGluUamOfVjfTDhW6Lj7w0jv+Yu4FiE7A90m1PunSL+35c8vtBAZpfgWs6/MO7Isa0PpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FmL3JiKBQl2gFWYzE35YZjs8sHYypIWK0NiNAlww6Ak=;
 b=YsGvA+HSuBxSeJ+DziybzkNs/CEWA/U4iigOvUc7i+yJMbYy2ADy3THfoTdLbdASeJuMFxrLrKFevdTqEgxfcRApl7SMz1PvHSLxAWWn+EeWCDv4t/x2IhCdvoecKzpzwaFGsFucxPk5Yir1Lj4zbHq4WuCaS454eyQsHttLZd0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH8PR12MB7028.namprd12.prod.outlook.com (2603:10b6:510:1bf::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Thu, 1 Aug
 2024 10:54:26 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.7828.016; Thu, 1 Aug 2024
 10:54:26 +0000
Message-ID: <e838be76-e0c0-4e87-b77d-a968318e704d@amd.com>
Date: Thu, 1 Aug 2024 12:54:20 +0200
User-Agent: Mozilla Thunderbird
To: Huan Yang <link@vivo.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org
References: <20240801104512.4056860-1-link@vivo.com>
 <20240801104512.4056860-3-link@vivo.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20240801104512.4056860-3-link@vivo.com>
X-ClientProxiedBy: FR3P281CA0181.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::14) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH8PR12MB7028:EE_
X-MS-Office365-Filtering-Correlation-Id: c0f2cd3b-720d-4c85-5766-08dcb2184f33
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SlRrWmtUdnkreUZpRTVVdFhuMEE1RE5WTWR2NDZOaytjMEtNWXg4TVVIbHFI?=
 =?utf-8?B?d05Wc21RanN2ZkU2N3l2QmxmSk1hQWszMkRHL1R2NE1STXBQdjV4ZHFLM0tv?=
 =?utf-8?B?OVZPdWFqbDlaOTJ4SnNEZFl1U3hJcFJabGVRdU9vOUNubFRPUFdJTEtnTndu?=
 =?utf-8?B?ZlJOdGtvdkMraHZMWVdLdnpxTE1VQXpQb01nb0FlQ2VYelQ0ZUZ5d0tBU3lV?=
 =?utf-8?B?L091YUVlVWJ1dmxDaE9KMHNheVFXSUxGZytheHBBM2RkVElpWThUaS9udjVY?=
 =?utf-8?B?Qndpa2w5YUFncjRjN3lHWTZXeVpWZCtFakhVZWVmWjhEVXB2bDFiaWZvTUh3?=
 =?utf-8?B?MnpWVUlqWW1uY2JjZ2w4Ni95VVFjOUtyZHArSjdEUGpid0FPc2ZNQzBtTjN6?=
 =?utf-8?B?bk02WHAxdFR3OEZWS0pTZTJvWVdwb2o1aGsrZTNNVDd6TS9rVVRkZXhOMlJU?=
 =?utf-8?B?eUN0WDVrWGZXaUtaRjFWQlFEc1JvZW5sNTB2T2NZN0ZqMjB4V0JOeWxIMVYv?=
 =?utf-8?B?VVVKZTR6TzF6K1VFeDV3K3hqZTJwRnlZVWwybG9HL2pHTXFyWE8vbzkxblQy?=
 =?utf-8?B?MG9RZ2twQ1I0YWRXdGVxRHdjWHdUMEd6NUdlSmVDek45UGNWWjVacnJqSUdr?=
 =?utf-8?B?bDNid1NUZFpoUVEvMUw2Nm1BOUh4TWlZNDJFb2pUMStXYzFuZHRLWVl4M2lo?=
 =?utf-8?B?b3RRaHZjY2liMEp0d0NJUjlLeVdsWTQvV2oycDBEMTBaWXBKUUJXVStZd3Vl?=
 =?utf-8?B?TUFuT3pacm9SQThiRXRyMGxoWHZLNTVIU2tlSmhta1Y4ZEZ6WVJsQjByOE01?=
 =?utf-8?B?UGV6UWpkMEF4K2hWMEdBZ1hzLzdQUkZLRlAwZld3bE0ydm52N3k1Z0h0NFg1?=
 =?utf-8?B?MExUclpyZWt1QU5PeC9oNkwrTmhrdTBtQkU1ZUwvRDdrUmRXZ3pZYk42SHFV?=
 =?utf-8?B?eTZZa3ROclcrQnc1Zy95cDlBZ0tSb0lubmZ3UGdvM01MeWJkK3NHYU1FMWZo?=
 =?utf-8?B?NENlTzRwTHlibENoNDNyc2M0a0tuWEw2bXR2TkVnZnVzaHFIcHNFZUZyMTBB?=
 =?utf-8?B?RTZINlpZU0o2UW5NRklQUnd2WWFHc0FONkFWYVRSRythQmpIaGZQQUZiZG1x?=
 =?utf-8?B?dlgyMVdwcGZEV1ZyYzI3NkV1Z3UyalQ4ck8ya21KTjFTemdMZmtwdnFlb3or?=
 =?utf-8?B?UGEvN1poeGs5WWVXUGVkcUVJYlBHMEh2RDBBSjNlS2liUlFtNFNSWG9Femoy?=
 =?utf-8?B?bFQrVlpUdGNvV1RJWjZ4OVdPdFpEYmVzVW5tZ2kwWXpkZS9PR0tGbE9JSGRX?=
 =?utf-8?B?b0t0M1dRYVdONUFpLzBMUy92SHNwdm5kRHZKUnJRNVdGOEYxQXNJd0QvWDdH?=
 =?utf-8?B?aysvNzh3dmxoejFaNE9BZTgydGc5c1d0bXJvM1FuV3BUVXczNkt3ZDJReTVY?=
 =?utf-8?B?Mm55aWJmTldxcGhORHE3WkpnMTBQSjRqamsrMXlyT0RKWnljMGNsOStzUHpD?=
 =?utf-8?B?SmFPZkdnaFJrVmlxZmVCUnROK2pxM2pLM3lwWWFmUnZ5RzNJTExQVFV4UUFF?=
 =?utf-8?B?NU1kVWF3UjBkeUdyaUs5YTkyNjcydjlwYUpRcFdPWkxFSEtJZkNUOTlxUjFx?=
 =?utf-8?B?MjR3SFBIWDYvUzhickpwTjFWSm1PdmdGakFiYlJjVmEzQXFWK0psRWZqV2Jp?=
 =?utf-8?B?SXZJMjBZbjNRcEJtcXptRlBOd2I5blFUVTh0SkJKSERRSVFuR3JxR0JSNlNI?=
 =?utf-8?B?YU1RbGt6eDVZbENyd2kycnZ3ckFpMXRISURJRHRvd0o1N3krK0xaZjNZT2tq?=
 =?utf-8?B?a3hha1lHczBid1RlRnBYZz09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZUZubU9yd291ZEtzYkJ0emF1TVRjNFFaQW9OZ2RlNC9GNnRMOU50RHBBNHph?=
 =?utf-8?B?d0lwSW5pQXVTelBEQjNLVndUVngvQzkxYUlYVFA0b1FMZ2xuc09TbXdQcEw3?=
 =?utf-8?B?VnFyTmJvSmd4TXFPYUsyb24xL1dmTHM2TEVJcGFVQmZhdXRzT2E3ZHVUMUd1?=
 =?utf-8?B?c3ZNMkhFY2FKTDJqWWRCaXhHeHVKdXY0MXlTU2dIalRNbkxzQTh4VlJlNFZU?=
 =?utf-8?B?enZTSkZrUGFIVVlxZU5Rckk4Vkc1dVlKcXdiVDJwb21OdTg0U1N1ZzRnYXB0?=
 =?utf-8?B?am0zL092cmVTVlpWUkduZmdKTTUwTk85NnFxMGo1UlY1dFFuK01QR2NlZEpx?=
 =?utf-8?B?Rmdqc2drODM4cDhmUXd3ay9TOWlqanorYzQ4ekdtOG1tSjlHTUY0K3NaZzFP?=
 =?utf-8?B?TWN6em1OeGE5clJUd2s5SGZ2eHRZandyS3FWQk15Qi9kZktBck01aEpueDFG?=
 =?utf-8?B?OS9iVHRlemFMaE81cmwvblJrQ2ZraHhTeXJ1aDRvdjNSSEp3MExhd3gxOTQ3?=
 =?utf-8?B?SXNVVEduRUhIbWY1WFN2dTRJeVBkT2phWjJuU3NVV3o0ZUZ6dythaFVXdXFZ?=
 =?utf-8?B?dkhuVHJGcWJaSjRIbjFGdWFscVZIaXdZTnVJaEs1UFlPU1NrZVIwMWtBdjBU?=
 =?utf-8?B?L0JkUGw5UVhnT2RjZkl5b0hWZk5wU0xyalJEVVJTeDc4TGgrZEM4Y0JaeUx0?=
 =?utf-8?B?Vk9mVGpwOEFqQ2Y3Q1BIT1hHbEFSU293QkE2eXBta2h4S3FDa0RobzVsT1hy?=
 =?utf-8?B?eittVDZTZTZJUjYxcG5mRWpTZkxHRVNVQTRoSEwrb1dzWFd5NGJaL05sT0gv?=
 =?utf-8?B?cDAwRmNDZndlSldGOXU5b3hvdk9HK2h5MnNuTFdZL1c2N2FWOE1SdXN5VHhI?=
 =?utf-8?B?YWhuYlp2T1c1MFNtdUpMREJKajRvTVVlTEZPRWczYU5tV0kyT1gwd3ZKQzhs?=
 =?utf-8?B?RURUMUs2UkJsSXd6ZTBRM05ZekZsMU10cG5QSkxPTnR3WEo0Sy9TRXpZSEFh?=
 =?utf-8?B?dHB3NDhXYXFjR0tjbFdVVGFYVkRlbG5CZDVsZGRIL05SWHhOejhjMmhoWHNR?=
 =?utf-8?B?dWlhRVpNSnNwNWp1WlNVMDh5MEpxLzJCTTkzbHh4bkgza3p0UWxmayt6UkQ2?=
 =?utf-8?B?cUF5b1RWZ1lnTklpWitWRHU5VHVBZE8xdXpDSmJ4ZmdxK2M4OTRLeGJsMk15?=
 =?utf-8?B?dkdhRkVZTEwzVlZOS0JPVUpXdWNnejlqdC90ZUcyWTVkVUlTb0xHdUJ5L3RD?=
 =?utf-8?B?bG5QYXFiVFd3czVrTFovbEpHelU4SXdpQ2d1UDVVK01qYXJKNS9VUENMN0dW?=
 =?utf-8?B?czNDM1FlY0F4SGZNVHVPTHZlVmFXdERSeFU5S1RhQ0Z3cTNSUlViT01BYU15?=
 =?utf-8?B?SE8vNFFML1NXN3ZtUFkrSWxsbE1vT1pXdUsrTWJiZnpTM005M2pFR0lWMVZP?=
 =?utf-8?B?TjJObS9nUVFrUHNQZ2R6L3B2VGVVRnl3eFptV2czQ3pva2RuOUJSUlg0dzVI?=
 =?utf-8?B?QlBET1ZJakFDTWF0ZmgyZkhWeXQxUi9HV1Q2YWUzcGNuOHdibG1XZTVnTVh5?=
 =?utf-8?B?N2VwM25paERoVWRwSkkwYjgySTVzYk1ESm9yb21hRCtCb0g5ZzhLVHVvSWZP?=
 =?utf-8?B?ZEtDd0VnMXh2OWpBbXJ5ZDBxaDcrM3lnL2lpV2ZkT0NQejJCS2loTVNxcEMx?=
 =?utf-8?B?Zmt5d3p0cnk3Z3ZBSWp0ZGYwdUFXSlIrQ1BYZjlsQ3pjaTJ1ZmduVTZwWHJB?=
 =?utf-8?B?N0JKZGp2eUtsZGNmK3Y3T0hsSU1SejhOTk5Yai9mYitaRlFTckVqUFBMOGVK?=
 =?utf-8?B?UWFFeDNPcjVBNWdMUGppVzQ3QzM4MVhRT2FVT1Rld2svU1VuLzdSNDgweHFD?=
 =?utf-8?B?V2Y3bXNYbHJsenpoR0FiaGhJclUxQjRWS1NrOERDUEpKVlJmTGpmTmY2VHFU?=
 =?utf-8?B?TU9zVUlNc2ZPSHNpTUsxcHlGUGp6Wm9TaTZQZyt3eXlPN2FqcEdXRFRCdHFM?=
 =?utf-8?B?WU1nNTI4QW5rSk14b2JKQnluVGRMTDJ0UkJSQU5oblhXNnFuQUV6TDNIK1RS?=
 =?utf-8?B?enhMb3hiSFNMSUxsMTdEWjM3d0Q5RU13cXVrRTBYZXZ1U1dnRGd2YUh1QWRz?=
 =?utf-8?Q?i9KLJU32SdWH5Wou5olOntoVD?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0f2cd3b-720d-4c85-5766-08dcb2184f33
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 10:54:25.9547
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gFaU4WtWFUM3aoj6rbJnce6hctLbG0BqOVPJXe6xTa1ecukjhCNrVVHeGv0ZlQ61
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB7028
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 21CE14473B
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[vivo.com:email,amd.com:dkim,amd.com:email,amd.com:mid,NAM02-BN1-obe.outbound.protection.outlook.com:helo,mail-bn1nam02on2084.outbound.protection.outlook.com:rdns];
	DKIM_TRACE(0.00)[amd.com:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.212.84:from];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: AERKC4HEQAYOGXQ6RL34VISRR7RUTICE
X-Message-ID-Hash: AERKC4HEQAYOGXQ6RL34VISRR7RUTICE
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/5] udmabuf: change folios array from kmalloc to kvmalloc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AERKC4HEQAYOGXQ6RL34VISRR7RUTICE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDEuMDguMjQgdW0gMTI6NDUgc2NocmllYiBIdWFuIFlhbmc6DQo+IFdoZW4gUEFHRV9TSVpF
IDQwOTYsIE1BWF9QQUdFX09SREVSIDEwLCA2NGJpdCBtYWNoaW5lLA0KPiBwYWdlX2FsbG9jIG9u
bHkgc3VwcG9ydCA0TUIuDQo+IElmIGFib3ZlIHRoaXMsIHRyaWdnZXIgdGhpcyB3YXJuIGFuZCBy
ZXR1cm4gTlVMTC4NCj4NCj4gdWRtYWJ1ZiBjYW4gY2hhbmdlIHNpemUgbGltaXQsIGlmIGNoYW5n
ZSBpdCB0byAzMDcyKDNHQiksIGFuZCB0aGVuIGFsbG9jDQo+IDNHQiB1ZG1hYnVmLCB3aWxsIGZh
aWwgY3JlYXRlLg0KPg0KPiBbIDQwODAuODc2NTgxXSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0t
LS0tLS0tLS0tLS0NCj4gWyA0MDgwLjg3Njg0M10gV0FSTklORzogQ1BVOiAzIFBJRDogMjAxNSBh
dCBtbS9wYWdlX2FsbG9jLmM6NDU1NiBfX2FsbG9jX3BhZ2VzKzB4MmM4LzB4MzUwDQo+IFsgNDA4
MC44Nzg4MzldIFJJUDogMDAxMDpfX2FsbG9jX3BhZ2VzKzB4MmM4LzB4MzUwDQo+IFsgNDA4MC44
Nzk0NzBdIENhbGwgVHJhY2U6DQo+IFsgNDA4MC44Nzk0NzNdICA8VEFTSz4NCj4gWyA0MDgwLjg3
OTQ3M10gID8gX19hbGxvY19wYWdlcysweDJjOC8weDM1MA0KPiBbIDQwODAuODc5NDc1XSAgPyBf
X3dhcm4uY29sZCsweDhlLzB4ZTgNCj4gWyA0MDgwLjg4MDY0N10gID8gX19hbGxvY19wYWdlcysw
eDJjOC8weDM1MA0KPiBbIDQwODAuODgwOTA5XSAgPyByZXBvcnRfYnVnKzB4ZmYvMHgxNDANCj4g
WyA0MDgwLjg4MTE3NV0gID8gaGFuZGxlX2J1ZysweDNjLzB4ODANCj4gWyA0MDgwLjg4MTU1Nl0g
ID8gZXhjX2ludmFsaWRfb3ArMHgxNy8weDcwDQo+IFsgNDA4MC44ODE1NTldICA/IGFzbV9leGNf
aW52YWxpZF9vcCsweDFhLzB4MjANCj4gWyA0MDgwLjg4MjA3N10gID8gdWRtYWJ1Zl9jcmVhdGUr
MHgxMzEvMHg0MDANCj4NCj4gQmVjYXVzZSBNQVhfUEFHRV9PUkRFUiwga21hbGxvYyBjYW4gbWF4
IGFsbG9jIDQwOTYgKiAoMSA8PCAxMCksIDRNQg0KPiBtZW1vcnksIGVhY2ggYXJyYXkgZW50cnkg
aXMgcG9pbnRlcig4Ynl0ZSksIHNvIGNhbiBzYXZlIDUyNDI4OCBwYWdlcygyR0IpLg0KPg0KPiBG
dXJ0aGVyIG1vcmUsIGNvc3RseSBvcmRlcihvcmRlciAzKSBtYXkgbm90IGJlIGd1YXJhbnRlZWQg
dGhhdCBpdCBjYW4gYmUNCj4gYXBwbGllZCBmb3IsIGR1ZSB0byBmcmFnbWVudGF0aW9uLg0KPg0K
PiBUaGlzIHBhdGNoIGNoYW5nZSB1ZG1hYnVmIGFycmF5IHVzZSBrdm1hbGxvY19hcnJheSwgdGhp
cyBjYW4gZmFsbGJhY2sNCj4gYWxsb2MgaW50byB2bWFsbG9jLCB3aGljaCBjYW4gZ3VhcmFudGVl
IGFsbG9jYXRpb24gZm9yIGFueSBzaXplIGFuZCBkb2VzDQo+IG5vdCBhZmZlY3QgdGhlIHBlcmZv
cm1hbmNlIG9mIGttYWxsb2MgYWxsb2NhdGlvbnMuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IEh1YW4g
WWFuZyA8bGlua0B2aXZvLmNvbT4NCg0KQWNrZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KPiAtLS0NCj4gICBkcml2ZXJzL2RtYS1idWYvdWRtYWJ1
Zi5jIHwgMjYgKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwg
MTMgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYw0KPiBpbmRl
eCBkNjlhZWFkYTczNjcuLmE5MTU3MTRjNWRjZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEt
YnVmL3VkbWFidWYuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQo+IEBAIC04
Myw3ICs4Myw3IEBAIHN0YXRpYyBpbnQgdm1hcF91ZG1hYnVmKHN0cnVjdCBkbWFfYnVmICpidWYs
IHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4gICANCj4gICAJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQo
YnVmLT5yZXN2KTsNCj4gICANCj4gLQlwYWdlcyA9IGttYWxsb2NfYXJyYXkodWJ1Zi0+cGFnZWNv
dW50LCBzaXplb2YoKnBhZ2VzKSwgR0ZQX0tFUk5FTCk7DQo+ICsJcGFnZXMgPSBrdm1hbGxvY19h
cnJheSh1YnVmLT5wYWdlY291bnQsIHNpemVvZigqcGFnZXMpLCBHRlBfS0VSTkVMKTsNCj4gICAJ
aWYgKCFwYWdlcykNCj4gICAJCXJldHVybiAtRU5PTUVNOw0KPiAgIA0KPiBAQCAtOTEsNyArOTEs
NyBAQCBzdGF0aWMgaW50IHZtYXBfdWRtYWJ1ZihzdHJ1Y3QgZG1hX2J1ZiAqYnVmLCBzdHJ1Y3Qg
aW9zeXNfbWFwICptYXApDQo+ICAgCQlwYWdlc1twZ10gPSAmdWJ1Zi0+Zm9saW9zW3BnXS0+cGFn
ZTsNCj4gICANCj4gICAJdmFkZHIgPSB2bV9tYXBfcmFtKHBhZ2VzLCB1YnVmLT5wYWdlY291bnQs
IC0xKTsNCj4gLQlrZnJlZShwYWdlcyk7DQo+ICsJa3ZmcmVlKHBhZ2VzKTsNCj4gICAJaWYgKCF2
YWRkcikNCj4gICAJCXJldHVybiAtRUlOVkFMOw0KPiAgIA0KPiBAQCAtMjAzLDggKzIwMyw4IEBA
IHN0YXRpYyB2b2lkIHJlbGVhc2VfdWRtYWJ1ZihzdHJ1Y3QgZG1hX2J1ZiAqYnVmKQ0KPiAgIAkJ
cHV0X3NnX3RhYmxlKGRldiwgdWJ1Zi0+c2csIERNQV9CSURJUkVDVElPTkFMKTsNCj4gICANCj4g
ICAJdW5waW5fYWxsX2ZvbGlvcygmdWJ1Zi0+dW5waW5fbGlzdCk7DQo+IC0Ja2ZyZWUodWJ1Zi0+
b2Zmc2V0cyk7DQo+IC0Ja2ZyZWUodWJ1Zi0+Zm9saW9zKTsNCj4gKwlrdmZyZWUodWJ1Zi0+b2Zm
c2V0cyk7DQo+ICsJa3ZmcmVlKHVidWYtPmZvbGlvcyk7DQo+ICAgCWtmcmVlKHVidWYpOw0KPiAg
IH0NCj4gICANCj4gQEAgLTMzMCwxNCArMzMwLDE0IEBAIHN0YXRpYyBsb25nIHVkbWFidWZfY3Jl
YXRlKHN0cnVjdCBtaXNjZGV2aWNlICpkZXZpY2UsDQo+ICAgCWlmICghdWJ1Zi0+cGFnZWNvdW50
KQ0KPiAgIAkJZ290byBlcnI7DQo+ICAgDQo+IC0JdWJ1Zi0+Zm9saW9zID0ga21hbGxvY19hcnJh
eSh1YnVmLT5wYWdlY291bnQsIHNpemVvZigqdWJ1Zi0+Zm9saW9zKSwNCj4gLQkJCQkgICAgR0ZQ
X0tFUk5FTCk7DQo+ICsJdWJ1Zi0+Zm9saW9zID0ga3ZtYWxsb2NfYXJyYXkodWJ1Zi0+cGFnZWNv
dW50LCBzaXplb2YoKnVidWYtPmZvbGlvcyksDQo+ICsJCQkJICAgICAgR0ZQX0tFUk5FTCk7DQo+
ICAgCWlmICghdWJ1Zi0+Zm9saW9zKSB7DQo+ICAgCQlyZXQgPSAtRU5PTUVNOw0KPiAgIAkJZ290
byBlcnI7DQo+ICAgCX0NCj4gLQl1YnVmLT5vZmZzZXRzID0ga2NhbGxvYyh1YnVmLT5wYWdlY291
bnQsIHNpemVvZigqdWJ1Zi0+b2Zmc2V0cyksDQo+IC0JCQkJR0ZQX0tFUk5FTCk7DQo+ICsJdWJ1
Zi0+b2Zmc2V0cyA9DQo+ICsJCWt2Y2FsbG9jKHVidWYtPnBhZ2Vjb3VudCwgc2l6ZW9mKCp1YnVm
LT5vZmZzZXRzKSwgR0ZQX0tFUk5FTCk7DQo+ICAgCWlmICghdWJ1Zi0+b2Zmc2V0cykgew0KPiAg
IAkJcmV0ID0gLUVOT01FTTsNCj4gICAJCWdvdG8gZXJyOw0KPiBAQCAtMzUxLDcgKzM1MSw3IEBA
IHN0YXRpYyBsb25nIHVkbWFidWZfY3JlYXRlKHN0cnVjdCBtaXNjZGV2aWNlICpkZXZpY2UsDQo+
ICAgCQkJZ290byBlcnI7DQo+ICAgDQo+ICAgCQlwZ2NudCA9IGxpc3RbaV0uc2l6ZSA+PiBQQUdF
X1NISUZUOw0KPiAtCQlmb2xpb3MgPSBrbWFsbG9jX2FycmF5KHBnY250LCBzaXplb2YoKmZvbGlv
cyksIEdGUF9LRVJORUwpOw0KPiArCQlmb2xpb3MgPSBrdm1hbGxvY19hcnJheShwZ2NudCwgc2l6
ZW9mKCpmb2xpb3MpLCBHRlBfS0VSTkVMKTsNCj4gICAJCWlmICghZm9saW9zKSB7DQo+ICAgCQkJ
cmV0ID0gLUVOT01FTTsNCj4gICAJCQlnb3RvIGVycjsNCj4gQEAgLTM2MSw3ICszNjEsNyBAQCBz
dGF0aWMgbG9uZyB1ZG1hYnVmX2NyZWF0ZShzdHJ1Y3QgbWlzY2RldmljZSAqZGV2aWNlLA0KPiAg
IAkJcmV0ID0gbWVtZmRfcGluX2ZvbGlvcyhtZW1mZCwgbGlzdFtpXS5vZmZzZXQsIGVuZCwNCj4g
ICAJCQkJICAgICAgIGZvbGlvcywgcGdjbnQsICZwZ29mZik7DQo+ICAgCQlpZiAocmV0IDw9IDAp
IHsNCj4gLQkJCWtmcmVlKGZvbGlvcyk7DQo+ICsJCQlrdmZyZWUoZm9saW9zKTsNCj4gICAJCQlp
ZiAoIXJldCkNCj4gICAJCQkJcmV0ID0gLUVJTlZBTDsNCj4gICAJCQlnb3RvIGVycjsNCj4gQEAg
LTM5MCw3ICszOTAsNyBAQCBzdGF0aWMgbG9uZyB1ZG1hYnVmX2NyZWF0ZShzdHJ1Y3QgbWlzY2Rl
dmljZSAqZGV2aWNlLA0KPiAgIAkJCX0NCj4gICAJCX0NCj4gICANCj4gLQkJa2ZyZWUoZm9saW9z
KTsNCj4gKwkJa3ZmcmVlKGZvbGlvcyk7DQo+ICAgCQlmcHV0KG1lbWZkKTsNCj4gICAJCW1lbWZk
ID0gTlVMTDsNCj4gICAJfQ0KPiBAQCAtNDA2LDggKzQwNiw4IEBAIHN0YXRpYyBsb25nIHVkbWFi
dWZfY3JlYXRlKHN0cnVjdCBtaXNjZGV2aWNlICpkZXZpY2UsDQo+ICAgCWlmIChtZW1mZCkNCj4g
ICAJCWZwdXQobWVtZmQpOw0KPiAgIAl1bnBpbl9hbGxfZm9saW9zKCZ1YnVmLT51bnBpbl9saXN0
KTsNCj4gLQlrZnJlZSh1YnVmLT5vZmZzZXRzKTsNCj4gLQlrZnJlZSh1YnVmLT5mb2xpb3MpOw0K
PiArCWt2ZnJlZSh1YnVmLT5vZmZzZXRzKTsNCj4gKwlrdmZyZWUodWJ1Zi0+Zm9saW9zKTsNCj4g
ICAJa2ZyZWUodWJ1Zik7DQo+ICAgCXJldHVybiByZXQ7DQo+ICAgfQ0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
