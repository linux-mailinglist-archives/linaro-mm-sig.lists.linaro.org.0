Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F8CB2A4AD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Aug 2025 15:23:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA9C744787
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Aug 2025 13:23:54 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2087.outbound.protection.outlook.com [40.107.243.87])
	by lists.linaro.org (Postfix) with ESMTPS id 86FEC44000
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Aug 2025 13:23:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=1NcP56+1;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.243.87 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OHgpCaM944b1l66BoPc63m+JqP8Af9fTlYyiyQqjOvcVAB8j9IwlrMPiC1USSVF9N25osbF59kIHnxuQJNqYYNI9c8B1JF4MMbeDeYXboaH/QVO7rU+U3rlGOPQALfRc3Tl/3WTv3709KJRx/lsjCteQJQXw2SkJZuTKWOY8GH+VxYR1dnL1lbXguXK23YgiP4DcVFdJTDa6utHFD1TxjxqNysxW4Nnxby33URRuoQI2dvyGOK2qO9hglk4OKE9qsyl54PwI53Oi4rzXPP00eOk2LxvO/SpNtllv0CJ1l6cUxuQOsovFvDQJs9lV5dpWl/QBm0vCtGTCgo42g5QYrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uxv+qr1//0w9w4Do1THNGfU7GlTw+lN2aye8Cl7IssM=;
 b=Qayp+LsEBt2wuxKyO1PK9PhNhedsOOdttoXa9RHE7Omht66gzwjXS2r91VCf9Aq5D/KvBjHT74lCdrMs/fh1My9DOy6OTi8llHqF65dKu1MGrilRefKcHoyKf/y7GQLuyQTC91LkYTgS9XCbsO7GanMDGJ8SIb2nQJqMcT0HyDObHLA3gk2crNpl9qMg0IA4r4IfyZOGrMNbPVRhHXJcgT6Y6ctg+4QfO5seLkg95oxo0qhSaVrYI9Y72wbE8kAIJlZNF6SVMF18vvKwu+KSzFqoAcr5ct+0rEgJ9DAH+A5kXArLabNN/Em4dKOph4zIN35RefrfrumizRWFu9mpaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uxv+qr1//0w9w4Do1THNGfU7GlTw+lN2aye8Cl7IssM=;
 b=1NcP56+1uuUwigBNiqgd3l2EI+QAPFwmSQ2kQxoEC34/i7O8xJEV1nty3HCQ/jASLCv50r3qjRqey0QUOaYQwuOXrLmBCxQ/s/ZsIjracNzvcgduUIEWk37g+4SobBaak9Wuska6dTQh+FnMQzR6icq+0jKCTEjqa+ixVKLVS0M=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ0PR12MB8614.namprd12.prod.outlook.com (2603:10b6:a03:47d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.19; Mon, 18 Aug
 2025 13:23:42 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.9031.023; Mon, 18 Aug 2025
 13:23:42 +0000
Message-ID: <6cb1d152-898a-4cc4-a086-44d85cf7a24d@amd.com>
Date: Mon, 18 Aug 2025 15:23:37 +0200
User-Agent: Mozilla Thunderbird
To: Thomas Zimmermann <tzimmermann@suse.de>, sumit.semwal@linaro.org,
 oushixiong@kylinos.cn, alexander.deucher@amd.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@gmail.com,
 simona@ffwll.ch
References: <20250818084148.212443-1-tzimmermann@suse.de>
 <6f409954-2e01-4e87-b8b7-5688bea837f6@amd.com>
 <7c2d8894-7eb5-4c86-a80a-935fcf24ef83@suse.de>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <7c2d8894-7eb5-4c86-a80a-935fcf24ef83@suse.de>
X-ClientProxiedBy: FR4P281CA0002.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c8::18) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ0PR12MB8614:EE_
X-MS-Office365-Filtering-Correlation-Id: 336ab661-9458-4ace-8410-08ddde5a73b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NktaQTNqR3pFd2NyZjFZcnRBUjFEVldJR3ZWUEhvdGpWSGdTdEs1WURCajE0?=
 =?utf-8?B?Zm00a3Y1d0ZaOXNFYWg5azd3WDIrS053bjhNeWhKNXkrQm5XOEFxOFU0RFZG?=
 =?utf-8?B?T0x6cVBqa1ZvUythRSszckdRQ045cTlUMjA2UUhCV0ZRWFNhNytYWnBBNXFS?=
 =?utf-8?B?cFAwRStDQkhPZXVjaTRrTlhMZ3JrZm1IUHZZbG5Qc1VXN2dNK3p5M211NVlz?=
 =?utf-8?B?TkRuaWljbDlhQWV0YkE4bXBxa20yWWpFZFliRG9XMnF5MWhRSzVNUlJzM1lI?=
 =?utf-8?B?ME5SQ0lXaWwvdDVZOGZaZ3FpL1g1QWFrT3FnR2RLN1JFSG5zOWZJQ3R3MVg5?=
 =?utf-8?B?MkNiSmd2dldobmRRWnZDRUkveDlFTlFLNDk3aVQ2a1h4dHdBTmR4ZnRVYnpm?=
 =?utf-8?B?dXFwRzRKV29pTmQyNmJ0c1hhSDJNOE1WREoxQklQVmNBaHFmcit4cjZ3Ulc4?=
 =?utf-8?B?YWNkTzlOZGhXNHhtbDVUTWdySTFJUlN2VVVjeHpsOXlUSDdjOUl1cmJNTE5W?=
 =?utf-8?B?OXNINXM2a0JRaXk3RlB1elk5THNPc3IrNU50VWN1UFFvbFQ4R2FTRHdlTStP?=
 =?utf-8?B?bE9GRWlsem1TTjBMc2tLMngxTFA4dHNRQlhCTnE4QTJtMCtaT2JRY1JDR20y?=
 =?utf-8?B?RXJGVmVxeWg5aFo0OVN0emk4K2Q2SzR3MWgzYkc2b21iVVNsalpoWkdRQWhr?=
 =?utf-8?B?Yi9MOCs3SUlUY2NqOHd1TlVPNDFZSGtpelZOWWNJcWpiQm1Hak9WRVVLTFh1?=
 =?utf-8?B?SlQ2aHJYZmIvNWxLZmdvS2pXZml5RVpaaUNxdWhBa29RQXdlZHdXcFd4MkZF?=
 =?utf-8?B?QWV2N0UwS01oUnJmOXNPY3ZuOWMxTHdjbzVpNWdIamVwSHBiSlhmWVNzMzVk?=
 =?utf-8?B?emlrRDNUWmg3NzdoMlFxaHMxZjFHK1pSaFR0czBPSXo2YW1iNkdsMFdMMUlx?=
 =?utf-8?B?bjJRRmRVK2pZbkx0eHRDS2tUS3NRQ1BZejBSanZld0tSeHJUeEpOeGdZZ2ZT?=
 =?utf-8?B?QmtTTnVpNFg1TzYrQ3dQMXg3WEtNME5NYXJndW1zL0lBUVB2ZkZqWmJManc0?=
 =?utf-8?B?MGxLaXhZbktCbkg5ZVE5RnB5cGdFQU82ZER3Y2R2aDk0M1g5b0NDNVRCZ1E0?=
 =?utf-8?B?VFlReGpQbkN6enBUNHJwMTNlR2U3Ykg4TzNaWWJNdkFYS2dVUU9wdklUSWhN?=
 =?utf-8?B?dFZnVUVHWW9yeVkwb2p2RUY3VUdwWHJUVGx0TXZ2MU04QU5PeXNTL1pOc1lS?=
 =?utf-8?B?dHcxZklJNE9NeitqUmV0MXJlcmErSzl0ay9nYVk5blFTb0J0M2JMdEZ4aXM4?=
 =?utf-8?B?T1hYcUlsMC9kUXVobjI4SDdVUENxVExwWk5vMmlHOGpvRHgyMkFjTGlLdEJi?=
 =?utf-8?B?ektkR1NWdXZZQUM3dGdrdDZ3U2Q4N0VIS0g5TXY1UTBEV3dNOGtUSUEzWkU1?=
 =?utf-8?B?UmlrZVU5a09IbkVwZ0NNUWZNSTVhd0tDZjJCN3BYb1hrdG5YRjdUMk9pSGJK?=
 =?utf-8?B?VG1Bb1A2L1Rha2NVeUpBMHIzK00zQlhDOVFsWkJjWU9CcnVlZTZaSjZXNEdD?=
 =?utf-8?B?Uk5NT1R4aHUwTStxTXdSUS8raDh1cHBSZEVZei9uRDBnVWhzZHZEdUxrT3Bu?=
 =?utf-8?B?V2VvYjFuVk9KeVR0V0hlR29KcmdPSUljcnRlM3lwMDA2WHRtdnVkNUEvemZN?=
 =?utf-8?B?UFJuV2hzN3RtSW9PMDJPZmFFVVBkejAwb2dlTjJrSWRtajlhejVnUlBNVzF5?=
 =?utf-8?B?c290QXRyK3VkS3BhVjlPWmhWYXBzcm1hSEFrclRVUnFWUEtrNlgzYStVYU83?=
 =?utf-8?B?ZVVyN2tpYk9DZ1NielUzekdaZzVwQmZMSGJocXIyZUdLZWpreFZra1R3UVFn?=
 =?utf-8?B?OGJ6UHdMRm03Z1paOVVZSFJIZ3lSMGxBVlVESHk2alRtYUxxT0lWWnJIYW0y?=
 =?utf-8?Q?3vcE37udhpg=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SVo0eGx3dXZhTDRpVmFTTmdIVDN1RXRzaVV0cW14cURHNkExZTl4QktETlF1?=
 =?utf-8?B?WnZxOEVVMVh5MFp3L3BENnhzaGlNV0tDZEZmNGgrVmRJbVJBYU1TRk82b0sw?=
 =?utf-8?B?V1JXMWxhbDROdDZlV2lNN2svK2tNcWdmM0RJNytUMm13bUZ4YmpuREtNdUtv?=
 =?utf-8?B?REowTzdMMWtyUFk2dE9NZkkrMWMwWFlzSVhZb09oU2xnZTd1NGl6RFc4UlJp?=
 =?utf-8?B?VUROaFEzTEFXN3hjcE5QTVBiYVZNclU5cHFHYXZEdmFVSU56RUJVYU1idXBI?=
 =?utf-8?B?WmxLZ1BQWklreVYrOURwTUpxdVZKQWlVMUtVb0JheHc5M2tJZXBPWkVLVzlO?=
 =?utf-8?B?WHppVkdicjlmeWFqR1QySjVBMU1vUTBDbDd6Y0VDYjl1RVdmVW5FR25yaHpl?=
 =?utf-8?B?eEg0OGVrOU4yaUZqcUJFQjMzZUp6ZHhpUlIvL0YrNUNUNE1iYWJOVDVoWWZM?=
 =?utf-8?B?a0NoOXB5c2ZGS3JpYTM4TGtGZXQxRUxwNW5KTjdLNzBLTWlvLzFwb2VSbHFF?=
 =?utf-8?B?eEZ2RkFCS1NZQ2drVVFDSkQ3WktJZ24wOGlTMm9wdzhaT0lhQXZab3RLVFVU?=
 =?utf-8?B?aGt1RFM2KzZ0Y2dLL2ZOSjNQUjlZcHl4VFNVUnFkbWgxZko3UnRjM212T1JU?=
 =?utf-8?B?d0RMbUpSdGdZUVk0aWF3RENhZUxDam9sQW5selhMRi91Ry83TGhPNkxhaVNH?=
 =?utf-8?B?dlNTam9YZ2l2TmdibTZEa1h6TVlSejVORmN0MjYwcWZCejRTbjN1L3liL2Yv?=
 =?utf-8?B?UHBhbk93RjJpM25oVWZzTTZweUM1eWhCYUJzYzdsSDdoZU9FWVRHRHRXdUtM?=
 =?utf-8?B?NXVYS1B6YXcwS2txeHZQWi9UaVRxMWNYR2NqNTdjMjhsK1lNYlJ1NnVyb0Uw?=
 =?utf-8?B?QmN5Mlh3dStQT1NMbW5zdnpvYmxYNEVmYzY1SVZqWVNabGdWUk05SE54dTBT?=
 =?utf-8?B?MFIwZkRZQ3ZlWi8zUE8reUJvU1RxekFkb0QrenVpUzJhLzJXQ1c1MklKQThK?=
 =?utf-8?B?Ui8vN2JZS05WNE03cC9OWTdVT09nUGRpMGlHNHI2dEowbVlTTkc4WGFra2JK?=
 =?utf-8?B?VUNUU3pqZTJ4TE4xOEdWMmtETEp3bThRdDZVRWFMYktPaE9aRDhPTWFtNlBt?=
 =?utf-8?B?eUJqZm53S1VEZ2h4R0xSdGFKeG1ZQTRkc2pMcjhsZmhEcndHRFcrbk91cXI4?=
 =?utf-8?B?UGYxWHhHYkJ4MjQ3TVpNTkUwTkZQeVFxVjFrRUxnSUo4bHpjemIvM2RpU0JC?=
 =?utf-8?B?dzVSMjVmRHRmcUVnR3VtRkd6dGphTy91WE9EeW4vWlBVSHBhMzZkMG00dWRr?=
 =?utf-8?B?RElKVS9GNy9HanFqS3h3MmgwV21yQUN4SEY3eWlnUFY2VCtmZVl6aDNqS0Z3?=
 =?utf-8?B?bjRmWUZlNzQvcjRuMDF1NlFZMXdzWDRRdWEvWFNaWTZlSkdGNFN2L2Z3Qjl1?=
 =?utf-8?B?UjQ3U0JjSHhDUlU0NjhnWDBXQndLRHIycU1UNU5uSTFTK0dwREZLMFNuUEhB?=
 =?utf-8?B?dmVtUHRuN3poc2lxdmpSNkt1bGU0d3dqRjlkUTJyQTQ3dzVxNVNwUFQ5Y1JM?=
 =?utf-8?B?NEZ4K1lPeThTTU1SVGxtUldhQ0UvWlowdUEzYkdldEZMQk1id29pWDk5ZjlQ?=
 =?utf-8?B?TG1QRE5ZRVdpaTVFa0VSMnI1c3Q4ODNUTWJ2VEd0STNXanJBUm11c1BPaGlS?=
 =?utf-8?B?YlFBODFYem9ZY2JMSFNmclJWWWF0R2VCa2xTWUpYR1UwYWU0MUFadDJlYWQr?=
 =?utf-8?B?cEpOekpySlBEZm53SDYxVTVtTk0zWk1Db1lUMCtQSEdTQzFxM1IwYVh0KzBZ?=
 =?utf-8?B?MFBnaG9nTmljL0ZPcms5bG5wK1NLQjVIWHk2K0xqV1J1UUVNM0ZLT1Ftaktz?=
 =?utf-8?B?Z0NmdGVEaHlYT3dQTDRmQUdzMEhBWjhwS2IzeFdLaXcvaGVhM3ZFTGFCOHdu?=
 =?utf-8?B?aWxwTHhrVUszbUMyemJoL29BdUtKQWNUS1d1bEVXelYyeGlKY09JUVcvZXds?=
 =?utf-8?B?SjdzOGNxeFBOTnR3YmJJTDQxYkpHR1U1TXpVdE93UzkzMEoyYk1wL2s3dUxR?=
 =?utf-8?B?Z2xYWFo0bzcrVHk0NmppUGhiNUZtTmNPNENqOHRyNGJvSDdvUXZEdHlSS2ht?=
 =?utf-8?Q?iOqUid4U+pg5A8qs3H26DHSWs?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 336ab661-9458-4ace-8410-08ddde5a73b0
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2025 13:23:42.7186
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iEaSMTWWqvgs9CQmcPYUt+l4A9b5e+ky/OL4Da3YNS3ZGBgK5weGWEcVz+ZKD0Rz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB8614
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 86FEC44000
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.243.87:from];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[suse.de,linaro.org,kylinos.cn,amd.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: 3VTT6EUI5U2VEBUWM7G7EMZIYONXNL2Z
X-Message-ID-Hash: 3VTT6EUI5U2VEBUWM7G7EMZIYONXNL2Z
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/amdgpu: Pin buffer while vmap'ing exported dma-buf objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3VTT6EUI5U2VEBUWM7G7EMZIYONXNL2Z/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTguMDguMjUgMTQ6NDYsIFRob21hcyBaaW1tZXJtYW5uIHdyb3RlOg0KPiBIaQ0KPiANCj4g
QW0gMTguMDguMjUgdW0gMTQ6NDAgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KPiBbLi4uXQ0K
Pj4+ICtzdGF0aWMgaW50IGFtZGdwdV9kbWFfYnVmX3ZtYXAoc3RydWN0IGRtYV9idWYgKmRtYV9i
dWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4+PiArew0KPj4+ICvCoMKgwqAgc3RydWN0IGRy
bV9nZW1fb2JqZWN0ICpvYmogPSBkbWFfYnVmLT5wcml2Ow0KPj4+ICvCoMKgwqAgc3RydWN0IGFt
ZGdwdV9ibyAqYm8gPSBnZW1fdG9fYW1kZ3B1X2JvKG9iaik7DQo+Pj4gK8KgwqDCoCBpbnQgcmV0
Ow0KPj4+ICsNCj4+PiArwqDCoMKgIC8qDQo+Pj4gK8KgwqDCoMKgICogUGluIHRvIGtlZXAgYnVm
ZmVyIGluIHBsYWNlIHdoaWxlIGl0J3Mgdm1hcCdlZC4gVGhlIGFjdHVhbA0KPj4+ICvCoMKgwqDC
oCAqIGxvY2F0aW9uIGlzIG5vdCBpbXBvcnRhbnQgYXMgbG9uZyBhcyBpdCdzIG1hcGFibGUuDQo+
PiBZZWFoLCBleGFjdGx5IHRoYXQgd29uJ3Qgd29yayBoZXJlLiBNb3N0IG9mIHRoZSBsb2NhdGlv
bnMgYXJlIG5vdCBDUFUgYWNjZXNzaWJsZS4NCj4+DQo+PiBZb3UgY291bGQgdXNlIEFNREdQVV9H
RU1fRE9NQUlOX0dUVCwgdGhhdCBzaG91bGQgbW9zdCBsaWtlbHkgd29yayBpbiBhbGwgY2FzZXMg
YnV0IGlzbid0IG5lY2Vzc2FyaWx5IHRoZSBtb3N0IG9wdGltYWwgc29sdXRpb24uDQo+IA0KPiBO
byBwcm9ibGVtIGFib3V0IHRoYXQsIGJ1dCB3aHkgbm90IGEgYml0IG1vcmUgZmxleGliaWxpdHk/
IFdoZW4gdWRsIGNvcGllcyBmcm9tIHRoZSBidWZmZXIsIGl0IGlzIGxpa2VseSBwaW5uZWQgdG8g
VlJBTS4NCj4gDQo+IEEgYml0IG1hc2sgb2YgX0NQVSwgX0dUVCwgYW5kIF9WUkFNIHNob3VsZCB3
b3JrIGZpbmUuIFRoZSBvdGhlciBkb21haW5zIGFyZSBwcm9iYWJseSBpcnJlbGV2YW50IGZvciBv
dXIgdXNlIGNhc2UuDQoNClRoZSBwcm9ibGVtIGlzIHRoYXQgYXMgc29vbiBhcyB5b3UgcGluIGlu
dG8gdGhpcyBkb21haW4geW91IGdldCBhbiBlcnJvciBpZiB5b3UgdHJ5IHRvIHBpbiBpbnRvIGFu
b3RoZXIgZG9tYWluLg0KDQpTbyBpZiB5b3UgdHJ5IHRvIHVzZSB0aGUgc2FtZSBidWZmZXIgd2l0
aCB1ZGwgYW5kIGFtZGdwdSBzY2Fub3V0IGFuZCBwaW4gaXQgaW50byBHVFQgLT4gZXJyb3IuDQoN
CklmIHlvdSB0cnkgdG8gdXNlIHRoZSBzYW1lIGJ1ZmZlciB3aXRoIHVkbCBhbmQgVjRMIGFuZCBw
aW4gaXQgaW50byBWUkFNIC0+IGVycm9yLg0KDQpUaGVyZSBpcyBub3Qgd29ya3MgZm9yIGV2ZXJ5
Ym9keSBjYXNlIGhlcmUgYW5kIHdlIG5lZWQgdG8gZ3Vlc3MuIFBpbm5pbmcgaXQgaW50byBHVFQg
aXMganVzdCB3aGF0IHdvcmtzIG1vc3QgbGlrZWx5Lg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0K
DQo+IA0KPiBCZXN0IHJlZ2FyZHMNCj4gVGhvbWFzDQo+IA0KPj4NCj4+IFJlZ2FyZHMsDQo+PiBD
aHJpc3RpYW4uDQo+Pg0KPj4+ICvCoMKgwqDCoCAqDQo+Pj4gK8KgwqDCoMKgICogVGhpcyBjb2Rl
IGlzIHJlcXVpcmVkIGZvciBleHBvcnRpbmcgdG8gR0VNLVNITUVNIHdpdGhvdXQgUy9HIHRhYmxl
Lg0KPj4+ICvCoMKgwqDCoCAqIE9uY2UgR0VNLVNITUVNIHN1cHBvcnRzIGR5bmFtaWMgaW1wb3J0
cywgaXQgc2hvdWxkIGJlIGRyb3BwZWQuDQo+Pj4gK8KgwqDCoMKgICovDQo+Pj4gK8KgwqDCoCBy
ZXQgPSBhbWRncHVfYm9fcGluKGJvLCBBTURHUFVfR0VNX0RPTUFJTl9NQVNLKTsNCj4+PiArwqDC
oMKgIGlmIChyZXQpDQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7DQo+Pj4gK8KgwqDC
oCByZXQgPSBkcm1fZ2VtX2RtYWJ1Zl92bWFwKGRtYV9idWYsIG1hcCk7DQo+Pj4gK8KgwqDCoCBp
ZiAocmV0KQ0KPj4+ICvCoMKgwqDCoMKgwqDCoCBhbWRncHVfYm9fdW5waW4oYm8pOw0KPj4+ICsN
Cj4+PiArwqDCoMKgIHJldHVybiByZXQ7DQo+Pj4gK30NCj4+PiArDQo+Pj4gK3N0YXRpYyB2b2lk
IGFtZGdwdV9kbWFfYnVmX3Z1bm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1Ziwgc3RydWN0IGlv
c3lzX21hcCAqbWFwKQ0KPj4+ICt7DQo+Pj4gK8KgwqDCoCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3Qg
Km9iaiA9IGRtYV9idWYtPnByaXY7DQo+Pj4gK8KgwqDCoCBzdHJ1Y3QgYW1kZ3B1X2JvICpibyA9
IGdlbV90b19hbWRncHVfYm8ob2JqKTsNCj4+PiArDQo+Pj4gK8KgwqDCoCBkcm1fZ2VtX2RtYWJ1
Zl92dW5tYXAoZG1hX2J1ZiwgbWFwKTsNCj4+PiArwqDCoMKgIGFtZGdwdV9ib191bnBpbihibyk7
DQo+Pj4gK30NCj4+PiArDQo+Pj4gwqAgY29uc3Qgc3RydWN0IGRtYV9idWZfb3BzIGFtZGdwdV9k
bWFidWZfb3BzID0gew0KPj4+IMKgwqDCoMKgwqAgLmF0dGFjaCA9IGFtZGdwdV9kbWFfYnVmX2F0
dGFjaCwNCj4+PiDCoMKgwqDCoMKgIC5waW4gPSBhbWRncHVfZG1hX2J1Zl9waW4sDQo+Pj4gQEAg
LTI5NCw4ICszMjYsOCBAQCBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgYW1kZ3B1X2RtYWJ1Zl9v
cHMgPSB7DQo+Pj4gwqDCoMKgwqDCoCAucmVsZWFzZSA9IGRybV9nZW1fZG1hYnVmX3JlbGVhc2Us
DQo+Pj4gwqDCoMKgwqDCoCAuYmVnaW5fY3B1X2FjY2VzcyA9IGFtZGdwdV9kbWFfYnVmX2JlZ2lu
X2NwdV9hY2Nlc3MsDQo+Pj4gwqDCoMKgwqDCoCAubW1hcCA9IGRybV9nZW1fZG1hYnVmX21tYXAs
DQo+Pj4gLcKgwqDCoCAudm1hcCA9IGRybV9nZW1fZG1hYnVmX3ZtYXAsDQo+Pj4gLcKgwqDCoCAu
dnVubWFwID0gZHJtX2dlbV9kbWFidWZfdnVubWFwLA0KPj4+ICvCoMKgwqAgLnZtYXAgPSBhbWRn
cHVfZG1hX2J1Zl92bWFwLA0KPj4+ICvCoMKgwqAgLnZ1bm1hcCA9IGFtZGdwdV9kbWFfYnVmX3Z1
bm1hcCwNCj4+PiDCoCB9Ow0KPj4+IMKgIMKgIC8qKg0KPiANCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
