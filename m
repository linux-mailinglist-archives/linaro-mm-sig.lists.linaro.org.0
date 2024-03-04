Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C6087050E
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Mar 2024 16:14:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E410143FAD
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Mar 2024 15:14:12 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam04on2044.outbound.protection.outlook.com [40.107.101.44])
	by lists.linaro.org (Postfix) with ESMTPS id 7CFB63F380
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Mar 2024 15:14:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=h5xx+kOA;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.101.44 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HQIrYnQEDmBPUnL3dPpAmWHEGULn6xH76Vqq4k++91DtaRJx4iIlKxx0IrLP6Iy/nITRb+1ZOJnafMI6ArdN7gQ4oRyjNTFutXCJUWy/UzdsZnDrUCT32SqnKBV+cpx0tBAjUyX4EKHilWpno9u9IYGeHConIoc2I8kfbK4WQavDzpHuW+KtN9xe4L76HuQgwnT3dUFtTA4FUDfERXlSUsrf06weIpp4mWOXJSobXpidwCn1floxPDI2B09+kr6XquyoqJdFqI54iRA6foUABtcJrYT9BteazktVweCfv5XxOsVC2DgzcaEEqvv35WRLfpPZBukSXOOmQEd6et11Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j2yBKDtNma32BwfBFI8tv+VTE3pOWFtf4koMy/uCcUY=;
 b=ZESXFk9AVyDTeMJgQQWZJkIKhTo2OZwZ5Gj1VLBZIagSnfXapi3tWR3KsB2ahGKjPoZGJfBfgalQfJIaPBtSprqDwmfafB5tDCrk5vLgbyklZrx7MXwMra0DsvpeCSgCem5Wp08/cWCqSwMUGjEszaak1rziyAOYQzggoUPf+C+TS5oC1uk+QgBlNzw08UGj5GKsAZuELnlntW1Bmz6+Jj3/BsUW4PculE3jYemcmobT3fB4kf6tI0CqkQxBJfvJsfUlx9gsc6M9jJnbjHCe1oG4ri5NqENv9rT3Ji/Xe2L5HLh2I7zRO/A9wsXpxO1EoLtHiCpGMokqYmvVh7MMTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j2yBKDtNma32BwfBFI8tv+VTE3pOWFtf4koMy/uCcUY=;
 b=h5xx+kOAzOKUfkdWM2IKNzoweTVlTEhHZUDALa/yMxoUNxpaRAaQdQMJU1M2YmtEA+zJKrvSzrkuUmMDjOrCKDw/CST9C3OVtNXmh4viHa0zQb6occhXEz8xWVDjTcblkuG4pIbjXrinUbSgpERPfVGiFa1I4k88/V50QUkF238=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ0PR12MB7034.namprd12.prod.outlook.com (2603:10b6:a03:449::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.38; Mon, 4 Mar
 2024 15:13:57 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a%6]) with mapi id 15.20.7339.031; Mon, 4 Mar 2024
 15:13:57 +0000
Message-ID: <4131f2c2-1143-4de5-82d4-337359b1f20e@amd.com>
Date: Mon, 4 Mar 2024 16:13:48 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Paul Cercueil <paul@crapouillou.net>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <noname.nuno@gmail.com>, Nuno Sa <nuno.sa@analog.com>,
 Vinod Koul <vkoul@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Jonathan Cameron <jic23@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>
References: <20240223-iio-dmabuf-v7-0-78cfaad117b9@analog.com>
 <20240223-iio-dmabuf-v7-3-78cfaad117b9@analog.com>
 <85782edb-4876-4cbd-ac14-abcbcfb58770@amd.com>
 <f40f018359d25c78abbeeb3ce02c5b761aabe900.camel@gmail.com>
 <796e8189-0e1a-46d4-8251-7963e56704ac@amd.com>
 <8962f6cf-7e5e-4bfe-a86b-cbb66a815187@amd.com>
 <b00a1fc2ea51816317bf7475f32f85696bd29b4e.camel@crapouillou.net>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <b00a1fc2ea51816317bf7475f32f85696bd29b4e.camel@crapouillou.net>
X-ClientProxiedBy: ZR0P278CA0114.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:20::11) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ0PR12MB7034:EE_
X-MS-Office365-Filtering-Correlation-Id: d0ebd2a7-11bc-4a3b-50b5-08dc3c5db69e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qjzTpePNtf+43rIN34u4q3Mf7XEIkWcefGbda4UHo8j+FTL4i2HRSbLv3RfkPuhNcqrO8v+jt8ZZbJlHXKTUz84MH5xqUSVCAohu/7uGri/Raas3bAPG+OEhTTrtOoiZbUL+xS1W20krFeUIMnARmPefMWvl8o7LF5a2AXPwY8phk4eDJ0ogdHZ2sVVi9JsxX+95rySfL0Oy5YCCqTBhCQuFl/hl4QEzUuFM/joHg0Qw2K8THsfAQbv/FHHmOvHt8wtghTGFiYytI8yUi9SDAiykfnnHyK2bIUhwvkcPTi/A3hwb5pMMe3PaufNrHqh/2P9qLjXmLi/JH5IFv3bZD3g6cpXByWCDEMkdaZFwbPlHqLy/WmapNy/anAfAnnSf08akBslp2PRPE/WNBcxjGoBDfmL9fkMSL3k29lZF3kleY7xw0F6BqEd6Cf/JLeKlQ4RLo+2S+6ihHMNB0ppqu4lc0KPWiwwb0AYIw9R0wY8CWo+hUA95C1IJDf+MUmWex/yDROcYSLu6bNmljps9uaOXHdnzJXHV9e7UgdMcWx3O5kEeRJHJhmjNmMAqABNS8IYb49AiYijNp3jep2ZJiCil21oZJT1rNYfdLLHpYG0=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cVVKcEROOGNVNnVIYm9hY3Fud0tNdUdxeWZzaVE4SHhsNWd2MXpDN253VTQ1?=
 =?utf-8?B?UnQ2cTYwN3NsTnpQVll5VjRhYlAxbUZVeTQvcTZPYk00dkFVRFBRWnNERmF0?=
 =?utf-8?B?cEVFUjNvK2pDbU5ZZnJaRzZoL3ZFSmpCZzFaYytiWE1sL3JlL2NTeEdnSHY5?=
 =?utf-8?B?M080cTVxcFM4MWZkQ255NmpyQmZUL0ZpOWswMDU5aW9JV3pXTEJJdnZCb0FY?=
 =?utf-8?B?QllWeEFEMnRmMVBteGY1ZHJqUjVDSVJBM2NPdWdWMlRIUUpoZlhsZHIyVjR6?=
 =?utf-8?B?dVh3UFJLNVdWaThJeDM0dExpeE1EYnpnRHBEMDYxSHcrYzBtTW1XRVozNmVO?=
 =?utf-8?B?VTBVTHpJQlZ5N3JWSkhSeW1HOWlzT3dKRWZ6SC8zTGwzanZJNDVSU2I2MUE2?=
 =?utf-8?B?eG1UTXpzaWJwZkpZNGQyS2NRVTZBWnhKRnpxT2ZFNlptdDdGTm5aeVRTU0U5?=
 =?utf-8?B?TzRYOURrc3N1cTl1emNGbVRRUWRkWW4ySi8wa0hWZmd0S3hJc3JwaURIVmNG?=
 =?utf-8?B?Y2xSc0xLTlN1akxlQldGdXV4cmVFdHc2R0xlTXRPaFBOWFBqeUxOT3d5WFI3?=
 =?utf-8?B?a2YyNWtQSkFqcFNldncyMEJUa0U3eHV1R2E0MUl4R0VuWkIyNUxoOFJJSXR0?=
 =?utf-8?B?MmE5dWxubG1tcGZGZGJKWFJDZG5peHJBeFZEQzNlczM4akVMZzZHQXBwNlpN?=
 =?utf-8?B?RVY0eitlWVVvY3pPcjg4VUliV1RpRy92WkVidDNzb1NLRVdhQ3dkYm1WQkxN?=
 =?utf-8?B?YTFzUHg1aWNBWEpQZ1ZTbjV2dCszNDJoUnpVeGVpZ0NlT0s3RE1EKzFBeE1v?=
 =?utf-8?B?SEcwWExvaklaMTEycnZ6YUxXeVdnMExNZlI2WW44VEVabmhYdUI1SldScjU1?=
 =?utf-8?B?bGUyeUtoa0pnOENGd2pHU0tjOC9oTCtJZmxSL3pYNXhoN1FaNUNpRWdDaVpL?=
 =?utf-8?B?TkpNYmFDLzQvdEc0em5Sa3M2Wkp3dDIwWVZlL1k2bEFrekdwVzYvSXRSK0xo?=
 =?utf-8?B?WUozVFlYdDBJbGFHUC83VCtSZE1zUjhhTzcvQlUrSnhudDZrb0ZJU091YUpB?=
 =?utf-8?B?dktqaFloWExMR3pTbkVyMkhGMGUvQndCZGZIYnBra0RtQkh4ODQ1ejBWeDZU?=
 =?utf-8?B?cVcwMGFMTkNIc2I4RndQYkxyOWNyWmNzdVRla1Jqek4xQ1ZiTGxPSnZTWll5?=
 =?utf-8?B?RnZCWW1tUzJYdmJMUVRGUk5heDlOYTlZOHd3bHNXVjhsZnIyZFJkWlh4Rjhr?=
 =?utf-8?B?ckQwaHpJZFBmVmZWbERqNENSZWhyTTkrNndzSlliRUY5RythVEhFT3FyS1cy?=
 =?utf-8?B?UWpId0ZhSlp4V1h0Rm13NWo0dTJTa2FZaWtDTStKUXptaERYSDUvTkZWKzJp?=
 =?utf-8?B?YlRjMXFsa1l4TENRR1o3WkxTYlQ5TzI2VXdXNzN4ckdITjRmT1g5Q015S1hP?=
 =?utf-8?B?UEJ5UDhtNERnbGRKTTMzZHZxU0hnQXRhanJrYjJzZytqcjRKZy9qSnFpZXZw?=
 =?utf-8?B?SU8zWWNGdFNDcFA5TUl1bUxYK0cxYjY3TE1pKzRkd1pRQW1wRCt3anJFZy9P?=
 =?utf-8?B?TjRNZWk4MlB1d2UyK0FEeHRrSEdDTnNFSmxPYmZKRU5rR2tlVm1KNVBvOEhM?=
 =?utf-8?B?d0E2ZWY1OHpKYUNMZysyZVYvVHZlczZKNUhRQlYxZkpEWEF0MVphdThaSWdt?=
 =?utf-8?B?QXRvL0o1YUFlS3FJWVFCaWtLb0NMTmFqMGdIMy9LQm1BZHFDUGtkend3cFZG?=
 =?utf-8?B?MC95UjBUcTQ1RGlVdURJZ2doRlFrN1BSeU14Qm12Z25qaUhWdTJTbVNnaXJI?=
 =?utf-8?B?Zm5tN3JrRHAwbFE1b0JlTU8yR0k4NTlxbjhObHV4bEk5RHJlVkhqYkpYenp0?=
 =?utf-8?B?Mm0zbmQzNmNsd3NOOWZMelZlNktmaW9ZZUl6dmd1U1FuTld6a1h2NTIxZytF?=
 =?utf-8?B?c3FYeVhtYUdTWHNZWWR1K0N3QkZIK3poUisrK1k5QjZBNCt4VUFzVWdRbzZ4?=
 =?utf-8?B?clVwYUdpT1NWZncyWFBaQksyZXBXZ3ZQMXpwY3VERkpUUmZyU3RmcUppeEhD?=
 =?utf-8?B?aWdNZ1JwV1ViZUpKQkxncmpyNS82SVBZcG00OUZ1d2duNWo3YnpxdWZseEl6?=
 =?utf-8?Q?7CsI=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0ebd2a7-11bc-4a3b-50b5-08dc3c5db69e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2024 15:13:57.4503
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aJnV7ZJo/JNFlZQFQQnnxrxM9V1pDWCvRx3uZjQSsmcpVgm/OqVA0Y7X4vtrT8AQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB7034
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7CFB63F380
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.49 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.101.44:from];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[crapouillou.net,gmail.com,analog.com,kernel.org,metafoo.de,linaro.org,lwn.net];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: TK5RARSFTIU5EZ4KOOL6LTTIF7DURLXX
X-Message-ID-Hash: TK5RARSFTIU5EZ4KOOL6LTTIF7DURLXX
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel@ffwll.ch>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 3/6] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TK5RARSFTIU5EZ4KOOL6LTTIF7DURLXX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDQuMDMuMjQgdW0gMTU6Mjkgc2NocmllYiBQYXVsIENlcmN1ZWlsOg0KPiBMZSBsdW5kaSAw
NCBtYXJzIDIwMjQgw6AgMTQ6NDEgKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgYSDDqWNyaXTCoDoN
Cj4+IFRyeWluZyB0byBzZW5kIHRoaXMgb25jZSBtb3JlIGFzIHRleHQgb25seS4NCj4+DQo+PiBB
bSAwNC4wMy4yNCB1bSAxNDo0MCBzY2hyaWViIENocmlzdGlhbiBLw7ZuaWc6DQo+Pj4gQW0gMDQu
MDMuMjQgdW0gMTQ6Mjggc2NocmllYiBOdW5vIFPDoToNCj4+Pj4gT24gTW9uLCAyMDI0LTAzLTA0
IGF0IDEzOjQ0ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+Pj4gQW0gMjMuMDIu
MjQgdW0gMTM6MTQgc2NocmllYiBOdW5vIFNhOg0KPj4+Pj4+IEZyb206IFBhdWwgQ2VyY3VlaWw8
cGF1bEBjcmFwb3VpbGxvdS5uZXQ+DQo+Pj4+Pj4NCj4+Pj4+PiBBZGQgdGhlIG5lY2Vzc2FyeSBp
bmZyYXN0cnVjdHVyZSB0byB0aGUgSUlPIGNvcmUgdG8gc3VwcG9ydCBhDQo+Pj4+Pj4gbmV3DQo+
Pj4+Pj4gb3B0aW9uYWwgRE1BQlVGIGJhc2VkIGludGVyZmFjZS4NCj4+Pj4+Pg0KPj4+Pj4+IFdp
dGggdGhpcyBuZXcgaW50ZXJmYWNlLCBETUFCVUYgb2JqZWN0cyAoZXh0ZXJuYWxseSBjcmVhdGVk
KQ0KPj4+Pj4+IGNhbiBiZQ0KPj4+Pj4+IGF0dGFjaGVkIHRvIGEgSUlPIGJ1ZmZlciwgYW5kIHN1
YnNlcXVlbnRseSB1c2VkIGZvciBkYXRhDQo+Pj4+Pj4gdHJhbnNmZXIuDQo+Pj4+Pj4NCj4+Pj4+
PiBBIHVzZXJzcGFjZSBhcHBsaWNhdGlvbiBjYW4gdGhlbiB1c2UgdGhpcyBpbnRlcmZhY2UgdG8g
c2hhcmUNCj4+Pj4+PiBETUFCVUYNCj4+Pj4+PiBvYmplY3RzIGJldHdlZW4gc2V2ZXJhbCBpbnRl
cmZhY2VzLCBhbGxvd2luZyBpdCB0byB0cmFuc2Zlcg0KPj4+Pj4+IGRhdGEgaW4gYQ0KPj4+Pj4+
IHplcm8tY29weSBmYXNoaW9uLCBmb3IgaW5zdGFuY2UgYmV0d2VlbiBJSU8gYW5kIHRoZSBVU0IN
Cj4+Pj4+PiBzdGFjay4NCj4+Pj4+Pg0KPj4+Pj4+IFRoZSB1c2Vyc3BhY2UgYXBwbGljYXRpb24g
Y2FuIGFsc28gbWVtb3J5LW1hcCB0aGUgRE1BQlVGDQo+Pj4+Pj4gb2JqZWN0cywgYW5kDQo+Pj4+
Pj4gYWNjZXNzIHRoZSBzYW1wbGUgZGF0YSBkaXJlY3RseS4gVGhlIGFkdmFudGFnZSBvZiBkb2lu
ZyB0aGlzDQo+Pj4+Pj4gdnMuIHRoZQ0KPj4+Pj4+IHJlYWQoKSBpbnRlcmZhY2UgaXMgdGhhdCBp
dCBhdm9pZHMgYW4gZXh0cmEgY29weSBvZiB0aGUgZGF0YQ0KPj4+Pj4+IGJldHdlZW4gdGhlDQo+
Pj4+Pj4ga2VybmVsIGFuZCB1c2Vyc3BhY2UuIFRoaXMgaXMgcGFydGljdWxhcmx5IHVzZXJmdWwg
Zm9yIGhpZ2gtDQo+Pj4+Pj4gc3BlZWQNCj4+Pj4+PiBkZXZpY2VzIHdoaWNoIHByb2R1Y2Ugc2V2
ZXJhbCBtZWdhYnl0ZXMgb3IgZXZlbiBnaWdhYnl0ZXMgb2YNCj4+Pj4+PiBkYXRhIHBlcg0KPj4+
Pj4+IHNlY29uZC4NCj4+Pj4+Pg0KPj4+Pj4+IEFzIHBhcnQgb2YgdGhlIGludGVyZmFjZSwgMyBu
ZXcgSU9DVExzIGhhdmUgYmVlbiBhZGRlZDoNCj4+Pj4+Pg0KPj4+Pj4+IElJT19CVUZGRVJfRE1B
QlVGX0FUVEFDSF9JT0NUTChpbnQgZmQpOg0KPj4+Pj4+ICDCoMKgIEF0dGFjaCB0aGUgRE1BQlVG
IG9iamVjdCBpZGVudGlmaWVkIGJ5IHRoZSBnaXZlbiBmaWxlDQo+Pj4+Pj4gZGVzY3JpcHRvciB0
byB0aGUNCj4+Pj4+PiAgwqDCoCBidWZmZXIuDQo+Pj4+Pj4NCj4+Pj4+PiBJSU9fQlVGRkVSX0RN
QUJVRl9ERVRBQ0hfSU9DVEwoaW50IGZkKToNCj4+Pj4+PiAgwqDCoCBEZXRhY2ggdGhlIERNQUJV
RiBvYmplY3QgaWRlbnRpZmllZCBieSB0aGUgZ2l2ZW4gZmlsZQ0KPj4+Pj4+IGRlc2NyaXB0b3Ig
ZnJvbQ0KPj4+Pj4+ICDCoMKgIHRoZSBidWZmZXIuIE5vdGUgdGhhdCBjbG9zaW5nIHRoZSBJSU8g
YnVmZmVyJ3MgZmlsZQ0KPj4+Pj4+IGRlc2NyaXB0b3Igd2lsbA0KPj4+Pj4+ICDCoMKgIGF1dG9t
YXRpY2FsbHkgZGV0YWNoIGFsbCBwcmV2aW91c2x5IGF0dGFjaGVkIERNQUJVRg0KPj4+Pj4+IG9i
amVjdHMuDQo+Pj4+Pj4NCj4+Pj4+PiBJSU9fQlVGRkVSX0RNQUJVRl9FTlFVRVVFX0lPQ1RMKHN0
cnVjdCBpaW9fZG1hYnVmICopOg0KPj4+Pj4+ICDCoMKgIFJlcXVlc3QgYSBkYXRhIHRyYW5zZmVy
IHRvL2Zyb20gdGhlIGdpdmVuIERNQUJVRiBvYmplY3QuDQo+Pj4+Pj4gSXRzIGZpbGUNCj4+Pj4+
PiAgwqDCoCBkZXNjcmlwdG9yLCBhcyB3ZWxsIGFzIHRoZSB0cmFuc2ZlciBzaXplIGFuZCBmbGFn
cyBhcmUNCj4+Pj4+PiBwcm92aWRlZCBpbiB0aGUNCj4+Pj4+PiAgwqDCoCAiaWlvX2RtYWJ1ZiIg
c3RydWN0dXJlLg0KPj4+Pj4+DQo+Pj4+Pj4gVGhlc2UgdGhyZWUgSU9DVExzIGhhdmUgdG8gYmUg
cGVyZm9ybWVkIG9uIHRoZSBJSU8gYnVmZmVyJ3MNCj4+Pj4+PiBmaWxlDQo+Pj4+Pj4gZGVzY3Jp
cHRvciwgb2J0YWluZWQgdXNpbmcgdGhlIElJT19CVUZGRVJfR0VUX0ZEX0lPQ1RMKCkNCj4+Pj4+
PiBpb2N0bC4NCj4+Pj4+IEEgZmV3IG5pdCBwaWNrcyBhbmQgb25lIGJ1ZyBiZWxvdywgYXBhcnQg
ZnJvbSB0aGF0IGxvb2tzIGdvb2QNCj4+Pj4+IHRvIG1lLg0KPj4+PiBIaSBDaHJpc3RpYW4sDQo+
Pj4+DQo+Pj4+IFRoYW5rcyBmb3IgbG9va2luZyBhdCBpdC4gSSdsbCBqdXN0IGFkZCBzb21lIGNv
bW1lbnQgb24gdGhlIGJ1Zw0KPj4+PiBiZWxvdyBhbmQgZm9yDQo+Pj4+IHRoZSBvdGhlciBzdHVm
ZiBJIGhvcGUgUGF1bCBpcyBhbHJlYWR5IGFibGUgdG8gc3RlcCBpbiBhbmQgcmVwbHkNCj4+Pj4g
dG8gaXQuIE15DQo+Pj4+IGFzc3VtcHRpb24gKHdoaWNoIHNlZW1zIHRvIGJlIHdyb25nKSBpcyB0
aGF0IHRoZSBkbWFidWYgYml0cw0KPj4+PiBzaG91bGQgYmUgYWxyZWFkeQ0KPj4+PiBnb29kIHRv
IGdvIGFzIHRoZXkgc2hvdWxkIGJlIHByZXR0eSBzaW1pbGFyIHRvIHRoZSBVU0IgcGFydCBvZg0K
Pj4+PiBpdC4NCj4+Pj4NCj4+Pj4gLi4uDQo+Pj4+DQo+Pj4+Pj4gKwlpZiAoZG1hX3RvX3JhbSkg
ew0KPj4+Pj4+ICsJCS8qDQo+Pj4+Pj4gKwkJICogSWYgd2UncmUgd3JpdGluZyB0byB0aGUgRE1B
QlVGLCBtYWtlIHN1cmUNCj4+Pj4+PiB3ZSBkb24ndCBoYXZlDQo+Pj4+Pj4gKwkJICogcmVhZGVy
cw0KPj4+Pj4+ICsJCSAqLw0KPj4+Pj4+ICsJCXJldGwgPSBkbWFfcmVzdl93YWl0X3RpbWVvdXQo
ZG1hYnVmLT5yZXN2LA0KPj4+Pj4+ICsJCQkJCQ0KPj4+Pj4+IERNQV9SRVNWX1VTQUdFX1JFQUQs
IHRydWUsDQo+Pj4+Pj4gKwkJCQkJwqDCoMKgwqAgdGltZW91dCk7DQo+Pj4+Pj4gKwkJaWYgKHJl
dGwgPT0gMCkNCj4+Pj4+PiArCQkJcmV0bCA9IC1FQlVTWTsNCj4+Pj4+PiArCQlpZiAocmV0bCA8
IDApIHsNCj4+Pj4+PiArCQkJcmV0ID0gKGludClyZXRsOw0KPj4+Pj4+ICsJCQlnb3RvIGVycl9y
ZXN2X3VubG9jazsNCj4+Pj4+PiArCQl9DQo+Pj4+Pj4gKwl9DQo+Pj4+Pj4gKw0KPj4+Pj4+ICsJ
aWYgKGJ1ZmZlci0+YWNjZXNzLT5sb2NrX3F1ZXVlKQ0KPj4+Pj4+ICsJCWJ1ZmZlci0+YWNjZXNz
LT5sb2NrX3F1ZXVlKGJ1ZmZlcik7DQo+Pj4+Pj4gKw0KPj4+Pj4+ICsJcmV0ID0gZG1hX3Jlc3Zf
cmVzZXJ2ZV9mZW5jZXMoZG1hYnVmLT5yZXN2LCAxKTsNCj4+Pj4+PiArCWlmIChyZXQpDQo+Pj4+
Pj4gKwkJZ290byBlcnJfcXVldWVfdW5sb2NrOw0KPj4+Pj4+ICsNCj4+Pj4+PiArCWRtYV9yZXN2
X2FkZF9mZW5jZShkbWFidWYtPnJlc3YsICZmZW5jZS0+YmFzZSwNCj4+Pj4+PiArCQkJwqDCoCBk
bWFfcmVzdl91c2FnZV9ydyhkbWFfdG9fcmFtKSk7DQo+Pj4+PiBUaGF0IGlzIGluY29ycmVjdCB1
c2Ugb2YgdGhlIGZ1bmN0aW9uIGRtYV9yZXN2X3VzYWdlX3J3KCkuIFRoYXQNCj4+Pj4+IGZ1bmN0
aW9uDQo+Pj4+PiBpcyBmb3IgcmV0cmlldmluZyBmZW5jZXMgYW5kIG5vdCBhZGRpbmcgdGhlbS4N
Cj4+Pj4+DQo+Pj4+PiBTZWUgdGhlIGZ1bmN0aW9uIGltcGxlbWVudGF0aW9uIGFuZCBjb21tZW50
cywgd2hlbiB5b3UgdXNlIGl0DQo+Pj4+PiBsaWtlIHRoaXMNCj4+Pj4+IHlvdSBnZXQgZXhhY3Rs
eSB3aGF0IHlvdSBkb24ndCB3YW50Lg0KPj4+Pj4NCj4+Pj4gRG9lcyB0aGF0IG1lYW4gdGhhdCB0
aGUgVVNCIHN0dWZmIFsxXSBpcyBhbHNvIHdyb25nPw0KPj4+Pg0KPj4+PiBbMV06DQo+Pj4+IGh0
dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2dyZWdraC91c2Iu
Z2l0L3RyDQo+Pj4+IGVlL2RyaXZlcnMvdXNiL2dhZGdldC9mdW5jdGlvbi9mX2ZzLmM/aD11c2It
bmV4dCNuMTY2OQ0KPj4+IFllcywgdGhhdCdzIGJyb2tlbiBhcyB3ZWxsLiBUaGUgZG1hX3Jlc3Zf
dXNhZ2VfcncoKSBmdW5jdGlvbiBpcw0KPj4+IHN1cHBvc2VkIHRvIGJlIHVzZWQgd2hpbGUgcmV0
cmlldmluZyBmZW5jZXMuDQo+IE9rLCBJJ2xsIGZpeCBpdCB0aGVyZSB0b28uDQo+DQo+Pj4gSW4g
b3RoZXIgd29yZHMgeW91ciAiaWYgKGRtYV90b19yYW0pIC4uLiIgYWJvdmUgaXMgaW5jb3JyZWN0
IGFzDQo+Pj4gd2VsbC4NCj4+PiBUaGF0IG9uZSBzaG91bGQgbG9vayBtb3JlIGxpa2UgdGhpczoN
Cj4+PiAvKg0KPj4+ICDCoCAqIFdyaXRlcyBuZWVkcyB0byB3YWl0IGZvciBvdGhlciB3cml0ZXMg
YW5kIHJlYWRzLCBidXQgcmVhZGVycw0KPj4+IG9ubHkgaGF2ZSB0byB3YWl0IGZvciB3cml0ZXJz
Lg0KPj4+ICDCoCAqLw0KPj4+DQo+Pj4gcmV0bCA9IGRtYV9yZXN2X3dhaXRfdGltZW91dChkbWFi
dWYtPnJlc3YsDQo+Pj4gZG1hX3Jlc3ZfdXNhZ2VfcncoZG1hX3RvX3JhbSksIHRpbWVvdXQpOw0K
PiBXaGVuIHdyaXRpbmcgdGhlIERNQUJVRiwgdGhlIFVTQiBjb2RlIChhbmQgdGhlIElJTyBjb2Rl
IGFib3ZlKSB3aWxsDQo+IHdhaXQgZm9yIHdyaXRlcnMvcmVhZGVycywgYnV0IGl0IGRvZXMgc28g
dGhyb3VnaCB0d28gY29uc2VjdXRpdmUgY2FsbHMNCj4gdG8gZG1hX3Jlc3Zfd2FpdF90aW1lb3V0
IChiZWNhdXNlIEkgZGlkIG5vdCBrbm93IHRoZSBwcm9wZXIgdXNhZ2UgLSBJDQo+IHRob3VnaHQg
SSBoYWQgdG8gY2hlY2sgYm90aCBtYW51YWxseSkuDQoNClllYWgsIHNlZSB0aGUgZG9jdW1lbnRh
dGlvbiBvbiB0aGUgZG1hX3Jlc3ZfdXNhZ2UgZW51bS4gQmFzaWNhbGx5IHlvdSANCmhhdmUgS0VS
TkVMPldSSVRFPlJFQUQ+Qk9PS0tFRVAuDQoNCldoZW4gd2FpdGluZyBmb3IgUkVBRCB5b3UgYXV0
b21hdGljYWxseSB3YWl0IGZvciBXUklURSBhbmQgS0VSTkVMIGFzIA0Kd2VsbC4gU28gbm8gbmVl
ZCBmb3IgdHdvIGNhbGxzIHRvIHRoZSB3YWl0IGZ1bmN0aW9uLg0KDQpJZiB5b3UgaGF2ZSBhbnkg
aWRlYSBob3cgdG8gaW1wcm92ZSB0aGUgZG9jdW1lbnRhdGlvbiBmZWVsIGZyZWUgdG8gDQpzdWdn
ZXN0LCBpdCdzIGNlcnRhaW5seSBub3Qgb2J2aW91cyBob3cgdGhhdCB3b3JrcyA6KQ0KDQpDaGVl
cnMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gU28gdGhpcyBjb2RlIGJsb2NrIHNob3VsZCB0ZWNobmlj
YWxseSBiZSBjb3JyZWN0OyBidXQgSSdsbCB1cGRhdGUgdGhpcw0KPiBjb2RlIG5vbmV0aGVsZXNz
Lg0KPg0KPj4+IFJlZ2FyZHMsDQo+Pj4gQ2hyaXN0aWFuLg0KPiBDaGVlcnMsDQo+IC1QYXVsDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
