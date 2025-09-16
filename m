Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 028F2B59457
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Sep 2025 12:52:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A193245DD3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Sep 2025 10:52:19 +0000 (UTC)
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012046.outbound.protection.outlook.com [40.107.200.46])
	by lists.linaro.org (Postfix) with ESMTPS id 536EB41266
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Sep 2025 10:52:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=hBpcVBcz;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.200.46 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IvIaFTd+woWNC9kkv4u/2VwQJoRoyMu1C5oO7uzzG8G6Lq6jnz+vzbDxNqdp2hRgb7ltaSS2w81XCXw8NWF8rGdkPHi58AhMjVSgnODwXw+HR7b3n4ijCnwXLnR/cEpcF0msR+EK+KP5XyNuMXpgyyMTB6wrftg/d7CAzsl2kCduDLI56vNVb9hZTkDvmBgdjFCa2sXBR3BcQkHto25t874kXKda+lZ/1wn3ONMqYmsFvHHqKcCqIcNUPcrwjhsOhHz0x9R2kHBD48SgUOjKo+TZ9BdgqALLVX6RWqxAofzXvfPkoejsSPY50eAPs2VtlqSN8h+OEUG9E97hy5FZWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O/JR1FeEkSSM3hpRqGzvIXiGCD+PvWaNedftEMU0yRw=;
 b=SqGjBHBeWwIqeVxFH1WqMvrt3hHn9qnzSqLBqly5EgmOUy7RIDk4anOt+Rnl8cN2xwsWA8WUWvVcyxwU/j713ag8CWfZ/8kqvOIg3cL/ETkljiLpobm10KfFlymm7cE1lxQgqIFu/lT20dUFV342yDv7QCQnkJY1VwXlywBpkRF3fDdiXzcTgM5Q1JOVq3EV7KjOk6u1CmULKONc89n/N5D9cI4EX5G7mxRgqtbv9psWtcB7X8YhAsWlqIA/W/lQwMoml/A0vC0bO0oLE9akmNisTkFhmJlUBy4zPfinHGNXpdOpAvNvkTL+FjIUYJ1nxE6PKQxbE+tx+4pPiODzoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O/JR1FeEkSSM3hpRqGzvIXiGCD+PvWaNedftEMU0yRw=;
 b=hBpcVBczLnDgfVPTgK38tDrbvY/sHwdu9bSL9dlq0IS1kuTzNTuCFXCnclXimUn+DUFiaB+JrSDrz0jvQrCjupfAZd/LeobNCDdksuZCDKh6NkNPxc0woyYqFHW2bsFuOXEwUhitYR2Y0dX4xGNM+RKgHoEa7Qqykao+ULcvkzg=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM4PR12MB5937.namprd12.prod.outlook.com (2603:10b6:8:68::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Tue, 16 Sep
 2025 10:52:08 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9115.020; Tue, 16 Sep 2025
 10:52:07 +0000
Message-ID: <8a5f0bc8-4d3a-4e47-902e-7527759d1494@amd.com>
Date: Tue, 16 Sep 2025 12:52:03 +0200
User-Agent: Mozilla Thunderbird
To: Pierre-Eric Pelloux-Prayer <pierre-eric@damsy.net>,
 Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20250916070846.5107-1-pierre-eric.pelloux-prayer@amd.com>
 <f66cc34f-b54b-4f91-a6fe-11a146c516b2@amd.com>
 <9e1964bf-7748-4e41-9048-b1a5ad63a8c9@damsy.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <9e1964bf-7748-4e41-9048-b1a5ad63a8c9@damsy.net>
X-ClientProxiedBy: YTBP288CA0002.CANP288.PROD.OUTLOOK.COM
 (2603:10b6:b01:14::15) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM4PR12MB5937:EE_
X-MS-Office365-Filtering-Correlation-Id: 481c475e-f79d-40c7-60d6-08ddf50f149c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?RHpXRnBaNEdnamhJSDlDYnMxT045QzAybHVrbmVyVkJubWNrUjROaVdSM25N?=
 =?utf-8?B?WDNvQWhwNjRTK0lHclhvZzBxQWNqU0t2Tm9aMkc5STVxSzBlYi81S1BMYlhu?=
 =?utf-8?B?OTAraDQ5T016YlB6eTdCUlUzRDliNko2aGU5Mkk2VTJSaG5FdUp4NHNhZXE5?=
 =?utf-8?B?bVhGUGlGSVU1bVNUUUk2eDhYSmZpUUYxa0dlUlRKTFQvRksyOUMzT3Npd1Mr?=
 =?utf-8?B?d1lucWQ4bmRPYkk4ZU42b3Z3UlY2d0hrZ2x3ZUY0b1lmZzJJWDF4Qlp2WXJB?=
 =?utf-8?B?Q0FNcUFRZ3BIYmEwRGhwUGFYRzdNdCt1MHhhY0t6a2dKY3ptUWp0ZWZxRXY3?=
 =?utf-8?B?eEtGalh5L3pjVDJtT09OK2EzZFgwTlpyRUt4TlMyaGxkNFpqZkczRTZaUm0v?=
 =?utf-8?B?bG0wNXNvZkIyM0ZxdW9sK2JUeThSbjZsMzB0TjZtUld4NXVlZExhU0gyanlr?=
 =?utf-8?B?THVLNGp6RDR5VjVIcWk4WklsYlNMSWhjWFptejZKZG5taVRiYXhOZzd3bUcz?=
 =?utf-8?B?L1o3TUs5azY3b29JMVIyM211THkzRGFwLzU5Ry93VDhkeklBN3ltVHVvbEM3?=
 =?utf-8?B?aGNTUktHS09hNEpwWnlKSWlRZEpqcGl6QVl4cElVenBBUVJzZHJyUk1yc1N2?=
 =?utf-8?B?UHJERnpVL3BUUElqRzhRcTk5V1Y3bDhMZ0dkK1A0Z2wyOEpSZzRoejlwSWd4?=
 =?utf-8?B?UFdCam5vYUM4VFJ5QzE4cnNKSTlZM0FQYmxPZmZuY2FWUEpQM3VuNFM2a3R2?=
 =?utf-8?B?ZzUwSzB5UnRQT0ZjQ0ZValJyWUhSd0lweVR6cUY0NS9WN2h3aGUwcitNSnlL?=
 =?utf-8?B?S1V1QzB3aDcwTklNWk1OekhKVUZHS2Z2aytMODBuaGYwRWJnYUE0STJOVGJr?=
 =?utf-8?B?NHpJZGg2S09xY1V4QWVEeVg2TzIwdi9VazFWc2JuREtYUi8rUGt4TnJPMGh3?=
 =?utf-8?B?NHc3TGhtbVE3ZTJkWERuVGN6d09vWE93SnZQVFd6eDNla0NWZDIyRGR0WkNO?=
 =?utf-8?B?eHllVUpGOWZBN1hqeHlVeXV1OVhld0RyNE92N25vMjJMMWxldDJrQzdhbXlO?=
 =?utf-8?B?dE8xUVArS1E1ak5QcTJFQWFWZDlyTERXV0U4SW9WcUJsVTRvVGtLRWFGbFR1?=
 =?utf-8?B?Z2VsanJJUjhTMkszd1FhbkQxb043MUFtbUY5SkxwTnVqbkNPeEl4eUdqUWpr?=
 =?utf-8?B?U2dPWmVPcTZJUXBGSTlDNzJhRjQrYnExOUJ2YjVuQTQwQ3d0ZWpRenVMQzNi?=
 =?utf-8?B?cHhndTRJN1dxdHd4S3ZYU0pLckFJcXdQblZHc2crNTNPMGcxUlNMUHBjL2c5?=
 =?utf-8?B?QnBLRGx4d0lTclpqRld3YjVhN1FIT04xKzRuWXhxUGdBRnIwOUdldWVOaENx?=
 =?utf-8?B?UVoxdld0ZmJTZ3pYQ3owc0U5ZEdnZkxOSkNyR3VtWHhSWXdVTHlVQUk0ay9L?=
 =?utf-8?B?QU5aOUFWTTJFelNSVEdSRDA2UGJxaXF3dU5mN0ZFa1RkeTZ1WEc5RVZKamRY?=
 =?utf-8?B?d3FLN2cxRG05V2NiYVJvVmJyU0JNb1ZJckh3NmVrd2FOTW53NHdCNThXV09E?=
 =?utf-8?B?OU9OUWZoZ3BVRDlKanVZRE1NOVNXYzZMVEJ4ZGtGK3NBek11bGxWSlBXQXJS?=
 =?utf-8?B?a0tFbGx2YWt4TC82Qkp4UVJ1dXhYRks2MjdDbkErQ2lCemhrYi9MRi9DNXZL?=
 =?utf-8?B?QWxhMDlyY2JTY0NyNVhLdTkyTzNzNS9pV3h3RHBGbFlFRWVrMWhxWVFtckM3?=
 =?utf-8?B?M0M4WWc4UWVNY3Ivb2NkN29ySnpZVlBPRjZBallKOGZhSXR5WXY4eVJlZmFS?=
 =?utf-8?B?cWxrWVJXNW5CdkhvQVk1cGNWUmhvcEt2NkxhRkc2bkdXOTFkMUQrWTNaT0pS?=
 =?utf-8?B?WGlYN1orblNnRUxTQnRxUHNDcTM5NDNlcUlwd2dzYnhYYVV6S2FHZWJtcVV6?=
 =?utf-8?Q?VTo+5ZXpRmU=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dTY1Y1pXb1Foa0gxbm5tdC92N0ViNmliTWo3MUlHSVgweWdobGRBUFdyMXhu?=
 =?utf-8?B?VHlyL3k3cWFQNzZOaEF1NGF1ZVRiaVl0TGZQaFUzZGZvVkcxdmZ3OXJzR1Vm?=
 =?utf-8?B?aXI3TWFFdmRrU3QyM2FkUGFxZ3lLaE9oOHV3TndYOWFXK1VKL1ZZZ1ZDV1Rx?=
 =?utf-8?B?bE9YTVNnaUdGVVlwUW4rbXJUbVB0S0FraTYzQnpvWEo3R3hmYyt2RnpCaUhE?=
 =?utf-8?B?UlBOM1RvY09wT2pIV0dUVUp6eFROckc2M0pBdmhaaTA1bTJybUxKV29wK1FB?=
 =?utf-8?B?eFFMZ2tSaDloYndia2JOTjIvVWg0Q3hPb3V1MjVVTE9DYTRHNjlEUUF6am1N?=
 =?utf-8?B?OWsxdTRLa0g4S0diZDRrUU9vWGx2RVgwVTVJOEprYmowMDlZVjBEM3dwclRZ?=
 =?utf-8?B?OERRREtOVmM4VElZcXk5dG5Za3lZTUFQajFPNWRadG04QXBrZm1ibHJsYmV0?=
 =?utf-8?B?Q2J0Rnl5NU03MEJoZnVUNEZYM0szY1RsdUw1YnhMTXFxdHJVQXUwUE10SVRq?=
 =?utf-8?B?bFVnUGt4SzcxVFVGZXRtWTlCNlphK1B4SU5VMFBOc2VKZjk2V0lPb2dmc2U1?=
 =?utf-8?B?UE5OdFhwUzRNblNOKzlFV3VLbWttTmRuK05vVmhiRndham9QSDk4eEptTTZB?=
 =?utf-8?B?NXFhRmM3YUU4L0VFZjFZeXZzaGRWRnM1QmU0eXFURmxuRDJDRlhVMmNZYmNZ?=
 =?utf-8?B?cUR4UkxQMndzMVhvZnZnZmUxV1FEUU5mN21rTTJRK3Z0eHNPdG5mUGZZRU9j?=
 =?utf-8?B?aEVlQWNhQ00wMU5QNXJxUzJiSTQzbFVYcGpaZDVoV2tzeFpvam91eG9BMnJC?=
 =?utf-8?B?Qkt4MjNPV0s4YnFlNFhEcGZqNkx5N0dVeDNwT29maHFtVDBHSXE2WjR3MXFk?=
 =?utf-8?B?NTMxYWVuSG5jNW1UNFFoWDBOelRJdnpub01BYmNhZWNscmpRWkJFZFkwLzFW?=
 =?utf-8?B?QXFvU25EU0ZGVVFIVmNpRjBQbGxoK2VQMDJJWndHdU9YYTVqS3p4VmloV0Na?=
 =?utf-8?B?M3E4V283Y1J1T1pmajFHb0F4eWlOTjBPejVDOVRrUmJNZThNem15ZDhzL0Jl?=
 =?utf-8?B?RjR5UWdpWG84ei9mVVZDNXZuNGYrWUp3M1VVQ1JraklWMnlOLzBzYTgxeFBC?=
 =?utf-8?B?ZmZuRjdUeWpVMzJ3bnFsSnBnZWh1ZkM2a3kwaHp6UUY4Z3NScFZyYmEwL2Ni?=
 =?utf-8?B?Zy91Smk2QXh5VkJRLzdGZXQ4bVZpMjVZYU9RRHpBNVZJUnN2RWFKNTBlMUJL?=
 =?utf-8?B?UUp1YjVOSWRuM21xd3dkTG9ib1VBaDRGZEgvY3JMeFMxbkUyTi9YMVJJcEdP?=
 =?utf-8?B?eG5hd2N2dFRzYXdLcWZaTTZ6cXEvRGNGTjJVdndtUHNZdEg2K0lkZmpzNGxI?=
 =?utf-8?B?T1psaE05VWtiVmViVk1oLzFYblNuRHhhSmdnMUxjeko3b0ZreGZJbUtRbWsz?=
 =?utf-8?B?bEd6RDdjSXRWaDJCdmg0TkRhbEJzTHl3dzVKWUZ5VjFsdUJ1VkNDVzE5dW9S?=
 =?utf-8?B?QkJIclRkVjM3cDZ6b1pBdm95YWRjN0luRS9CdUJ6RDhnejFEU2xnTXZteFFX?=
 =?utf-8?B?TWdvL1dDSWtmaENVNVI0aXNyM0FhRFJhcHVwV3JUUnpFbnB5K2E0UTRPSFpq?=
 =?utf-8?B?YzhoZE40L0dQa0lLL1BiNE5aRDkybUZUeDNLVDFmZWV5WGdYVHBVNWhpLzc0?=
 =?utf-8?B?MFZnMi9ZQzJUV3VMcVFaaUFXTVE0ZjVmdFUzVEFaZzBJa0pXUjl2dnJDR0FB?=
 =?utf-8?B?VzAweWV2Mlhtang2b09PUVJ1K28xN3FUMlNMbW4vckkrbFV6cWdob2tvY2hk?=
 =?utf-8?B?TnY3ZU0rTFd2bjZHWHlrcmRENGRtRko1cytkUVlObk1EZjYzZ2dVTzc3cE8r?=
 =?utf-8?B?a214c1NEUnZCbW5wenlRekxtU0oxeU5tN3pNdEtHNWF4VVJ5Q1djais4TjV1?=
 =?utf-8?B?SHozWnc4SldsU2lGRFZxWCtzWnFNdWtEVXpnZWtRMFdWeUZUaThtd1VZc3Vp?=
 =?utf-8?B?dk5FdG8ramh1VVR1YWtUVklLdCtTZDQzdExyYWIxYVlLWlo1UGRLZUttRXlN?=
 =?utf-8?B?OFZLZGptMjYrNTJFRmcrMEFoL1h0TTl4ZHVjOXd4N0R1ZXl0c0lNYk1Ib2Rv?=
 =?utf-8?Q?Jbh9k+6sN3Vq1x/sCqnW+2mSx?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 481c475e-f79d-40c7-60d6-08ddf50f149c
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2025 10:52:07.7545
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: txWdh/qenfCgUem7kPnFTktwhFLMnFeIsY9f1Dysk1wlHoHpV9QM8lwD3K4Sh95R
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5937
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 536EB41266
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[damsy.net,amd.com,gmail.com,ffwll.ch,linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.200.46:from];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[40.107.200.46:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: JB57BRMRNGXHMZ6MSLWNIX47QPPW4L3Y
X-Message-ID-Hash: JB57BRMRNGXHMZ6MSLWNIX47QPPW4L3Y
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 1/2] drm/amdgpu: make non-NULL out fence mandatory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JB57BRMRNGXHMZ6MSLWNIX47QPPW4L3Y/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTYuMDkuMjUgMTE6NDYsIFBpZXJyZS1FcmljIFBlbGxvdXgtUHJheWVyIHdyb3RlOg0KPiAN
Cj4gDQo+IExlIDE2LzA5LzIwMjUgw6AgMTE6MjUsIENocmlzdGlhbiBLw7ZuaWcgYSDDqWNyaXTC
oDoNCj4+IE9uIDE2LjA5LjI1IDA5OjA4LCBQaWVycmUtRXJpYyBQZWxsb3V4LVByYXllciB3cm90
ZToNCj4+PiBhbWRncHVfdHRtX2NvcHlfbWVtX3RvX21lbSBoYXMgYSBzaW5nbGUgY2FsbGVyLCBt
YWtlIHN1cmUgdGhlIG91dA0KPj4+IGZlbmNlIGlzIG5vbi1OVUxMIHRvIHNpbXBsaWZ5IHRoZSBj
b2RlLg0KPj4+IFNpbmNlIG5vbmUgb2YgdGhlIHBvaW50ZXJzIHNob3VsZCBiZSBOVUxMLCB3ZSBj
YW4gZW5hYmxlDQo+Pj4gX19hdHRyaWJ1dGVfXygobm9ubnVsbCkpX18uDQo+Pj4NCj4+PiBXaGls
ZSBhdCBpdCBtYWtlIHRoZSBmdW5jdGlvbiBzdGF0aWMgc2luY2UgaXQncyBvbmx5IHVzZWQgZnJv
bQ0KPj4+IGFtZGdwdXVfdHRtLmMuDQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBQaWVycmUtRXJp
YyBQZWxsb3V4LVByYXllciA8cGllcnJlLWVyaWMucGVsbG91eC1wcmF5ZXJAYW1kLmNvbT4NCj4+
PiAtLS0NCj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMgfCAx
NyArKysrKysrKy0tLS0tLS0tLQ0KPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV90dG0uaCB8wqAgNiAtLS0tLS0NCj4+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0
aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X3R0bS5jDQo+Pj4gaW5kZXggMjdhYjRlNzU0YjJhLi43MGI4MTdiNTU3OGQgMTAw
NjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jDQo+
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jDQo+Pj4gQEAg
LTI4NCwxMiArMjg0LDEzIEBAIHN0YXRpYyBpbnQgYW1kZ3B1X3R0bV9tYXBfYnVmZmVyKHN0cnVj
dCB0dG1fYnVmZmVyX29iamVjdCAqYm8sDQo+Pj4gwqDCoCAqIG1vdmUgYW5kIGRpZmZlcmVudCBm
b3IgYSBCTyB0byBCTyBjb3B5Lg0KPj4+IMKgwqAgKg0KPj4+IMKgwqAgKi8NCj4+PiAtaW50IGFt
ZGdwdV90dG1fY29weV9tZW1fdG9fbWVtKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LA0KPj4+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGFtZGdw
dV9jb3B5X21lbSAqc3JjLA0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY29uc3Qgc3RydWN0IGFtZGdwdV9jb3B5X21lbSAqZHN0LA0KPj4+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdWludDY0X3Qgc2l6ZSwgYm9vbCB0bXosDQo+Pj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3Ys
DQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX2Zl
bmNlICoqZikNCj4+PiArX19hdHRyaWJ1dGVfXygobm9ubnVsbCkpDQo+Pg0KPj4gVGhhdCBsb29r
cyBmaXNoeS4NCj4+DQo+Pj4gK3N0YXRpYyBpbnQgYW1kZ3B1X3R0bV9jb3B5X21lbV90b19tZW0o
c3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgYW1kZ3B1X2NvcHlfbWVtICpzcmMsDQo+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1
Y3QgYW1kZ3B1X2NvcHlfbWVtICpkc3QsDQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB1aW50NjRfdCBzaXplLCBib29sIHRteiwNCj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwN
Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBk
bWFfZmVuY2UgKipmKQ0KPj4NCj4+IEknbSBub3QgYW4gZXhwZXJ0IGZvciB0aG9zZSwgYnV0IGxv
b2tpbmcgYXQgb3RoZXIgZXhhbXBsZXMgdGhhdCBzaG91bGQgYmUgaGVyZSBhbmQgbG9vayBzb21l
dGhpbmcgbGlrZToNCj4+DQo+PiBfX2F0dHJpYnV0ZV9fKChub25udWxsKDcpKSkNCj4gDQo+IEJv
dGggc3ludGF4IGFyZSB2YWxpZC4gVGhlIEdDQyBkb2NzIHNheXM6DQo+IA0KPiDCoMKgIElmIG5v
IGFyZy1pbmRleCBpcyBnaXZlbiB0byB0aGUgbm9ubnVsbCBhdHRyaWJ1dGUsIGFsbCBwb2ludGVy
IGFyZ3VtZW50cyBhcmUgbWFya2VkIGFzIG5vbi1udWxsDQoNCk5ldmVyIHNlZW4gdGhhdCBiZWZv
cmUuIElzIHRoYXQgZ2NjIHNwZWNpZmMgb3Igc3RhbmRhcmRpemVkPw0KDQo+IA0KPiANCj4+DQo+
PiBCdXQgSSB0aGluayBmb3IgdGhpcyBjYXNlIGhlcmUgaXQgaXMgYWxzbyBub3QgYSBtdXN0IGhh
dmUgdG8gaGF2ZSB0aGF0Lg0KPiANCj4gSSBjYW4gcmVtb3ZlIGl0IGlmIHlvdSBwcmVmZXIsIGJ1
dCBpdCBkb2Vzbid0IGh1cnQgdG8gaGF2ZSB0aGUgY29tcGlsZXIgdmFsaWRhdGUgdXNhZ2Ugb2Yg
dGhlIGZ1bmN0aW9ucy4NCg0KWWVhaCBpdCdzIGNsZWFybHkgdXNlZnVsLCBidXQgSSdtIHdvcnJp
ZWQgdGhhdCBjbGFuZyB3b24ndCBsaWtlIGl0Lg0KDQpDaHJpc3RpYW4uDQoNCj4gDQo+IFBpZXJy
ZS1FcmljDQo+IA0KPiANCj4+DQo+PiBSZWdhcmRzLA0KPj4gQ2hyaXN0aWFuLg0KPj4NCj4+PiDC
oCB7DQo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcgPSBhZGV2LT5tbWFu
LmJ1ZmZlcl9mdW5jc19yaW5nOw0KPj4+IMKgwqDCoMKgwqAgc3RydWN0IGFtZGdwdV9yZXNfY3Vy
c29yIHNyY19tbSwgZHN0X21tOw0KPj4+IEBAIC0zNjMsOSArMzY0LDcgQEAgaW50IGFtZGdwdV90
dG1fY29weV9tZW1fdG9fbWVtKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LA0KPj4+IMKgwqDC
oMKgwqAgfQ0KPj4+IMKgIGVycm9yOg0KPj4+IMKgwqDCoMKgwqAgbXV0ZXhfdW5sb2NrKCZhZGV2
LT5tbWFuLmd0dF93aW5kb3dfbG9jayk7DQo+Pj4gLcKgwqDCoCBpZiAoZikNCj4+PiAtwqDCoMKg
wqDCoMKgwqAgKmYgPSBkbWFfZmVuY2VfZ2V0KGZlbmNlKTsNCj4+PiAtwqDCoMKgIGRtYV9mZW5j
ZV9wdXQoZmVuY2UpOw0KPj4+ICvCoMKgwqAgKmYgPSBmZW5jZTsNCj4+PiDCoMKgwqDCoMKgIHJl
dHVybiByOw0KPj4+IMKgIH0NCj4+PiDCoCBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X3R0bS5oIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X3R0bS5oDQo+Pj4gaW5kZXggYmIxNzk4N2YwNDQ3Li4wN2FlMjg1M2M3N2MgMTAwNjQ0DQo+Pj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5oDQo+Pj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5oDQo+Pj4gQEAgLTE3MCwxMiAr
MTcwLDYgQEAgaW50IGFtZGdwdV9jb3B5X2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcs
IHVpbnQ2NF90IHNyY19vZmZzZXQsDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc3RydWN0IGRtYV9yZXN2ICpyZXN2LA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHN0cnVjdCBkbWFfZmVuY2UgKipmZW5jZSwgYm9vbCBkaXJlY3Rfc3VibWl0LA0KPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJvb2wgdm1fbmVlZHNfZmx1c2gsIHVp
bnQzMl90IGNvcHlfZmxhZ3MpOw0KPj4+IC1pbnQgYW1kZ3B1X3R0bV9jb3B5X21lbV90b19tZW0o
c3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgYW1kZ3B1X2NvcHlfbWVtICpzcmMsDQo+Pj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgYW1kZ3B1X2Nv
cHlfbWVtICpkc3QsDQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1
aW50NjRfdCBzaXplLCBib29sIHRteiwNCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwNCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfZmVuY2UgKipmKTsNCj4+PiDCoCBpbnQgYW1k
Z3B1X3R0bV9jbGVhcl9idWZmZXIoc3RydWN0IGFtZGdwdV9ibyAqYm8sDQo+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsDQo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2Up
Ow0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
