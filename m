Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKMVG2ax+GkdzAIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 04 May 2026 16:47:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D155C4BFFFB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 04 May 2026 16:47:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB2D3409B4
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2026 14:47:00 +0000 (UTC)
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013017.outbound.protection.outlook.com [40.93.201.17])
	by lists.linaro.org (Postfix) with ESMTPS id 131E13F725
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2026 14:46:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="4jD1DO/I";
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.201.17 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EGRE9WJsCrVAURpvFqPDUJo0Q14INpyFjwL3h68zmkcQ6ZsQyZguwVYWsPppK9vIk9vK8KwOUvOWm3woVxW/OKKohulQtuRX4tnwxftQS7OS7K1m6FPndlnIUNc68gTP7mTXAIWxIw+lk91YSesF7+LYn++JTqv4b9YjTCFZX5PniFXyoBy6dLuGSA6X92W4cEUpcg+LBHU6AtpPAlwojb4fkLFaUVpGwM6hZ3ahRhiLxkyfncInW3Hm1d5Wm3ZRIIryQFEqICTdnmxuP+runrt5bRI/xsuCWCE9f7LaFdp3HhYlfVgrCxj5XDjD2zHAfds0ROipvCTTyA96L4B1OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TqH4IhjyG9WktJD2frgrnrCo32d9nmyy3+oB8GonFL0=;
 b=u7Vb94joHT/21iBkGagILYH0/7E/ZFl81K4nyGSbocgsfhDybaamlmb45HRQC2aKz2XQfUkv+UcvF7eD0v23Ckci5Wsb59+y6D7BaTLszWz0ivt0hXMBKg38OlSgRxDRD8HomQkPw4CW3shS6OF6STzQ/KksjU5b4pnemGWE2Y2DZSxyAmNvO5MSKZUhKxuo8N+q2RPmhCrwWKdK6xIzPa8HtjlPngaV/2/v+HXwTlKf1KWLt2fy+KaZPP180F/U/OutYbCxurRxE9YclVDx/UWj0okFzqmHL3aYzuOdoxibxYmf13C9KBSxdrAwFYrR8n4WGsYqNdT0HrNypQngrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TqH4IhjyG9WktJD2frgrnrCo32d9nmyy3+oB8GonFL0=;
 b=4jD1DO/IOrVI+cCHojPR5zgGUr8hYe0qUKI9d0W2qbhV8ABqhMejU5uyIgk7uqbQmlbE0t4NSHCM4v9VEUXyCesFj0atADQ+ElXfc8HDsC6v+0YLtdzr2vgBr1dH4FtffuW3qcqvGup+F3cBp2fsuHHpah5IwjsyHgm4nf2SnR4=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA3PR12MB9091.namprd12.prod.outlook.com (2603:10b6:806:395::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 14:46:53 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 14:46:53 +0000
Message-ID: <5bc3c25f-476c-4402-b077-5731ebafc123@amd.com>
Date: Mon, 4 May 2026 16:46:48 +0200
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tursulin@ursulin.net>, sumit.semwal@linaro.org
References: <20260422103012.1647-1-christian.koenig@amd.com>
 <096a34ce-fb73-4d56-81b4-aa6a0342c322@ursulin.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <096a34ce-fb73-4d56-81b4-aa6a0342c322@ursulin.net>
X-ClientProxiedBy: BN0PR04CA0016.namprd04.prod.outlook.com
 (2603:10b6:408:ee::21) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA3PR12MB9091:EE_
X-MS-Office365-Filtering-Correlation-Id: 9efab508-d226-43cf-d00c-08dea9ebfaea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	PbLO9aKH3+Yf2AA3Cv1ZeLlhl+kAB36g0doBW2zgksR8PwGedRAFno/AVzBF5UCof6v6+TTkQE4fm4mxrJaev84aIdIGFD5r27ZT0fG8XwD3GHeTYGd1ORHgv4GOGx04UFN0Ba0nmkYyYYbW2Y1cwd7OburbzPpCFkq7Fm5lRIAJWwBhtnjdvWyQlzZ9A+BnVhlBFbay2jk0v2CT0e6RcauLjF/fWXWDv5CkwaWv/w7Ib6D8hgZv5h8UiJ6ceMrNu8qeBKGDORbVNtuf2NaqPaSpKYvSH2s9z+2xVgguZvYfQa3HXmfVf75WS4EjvUAUkfaubzP3s++dRPSLDgGZa0q76967+p3AOJZVN7I640Um73TVOvE+7g5BrKZkVN/jWONkLWkwhDhYYlQfFfBe/VsUE052zAqL/mmOKSTZXL4/B5/fCwBcKgWYBTXmqUjjkkG49WkbFdtmnL7PNYfzEmTjnPyO2lPtTIwZaoucyVxPB5cdTHkUCuz/7vxntnmNr7t20+6jfht5l5VAOPXC7/SH1LEns9ofE9IsvRAZQvn8i1IKeX3uExSC8u9DHpvLigqk4nXvlYaY/ghxjXzPMETpHDajjFwNkK8SoWj92SNgsRuPpIvn3/JxbS9Pp1kMSqzbovdHYBB4JU9rZGUxukwrQkT47PgF0pevO4g5Jg775fAJQVTwpDiwnF1vzPa5
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?L0l0UnNneWc0R0tGR1FHQnVkVTgzRkNsOEZxTlVzWU1UOXBwQ21SQyttQ1ln?=
 =?utf-8?B?OUxidXNoQ3FIQUdSUkxRL1dqTFhLVUppM21oMWQrUHp0cVd0TitYQXI0d3VU?=
 =?utf-8?B?MTJ5eUZ5VGxWbkU3bkVKbkVXYWRLRkdNQXBWalN0Qno3RTNtWFQ3RnVJTVFO?=
 =?utf-8?B?cFYxbVh3a0hWTktoWUYzTWxlOFFnMjVMNXBYUVFaL1g4YURyU0d2SmxrYksr?=
 =?utf-8?B?Tm9NMnJSQlJCS0lEZUtsc0VtcXI4aU4rVGpBdXpWU0crOXJrWWE3eUJ2N29o?=
 =?utf-8?B?OERTVi8yNkdUWUh5a0srRnBMVlZhNFFBYUJRNWtOcjJ2VnFQcFJNMERISFZV?=
 =?utf-8?B?RW9tU2N5YjF5VFF6WnFmSTRxdWhYaEVsS3RHbkpIWmQ0RW5IazZwdjdPNWI4?=
 =?utf-8?B?ZDFKS0V0dGR1cHpGNEVsVXQwNGltc3lXT3RjSlhJUmFDeU8zZkIvRTY1cmww?=
 =?utf-8?B?YW9ycndvMEpBVzd1ZDV6U0F6UFBFREVKQ0ZLNkJUeEdxQ2lnckJwSXNDODgx?=
 =?utf-8?B?N0R1ZEwvckprMlVIOUNwcnQxMS9xNHJWTElUZEc5NmtxQzYxZXhLZWNMU2JR?=
 =?utf-8?B?bWpUZ21RODhjdDQwZ1UzM1RTWnNVdW82NktNR29CUG0wVjhjaFYxQjMvL0V0?=
 =?utf-8?B?VGRVdjEyaFZhQmkrS090VHpIK2NTdVhmRnM0eEM1d0tlWmlYUXV1MU9zelZE?=
 =?utf-8?B?R2s4ZUZzZzV0blBXQzVZN2MyNGkvbGhuZWJta2ZKSzhrME5HRytZckF1OEYx?=
 =?utf-8?B?S0dUZkVyeUVXTjBWbEswYzVUQVc1Q2NJTmtwU3RrUG1USHBIWm9mTmNDU1NO?=
 =?utf-8?B?WHh5bHlDK2kwbGdXYzV6cDY5N1BxQzFYdmgxb0Y1K3ZjRTJmeGhZUitrSUhK?=
 =?utf-8?B?LzN6aGs1RnNTS0ZpY2R5RWZzQ3l0RkN4NmdmNVZPTjJNUzVnZE1OeXNxZGJt?=
 =?utf-8?B?UitKd3YrckdCN09qTzZpRlp6SmUrSUxIMHRsb2RHSWMzZ2tTSXh5SXZ1YVlk?=
 =?utf-8?B?NkdFWGFwL1JacHJ2REI2VzJWNFh0azlYcWZGbVZpbVdnQWQ0anJNSXF1WWJS?=
 =?utf-8?B?NmxXY2hlbzhibUNIYW9MTGVpeE8rM2lFTnZaLzF1SXRZZ21SS3FwUEJKUHdF?=
 =?utf-8?B?K1BiRVhsMTFXeXFPamoyYUVQVzJWVzZVMmxnTWMxMWlHSUN1MDZHbHplWkhm?=
 =?utf-8?B?Y21QaW5zMFdyRUIrY081Q1gvMjBPTURlTFk5L1pUYkFFaDB2R29JcmF2cEds?=
 =?utf-8?B?bFljeG5zamZKanFHZno2T2Zva1dnY2oxbkVIdjFKY29Ha0JNT01DSTZqRVVM?=
 =?utf-8?B?QjNOU2dMY0U5ckM3YlR6TUY5OUczRkJ2dVdMU0tHd2ZUL0VCREdCemNnK3Nt?=
 =?utf-8?B?clh0RVdZU0ZWenBGb21saUdBVDYzK2xIOHAwSEdCUzROZ3RKMHZFYnltWVZP?=
 =?utf-8?B?L3ZFWE16TzQwV0VzTWpOSkxsLzJtV1UzVVduT0RTRDVsZjB3emVyRlBEbDV3?=
 =?utf-8?B?dVlRaWthVjU1ZFlDcGUrbzdkZy9UalVvNHlvWThhbEZhNGpBMmt3SVRaT0wz?=
 =?utf-8?B?NHcyOGMzVEJrNFpPMnJTenlEQ0tRNk9ER1VwNmptYmRXbW1IZlV4bkl0bkli?=
 =?utf-8?B?TGxsZ3l3NWNOa0czNk1LNFpDRHU2SE42b1BJOGIyN2c3QndDbjNDd0J4T1hE?=
 =?utf-8?B?QmhSVUhQSW1PZlQxTnhiREZkaGoyYURTZXcxMUNrc1Q2dXF6b3VqS0o4UVA3?=
 =?utf-8?B?NmJGUFdDcGVkT0h4WlJSUEJabmNMTUp3WGcwYVBpS3h1SzM3ekxrZUFadHB0?=
 =?utf-8?B?K3VoTWl6T09zcFIwd0RSdlpxWVQyUU83N2VwRnZPdWtIUXh4dTNYVDh4YVFp?=
 =?utf-8?B?WSsra3JwbVJickJTVGhVdHArbUgzOXNSS2Z1QUZmL3FQTlpodkp5dkNpRjV5?=
 =?utf-8?B?akdIbTkxUm01dEtMUXlDeHhMZ3NuQmVSSnhtTG04WnUxWkcvN0IyTjAwWEQ0?=
 =?utf-8?B?OUxpSU93V2t3bkhhNHg4QnNucUJmODVVTHJjdEFEOXBqQlJ4bDhFL1RyRnJn?=
 =?utf-8?B?QTgyQXZobXBqN09vNE1vdXFHa3IyWkhwelRJQ2xTZXNoK2g5U056SDBTNDMz?=
 =?utf-8?B?UUdJejJac09HMWN2OG1QeWtDL253TUdvbWw3YVY4TExOZWxjcHc3OFI2SURM?=
 =?utf-8?B?UStXK0o3Z01LcHQrcUhCSlh1YmNmMGdwazZRKzV5YU1xQXlxRUJqOXpFNm9H?=
 =?utf-8?B?NGd5aEdtZUdPWkNOU0E0a0c0QTZ6TFAxSmJONnhSWERkNzF2UFk0TjBTL2pl?=
 =?utf-8?Q?gyQwx3vCPpcfzOtox/?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9efab508-d226-43cf-d00c-08dea9ebfaea
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 14:46:52.9544
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WxTQDw8vz1PpaMAy8axdseTz15nyUED5Nct8NPlcfbB0GOk9P/AD8XL2hl05Jj+G
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB9091
X-Spamd-Bar: ----
Message-ID-Hash: FN67ZZI5OTOJMCWYNWYQR3VDRNQ6NXZY
X-Message-ID-Hash: FN67ZZI5OTOJMCWYNWYQR3VDRNQ6NXZY
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf/dma_fence_array: remove unused functionality v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FN67ZZI5OTOJMCWYNWYQR3VDRNQ6NXZY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: D155C4BFFFB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.699];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,linaro.org:email,amd.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]

T24gNC8yMi8yNiAxMjo0OSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+IA0KPiBPbiAyMi8wNC8y
MDI2IDExOjMwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KLi4uDQo+PiDCoCBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL3hlL3hlX3ZtLmMgYi9kcml2ZXJzL2dwdS9kcm0veGUveGVfdm0u
Yw0KPj4gaW5kZXggNTZlMmRiNTBiYjM2Li44ZjQ3MjkxMTQ2OWQgMTAwNjQ0DQo+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0veGUveGVfdm0uYw0KPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL3hl
X3ZtLmMNCj4+IEBAIC0zMzcwLDcgKzMzNzAsNyBAQCBzdGF0aWMgc3RydWN0IGRtYV9mZW5jZSAq
b3BzX2V4ZWN1dGUoc3RydWN0IHhlX3ZtICp2bSwNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBnb3Rv
IGVycl90cmFjZTsNCj4+IMKgwqDCoMKgwqAgfQ0KPj4gwqAgLcKgwqDCoCBjZiA9IGRtYV9mZW5j
ZV9hcnJheV9hbGxvYyhuX2ZlbmNlKTsNCj4+ICvCoMKgwqAgY2YgPSBkbWFfZmVuY2VfYXJyYXlf
YWxsb2MoKTsNCj4gDQo+IFBhdGNoIHNwbGl0dGluZyBtaXN0YWtlIGhlcmUuDQoNCkFoLCB0aGFu
a3MgZm9yIHBvaW50aW5nIHRoaXMgb3V0Lg0KDQo+IFRoZSByZXN0IExHVE0uIFNvIHdpdGggdGhp
cyBodW5rIGRyb3BwZWQ6DQo+IA0KPiBSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGlnYWxpYS5jb20+DQoNCkkgZG91YmxlIGNoZWNrZWQgdGhlIHBhdGNoIG9uY2Ug
bW9yZSwgY29tcGlsZSB0ZXN0ZWQgaXQgYW5kIHRoZW4gcHVzaGVkIHRoZSByZXN1bHQuDQoNClRo
YW5rcywNCkNocmlzdGlhbi4NCg0KPiANCj4gUmVnYXJkcywNCj4gDQo+IFR2cnRrbw0KPiANCj4+
IMKgwqDCoMKgwqAgaWYgKCFjZikgew0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGZlbmNlID0gRVJS
X1BUUigtRU5PTUVNKTsNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIGVycl9vdXQ7DQo+PiBA
QCAtMzQxNCw3ICszNDE0LDcgQEAgc3RhdGljIHN0cnVjdCBkbWFfZmVuY2UgKm9wc19leGVjdXRl
KHN0cnVjdCB4ZV92bSAqdm0sDQo+PiDCoCDCoMKgwqDCoMKgIHhlX2Fzc2VydCh2bS0+eGUsIGN1
cnJlbnRfZmVuY2UgPT0gbl9mZW5jZSk7DQo+PiDCoMKgwqDCoMKgIGRtYV9mZW5jZV9hcnJheV9p
bml0KGNmLCBuX2ZlbmNlLCBmZW5jZXMsIGRtYV9mZW5jZV9jb250ZXh0X2FsbG9jKDEpLA0KPj4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDEsIGZhbHNlKTsNCj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAxKTsNCj4+IMKgwqDCoMKgwqAgZmVuY2UgPSAmY2Yt
PmJhc2U7DQo+PiDCoCDCoMKgwqDCoMKgIGZvcl9lYWNoX3RpbGUodGlsZSwgdm0tPnhlLCBpZCkg
ew0KPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmggYi9pbmNs
dWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oDQo+PiBpbmRleCAzNzBiM2QyYmJhMzcuLjFiMWQ4
NzU3OWMzOCAxMDA2NDQNCj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmgN
Cj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmgNCj4+IEBAIC04MSwxMyAr
ODEsMTEgQEAgdG9fZG1hX2ZlbmNlX2FycmF5KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPj4g
wqAgc3RydWN0IGRtYV9mZW5jZV9hcnJheSAqZG1hX2ZlbmNlX2FycmF5X2FsbG9jKGludCBudW1f
ZmVuY2VzKTsNCj4+IMKgIHZvaWQgZG1hX2ZlbmNlX2FycmF5X2luaXQoc3RydWN0IGRtYV9mZW5j
ZV9hcnJheSAqYXJyYXksDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50IG51
bV9mZW5jZXMsIHN0cnVjdCBkbWFfZmVuY2UgKipmZW5jZXMsDQo+PiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgdTY0IGNvbnRleHQsIHVuc2lnbmVkIHNlcW5vLA0KPj4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGJvb2wgc2lnbmFsX29uX2FueSk7DQo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgdTY0IGNvbnRleHQsIHVuc2lnbmVkIHNlcW5vKTsNCj4+IMKgIMKgIHN0cnVj
dCBkbWFfZmVuY2VfYXJyYXkgKmRtYV9mZW5jZV9hcnJheV9jcmVhdGUoaW50IG51bV9mZW5jZXMs
DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2VzLA0KPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdTY0IGNvbnRleHQsIHVuc2lnbmVkIHNl
cW5vLA0KPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgYm9vbCBzaWduYWxfb25fYW55KTsNCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHU2NCBjb250ZXh0LCB1bnNpZ25lZCBzZXFubyk7
DQo+PiDCoCDCoCBib29sIGRtYV9mZW5jZV9tYXRjaF9jb250ZXh0KHN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlLCB1NjQgY29udGV4dCk7DQo+PiDCoCANCj4gDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
