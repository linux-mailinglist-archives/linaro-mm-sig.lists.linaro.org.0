Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA999F9321
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Dec 2024 14:26:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C51143C01
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Dec 2024 13:26:17 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-sn1nam02on2047.outbound.protection.outlook.com [40.107.96.47])
	by lists.linaro.org (Postfix) with ESMTPS id 3C8B043C01
	for <linaro-mm-sig@lists.linaro.org>; Fri, 20 Dec 2024 13:26:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Gvs+ShEg;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.96.47 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q6QODVdaTbY+5xSXnjfV7/C0ZZdujeH5aO5pcatIjXqWWn7p4/t682TS/vr20mU5pSV7RCzHymMtScbW7q/d/Y16t7oU6+1y7U05DaJm6BzSgoRMFBiGibdCzvXzCmzTnqa1AAlC0BJJexlCytLKkTMsEuoA4JyFqRbdyz9zjy5bRdYrcNuB2OaXOM7J/L14zRHgwB9o/N1t22LOujXOL0pu+hnX4hrZRCqhtKP95Pm1bG4+azTGxVh8Ez+l/FvEmlyQ1PEg/H1x/LQEJd+SGsNEtBsEEI/xXxs34nj6jFkmvgSt0Ktg2D7VPj+bOvyWSWYIfTrrGX+UH0IG16JQmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iJ4wk64m1ZjGPrs4EsrSA/oc9JoaR0dSXNvRh0EdE8Y=;
 b=j2aHSyyg9DTGrB/wZDhi1V4OqtGHhwkqx6q2lkIk7ObJcwNBGGQ9vOhwfWvTSQHAMKjYBOVT6aTTYYVM8fOUe+rAgO9clNcP3gc7pzEeTIHcM4jXZ0zn44QPMvWKTCj74PX7u97yUNQXxF4g+ydMx/Ha7+AkPMF4nM/Cxy2OFDtwFMy9cYVnniZFGPB1gdj5HOV4UP+xeJhbSvCkQ+JrxuwxHzQGXcOxIzAmwzYPoz5iR35NYZivqv2pHtxyNcArjmn6fKAC5dNStKxJyQhYYg/kviYIy2gPLGiP5iK86FAAwgptmkQynb+N1YcJznBpqWQVV8ot3zXjwVJgPBYuHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iJ4wk64m1ZjGPrs4EsrSA/oc9JoaR0dSXNvRh0EdE8Y=;
 b=Gvs+ShEgU8mKp+FAgGT1890ikJs1VpezE7HTczmr0jAlGRjo8gYmNTNoE/gMLBuNYIibKQzt3vJch01iHwoSopb8B8q2Z4QylpEJ7qtfJULN1IBjbhuwsfLsMbmlKmZIv0XagysZHzi4xFF6N0Dj583FNUcKCRi2djX8tnjHhgo=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by BY5PR12MB4196.namprd12.prod.outlook.com (2603:10b6:a03:205::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.17; Fri, 20 Dec
 2024 13:26:03 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8272.013; Fri, 20 Dec 2024
 13:26:02 +0000
Message-ID: <e366a206-9fa3-4c6b-b307-d48855a7b183@amd.com>
Date: Fri, 20 Dec 2024 14:25:55 +0100
User-Agent: Mozilla Thunderbird
To: Danilo Krummrich <dakr@kernel.org>
References: <20241220124515.93169-2-phasta@kernel.org>
 <5c4c610e-26ec-447c-b4db-ad38e994720b@amd.com> <Z2VunIJ4ltfW_xqD@pollux>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <Z2VunIJ4ltfW_xqD@pollux>
X-ClientProxiedBy: FR3P281CA0127.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|BY5PR12MB4196:EE_
X-MS-Office365-Filtering-Correlation-Id: f6b24d59-e84b-4534-8926-08dd20f9d988
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?aW1nRk5QeWltaUd3SmZMK280aGR5MHNKaGNZZXN1NzlGYTJNdE9OOXN6MGVj?=
 =?utf-8?B?N3VycmVKMzdhbW9qK3JYcGVDZDM3MU94ZDN3ZW1NN1FzMlgxUDdiak9Pbm5R?=
 =?utf-8?B?UUdnOWJJR2hxQWtMK0trYjlFMUZ0L2hxdFhxZDVGc0hzbC9aMXV1QyswTkhD?=
 =?utf-8?B?L2NBS3B1WVVQSFlxYWdiaDBEVFdUdkZVS09EZ1pLMU00RG91bnR2dnA4QlNT?=
 =?utf-8?B?dXQ0Q0xUMnBIZTF6OGd0TGQ0NGV5WmpXQ3N3R2JDd0xtTTFvMmRUWFNVaGIv?=
 =?utf-8?B?WGI4VmVJdDRBVnpwYjIwS3o2TjQ2SkJSbENWZXA1VjNCZFl0S3l0Z2dOMWkx?=
 =?utf-8?B?ak5NeUhIWHZZMTVoVVlPWlZ4OENVaS83eWdHTzNxR3FiYnJtTkV3NElBUkJi?=
 =?utf-8?B?dlNsUWIzaDlvamRPeWVNV3V3QXhCOEMrV1QyV3BlTDFQVnJXUUp6MDg5TjYx?=
 =?utf-8?B?Qy9vdGxXL0Q3RXZSazZxeVcyMG9WY1pRdXNhU1pTSTN2Z25kYmQ0L2FYTWVi?=
 =?utf-8?B?MkFaTVRtUWNIakNSODFoTnlkVGtmdXh5amt4c1pSZ0NXYU4rNUo5ZUdXczUy?=
 =?utf-8?B?OGkvTlJSM2NqdFhxOVZ3d1JUQmVBWloyaEl4NnpMMzNDOHJsbHBFZ0t0bkc1?=
 =?utf-8?B?RmU0elpuWFN4aFhvcFEwZmNQQ0p4WTk1MkN0a1NObS85alk1MTE1Q0ZNQ2NK?=
 =?utf-8?B?bm5sem5aUVZMYzlOWGkyempyNWxENW9kRVU0VnQ0NUNyOCtwa2JQNGl1VGUy?=
 =?utf-8?B?ODZwVnJKOTZGYjVSKzhCOUtnQU1MQ2U0YW8yamtsR2IzeFp5SEF1K1BmaFdB?=
 =?utf-8?B?S3VGSUt3WVYvZTRNYnM3dlRMazd2amh2TlpzdDBPNWNtZk5EbGZ3SmFUbGVS?=
 =?utf-8?B?S1BuM053MXFja0NJbHV3TnhBZHVUZjMrT0hXb2NiVlR1SGdpZEYzdEZiVnVM?=
 =?utf-8?B?OUdCdVg4Zjl4OHpBa3E0UWdSNEwwRldKakYwYTY1VHBhelp5ay9yWWI4MERZ?=
 =?utf-8?B?ZkFuMHplYnk5cHVrcG9BcUpQOFBpOEdJU01VWWFXUGI1QXNFT3E3S3RGWXZD?=
 =?utf-8?B?Tm81YjBqaVQ0RUViNE1OeUNFUWhqQVI4U0NCbENQNVlmSmduNk9xOXdtYkVJ?=
 =?utf-8?B?ZjJvY3ZLdzJnUm45c20rbmlUWjhVU3F2ZEtYMWN3Q3hxZ2Y4cDJIM01ncitG?=
 =?utf-8?B?K0czTW4wSWFGYlR5R0NEYjRJQURUa0lZR1RDc2pyMHFWSW10WUd6ditmL3py?=
 =?utf-8?B?NDRPdFpXNnp5djlwalR1VmZEekhPT2hvM3d2VGYyTEVYNi9YaHNZRUJETU8w?=
 =?utf-8?B?ZmRkbE1CQlJEdnJQTnhBYTlNV0RYdUtGRXllTjlISHg4NWVRM1N6Unp4TVQx?=
 =?utf-8?B?WXU4SXdUTjhTanBVL1N1Zm8yWURQd0R1YStyVlpQMUk3bUpISUV2dDFBR0pB?=
 =?utf-8?B?ZEtjZEEvL2R5WWRMK3hWOVBnVzJRRmJqN0REY00zNWFaRHhpSGJ6NmZFb1lq?=
 =?utf-8?B?ZFI1d0VOQ3o3SEwxUTFycGhQekpDV1M4WU1XRHVXTmV0NlhVL0Ird2dhRWM1?=
 =?utf-8?B?ajF2SlBGSEpsL1Z2bEkvd3BqOThZRWQwdEkrbEpjdWlpam9lbzNHTlZYNUc0?=
 =?utf-8?B?TTViYkE1VWZGV085b2pSYXAvQm5lRVpvQTlNMHhxNjlmS0hTdHRkaGtUVWJS?=
 =?utf-8?B?R3JzMm5LRnRWN0xRV0hzWFdVMExZaE1WSlh1MnhwTmJjbkxScXFIVzBhNG1o?=
 =?utf-8?B?OVpOeGRnUisxbVhDTWhNcjhieHlNdGJEUXUxaVFmNkZ0L1pJT09RUzFnZWs1?=
 =?utf-8?B?OHMzTzhXRmlPcDA5TXUxdWZBZlBJYzEzSncrWTJjeXVjY0RTa0plaUJndG1v?=
 =?utf-8?Q?vUT2X+pR6lVJi?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NEdMdmFiVUNBcVFSZ1ppcFdISE1LV3VxRWVEM0xLamlHNGRKVTlQeHpYRERm?=
 =?utf-8?B?N2N0aEpUYjlhZnkwRGZwUDJIVjJxSkZVVWZkL0FpNmpuK244WHJGODRSbzVk?=
 =?utf-8?B?MzRnbU11UlFhVEUrd3piZ2MwZHd1YWJlN0VtbWhMUzdJRXErVWFDNUIwQ0l5?=
 =?utf-8?B?RmV2eFJXQjlJNHhSNHV1bVZqUk1RZjNha2JXeXUyU0lTNFpyTHVRQ1haYzNN?=
 =?utf-8?B?ZDc1N0Q3VlVvTXQzcXlXWkVZQkE5cU55WHlPU1cxbFBYbW43dk9JNDBVSWtj?=
 =?utf-8?B?d3ZoVnhEd2U5cW9rK08yYkVpNG9YT1V4ampVNVNhYnQyYWVtZER1Q0F2ZDdN?=
 =?utf-8?B?cURpNm5XSWxoMFBvVklnQ2N2VXZadWJXaGdkZ3lLU2JCVXdxVTVzNG9JN0J5?=
 =?utf-8?B?bVhDOEJUMk11c1l1MGZSNTRVUlhOQmtFZDdyLy91WitndGxqQW9EZFlHRzNi?=
 =?utf-8?B?eEdPMTVidFhTMVhOMTBXV2R4cE84TzlGSnRmOUpJVkRuNit3NkV3Ry9KV1ZH?=
 =?utf-8?B?ZHhJVDlEai9QUEJZZEhhbnNsY3FteVRCMHZJY2pyRHVZMmd6bW5IU003MCtS?=
 =?utf-8?B?MnJYYlZPR3AweXJPa3hZSmlYOVVUZFpCbmVsaHYrWjBteXVod1REbTlYS3hF?=
 =?utf-8?B?bmU0RzRhN3RkWEJNTVovcXFjMjNnTm0wSlNadXVuaFowQVlpK25MUTd3UUNa?=
 =?utf-8?B?cjhGL05WczRGOWF6TlArV01lbjVCRmdFczVWZklGRVJ3RnFjc0ZLbjBIdjd3?=
 =?utf-8?B?ZWNiT25ZN2Z5aW96ZC8rR1VhRWRiTTJFbmNncXJ5cFVzakV5TDliTUlRcVo4?=
 =?utf-8?B?V3BzZm5kU01tSzQ3YkZ4ZWU2UWdmeVV5ckR0VUZycDk3cHlLOU5mUnVCMW9j?=
 =?utf-8?B?TEQ3aTduSFlySkJBS3JEWDA5dTVJOUZEYWFRTmp5Z3gyancyVHBzTytyOWNW?=
 =?utf-8?B?OEFZUEEyMG05QmtBcE5CM0dGeEthazYvc3lqSitGRHBuaW9mVEtaSTMwZzJ1?=
 =?utf-8?B?aWpSdThvMEZ6NXdWNTZtbmQ1TTBUSHUzZ3BndXpEbkI4ekZwa251Q29JQkox?=
 =?utf-8?B?ZS9HMXZiRWpVaVdQQ1JIQmZQMVg5K01oL3ptTmJ1MlNJUVpDa1lUckdVbnA2?=
 =?utf-8?B?VGdtc25UYWtsUlVndTg5TzZIQ3hyTnI3YUwxSXZ3OW1rZVRFdzFRUG9uV1dK?=
 =?utf-8?B?UWRyY3dnUEtuQWZqem1pUm5mVm9IR0Z2NXhQV0wwcnNKV2RnTzU3K2VQSWc4?=
 =?utf-8?B?RGo3cEllMVRxRmNOd0YxQTRFRlI5bjRqanhVY1pZcVd4bnA2WEpzL0hDZU5Z?=
 =?utf-8?B?VHUwaVVtWlZQQW1hTHJ5Y04wQXVobnlzNy9qcUdSRm5mdkNlZVF4bkJFdTFQ?=
 =?utf-8?B?bVJYaXFJNi9DMHFUQndxV2lkb2RaSFFTaVhvTE81NU9saHZNYWNMUm9GSFVU?=
 =?utf-8?B?eWRUS0FKMW5Iell2aHA1SlRrSmhXY21CUi9pZ0toY2ZYTERrWTA1ZVR2RGZZ?=
 =?utf-8?B?bERFTmZZaExPMGk5SWpucVJFNlM1TjQ5RGRjaFY3ZkJiVzRpU0Y3Wnc3TXkv?=
 =?utf-8?B?MlFZRTE0VXdvUDJIUjZCeXBBQkFXaTJWcUdpdjRIMmxyVW45NGtxbnBTbUlI?=
 =?utf-8?B?cVV1YWhoVXZPbVJDMTBHTkU4a2czZE04aXdPV3FESlBtSXM5ZWIwdmJJL0ZW?=
 =?utf-8?B?eEExbnc4SzczY3VwNm1tNTZTbjBIOXZvWGtDWGJVbXM5cGJiVGR6ZmRnVFI4?=
 =?utf-8?B?c2xkSzBLd1dVa3NSVnV2V0wrenpZbWtIS0tJckpKQ3JtR09EQ09DV2xIK0kw?=
 =?utf-8?B?N2tnUWd6Mk9qeHh2RGdzU09FYjNlMnJMdUM1Z0FnU01vNjBodjlzakx2OEkr?=
 =?utf-8?B?L2Z5QStGQWRxQzZ3VnBPN0Jycm9NcThqbGhHMjN0V05UYnFmYVcwSnVJbXR3?=
 =?utf-8?B?cXhIalVnSC94VHkrMk8xcUJTcFhqNEp0eTdEMUxiZEUyOUw1bExwTVJtL1Ay?=
 =?utf-8?B?RzMzdFB3L2FCUXgrUnRPZCtkbVJJZXJyZGVsbU5Ob2RqYU1xR3ZmalNWTVFh?=
 =?utf-8?B?bkl3THRwUGdsSzN1WVJia3NqQTZMbGZTZ00wUlkxRFNBWUtCRS94K2tNNHZE?=
 =?utf-8?Q?Wl+LZ6eLh4q2dbS7bs4kc4OCR?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6b24d59-e84b-4534-8926-08dd20f9d988
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2024 13:26:02.8120
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6mrXkR8C8xpot+U5DVGj203ZZQVjVAwP+fX4QXX0SWZiisM67YGEmAO72kl04F5w
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4196
X-Rspamd-Queue-Id: 3C8B043C01
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.96.47:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[17];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.96.47:from];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,intel.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,ursulin.net,amd.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: VO76DC3ZXADRNGDR6IUSNO2RT6EA2UJK
X-Message-ID-Hash: VO76DC3ZXADRNGDR6IUSNO2RT6EA2UJK
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Philipp Stanner <phasta@kernel.org>, Luben Tuikov <ltuikov89@gmail.com>, Matthew Brost <matthew.brost@intel.com>, Philipp Stanner <pstanner@redhat.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Tvrtko Ursulin <tursulin@ursulin.net>, Andrey Grodzovsky <andrey.grodzovsky@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/sched: Document run_job() refcount hazard
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VO76DC3ZXADRNGDR6IUSNO2RT6EA2UJK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjAuMTIuMjQgdW0gMTQ6MTggc2NocmllYiBEYW5pbG8gS3J1bW1yaWNoOg0KPiBPbiBGcmks
IERlYyAyMCwgMjAyNCBhdCAwMTo1MzozNFBNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPj4gQW0gMjAuMTIuMjQgdW0gMTM6NDUgc2NocmllYiBQaGlsaXBwIFN0YW5uZXI6DQo+Pj4g
RnJvbTogUGhpbGlwcCBTdGFubmVyIDxwc3Rhbm5lckByZWRoYXQuY29tPg0KPj4+DQo+Pj4gZHJt
X3NjaGVkX2JhY2tlbmRfb3BzLnJ1bl9qb2IoKSByZXR1cm5zIGEgZG1hX2ZlbmNlIGZvciB0aGUg
c2NoZWR1bGVyLg0KPj4+IFRoYXQgZmVuY2UgaXMgc2lnbmFsbGVkIGJ5IHRoZSBkcml2ZXIgb25j
ZSB0aGUgaGFyZHdhcmUgY29tcGxldGVkIHRoZQ0KPj4+IGFzc29jaWF0ZWQgam9iLiBUaGUgc2No
ZWR1bGVyIGRvZXMgbm90IGluY3JlbWVudCB0aGUgcmVmZXJlbmNlIGNvdW50IG9uDQo+Pj4gdGhh
dCBmZW5jZSwgYnV0IGltcGxpY2l0bHkgZXhwZWN0cyB0byBpbmhlcml0IHRoaXMgZmVuY2UgZnJv
bSBydW5fam9iKCkuDQo+Pj4NCj4+PiBUaGlzIGlzIHJlbGF0aXZlbHkgc3VidGxlIGFuZCBwcm9u
ZSB0byBtaXN1bmRlcnN0YW5kaW5ncy4NCj4+Pg0KPj4+IFRoaXMgaW1wbGllcyB0aGF0LCB0byBr
ZWVwIGEgcmVmZXJlbmNlIGZvciBpdHNlbGYsIGEgZHJpdmVyIG5lZWRzIHRvDQo+Pj4gY2FsbCBk
bWFfZmVuY2VfZ2V0KCkgaW4gYWRkaXRpb24gdG8gZG1hX2ZlbmNlX2luaXQoKSBpbiB0aGF0IGNh
bGxiYWNrLg0KPj4+DQo+Pj4gSXQncyBmdXJ0aGVyIGNvbXBsaWNhdGVkIGJ5IHRoZSBmYWN0IHRo
YXQgdGhlIHNjaGVkdWxlciBldmVuIGRlY3JlbWVudHMNCj4+PiB0aGUgcmVmY291bnQgaW4gZHJt
X3NjaGVkX3J1bl9qb2Jfd29yaygpIHNpbmNlIGl0IGNyZWF0ZWQgYSBuZXcNCj4+PiByZWZlcmVu
Y2UgaW4gZHJtX3NjaGVkX2ZlbmNlX3NjaGVkdWxlZCgpLiBJdCBkb2VzLCBob3dldmVyLCBzdGls
bCB1c2UNCj4+PiBpdHMgcG9pbnRlciB0byB0aGUgZmVuY2UgYWZ0ZXIgY2FsbGluZyBkbWFfZmVu
Y2VfcHV0KCkgLSB3aGljaCBpcyBzYWZlDQo+Pj4gYmVjYXVzZSBvZiB0aGUgYWZvcmVtZW50aW9u
ZWQgbmV3IHJlZmVyZW5jZSwgYnV0IGFjdHVhbGx5IHN0aWxsIHZpb2xhdGVzDQo+Pj4gdGhlIHJl
ZmNvdW50aW5nIHJ1bGVzLg0KPj4+DQo+Pj4gSW1wcm92ZSB0aGUgZXhwbGFuYXRvcnkgY29tbWVu
dCBmb3IgdGhhdCBkZWNyZW1lbnQuDQo+Pj4NCj4+PiBNb3ZlIHRoZSBjYWxsIHRvIGRtYV9mZW5j
ZV9wdXQoKSB0byB0aGUgcG9zaXRpb24gYmVoaW5kIHRoZSBsYXN0IHVzYWdlDQo+Pj4gb2YgdGhl
IGZlbmNlLg0KPj4+DQo+Pj4gRG9jdW1lbnQgdGhlIG5lY2Vzc2l0eSB0byBpbmNyZW1lbnQgdGhl
IHJlZmVyZW5jZSBjb3VudCBpbg0KPj4+IGRybV9zY2hlZF9iYWNrZW5kX29wcy5ydW5fam9iKCku
DQo+Pj4NCj4+PiBDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KPj4+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHVyc3VsaW5AdXJzdWxpbi5uZXQ+DQo+Pj4gQ2M6
IEFuZHJleSBHcm9kem92c2t5IDxhbmRyZXkuZ3JvZHpvdnNreUBhbWQuY29tPg0KPj4+IFNpZ25l
ZC1vZmYtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cHN0YW5uZXJAcmVkaGF0LmNvbT4NCj4+PiAtLS0N
Cj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyB8IDEwICsrKysr
KystLS0NCj4+PiAgICBpbmNsdWRlL2RybS9ncHVfc2NoZWR1bGVyLmggICAgICAgICAgICB8IDIw
ICsrKysrKysrKysrKysrKystLS0tDQo+Pj4gICAgMiBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRp
b25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9z
Y2hlZF9tYWluLmMNCj4+PiBpbmRleCA3Y2UyNTI4MWM3NGMuLmQ2ZjhkZjM5ZDg0OCAxMDA2NDQN
Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0KPj4+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+Pj4gKwkgKg0KPj4+
ICsJICogQHNjaGVkX2pvYjogdGhlIGpvYiB0byBydW4NCj4+PiArCSAqDQo+Pj4gKwkgKiBSZXR1
cm5zOiBkbWFfZmVuY2UgdGhlIGRyaXZlciBtdXN0IHNpZ25hbCBvbmNlIHRoZSBoYXJkd2FyZSBo
YXMNCj4+PiArCSAqCWNvbXBsZXRlZCB0aGUgam9iICgiaGFyZHdhcmUgZmVuY2UiKS4NCj4+PiAr
CSAqDQo+Pj4gKwkgKiBOb3RlIHRoYXQgdGhlIHNjaGVkdWxlciBleHBlY3RzIHRvICdpbmhlcml0
JyBpdHMgb3duIHJlZmVyZW5jZSB0bw0KPj4+ICsJICogdGhpcyBmZW5jZSBmcm9tIHRoZSBjYWxs
YmFjay4gSXQgZG9lcyBub3QgaW52b2tlIGFuIGV4dHJhDQo+Pj4gKwkgKiBkbWFfZmVuY2VfZ2V0
KCkgb24gaXQuIENvbnNlcXVlbnRseSwgdGhpcyBjYWxsYmFjayBtdXN0IHJldHVybiBhDQo+Pj4g
KwkgKiBmZW5jZSB3aG9zZSByZWZjb3VudCBpcyBhdCBsZWFzdCAyOiBPbmUgZm9yIHRoZSBzY2hl
ZHVsZXIncw0KPj4+ICsJICogcmVmZXJlbmNlIHJldHVybmVkIGhlcmUsIGFub3RoZXIgb25lIGZv
ciB0aGUgcmVmZXJlbmNlIGtlcHQgYnkgdGhlDQo+Pj4gKwkgKiBkcml2ZXIuDQo+PiBXZWxsIHRo
ZSBkcml2ZXIgYWN0dWFsbHkgZG9lc24ndCBuZWVkIGFueSBleHRyYSByZWZlcmVuY2UuIFRoZSBz
Y2hlZHVsZXINCj4+IGp1c3QgbmVlZHMgdG8gZ3VhcmFudGVlIHRoYXQgdGhpcyByZWZlcmVuY2Ug
aXNuJ3QgZHJvcHBlZCBiZWZvcmUgaXQgaXMNCj4+IHNpZ25hbGVkLg0KPiBJIHRoaW5rIGhlIG1l
YW5zIHRoZSByZWZlcmVuY2UgdGhlIGRyaXZlcidzIGZlbmNlIGNvbnRleHQgaGFzIHRvIGhhdmUg
aW4gb3JkZXINCj4gdG8gc2lnbmFsIHRoYXQgdGhpbmcgZXZlbnR1YWxseS4NCg0KWWVhaCwgYnV0
IHRoaXMgaXMgdXN1YWxseSBhIHdlYWsgcmVmZXJlbmNlLiBJSVJDIG1vc3QgZHJpdmVycyBkb24n
dCANCmluY3JlbWVudCB0aGUgcmVmZXJlbmNlIGNvdW50IGZvciB0aGUgcmVmZXJlbmNlIHRoZXkg
a2VlcCB0byBzaWduYWwgYSBmZW5jZS4NCg0KSXQncyBleHBlY3RlZCB0aGF0IHRoZSBjb25zdW1l
cnMgb2YgdGhlIGRtYV9mZW5jZSBrZWVwIHRoZSBmZW5jZSBhbGl2ZSANCmF0IGxlYXN0IHVudGls
IGl0IGlzIHNpZ25hbGVkLiBUaGF0J3Mgd2h5IHdlIGhhdmUgdGhpcyBuaWNlIHdhcm5pbmcgaW4g
DQpkbWFfZmVuY2VfcmVsZWFzZSgpLg0KDQpPbiB0aGUgb3RoZXIgaGFuZCBJIGNvbXBsZXRlbHkg
YWdyZWUgaXQgd291bGQgYmUgbW9yZSBkZWZlbnNpdmUgaWYgDQpkcml2ZXJzIGluY3JlbWVudCB0
aGUgcmVmZXJlbmNlIGNvdW50IGZvciB0aGUgcmVmZXJlbmNlIHRoZXkga2VlcCBmb3IgDQpzaWdu
YWxpbmcuDQoNClNvIGlmIHdlIHdhbnQgdG8gZG9jdW1lbnQgdGhhdCB0aGUgZmVuY2UgcmVmZXJl
bmNlIGNvdW50IHNob3VsZCBhdCBsZWFzdCANCmJlIDIgd2Ugc29tZWhvdyBuZWVkIHRvIGVuZm9y
Y2UgdGhpcyB3aXRoIGEgd2FybmluZyBmb3IgZXhhbXBsZS4NCg0KUmVnYXJkcywNCkNocmlzdGlh
bi4NCg0KDQoNCj4NCj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4+ICAgIAkgKi8N
Cj4+PiAgICAJc3RydWN0IGRtYV9mZW5jZSAqKCpydW5fam9iKShzdHJ1Y3QgZHJtX3NjaGVkX2pv
YiAqc2NoZWRfam9iKTsNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
