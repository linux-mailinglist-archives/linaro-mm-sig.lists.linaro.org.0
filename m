Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 85459B2A1D3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Aug 2025 14:41:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4EC33440F0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Aug 2025 12:41:11 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2042.outbound.protection.outlook.com [40.107.244.42])
	by lists.linaro.org (Postfix) with ESMTPS id D6B633F71E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Aug 2025 12:40:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=lSDnxItp;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.244.42 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c+J+mB1C/fSh7UJBybwS6YLrSQwdR/B3A2UYk5WjEyN2Lvt/mAAjm26QiipjmlfI39A6R28/MpYVnH3O5g4sylGSB2XU84uVlUXureC2GhexDRveHie4MuRX8zv6P0TR6appRrtamS+RDaLmkh5bcHzk/UBALUIhV77dh1E9tDfV/XV/kWqxdna9xsgW5cjGpuZBL3KvY6W3NdDJn5AnE5KhBAQQ6dGIrpnXjmy8dUE2tcV+h1kJEo6JwcRqpryhsCCf0Mtj2ytvUirW3ym1wi2E6bqIJpKpJdO8aOq/eKjAiyw0plNEPlXm4ElcwSd16RBjYF+Nlvlj3kjYaVMnww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BQ/gsfFS0c3uUivH5NKAhmDFAfXklvyd6tkZTjQFm08=;
 b=rm3AZwrwus+B09CAfHw5fZ5ruBMEsnGrd7UaqeeA/VTQIpvAurSn9tQEKHJvvw6jau4eIpLk4XZ6w+IJ5Lcljsqosnq/ikyS0AnovXmw5k6+uu73dDF5tje2KXPewswq42hBG6QM+vfAcdQisk+AdavNvJz1hekvHOcrWeRhXIP06muD9JW2ZmKCzLyigekcGHBaIXw0ice2/BZQKa3FHZjw0J6dK390rVIfap90AIJfasSHBnciMeNRN1loZ2tWxJDFBDS02F2q+ZoBdFR7oFdc6Pt0rtQswsdI5Dru2t5StlX6QzmR0DrrtagRZtjexlAmbjf/qRWx2kYBOdDkCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BQ/gsfFS0c3uUivH5NKAhmDFAfXklvyd6tkZTjQFm08=;
 b=lSDnxItpMjoettiL1RLIPnTPiuBOFWznLGbPfZEo5lm5hMkVe5b7lbObiiPZZ5Kr5FeOEZj5KTph1f42mpbzTvdEpsVXGWf+UYg5yMlRRYR/hBdyc9AXoR5Pm+t/9DroBcKM2nUHLAYX10wL1LQ+1x+vx1ryd1kwppDUQmfXW74=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SN7PR12MB6768.namprd12.prod.outlook.com (2603:10b6:806:268::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.17; Mon, 18 Aug
 2025 12:40:55 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.9031.023; Mon, 18 Aug 2025
 12:40:55 +0000
Message-ID: <6f409954-2e01-4e87-b8b7-5688bea837f6@amd.com>
Date: Mon, 18 Aug 2025 14:40:45 +0200
User-Agent: Mozilla Thunderbird
To: Thomas Zimmermann <tzimmermann@suse.de>, sumit.semwal@linaro.org,
 oushixiong@kylinos.cn, alexander.deucher@amd.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@gmail.com,
 simona@ffwll.ch
References: <20250818084148.212443-1-tzimmermann@suse.de>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250818084148.212443-1-tzimmermann@suse.de>
X-ClientProxiedBy: FR2P281CA0012.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::22) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SN7PR12MB6768:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b2923f7-6e1d-42ac-f399-08ddde547945
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?QkFHc1FJdVJUbzlnVjJEd1Btc1I2TmN1a3p6dzdPQjRpNWZMZE1kdW1Mb2Jz?=
 =?utf-8?B?ZFRMNUVjY3N4RngrRGdzYU1JbTUxNUh0WGx3eUxZamtPTmhWZGl4aUZaWG40?=
 =?utf-8?B?VktDVGNyenN0ZTB5VW1TaTZrSDJyY0lWWm84d3JmNnBOMHlFTkxUZjlyT0pj?=
 =?utf-8?B?enVEMlBvWHpsZHpQY1RxUkRTSjVuNEVoaW9hYzRnZFcyTnoyaDdGaWY5V1JN?=
 =?utf-8?B?VGdMZmdzQXJmaWhBM2Q2UWdOemxRQ1BUWSs3eEtEZ280dXZNOHVic3NERTBp?=
 =?utf-8?B?Y25uZ0V3bUs0bm10bTJUdm5EVHptd3pYRml5STY0Y3MwZDJrMkNPT0RPKzB6?=
 =?utf-8?B?V3JMQ1FqaFBGd0k5M0lIK1RFeVBCd2tBL1BMMi9DMzhJYno1c1FUcUNjYTJ4?=
 =?utf-8?B?UklTREpJRC82c3JXVW9VUWFESzE4Z1RrMkcwcTl2WmJQQjNCQUo4cGZFT0hN?=
 =?utf-8?B?NEdKRGlFaU5rSkJuMDZ6MyszMEhNclF2NWs4T0Q5NWVLVkhvcDRSdHNTTVFC?=
 =?utf-8?B?c3ZKck9sam5GKzFBMXpDSHFEb0o2aW8rcEtCMmRpaDJWL1Uxdk0zOUp6bTh4?=
 =?utf-8?B?Y1h4SjdBZXRuakx3dzIyaUh1eEFRVFZ3dDR6dm1vdWxXblA5M1FjNG9NZWMv?=
 =?utf-8?B?RVhCY0xyWlZFMGxoRExqSCtYZ0JGd0E5eEpGOUFDdENVUUNTdGZocndyM2kz?=
 =?utf-8?B?cC9GZWFkT2xnUHd2QU54OTVWWmEvaDhRb250SmFnb0NjOUhiZStlS1I3NHIv?=
 =?utf-8?B?QzJ1bit5UnhPbnJ3ZWlXR2hrN3JDcStQaTdtYmdNMW9aQ0xORmN5WW9uTHdS?=
 =?utf-8?B?MkMzZ3JwZlBYa2YrYVhtSllkdXpGQUc5dmFtMHVITm1sVjhIeEJBcnpBa2VW?=
 =?utf-8?B?T3BRMTFURVVJc0twUnZsK05BL3hWczdVRzF3a0ZLR3JYaU5Gck5jcndJbkVz?=
 =?utf-8?B?S0RKMFNuUHhqVzdzWTVhYlVadjlUcjQwUFBubktmb2h4eEtrUmNZaEZUcDlY?=
 =?utf-8?B?SzFqK2NiZUExQlhlbTV6eGVtcmJ4anNWNzNyVjZjNzNOS3VRTlJtVEJ6MW5C?=
 =?utf-8?B?SThJQ0hhei9VRXV6RzEzSFRBcFNyTFJLemtmdW9ZYXpLSklkU3RtQ0pLWm50?=
 =?utf-8?B?eThvOStaSDlsTm8zTG5Oa3RoVk9sUWdRRFBYWkdyTXczbTBQOUpYR3JISFN5?=
 =?utf-8?B?RFBrZUEvMDJCdE02Y012S1BKSDN1VnNUSXhXRitua2pOc01lOWdKckhGOFNJ?=
 =?utf-8?B?bmhKY2x6MTcyMTZSYll1Wnh1L1dqMXBySC9rQ2Q1MzBxaUJXSlVnWHV6Ky9z?=
 =?utf-8?B?MG9kQmdiREU3LzMvc3JVTUdOa2h1aHBNRXpPd0duMGNIUFBDekhRNWkxanda?=
 =?utf-8?B?NXQvZHpXTVBGSEhRYlh2N3JHYXNDUCtxa0hIVW0yd3UycEswOElzaEpLKzdp?=
 =?utf-8?B?b2dDMmVUSHBpNDJ6a2hmTHp0RmRxYkdpYU8xdVBQWUxDNjdZbTJqaGFPaG40?=
 =?utf-8?B?cEVGU3VzeFRHRDFKQlZDWWMzUXh0TmF3d0RsNE9TaGZuZ21aakh4U1loalNU?=
 =?utf-8?B?REZ6ODVJazdWaDRJZHNZT00vT2ZMaFZHbUVnVXRoVDZ3eFNTVU1mVWgyMjY4?=
 =?utf-8?B?QzVsLzhXSXVFK05VVm9rSzBOUG5laVFqUjN1ejVNYVFna0E0MHJvZ2FRaERX?=
 =?utf-8?B?M3dLYk53VE5ZK3lDUElFOHk5dTBta2FDZm02QjhxeWJsNzFzNlBNWFFHK01u?=
 =?utf-8?B?VFVFVGZudzZzMHM0S3RZd1pqYU5sdzZhb2c3VGlWZnZjODhwazlzT3A5VDM0?=
 =?utf-8?B?UURwcFh4OEhrUUlaclowVjZkQVBVaktORjlYS1gzZStpNzlJdjdBekJsMFp6?=
 =?utf-8?Q?5YG4LJIF3HTdG?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dGxOZzZheUI5R3NueDA1YngrM2VzeWdtazZLVmdFZGFMWmpMT0pxZFhmQ0NQ?=
 =?utf-8?B?eTNlbE8xZWVtVkEvRnRXWlo2Y2FXbmhqKzRWWjhhdG1rUzkvNTZjc2xnOEtB?=
 =?utf-8?B?R0ZZdlIyOVlqM1dEZGRQcDU2dHFWdWVPenByZkNiQlVDZFZ5TVg4SVRaMkcx?=
 =?utf-8?B?UnIvSmFuVEllSzRrQ3N1cWFNSmZvbmdPaUlPMGcxKyt2b1l0VWhoY3ZhY1l1?=
 =?utf-8?B?SVZDTGdzcm9QVlJKWG0yYlJ5WUZUUWQ2ZTUwZDBFL1NCWExnR2p2VzF0MExM?=
 =?utf-8?B?U0NtcnF1RmdoRnlnMW0wQ3NjUlZBTERVVjhYMTVFVnp0QnY3SXpQQ3ZPZXVy?=
 =?utf-8?B?NGhDVmc5ZnlWZ1FzSU1zeTI5MUtFdEs5WmxnaHVFK0V3SFlxZ3ljRU5nNFA1?=
 =?utf-8?B?N2cvWkQ0RGlnMHJnVkZLWWdBM2VweUFRVFV6Q1g4S01Qa1VRNmczWWhmUUFk?=
 =?utf-8?B?RUxKR0xGenRteUVleUF6VGcramFkTW9ydGlhOTd1WG1JWTF4dlBmdXN4a2pD?=
 =?utf-8?B?akdNRkUzMFMybEdZbUxJMGEwYzMwYXFFWk1nODdiM3VaeGZjeU0wTlErcFRk?=
 =?utf-8?B?NWZOT0ZkSm9IcHdJT2d0dGV1bnNzNEVIdlRoWE1XYUdoekhSRHduVSttSGZ3?=
 =?utf-8?B?RDI1R1NSdWgvTmxLVGdRQ2R6Q3VLUy9GcDFzb2UxR29KREhDWkZoNTJRekVq?=
 =?utf-8?B?OEJaVnZZQU5leWFRa2l2ODJjSXgyY1VselZ3VEZJYkhKSzFZQ1dGZ21JZTJk?=
 =?utf-8?B?MFFJNjM2K1J0OEY2VVpub3Q0WUUvRzNHbE9ld211QkExQm0xKzBDVVJqTUp6?=
 =?utf-8?B?ZEs4d01nU0FPK0lpUGJ3S1hHRlFkK1RuNmJKdlpRSlBUVDQyNnozd05VSFgr?=
 =?utf-8?B?TUpLaVo4bnNQeTdpa2orWlFpdFBrUVpId0ZwazBqMGZFdnY3VzVYdnVjcnM4?=
 =?utf-8?B?SkVnY3dtbDI0azFkNktOM01wUU1lQ0szMnRpRE9MWXAzN1RXMi9uS1pLS2pn?=
 =?utf-8?B?WFdYTzBrdmZXc2dKTll0b3F1TDJDbW9ZK3FEcFhwVzBoMTNIKzc1REVZZEJP?=
 =?utf-8?B?aENsQ2t2bWtwTUdUQUpmZVZHemNHVG5yRVV3WFQ2emE4WGgzQ2I4MzhjeGF6?=
 =?utf-8?B?U28xUkR2eGhHYmR1MTdkWDhTNU43dXFaOFlsWHB6ZnlxMjhxTlRWZlF6OUVk?=
 =?utf-8?B?RW96cFduKzMzL1AyY2JHRjlFQzZEejNRVDY2T3QrV2J2Q09aWEJxSUZ3cGk1?=
 =?utf-8?B?cVh1a0srVGgzVUFKM0YwMEVudzVmbVJ6MS9Rd2o5aXJCMWIxVW1yb3ZoTlZN?=
 =?utf-8?B?cmZSWlRHb2lhMm55SDcyWHlWSnVBaWpER0Q3TG5EYXFKd21kUm8zOFJNdkEz?=
 =?utf-8?B?QnJybkpnTVlYVE0zenZzcnhkWVo0cm9VNjNST3hZd1AzNlIrbEJ1N3FxVW9o?=
 =?utf-8?B?a0xMMkNLbGVRMzlsYjI3TXQzaFYyQ3FrUkMwV3I1TFJVYUFXLzc1dndYMlhy?=
 =?utf-8?B?VEkwSkpxbmR0dkZ4aXZjNXVmM3JzWFN3Q3JrUEtJQ2c2aXl6LzdsUzVnZ2oy?=
 =?utf-8?B?dlFmRnI4WDNkZkJFSXlJUWs4STM1bXFHamFUb25VZFE5dzZjdmVBbmdCb2Zq?=
 =?utf-8?B?VG4wM2hTSzg4MGxySkxTbkthWUZrSHU3ZHI5SFVxR0ltRXF5UDNOWjRSZUZK?=
 =?utf-8?B?c003VU45WFQ4RlJ1cVp5ei8yTHFuSEQxZ0craDIwZEQwT0NrWWpBNDEzcEE3?=
 =?utf-8?B?Y3kvVnJZWUhpdDhmMnRaK3NrM04raUFZRWtRS3BlWkl0YnJRMkJVSmlOTkda?=
 =?utf-8?B?M0RiZWVrc0JvWkhtR1hoN3FZUE1yV01qSXZyWGd3VVpTa0lsZ2pYWWd4QkZG?=
 =?utf-8?B?YWNadEpJUm9vQWVxbGQzOVB5NmdGL1FreFNueEJMMWdoclNieXhaN2J1WkY1?=
 =?utf-8?B?akRsejdmQmZjaXY1VFRPRVhWeWRuano5L0M1Ulg3R0ZJbzlDb1IrMFdySW9K?=
 =?utf-8?B?d1krQUNUREhDemVxdi92NHNkbEltWVRoWXlsQlBoMUp6OVJOYTdlei9md0hO?=
 =?utf-8?B?eFo3QXpqbzhTVUFLQzA4VGtKak9DQ0VnOTk5ZFRNQlNoR2dLek5yRjlkMFIr?=
 =?utf-8?Q?X39FMmwC9Ur2FB4fiG73Ej/Wl?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b2923f7-6e1d-42ac-f399-08ddde547945
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2025 12:40:55.3228
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: arUt+UrG/Lv3110t3BGqaxSQav2MXIYITiLXcanNkdraL9BBWLk6Huuu3UxTrraL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6768
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D6B633F71E
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.42:from];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[suse.de,linaro.org,kylinos.cn,amd.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: IMR2VZE2TZVVKGNGWPDKRHQXHN6XMOFR
X-Message-ID-Hash: IMR2VZE2TZVVKGNGWPDKRHQXHN6XMOFR
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/amdgpu: Pin buffer while vmap'ing exported dma-buf objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IMR2VZE2TZVVKGNGWPDKRHQXHN6XMOFR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTguMDguMjUgMTA6NDEsIFRob21hcyBaaW1tZXJtYW5uIHdyb3RlOg0KPiBDdXJyZW50IGRt
YS1idWYgdm1hcCBzZW1hbnRpY3MgcmVxdWlyZSB0aGF0IHRoZSBtYXBwZWQgYnVmZmVyIHJlbWFp
bnMNCj4gaW4gcGxhY2UgdW50aWwgdGhlIGNvcnJlc3BvbmRpbmcgdnVubWFwIGhhcyBjb21wbGV0
ZWQuDQo+IA0KPiBGb3IgR0VNLVNITUVNLCB0aGlzIHVzZWQgdG8gYmUgZ3VhcmFudGVlZCBieSBh
IHBpbiBvcGVyYXRpb24gd2hpbGUgY3JlYXRpbmcNCj4gYW4gUy9HIHRhYmxlIGluIGltcG9ydC4g
R0VNLVNITUVOIGNhbiBub3cgaW1wb3J0IGRtYS1idWYgb2JqZWN0cyB3aXRob3V0DQo+IGNyZWF0
aW5nIHRoZSBTL0cgdGFibGUsIHNvIHRoZSBwaW4gaXMgbWlzc2luZy4gTGVhZHMgdG8gcGFnZS1m
YXVsdCBlcnJvcnMsDQo+IHN1Y2ggYXMgdGhlIG9uZSBzaG93biBiZWxvdy4NCj4gDQo+IFsgIDEw
Mi4xMDE3MjZdIEJVRzogdW5hYmxlIHRvIGhhbmRsZSBwYWdlIGZhdWx0IGZvciBhZGRyZXNzOiBm
ZmZmYzkwMTI3MDAwMDAwDQo+IFsuLi5dDQo+IFsgIDEwMi4xNTcxMDJdIFJJUDogMDAxMDp1ZGxf
Y29tcHJlc3NfaGxpbmUxNisweDIxOS8weDk0MCBbdWRsXQ0KPiBbLi4uXQ0KPiBbICAxMDIuMjQz
MjUwXSBDYWxsIFRyYWNlOg0KPiBbICAxMDIuMjQ1Njk1XSAgPFRBU0s+DQo+IFsgIDEwMi4yNDc3
Vjk1XSAgPyB2YWxpZGF0ZV9jaGFpbisweDI0ZS8weDVlMA0KPiBbICAxMDIuMjUxODA1XSAgPyBf
X2xvY2tfYWNxdWlyZSsweDU2OC8weGFlMA0KPiBbICAxMDIuMjU1ODA3XSAgdWRsX3JlbmRlcl9o
bGluZSsweDE2NS8weDM0MSBbdWRsXQ0KPiBbICAxMDIuMjYwMzM4XSAgPyBfX3BmeF91ZGxfcmVu
ZGVyX2hsaW5lKzB4MTAvMHgxMCBbdWRsXQ0KPiBbICAxMDIuMjY1Mzc5XSAgPyBsb2NhbF9jbG9j
a19ub2luc3RyKzB4Yi8weDEwMA0KPiBbICAxMDIuMjY5NjQyXSAgPyBfX2xvY2tfcmVsZWFzZS5p
c3JhLjArMHgxNmMvMHgyZTANCj4gWyAgMTAyLjI3NDI0Nl0gID8gbWFya19oZWxkX2xvY2tzKzB4
NDAvMHg3MA0KPiBbICAxMDIuMjc4MTc3XSAgdWRsX3ByaW1hcnlfcGxhbmVfaGVscGVyX2F0b21p
Y191cGRhdGUrMHg0M2UvMHg2ODAgW3VkbF0NCj4gWyAgMTAyLjI4NDYwNl0gID8gX19wZnhfdWRs
X3ByaW1hcnlfcGxhbmVfaGVscGVyX2F0b21pY191cGRhdGUrMHgxMC8weDEwIFt1ZGxdDQo+IFsg
IDEwMi4yOTE1NTFdICA/IGxvY2tkZXBfaGFyZGlycXNfb25fcHJlcGFyZS5wYXJ0LjArMHg5Mi8w
eDE3MA0KPiBbICAxMDIuMjk3MjA4XSAgPyBsb2NrZGVwX2hhcmRpcnFzX29uKzB4ODgvMHgxMzAN
Cj4gWyAgMTAyLjMwMTU1NF0gID8gX3Jhd19zcGluX3VubG9ja19pcnErMHgyNC8weDUwDQo+IFsg
IDEwMi4zMDU5MDFdICA/IHdhaXRfZm9yX2NvbXBsZXRpb25fdGltZW91dCsweDJiYi8weDNhMA0K
PiBbICAxMDIuMzExMDI4XSAgPyBkcm1fYXRvbWljX2hlbHBlcl9jYWxjX3RpbWVzdGFtcGluZ19j
b25zdGFudHMrMHgxNDEvMHgyMDANCj4gWyAgMTAyLjMxNzcxNF0gID8gZHJtX2F0b21pY19oZWxw
ZXJfY29tbWl0X3BsYW5lcysweDNiNi8weDEwMzANCj4gWyAgMTAyLjMyMzI3OV0gIGRybV9hdG9t
aWNfaGVscGVyX2NvbW1pdF9wbGFuZXMrMHgzYjYvMHgxMDMwDQo+IFsgIDEwMi4zMjg2NjRdICBk
cm1fYXRvbWljX2hlbHBlcl9jb21taXRfdGFpbCsweDQxLzB4YjANCj4gWyAgMTAyLjMzMzYyMl0g
IGNvbW1pdF90YWlsKzB4MjA0LzB4MzMwDQo+IFsuLi5dDQo+IFsgIDEwMi41Mjk5NDZdIC0tLVsg
ZW5kIHRyYWNlIDAwMDAwMDAwMDAwMDAwMDAgXS0tLQ0KPiBbICAxMDIuNjUxOTgwXSBSSVA6IDAw
MTA6dWRsX2NvbXByZXNzX2hsaW5lMTYrMHgyMTkvMHg5NDAgW3VkbF0NCj4gDQo+IEluIHRoaXMg
c3RhY2sgc3RyYWNlLCB1ZGwgKGJhc2VkIG9uIEdFTS1TSE1FTSkgaW1wb3J0ZWQgYW5kIHZtYXAn
ZWQgYQ0KPiBkbWEtYnVmIGZyb20gYW1kZ3B1LiBBbWRncHUgcmVsb2NhdGVkIHRoZSBidWZmZXIs
IHRoZXJlYnkgaW52YWxpZGF0aW5nIHRoZQ0KPiBtYXBwaW5nLg0KPiANCj4gUHJvdmlkZSBhIGN1
c3RvbSBkbWEtYnVmIHZtYXAgbWV0aG9kIGluIGFtZGdwdSB0aGF0IHBpbnMgdGhlIG9iamVjdCBi
ZWZvcmUNCj4gbWFwcGluZyBpdCdzIGJ1ZmZlcidzIHBhZ2VzIGludG8ga2VybmVsIGFkZHJlc3Mg
c3BhY2UuIERvIHRoZSBvcHBvc2l0ZSBpbg0KPiB2dW5tYXAuDQo+IA0KPiBOb3RlIHRoYXQgZG1h
LWJ1ZiB2bWFwIGRpZmZlcnMgZnJvbSBHRU0gdm1hcCBpbiBob3cgaXQgaGFuZGxlcyByZWxvY2F0
aW9uLg0KPiBXaGlsZSBkbWEtYnVmIHZtYXAga2VlcHMgdGhlIGJ1ZmZlciBpbiBwbGFjZSwgR0VN
IHZtYXAgcmVxdWlyZXMgdGhlIGNhbGxlcg0KPiB0byBrZWVwIHRoZSBidWZmZXIgaW4gcGxhY2Uu
IEhlbmNlLCB0aGlzIGZpeCBpcyBpbiBhbWRncHUncyBkbWEtYnVmIGNvZGUNCj4gaW5zdGVhZCBv
ZiBpdHMgR0VNIGNvZGUuDQo+IA0KPiBBIGRpc2N1c3Npb24gb2YgdmFyaW91cyBhcHByb2FjaGVz
IHRvIHNvbHZpbmcgdGhlIHByb2JsZW0gaXMgYXZhaWxhYmxlDQo+IGF0IFsxXS4NCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPiBG
aXhlczogNjYwY2Q0NDY1OWEwICgiZHJtL3NobWVtLWhlbHBlcjogSW1wb3J0IGRtYWJ1ZiB3aXRo
b3V0IG1hcHBpbmcgaXRzIHNnX3RhYmxlIikNCj4gUmVwb3J0ZWQtYnk6IFRob21hcyBaaW1tZXJt
YW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPiBDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2RyaS1kZXZlbC9iYTFiZGZiOC1kYmY3LTQzNzItYmRjYi1kZjdlMDUxMWM3MDJAc3VzZS5k
ZS8NCj4gQ2M6IFNoaXhpb25nIE91IDxvdXNoaXhpb25nQGt5bGlub3MuY24+DQo+IENjOiBUaG9t
YXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCj4gQ2M6IE1hYXJ0ZW4gTGFua2hv
cnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBNYXhpbWUgUmlw
YXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21h
aWwuY29tPg0KPiBDYzogU2ltb25hIFZldHRlciA8c2ltb25hQGZmd2xsLmNoPg0KPiBDYzogU3Vt
aXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCj4gQ2M6ICJDaHJpc3RpYW4gS8O2
bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiBDYzogZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQo+IENjOiBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvZHJpLWRldmVsLzk3OTJjNmMzLWEyYjgtNGIyYi1iNWJhLWZiYTE5YjE1M2UyMUBzdXNl
LmRlLyAjIFsxXQ0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9k
bWFfYnVmLmMgfCAzNiArKysrKysrKysrKysrKysrKysrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAz
NCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jDQo+IGluZGV4IDU3NDNlYmIyZjFiNy4uNWIzMzc3
NmVlZWNlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
ZG1hX2J1Zi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFf
YnVmLmMNCj4gQEAgLTI4NSw2ICsyODUsMzggQEAgc3RhdGljIGludCBhbWRncHVfZG1hX2J1Zl9i
ZWdpbl9jcHVfYWNjZXNzKHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLA0KPiAgCXJldHVybiByZXQ7
DQo+ICB9DQo+ICANCj4gK3N0YXRpYyBpbnQgYW1kZ3B1X2RtYV9idWZfdm1hcChzdHJ1Y3QgZG1h
X2J1ZiAqZG1hX2J1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKQ0KPiArew0KPiArCXN0cnVjdCBk
cm1fZ2VtX29iamVjdCAqb2JqID0gZG1hX2J1Zi0+cHJpdjsNCj4gKwlzdHJ1Y3QgYW1kZ3B1X2Jv
ICpibyA9IGdlbV90b19hbWRncHVfYm8ob2JqKTsNCj4gKwlpbnQgcmV0Ow0KPiArDQo+ICsJLyoN
Cj4gKwkgKiBQaW4gdG8ga2VlcCBidWZmZXIgaW4gcGxhY2Ugd2hpbGUgaXQncyB2bWFwJ2VkLiBU
aGUgYWN0dWFsDQo+ICsJICogbG9jYXRpb24gaXMgbm90IGltcG9ydGFudCBhcyBsb25nIGFzIGl0
J3MgbWFwYWJsZS4NCg0KWWVhaCwgZXhhY3RseSB0aGF0IHdvbid0IHdvcmsgaGVyZS4gTW9zdCBv
ZiB0aGUgbG9jYXRpb25zIGFyZSBub3QgQ1BVIGFjY2Vzc2libGUuDQoNCllvdSBjb3VsZCB1c2Ug
QU1ER1BVX0dFTV9ET01BSU5fR1RULCB0aGF0IHNob3VsZCBtb3N0IGxpa2VseSB3b3JrIGluIGFs
bCBjYXNlcyBidXQgaXNuJ3QgbmVjZXNzYXJpbHkgdGhlIG1vc3Qgb3B0aW1hbCBzb2x1dGlvbi4N
Cg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiArCSAqDQo+ICsJICogVGhpcyBjb2RlIGlzIHJl
cXVpcmVkIGZvciBleHBvcnRpbmcgdG8gR0VNLVNITUVNIHdpdGhvdXQgUy9HIHRhYmxlLg0KPiAr
CSAqIE9uY2UgR0VNLVNITUVNIHN1cHBvcnRzIGR5bmFtaWMgaW1wb3J0cywgaXQgc2hvdWxkIGJl
IGRyb3BwZWQuDQo+ICsJICovDQo+ICsJcmV0ID0gYW1kZ3B1X2JvX3BpbihibywgQU1ER1BVX0dF
TV9ET01BSU5fTUFTSyk7DQo+ICsJaWYgKHJldCkNCj4gKwkJcmV0dXJuIHJldDsNCj4gKwlyZXQg
PSBkcm1fZ2VtX2RtYWJ1Zl92bWFwKGRtYV9idWYsIG1hcCk7DQo+ICsJaWYgKHJldCkNCj4gKwkJ
YW1kZ3B1X2JvX3VucGluKGJvKTsNCj4gKw0KPiArCXJldHVybiByZXQ7DQo+ICt9DQo+ICsNCj4g
K3N0YXRpYyB2b2lkIGFtZGdwdV9kbWFfYnVmX3Z1bm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1
Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKQ0KPiArew0KPiArCXN0cnVjdCBkcm1fZ2VtX29iamVj
dCAqb2JqID0gZG1hX2J1Zi0+cHJpdjsNCj4gKwlzdHJ1Y3QgYW1kZ3B1X2JvICpibyA9IGdlbV90
b19hbWRncHVfYm8ob2JqKTsNCj4gKw0KPiArCWRybV9nZW1fZG1hYnVmX3Z1bm1hcChkbWFfYnVm
LCBtYXApOw0KPiArCWFtZGdwdV9ib191bnBpbihibyk7DQo+ICt9DQo+ICsNCj4gIGNvbnN0IHN0
cnVjdCBkbWFfYnVmX29wcyBhbWRncHVfZG1hYnVmX29wcyA9IHsNCj4gIAkuYXR0YWNoID0gYW1k
Z3B1X2RtYV9idWZfYXR0YWNoLA0KPiAgCS5waW4gPSBhbWRncHVfZG1hX2J1Zl9waW4sDQo+IEBA
IC0yOTQsOCArMzI2LDggQEAgY29uc3Qgc3RydWN0IGRtYV9idWZfb3BzIGFtZGdwdV9kbWFidWZf
b3BzID0gew0KPiAgCS5yZWxlYXNlID0gZHJtX2dlbV9kbWFidWZfcmVsZWFzZSwNCj4gIAkuYmVn
aW5fY3B1X2FjY2VzcyA9IGFtZGdwdV9kbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3MsDQo+ICAJLm1t
YXAgPSBkcm1fZ2VtX2RtYWJ1Zl9tbWFwLA0KPiAtCS52bWFwID0gZHJtX2dlbV9kbWFidWZfdm1h
cCwNCj4gLQkudnVubWFwID0gZHJtX2dlbV9kbWFidWZfdnVubWFwLA0KPiArCS52bWFwID0gYW1k
Z3B1X2RtYV9idWZfdm1hcCwNCj4gKwkudnVubWFwID0gYW1kZ3B1X2RtYV9idWZfdnVubWFwLA0K
PiAgfTsNCj4gIA0KPiAgLyoqDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
