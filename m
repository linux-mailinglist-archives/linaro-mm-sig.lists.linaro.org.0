Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D00995F0A0E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Sep 2022 13:26:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7AF8F3F58F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Sep 2022 11:26:32 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2067.outbound.protection.outlook.com [40.107.243.67])
	by lists.linaro.org (Postfix) with ESMTPS id 89F483EC21
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Sep 2022 11:26:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nVu+jQ9vuC3AeEKx1sohgCmpJFmWvp+I+Tr0uXwX5iFcczgBCspGl5xy5N50wEjg1e21StEVJYlrgt235PdYzK8hFqRzG5D1a8a9w8/NPrvFcqjfUZT+1dvEMIXW7gJCuoGCT71Z3/6WhZ4aJB4CkLTmMQGkyEWAzNqHzs1lZlBbqgHExoKWuXwQUQP+G3TgTa+lZJs9hvtBg96H5SxPkqTumZV9lrKFTEBHKMX0waMaGukfteLwYt+3XY/fzv8uIqlTInsceAsWq8eplyHaj4eHIXivhJdYBPIi/z+lh9RmN8prT8FOBqQegryBMkOKiCzmHU/RJzP2lHcWwON71g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xzhh+c0kvDIM9ngvfs3NwxiOJgQdAVwr8k4zpb80Keg=;
 b=NUDsKMYVXPZ2TYwqSlFa8F2otK+fcrGC79ZKBaA5MjyeiyS2jEGrWmeA0sPr95ya66ksjwuIpu0qtJmH2nLqp0D/bkMrWXRZFH7mbsxEKETiadI0SHh2ALOeDS4jGc7r0NIZxk65ETgA6f1DABqWXemTHfjBNlL4ACIjwNEA3JeiIo6Z0tOprqGIUl21KDUpt84icJ5BTLGO7U+vxtECT4bAIyQWVs/qyoRxALbnIPonbHHZvndzjksjvgYLs8GvYnQ2KOGcpnLaI1w2sPRC+m2s116oFJxIRffQZ4Gk/69kn2rfzw5I2TJ/rI5QP1s7ShvD+KrTYviAp0M52JSjAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xzhh+c0kvDIM9ngvfs3NwxiOJgQdAVwr8k4zpb80Keg=;
 b=LlEMvqsoLGOWejlD5Hv8h+Gn+8nU8+b55GiKvhTShEMZTkWduLIszZc2zF2CE//8upR2r2s7/LPjWymyXL3yYZUhnyQamr38Z4MjCSsvv/kGOjo8V9CeSqgKrCiiyidc24eC8okuc2S1QxVVvtl1+uCd3uMGyBGHZCT4nmbuUr8=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SJ0PR12MB6904.namprd12.prod.outlook.com (2603:10b6:a03:483::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.23; Fri, 30 Sep
 2022 11:26:10 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::805b:58b6:1f27:d644]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::805b:58b6:1f27:d644%6]) with mapi id 15.20.5676.023; Fri, 30 Sep 2022
 11:26:10 +0000
Message-ID: <38ef1813-030c-8315-249d-349d69b81c52@amd.com>
Date: Fri, 30 Sep 2022 13:26:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com,
 shashank.sharma@amd.com, amaranath.somalapuram@amd.com,
 Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 steven.price@arm.com
References: <20220930084810.4639-1-Arvind.Yadav@amd.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220930084810.4639-1-Arvind.Yadav@amd.com>
X-ClientProxiedBy: AS9PR06CA0272.eurprd06.prod.outlook.com
 (2603:10a6:20b:45a::10) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|SJ0PR12MB6904:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c9fb7f4-b9db-467f-8e23-08daa2d69360
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	1dCmIjGbf0XYelHvnn/fS09LUZmNARwdtl5Li9vJ9ZXJSpFVyhmSmUILEc6Sbhg/yAh2rdyN31JFNy91/KPe9P+tDMvqU4T/CnE5J3Jvg/PZQeyC+HpwidI31uBrLrSQdwHfMQxzt+zEO5Zs0EHcyNO21SxHeZOPWyk0pCcn6y+clG9JScw+ZGahnh8n5HU0FHqO2Z9BoLgy04AEoLza+S0eZy0KZeeBxdbl9NbZRIvfrcEAseWYrmpG2g1N05JaEh4crxQ3bRWyPd1Dcjc8Nms5LIz0w63VSWhHtyBEvkLIGFuVgk3xzjoJAmdzTiu6Nv0xPwx/lZv+GpmVVrWryEl48D7plxLx/EHifPVtxIF0mqD5pilhFLkkKUDDxc9p8F4AqMs0SofDHTXmKNtaUwct+Oi55K93dR/jTZI714KwNpn0fDXq7s5b20GE0krDsfJKJJWKKaDWKcPlIVJ3lM/tGayU5cAUSn/OMjO7tDq31M/FUC4m2L8yb/jE8MXCWn9rNS82xmxXRl/JLcxSWIQkCm2d3QcQ5QLVApCFZG7i64nt+l3U5xlLK7lIY34eYQzA2Poqj8UWUDRoSvOuYpP5GNH/utHoExwjlI+VSNfTQWX4p5NxyWuzm4kYDkxzh95bQAAPk1x27RIHFnOfocNeycG0SxcSiUtslx9PxZyQCCEyrGJ85zyWWfCK8/jEnK8IB7QLDcm+Pz0nuRYKkfJgYzvKesG1fqaccfG1CtEhAaDQVcMh5Jo8RmVsKTj3e2q1zBhXPYBnpABInnVV08ASRmJRlt4iUVznUQdBK0+7STsMcoObAlqMs7Kade5B
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(136003)(396003)(346002)(376002)(366004)(451199015)(478600001)(6486002)(5660300002)(36756003)(41300700001)(66556008)(316002)(8676002)(66476007)(8936002)(66946007)(38100700002)(31696002)(186003)(921005)(6506007)(6512007)(6666004)(86362001)(83380400001)(2616005)(2906002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UHZCcmFlSGViNHd0cUM0ek10VjVHeERKM2xWRXREV1hGaXAwdjRvdjJRTUtP?=
 =?utf-8?B?bEd1RWg3VkdEaWtOa1ZOR21CaVNBeExvY2h3eVZnZzFRa1FyQUNuRDh4RUth?=
 =?utf-8?B?cTNJbk1tbU0xZy81Qm0vbTd3dENBQm9jY0RzYzA1bTZtUWR3T3JwOFFHMWtH?=
 =?utf-8?B?T0lvNjhGajZXTjBrOHNzazl3NFZoZUxhcHJsdjFOU3J6S0RoOU4rRnB5VXpP?=
 =?utf-8?B?VVBKNktiRlhnRVZodURGWnJEVERoNDJBenRRdkM0SHhISUU0RGh4TThFQ3hx?=
 =?utf-8?B?M0hZM0FrVHovQmZ4T2Z5R2pYRkRnSC9RNHRDQk9CVTBialhnK2thMU5aMWhw?=
 =?utf-8?B?azZXdCtKVlM2aUMwQk1lZSt5MWk4czd3SUVaWXV3cThrbFM0L3lBYnI4NERB?=
 =?utf-8?B?N1ZpZHdkRjRudXJrL2Y4RU1taDNzeGtOSnVzQ3dPSEs1REgzUWN1eVNSNjhx?=
 =?utf-8?B?UEgzdjFRSW5VNkJUVWluNXUvU0pDNnJKd1VSaXVTWE5kY2JKc0dGMGhmUy9O?=
 =?utf-8?B?enBZcDhCQWY5MSt4YjVxVlR2b0ZhMXA1UHM0RVg1c0JpZTQrL05QM2NmclVC?=
 =?utf-8?B?d0RpQkQ5SU9zeFo5aUpMZTdMaHhqN09qSmI4eHhIUzFySUhGaDMzVWdPbWtF?=
 =?utf-8?B?TzByNDhiSXFzM3V6bHJTN1g3aWlQYkJwVjRvM29aY3Jxa2hOM0JleUFuN01E?=
 =?utf-8?B?UGpZOUFhNGd0MTRHYUdyZFdQYVp3aHRhQ25Dd1ZESElxYnNmcXovL25IMUxZ?=
 =?utf-8?B?V1Rxd0NnUndaemJRZ1Brc1ltWktmZE5adzZYaXhnYWVaZCtuZU9BdDZ0cHhG?=
 =?utf-8?B?N2Nkc2s5ZWZuWXlKMTZHcFR1dWJMSVhuSmwwNnpXWFJNVW1qejZWSWhKV00y?=
 =?utf-8?B?bThKdTc2SXEwVFFEekhnc0didUw1eFI4RVNjTmoyanhzcnpKaUpsbXdoa2g2?=
 =?utf-8?B?bTV6UVQ1eCtyclorTjczVnRPTVN0QjFNOWF5VVZyVGJtbmRBbXErV2tWN0tM?=
 =?utf-8?B?eTBZbzJZdjNESi8yZ2dPRHhMZnVCbC9FL1cvbUI2TkhjYlh6VFBLdjR2SHhr?=
 =?utf-8?B?YjZZU1huZ3l1SUVibWhUOVU0bWI5MVF5cmVhaW9adHhJNFAzdWgyV2VEeHFj?=
 =?utf-8?B?QVZjMlBKY3g3MmoyRXZLeC9GV3RTeStwT2tpeFI5ZzVRSzBzb0pkc1A5Rjl2?=
 =?utf-8?B?NUY4NTlybE9EeVBvZVZ0Z3p4WHFtQTlXUlNUdGR3dGFUeWNUTlRRUkd2eGpV?=
 =?utf-8?B?MnJBTXNCc2JSY29KSUtvWG8yMlAyZThhU2lIczA5OTl6Rjh2NDZyY3dhNTBJ?=
 =?utf-8?B?YXIvcXpJWENVcjRYNXFFdjc3cHRkankxcSttdGxPZzBEVmkya05zd2d5bTNp?=
 =?utf-8?B?ZEt3MjIweUcrR0hWcUx5UEo3Um96SmFKamFGU1JmZmxid0piemI1NFBpdzBI?=
 =?utf-8?B?RW9Wd0lKd1JLMWQzUm9udVJKV2NKRURpeTVEaUpyVk80YzJiTVJnYTRhNWht?=
 =?utf-8?B?Y1B1V2RmblJzY05nNTdVZ1R6L1RXOS9KK0RXVWxmMnRCVVlzSGdiYjBNR2ZY?=
 =?utf-8?B?Zk5uSktDYkNJQ1lmYW84OWhNZXdCM2IrVk56QW1jajFIUEh0R2lpdDAvZjdT?=
 =?utf-8?B?c2RaUkppeDl0SUFOK2FBclpTTThQVXdZdU5IaTBOakhaSnFiTGg3VTZza3p0?=
 =?utf-8?B?cDlaVHRRenZUb2tBcG9FeUh2RGN3OWpQVXViQTl4ZS9BczZrdUwwOExzeUQ4?=
 =?utf-8?B?ekphbklkWXBzaFF3blRNWStiSXR3R0VZVjJxRkZFTlVGRmhKMFl6ZWRoZFpV?=
 =?utf-8?B?dVJicXBXbGtMam5kUVlrcENta0hqcTBsbXRYSXdMWERLM1RmcS9BaUhXQ0V4?=
 =?utf-8?B?cC9QWTJWeVh0dU42a1hWSmdZbGF3eFZteXRRZEw4a2VtMFpMN052VDlaRUdY?=
 =?utf-8?B?VUI4aUFVMzEyYTV5ZDJicGF6Qi9XNEdrVVR5ZGZJTUovNGwwRCswbFpicmpv?=
 =?utf-8?B?RzlqeXo2cDdrYmJFa2hXU2IyUlFHaEsrWVhSNkRxaHF4NWRtaFJ5SFNndVdP?=
 =?utf-8?B?L2tDdFRJcnQrd2hKd05nMlJhYTVibGxEbzBiQlZrd1J3UHhLeHdZSnR6MmFB?=
 =?utf-8?B?QXRzc0JvRm8zdjgvQzFLNnlJVEtXVDJ0SzREQ0JzNWVVNkxCTDBEUW03a0gv?=
 =?utf-8?Q?XgxL0E+zQwMWkrkirPxrz/26T7lQrveq5zpQtkf5c2zR?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c9fb7f4-b9db-467f-8e23-08daa2d69360
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2022 11:26:10.7501
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9b7X79SLtaETcPjdjrFtcERBhSOn4O3av4UKOOfp5hwkiRrVBPewV6vhOpI+9sOd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6904
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----
X-Rspamd-Queue-Id: 89F483EC21
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.988];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[amd.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.243.67:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:email,amd.com:dkim];
	TO_DN_SOME(0.00)[];
	RCVD_IN_DNSWL_FAIL(0.00)[40.107.243.67:server fail]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=LlEMvqso;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.243.67 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
Message-ID-Hash: 6LGQ2WNX3Q6WNWVS5S6H5SHJ6LUS6ZDG
X-Message-ID-Hash: 6LGQ2WNX3Q6WNWVS5S6H5SHJ6LUS6ZDG
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/sched: Fix kernel NULL pointer dereference error
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6LGQ2WNX3Q6WNWVS5S6H5SHJ6LUS6ZDG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Am 30.09.22 um 10:48 schrieb Arvind Yadav:
> BUG: kernel NULL pointer dereference, address: 0000000000000088
>   #PF: supervisor read access in kernel mode
>   #PF: error_code(0x0000) - not-present page
>   PGD 0 P4D 0
>   Oops: 0000 [#1] PREEMPT SMP NOPTI
>   CPU: 2 PID: 0 Comm: swapper/2 Not tainted 6.0.0-rc2-custom #1
>   Arvind : [dma_fence_default_wait _START] timeout = -1
>   Hardware name: AMD Dibbler/Dibbler, BIOS RDB1107CC 09/26/2018
>   RIP: 0010:drm_sched_job_done.isra.0+0x11/0x140 [gpu_sched]
>   Code: 8b fe ff ff be 03 00 00 00 e8 7b da b7 e3 e9 d4 fe ff ff 66 0f 1f 44 00 00 0f 1f 44 00 00 55 48 89 e5 41 55 41 54 49 89 fc 53 <48> 8b 9f 88 00 00 00 f0 ff 8b f0 00 00 00 48 8b 83 80 01 00 00 f0
>   RSP: 0018:ffffb1b1801d4d38 EFLAGS: 00010087
>   RAX: ffffffffc0aa48b0 RBX: ffffb1b1801d4d70 RCX: 0000000000000018
>   RDX: 000036c70afb7c1d RSI: ffff8a45ca413c60 RDI: 0000000000000000
>   RBP: ffffb1b1801d4d50 R08: 00000000000000b5 R09: 0000000000000000
>   R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
>   R13: ffffb1b1801d4d70 R14: ffff8a45c4160000 R15: ffff8a45c416a708
>   FS:  0000000000000000(0000) GS:ffff8a48a0a80000(0000) knlGS:0000000000000000
>   CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>   CR2: 0000000000000088 CR3: 000000014ad50000 CR4: 00000000003506e0
>   Call Trace:
>    <IRQ>
>    drm_sched_job_done_cb+0x12/0x20 [gpu_sched]
>    dma_fence_signal_timestamp_locked+0x7e/0x110
>    dma_fence_signal+0x31/0x60
>    amdgpu_fence_process+0xc4/0x140 [amdgpu]
>    gfx_v9_0_eop_irq+0x9d/0xd0 [amdgpu]
>    amdgpu_irq_dispatch+0xb7/0x210 [amdgpu]
>    amdgpu_ih_process+0x86/0x100 [amdgpu]
>    amdgpu_irq_handler+0x24/0x60 [amdgpu]
>    __handle_irq_event_percpu+0x4b/0x190
>    handle_irq_event_percpu+0x15/0x50
>    handle_irq_event+0x39/0x60
>    handle_edge_irq+0xaf/0x210
>    __common_interrupt+0x6e/0x110
>    common_interrupt+0xc1/0xe0
>    </IRQ>
>    <TASK>

How is this triggered any why haven't we seen it before?

Christian

> Signed-off-by: Arvind Yadav <Arvind.Yadav@amd.com>
> ---
>   drivers/gpu/drm/scheduler/sched_main.c | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
> index 6684d88463b4..390272f6b126 100644
> --- a/drivers/gpu/drm/scheduler/sched_main.c
> +++ b/drivers/gpu/drm/scheduler/sched_main.c
> @@ -172,7 +172,12 @@ drm_sched_rq_select_entity(struct drm_sched_rq *rq)
>   static void drm_sched_job_done(struct drm_sched_job *s_job)
>   {
>   	struct drm_sched_fence *s_fence = s_job->s_fence;
> -	struct drm_gpu_scheduler *sched = s_fence->sched;
> +	struct drm_gpu_scheduler *sched;
> +
> +	if (!s_fence)
> +		return;
> +
> +	sched = s_fence->sched;
>   
>   	atomic_dec(&sched->hw_rq_count);
>   	atomic_dec(sched->score);

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
