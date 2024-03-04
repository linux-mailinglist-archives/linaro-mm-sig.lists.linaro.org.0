Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F136F8702FE
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Mar 2024 14:41:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D9D443D23
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Mar 2024 13:41:58 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2079.outbound.protection.outlook.com [40.107.92.79])
	by lists.linaro.org (Postfix) with ESMTPS id 6C4733F654
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Mar 2024 13:41:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=idIDUDyL;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.92.79 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fn16UFm0O5iagcxEeJtK1PBZvg4yhkZuUoR8VhIkN2OxsfEOh+YWAnbPGLLasXs6jaqIa2CSNbjTltgiVFsXcy5TReSM43i/SORr3n0k07p1yg+4nNK1JmcM54Q3bBHVXjZ6teFMVUbYn2il68K65fXPcp4zfXbBcoEAVO7daRsoctnb1mn/XxtxNfn3HmuyZieqGuziFEgqjHNdY3lVeW3+nBy5Vv9eRLkkq3NhA0OdIyRQLsRys4MxSqakEOz9Jz+TlxwRbYphtxArwGFBq4SLSu7PEZkiYATv7fU1SXxXQdBO6WJWaQUXCQCAyvDU1KkWvHnPK2iwEJBcHbX3UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ePN3x23+roha51YUZlubH5rBXH/uv1grg1OOKxvKieY=;
 b=LZNNDmTplp0WYVqzD8GLQqvfMryPQwM1r88hwE/MdEVXRII5M4gVtfqyEewKgk6zDwl3jRENkcd3yHONJl5i/yiQUEaO5xDGOplqB+SsrKuBfX1WXb8siBXj2ZqrcUNrkyQ4l9RRw8PZMLx2AtqWt213eNI26RWHewL8LuXBDq2RGbejz8XOIbJA2uHUc+Mp3HYNSDolbGLETrMMS+CmfKq2aNm2ujlRCEHbfBm7sTtMTdhAmElYm90tycI3jhNJIAG0Oxdr+CZmrwAuSlI3POIv02kPxrMO3CVOk+UGVk+PKdrhU08CDd6ck3bPwwjMyLL4wlHpFD5A86fMsnBjKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ePN3x23+roha51YUZlubH5rBXH/uv1grg1OOKxvKieY=;
 b=idIDUDyLFcFqPp08V41AcXL68oqGrOeKbnJoyZ8fE/innNBTNdR35qeUE242sryNLwKaFsgjsP2Ee92hFsDbH84wfLwO7lOIexvdmg+IMY4C+J02l1RWvEpe0GlwaAUp4E5mDpg4cwQ44aegueEmYYXZEkLiWuZysklRVQegNKo=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW3PR12MB4460.namprd12.prod.outlook.com (2603:10b6:303:2f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.39; Mon, 4 Mar
 2024 13:41:48 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a%6]) with mapi id 15.20.7339.031; Mon, 4 Mar 2024
 13:41:47 +0000
Message-ID: <8962f6cf-7e5e-4bfe-a86b-cbb66a815187@amd.com>
Date: Mon, 4 Mar 2024 14:41:44 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Nuno Sa <nuno.sa@analog.com>, Vinod Koul <vkoul@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>,
 Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Paul Cercueil <paul@crapouillou.net>
References: <20240223-iio-dmabuf-v7-0-78cfaad117b9@analog.com>
 <20240223-iio-dmabuf-v7-3-78cfaad117b9@analog.com>
 <85782edb-4876-4cbd-ac14-abcbcfb58770@amd.com>
 <f40f018359d25c78abbeeb3ce02c5b761aabe900.camel@gmail.com>
 <796e8189-0e1a-46d4-8251-7963e56704ac@amd.com>
In-Reply-To: <796e8189-0e1a-46d4-8251-7963e56704ac@amd.com>
X-ClientProxiedBy: ZR0P278CA0221.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:6a::29) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW3PR12MB4460:EE_
X-MS-Office365-Filtering-Correlation-Id: 72b54a66-7fd4-4e34-2780-08dc3c50d6a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Eede40SCJBMqGPSZKeszytlopDweKdr+8vSMlfu6ae1KisVl+ATVVYjeFCrWUMNLpjwCr6N2jozx5JJ9IFOdmZEzm6Uk6EFnO7Mw9wuScCNEAmSBsrFU2mlG6vQAHh2KZ33gjqbFA8QkFPTdeZy8SJdWLnZIhOjUbwwHw6i5RTqTze/U59L4oTn+qk/drXZBUf8eGD78byHknxhI48p7tRaEBWAf/YpNxZqyp4NSriyVpYd0UPU1zVbMuUgU54N1V1qXeJ4hMtg5iX4TW7ct6EKFMVczaPQcVj3mFxiEkFsBDdyKTTs+q+xKLvlWdF89YePj9Zlty6nTHMJHjQo/kHZyArCBg6RFFZRo7+7Vf/feM52y+nhzPjF8S/WQVjqDtqvcMJcIUUi3lWIkRJ6AB4sUtKJtdBcOR8lRnoLUaf7TzjlGRQcYPWov6g08qj319C3pwdQ2WBGHLJcrTqhc7ienfMeG3RknHKaLj1To3ryI87O+22Gligz0BopECI+dNzZhrMJ91efhc1m5oU5I//eEGkBalVid9ovDrFQGTheJthV54AsUsOWoC0A+Yg/pc0qlZvEAHLn/9U+Iqhif2jtpz7NzN6P2PBA+ayh4UBA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZFBOR2R2am9xTVpISjFLcHYwMkdSRHlDcHpIamd4cVdyYUMycDVBR3ZWMjFD?=
 =?utf-8?B?UE9vT2NCdklFbmJKM1NZcDZKRUpnbTdwYzlEL09XUmVDSHpvcU81enpjQVYr?=
 =?utf-8?B?Yzd3Z2VkT29Ha2J2RXg0eXkyTDUrV0dMbWxLU0FseS8xeHk2UzJvdjV4MzNI?=
 =?utf-8?B?RkNpY3YwUXN5K2VXclNNMWk0NzZ5S2R2emhOZDFEWlhPUW44cmhaaW95SW9J?=
 =?utf-8?B?dm9ucjV2ZmM2YVJwanY0VlJHTUtSb3pUNHZMc3ZaN3NEMXovTGVIdUEyV2Ns?=
 =?utf-8?B?RkJndkJSYUsrZnJaeVBBeWJQaDl5c3N5U3VWV1FBZEpGUFRDSGZkd21Pbkd3?=
 =?utf-8?B?U3djYXBDZHBvR1pCUzNYUGRLUWpLdFM2U3Z0QTVWazlvZ2Rad05hd2JqTXZ1?=
 =?utf-8?B?ZE95Z3dVaks4aGFMSFRuREs2cW5LOXVwL081UnZSeTlkd2JZR1dSNDdVWEt6?=
 =?utf-8?B?VmNVMHMxNWhBanE2QzlQY1JKZXFZRTlCak1XRnhYSWNVaUpTR0tma3pCUkc3?=
 =?utf-8?B?aDJKbGRPRmRqaXVuRjBGc2R2MnBMUTk0RWI4NzEyVzY2MWZ0TmpYRERNMXh5?=
 =?utf-8?B?Ujd1aWh1Q0NKRDh2dkZLdWsrRDE2R3NHK0JONUMzUHM2U3BRallzOFVGd1hH?=
 =?utf-8?B?QnVOTVFOczRITlJSZVBZSkc2bEpSaHRKL1c3SHNUbENFRW5OOVB5SzR4TmVG?=
 =?utf-8?B?amh5WmN0TFFHd25uREswYjlBemxTekZLTUJmKzJCRjZLY0hGSWhMSnZ6eVJ4?=
 =?utf-8?B?dy92UzlTZFFJS00xUDR3M1NaYWlYbmVZV1p5RGpTT3NKTjgzRExBVDFDeWkx?=
 =?utf-8?B?MFNrdGI3clRyb0hESEF2NXNzVHh4eE4wNlZoMXAraFV6cEtaNEN5ZkxlWWFs?=
 =?utf-8?B?ejJYMEo3OGlncVZTYyt6SWdLR3NZSzBVTmJydS9hL2dUTythb2J4bVNRNmRn?=
 =?utf-8?B?SzBsRHpWYjdzQjBzNHhQTWFWdGxWSUlBTzNHMXkyNnRyZUxOd09YdnovY2Fp?=
 =?utf-8?B?cmM3MlJiOE9vN09jSjFCN2pUSDJpU2dPV0lnaGpVUUtvZ3FYVVppUDVReDRN?=
 =?utf-8?B?emtZbkZkRUNCYTlScVphMVhGeWJZaEpLbEFEenhzakJxb1h4NXoyWldVaTVp?=
 =?utf-8?B?V1ZwbUw4MDFWbEFtVDUyWmw5cUFZV1ZqcjZTTGVHQ2RObTU2d0xHUm5JdjBp?=
 =?utf-8?B?M2hrbHgxU1VyUExzMm1QNXNLSTdXK0FIb3NndW1OV08wR2ZZWXVsL1BRUE5X?=
 =?utf-8?B?VnB3ZFYvV2xSbTl3cExHdFhkeER1UExibHZ0c3ROSG9WR1N3d2xla0ZCRDZh?=
 =?utf-8?B?MVVsRTNFZnJqWFhnYkhvRUd0dWZXd1k3ZjIrYWZROG1IelhoRVBBdU5kMFo4?=
 =?utf-8?B?YlZGODQxU0tLQ3czM2FuNEtEOUZuV1U0TDRqYjYwUCtHNmdJNjJVU3k4Y1Iw?=
 =?utf-8?B?NW9yTTZYbHBiNWRvS3FKSDUxcnpsekIxOU1CZ3FFQ0hRSzIvRU0xSCs1VlJM?=
 =?utf-8?B?K0dYRUJyN1VQcXdCUnJPVWh6dVNXUkJiUVkxT3JHbVduUnVLd0lvL3BrUFRO?=
 =?utf-8?B?eUR6V1MxUENiZjdtVzdudGx6Y3loVXk1MEgrQ1l6YlFjeTRCMThndHNFeGFp?=
 =?utf-8?B?L1MxMlVuZzNpRnp2Z2FWcndXNjhRcUgra0NDNzFIUk1pa2RMcVJyRmdrTmFy?=
 =?utf-8?B?b1NVMTRxaVRtSkd2MkprR1VZVVZhZHRnTFBiTitLTXJhOXJkbUNKR2I4eWpR?=
 =?utf-8?B?VFgvZEpmK3VjL1BlN2RkL3JZNHVvSW5wOVJIZkxPc1VLa1E5YzZLZms0SWFh?=
 =?utf-8?B?UnNpUXF5QXlIMVVMSE1TRkw5aUZ6ckk4SmpHell3MStMc0lKWkNrMktlbHhz?=
 =?utf-8?B?R2hzTTRVVGtOL3cvUmFUUW80VVFKN0VsbEQvWldKYlF2K3k3WVVCZHdYdnkv?=
 =?utf-8?B?MkgyQW1QeThscFlRb3k1Q0ttUTVLbFE5aUUwR2d3R3pwM2YrQ09CMktLZ3JT?=
 =?utf-8?B?WVkvak9CamxJU0duM1VlZFZURXc0TjJWQU5sOHR6eXpyYXc2Q1o3OENyYldt?=
 =?utf-8?B?TXpGWjdGVkgzN01sT3RzdDZNWGg2MDIxdEh2SzdnNktvRW1vclZudEFqaE5q?=
 =?utf-8?Q?QvOWFDwv+KnWCdIyVoCiB8SMe?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72b54a66-7fd4-4e34-2780-08dc3c50d6a5
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2024 13:41:47.7327
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WLHolhMOrnukA8mrgNZmyEW1jZtdxErh7tpHPjBkUeDbGjdHamTceIBT0syZs2PG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4460
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6C4733F654
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.49 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.92.79:from];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,analog.com,kernel.org,metafoo.de,linaro.org,lwn.net,crapouillou.net];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: UIZKFU6GPQRZOZTBLFZE65ORJ6US4QFB
X-Message-ID-Hash: UIZKFU6GPQRZOZTBLFZE65ORJ6US4QFB
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel@ffwll.ch>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 3/6] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UIZKFU6GPQRZOZTBLFZE65ORJ6US4QFB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

VHJ5aW5nIHRvIHNlbmQgdGhpcyBvbmNlIG1vcmUgYXMgdGV4dCBvbmx5Lg0KDQpBbSAwNC4wMy4y
NCB1bSAxNDo0MCBzY2hyaWViIENocmlzdGlhbiBLw7ZuaWc6DQo+IEFtIDA0LjAzLjI0IHVtIDE0
OjI4IHNjaHJpZWIgTnVubyBTw6E6DQo+PiBPbiBNb24sIDIwMjQtMDMtMDQgYXQgMTM6NDQgKzAx
MDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4gQW0gMjMuMDIuMjQgdW0gMTM6MTQgc2No
cmllYiBOdW5vIFNhOg0KPj4+PiBGcm9tOiBQYXVsIENlcmN1ZWlsPHBhdWxAY3JhcG91aWxsb3Uu
bmV0Pg0KPj4+Pg0KPj4+PiBBZGQgdGhlIG5lY2Vzc2FyeSBpbmZyYXN0cnVjdHVyZSB0byB0aGUg
SUlPIGNvcmUgdG8gc3VwcG9ydCBhIG5ldw0KPj4+PiBvcHRpb25hbCBETUFCVUYgYmFzZWQgaW50
ZXJmYWNlLg0KPj4+Pg0KPj4+PiBXaXRoIHRoaXMgbmV3IGludGVyZmFjZSwgRE1BQlVGIG9iamVj
dHMgKGV4dGVybmFsbHkgY3JlYXRlZCkgY2FuIGJlDQo+Pj4+IGF0dGFjaGVkIHRvIGEgSUlPIGJ1
ZmZlciwgYW5kIHN1YnNlcXVlbnRseSB1c2VkIGZvciBkYXRhIHRyYW5zZmVyLg0KPj4+Pg0KPj4+
PiBBIHVzZXJzcGFjZSBhcHBsaWNhdGlvbiBjYW4gdGhlbiB1c2UgdGhpcyBpbnRlcmZhY2UgdG8g
c2hhcmUgRE1BQlVGDQo+Pj4+IG9iamVjdHMgYmV0d2VlbiBzZXZlcmFsIGludGVyZmFjZXMsIGFs
bG93aW5nIGl0IHRvIHRyYW5zZmVyIGRhdGEgaW4gYQ0KPj4+PiB6ZXJvLWNvcHkgZmFzaGlvbiwg
Zm9yIGluc3RhbmNlIGJldHdlZW4gSUlPIGFuZCB0aGUgVVNCIHN0YWNrLg0KPj4+Pg0KPj4+PiBU
aGUgdXNlcnNwYWNlIGFwcGxpY2F0aW9uIGNhbiBhbHNvIG1lbW9yeS1tYXAgdGhlIERNQUJVRiBv
YmplY3RzLCBhbmQNCj4+Pj4gYWNjZXNzIHRoZSBzYW1wbGUgZGF0YSBkaXJlY3RseS4gVGhlIGFk
dmFudGFnZSBvZiBkb2luZyB0aGlzIHZzLiB0aGUNCj4+Pj4gcmVhZCgpIGludGVyZmFjZSBpcyB0
aGF0IGl0IGF2b2lkcyBhbiBleHRyYSBjb3B5IG9mIHRoZSBkYXRhIGJldHdlZW4gdGhlDQo+Pj4+
IGtlcm5lbCBhbmQgdXNlcnNwYWNlLiBUaGlzIGlzIHBhcnRpY3VsYXJseSB1c2VyZnVsIGZvciBo
aWdoLXNwZWVkDQo+Pj4+IGRldmljZXMgd2hpY2ggcHJvZHVjZSBzZXZlcmFsIG1lZ2FieXRlcyBv
ciBldmVuIGdpZ2FieXRlcyBvZiBkYXRhIHBlcg0KPj4+PiBzZWNvbmQuDQo+Pj4+DQo+Pj4+IEFz
IHBhcnQgb2YgdGhlIGludGVyZmFjZSwgMyBuZXcgSU9DVExzIGhhdmUgYmVlbiBhZGRlZDoNCj4+
Pj4NCj4+Pj4gSUlPX0JVRkZFUl9ETUFCVUZfQVRUQUNIX0lPQ1RMKGludCBmZCk6DQo+Pj4+ICDC
oCBBdHRhY2ggdGhlIERNQUJVRiBvYmplY3QgaWRlbnRpZmllZCBieSB0aGUgZ2l2ZW4gZmlsZSBk
ZXNjcmlwdG9yIHRvIHRoZQ0KPj4+PiAgwqAgYnVmZmVyLg0KPj4+Pg0KPj4+PiBJSU9fQlVGRkVS
X0RNQUJVRl9ERVRBQ0hfSU9DVEwoaW50IGZkKToNCj4+Pj4gIMKgIERldGFjaCB0aGUgRE1BQlVG
IG9iamVjdCBpZGVudGlmaWVkIGJ5IHRoZSBnaXZlbiBmaWxlIGRlc2NyaXB0b3IgZnJvbQ0KPj4+
PiAgwqAgdGhlIGJ1ZmZlci4gTm90ZSB0aGF0IGNsb3NpbmcgdGhlIElJTyBidWZmZXIncyBmaWxl
IGRlc2NyaXB0b3Igd2lsbA0KPj4+PiAgwqAgYXV0b21hdGljYWxseSBkZXRhY2ggYWxsIHByZXZp
b3VzbHkgYXR0YWNoZWQgRE1BQlVGIG9iamVjdHMuDQo+Pj4+DQo+Pj4+IElJT19CVUZGRVJfRE1B
QlVGX0VOUVVFVUVfSU9DVEwoc3RydWN0IGlpb19kbWFidWYgKik6DQo+Pj4+ICDCoCBSZXF1ZXN0
IGEgZGF0YSB0cmFuc2ZlciB0by9mcm9tIHRoZSBnaXZlbiBETUFCVUYgb2JqZWN0LiBJdHMgZmls
ZQ0KPj4+PiAgwqAgZGVzY3JpcHRvciwgYXMgd2VsbCBhcyB0aGUgdHJhbnNmZXIgc2l6ZSBhbmQg
ZmxhZ3MgYXJlIHByb3ZpZGVkIGluIHRoZQ0KPj4+PiAgwqAgImlpb19kbWFidWYiIHN0cnVjdHVy
ZS4NCj4+Pj4NCj4+Pj4gVGhlc2UgdGhyZWUgSU9DVExzIGhhdmUgdG8gYmUgcGVyZm9ybWVkIG9u
IHRoZSBJSU8gYnVmZmVyJ3MgZmlsZQ0KPj4+PiBkZXNjcmlwdG9yLCBvYnRhaW5lZCB1c2luZyB0
aGUgSUlPX0JVRkZFUl9HRVRfRkRfSU9DVEwoKSBpb2N0bC4NCj4+PiBBIGZldyBuaXQgcGlja3Mg
YW5kIG9uZSBidWcgYmVsb3csIGFwYXJ0IGZyb20gdGhhdCBsb29rcyBnb29kIHRvIG1lLg0KPj4g
SGkgQ2hyaXN0aWFuLA0KPj4NCj4+IFRoYW5rcyBmb3IgbG9va2luZyBhdCBpdC4gSSdsbCBqdXN0
IGFkZCBzb21lIGNvbW1lbnQgb24gdGhlIGJ1ZyBiZWxvdyBhbmQgZm9yDQo+PiB0aGUgb3RoZXIg
c3R1ZmYgSSBob3BlIFBhdWwgaXMgYWxyZWFkeSBhYmxlIHRvIHN0ZXAgaW4gYW5kIHJlcGx5IHRv
IGl0LiBNeQ0KPj4gYXNzdW1wdGlvbiAod2hpY2ggc2VlbXMgdG8gYmUgd3JvbmcpIGlzIHRoYXQg
dGhlIGRtYWJ1ZiBiaXRzIHNob3VsZCBiZSBhbHJlYWR5DQo+PiBnb29kIHRvIGdvIGFzIHRoZXkg
c2hvdWxkIGJlIHByZXR0eSBzaW1pbGFyIHRvIHRoZSBVU0IgcGFydCBvZiBpdC4NCj4+DQo+PiAu
Li4NCj4+DQo+Pj4+ICsJaWYgKGRtYV90b19yYW0pIHsNCj4+Pj4gKwkJLyoNCj4+Pj4gKwkJICog
SWYgd2UncmUgd3JpdGluZyB0byB0aGUgRE1BQlVGLCBtYWtlIHN1cmUgd2UgZG9uJ3QgaGF2ZQ0K
Pj4+PiArCQkgKiByZWFkZXJzDQo+Pj4+ICsJCSAqLw0KPj4+PiArCQlyZXRsID0gZG1hX3Jlc3Zf
d2FpdF90aW1lb3V0KGRtYWJ1Zi0+cmVzdiwNCj4+Pj4gKwkJCQkJwqDCoMKgwqAgRE1BX1JFU1Zf
VVNBR0VfUkVBRCwgdHJ1ZSwNCj4+Pj4gKwkJCQkJwqDCoMKgwqAgdGltZW91dCk7DQo+Pj4+ICsJ
CWlmIChyZXRsID09IDApDQo+Pj4+ICsJCQlyZXRsID0gLUVCVVNZOw0KPj4+PiArCQlpZiAocmV0
bCA8IDApIHsNCj4+Pj4gKwkJCXJldCA9IChpbnQpcmV0bDsNCj4+Pj4gKwkJCWdvdG8gZXJyX3Jl
c3ZfdW5sb2NrOw0KPj4+PiArCQl9DQo+Pj4+ICsJfQ0KPj4+PiArDQo+Pj4+ICsJaWYgKGJ1ZmZl
ci0+YWNjZXNzLT5sb2NrX3F1ZXVlKQ0KPj4+PiArCQlidWZmZXItPmFjY2Vzcy0+bG9ja19xdWV1
ZShidWZmZXIpOw0KPj4+PiArDQo+Pj4+ICsJcmV0ID0gZG1hX3Jlc3ZfcmVzZXJ2ZV9mZW5jZXMo
ZG1hYnVmLT5yZXN2LCAxKTsNCj4+Pj4gKwlpZiAocmV0KQ0KPj4+PiArCQlnb3RvIGVycl9xdWV1
ZV91bmxvY2s7DQo+Pj4+ICsNCj4+Pj4gKwlkbWFfcmVzdl9hZGRfZmVuY2UoZG1hYnVmLT5yZXN2
LCAmZmVuY2UtPmJhc2UsDQo+Pj4+ICsJCQnCoMKgIGRtYV9yZXN2X3VzYWdlX3J3KGRtYV90b19y
YW0pKTsNCj4+PiBUaGF0IGlzIGluY29ycmVjdCB1c2Ugb2YgdGhlIGZ1bmN0aW9uIGRtYV9yZXN2
X3VzYWdlX3J3KCkuIFRoYXQgZnVuY3Rpb24NCj4+PiBpcyBmb3IgcmV0cmlldmluZyBmZW5jZXMg
YW5kIG5vdCBhZGRpbmcgdGhlbS4NCj4+Pg0KPj4+IFNlZSB0aGUgZnVuY3Rpb24gaW1wbGVtZW50
YXRpb24gYW5kIGNvbW1lbnRzLCB3aGVuIHlvdSB1c2UgaXQgbGlrZSB0aGlzDQo+Pj4geW91IGdl
dCBleGFjdGx5IHdoYXQgeW91IGRvbid0IHdhbnQuDQo+Pj4NCj4+IERvZXMgdGhhdCBtZWFuIHRo
YXQgdGhlIFVTQiBzdHVmZiBbMV0gaXMgYWxzbyB3cm9uZz8NCj4+DQo+PiBbMV06aHR0cHM6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvZ3JlZ2toL3VzYi5naXQvdHJl
ZS9kcml2ZXJzL3VzYi9nYWRnZXQvZnVuY3Rpb24vZl9mcy5jP2g9dXNiLW5leHQjbjE2NjkNCj4N
Cj4gWWVzLCB0aGF0J3MgYnJva2VuIGFzIHdlbGwuIFRoZSBkbWFfcmVzdl91c2FnZV9ydygpIGZ1
bmN0aW9uIGlzIA0KPiBzdXBwb3NlZCB0byBiZSB1c2VkIHdoaWxlIHJldHJpZXZpbmcgZmVuY2Vz
Lg0KPg0KPiBJbiBvdGhlciB3b3JkcyB5b3VyICJpZiAoZG1hX3RvX3JhbSkgLi4uIiBhYm92ZSBp
cyBpbmNvcnJlY3QgYXMgd2VsbC4gDQo+IFRoYXQgb25lIHNob3VsZCBsb29rIG1vcmUgbGlrZSB0
aGlzOg0KPiAvKg0KPiAgICogV3JpdGVzIG5lZWRzIHRvIHdhaXQgZm9yIG90aGVyIHdyaXRlcyBh
bmQgcmVhZHMsIGJ1dCByZWFkZXJzIG9ubHkgaGF2ZSB0byB3YWl0IGZvciB3cml0ZXJzLg0KPiAg
ICovDQo+DQo+IHJldGwgPSBkbWFfcmVzdl93YWl0X3RpbWVvdXQoZG1hYnVmLT5yZXN2LCBkbWFf
cmVzdl91c2FnZV9ydyhkbWFfdG9fcmFtKSwgdGltZW91dCk7DQo+DQo+IFJlZ2FyZHMsDQo+IENo
cmlzdGlhbi4NCj4NCj4+IC0gTnVubyBTw6ENCj4+DQo+Pg0KPg0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
