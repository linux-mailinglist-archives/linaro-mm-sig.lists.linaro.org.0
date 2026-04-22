Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +HWFB1t06GlCKgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Apr 2026 09:10:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 898E0442C8D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Apr 2026 09:10:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 22CF93F962
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Apr 2026 07:10:17 +0000 (UTC)
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010044.outbound.protection.outlook.com [52.101.61.44])
	by lists.linaro.org (Postfix) with ESMTPS id 678A63F727
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Apr 2026 07:10:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=OL7lp+xI;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.61.44 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dthVVIERdlj1mFuE7Y/zMhw5JoLjOEDcdaYejbWtBHhyXKxQJDDzlP1DJq4P9liOW//tqH1HD++XpR/eJyrhxHutDzUpbETfOgeaC9T+bPquIS6HW0Zj5TMN6dqf3p3x9thB6PyjjgJcEDoVidGTqNPNLBSkmjXIKDEU9rWQhcdntYffiD3moiefYiJyyE7MguQ0PeqEU2CJ0ubMEL4Maq7awOEm+v2c7vbTcu4OLLok+USydcjGU+IAVWKIX2QOY/8q7aGa7bLqotkXgyS6Scl7edlDrbr8eUyXTApYsSaTp0j1+umTx3UOf+gnkLcTzSVEhdVEInar3rH9Z2OqXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1g4Ec19MTbsH0oDk7b4Z1+P9GZg8iPha3ZsaOisTSz4=;
 b=fiSeUrrvf/GiCB7VFqR/BWt2tolvAPdOO35hUgaOCVMqJjs5aQDUkWbVJZdq1mqmoP40r4vOs987oMFUiZtcU5azGAzkZuo6LdRmoUzwDO+w4flJgInyewRqtcyr99bcQo+Dj0UMxARhjuNv0UIMuRbxFeH1Xi2/kFDp9ABAmTMNCN8dzw4kAsBvmE1ddkD/6JU1qBuqc38nIn1MLeqCwjep1w+mYxM7zR/rikN4nxbEH6/y87yi/hAueHdRr+50P3luxts/motpWXiaB1LeWBAAJL9aBv24AameK2FaMvewHfIFz4gvMUk/vKp22kqdk9QnVW3L7ukWQz9sW51slA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1g4Ec19MTbsH0oDk7b4Z1+P9GZg8iPha3ZsaOisTSz4=;
 b=OL7lp+xIOSvAL7lL1ttATmtvS66gbdxT1UFpjIatgmj9Kek9j2+g3XAa92/B80zho9tDGSXqUidsg09vrA3VoUV1ZAy1Uyac1RYDydgPeTInqcDYRV5gIHj5boq7PFh5K+88NlNanLvrNM4L3Z4GK26t9Bw0PBIDlpP66KTR9bo=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY8PR12MB7682.namprd12.prod.outlook.com (2603:10b6:930:85::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.18; Wed, 22 Apr
 2026 07:10:10 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9846.016; Wed, 22 Apr 2026
 07:10:10 +0000
Message-ID: <9034246e-3971-4fad-94b7-80f4ad0e29db@amd.com>
Date: Wed, 22 Apr 2026 09:10:03 +0200
User-Agent: Mozilla Thunderbird
To: Barry Song <baohua@kernel.org>
References: <20260406214938.24142-1-baohua@kernel.org>
 <a6d1c89a-3c71-4e06-adcb-56595071dcc2@amd.com>
 <CAGsJ_4xquCzQLbvpkC8arAN=9KhrAkdPdxnB=v85GvvQu23Xyg@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAGsJ_4xquCzQLbvpkC8arAN=9KhrAkdPdxnB=v85GvvQu23Xyg@mail.gmail.com>
X-ClientProxiedBy: FR3P281CA0189.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::12) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY8PR12MB7682:EE_
X-MS-Office365-Filtering-Correlation-Id: 7689d6db-51ea-4d19-b5c9-08dea03e30b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|7416014|376014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	f9uQLdc8vu5UxmNPBWeNu8ORlTbDvV7qYkWz7YDMq7agJQLJnKMxK0YEhkxZMptMFmeEHD/XS2MqsDEzfBDpWJudTzKt9Oofye8vifAfZXBH8AlVObMubLNfsLqpvw9ITv52cdZ+NYWfnN5CHfQKepUJrWnMCWd8b24UHjNcCpLNK6WMcn4DDAr1+HIy4YsKvM4HeltUt7KF/FAu0hNhMr41l0GiOn3pjeZVZnFcDOdVP91/ATa12kebRGcKm2sdfxtJZu9AxZ/YOXDS8csY+HobH3CKMpIURJq5g3NgPmYs3u3U3tKNjm4VRJ2nxI30iuVD8GrqM8he6+WfR5Amv4mziRbQb2474VmWaXF7MR9LPIdv5EirGC03p7YS2Mi5eBlmUoNR/CFfDUQu9sUvUSRdwUSlTuBF8etwR3xTA3PZIf1+6y1eSvjlI7FHkHs4mypwiQ+rpDVLwnS5nZvsg8+BqdzQIhfuoJCnMQiXmVPA7FaD8jMY3Ji0AxCPQWTajUaot/Tt3GOBfPwQ5zGU2jh+giVYOgmzUELcDBFaoNQGXeFaFw8vtzhb3qW2tMFC/hQgCb0p4eDrb9+MGneeIhMhGHvy8FJZ/ZupX+85c3dFo9Wg7C4ylNNE94S+5VjLfg6OJg3er0XalvLm45HK/1CtHrygouK6OzTeI4ezXOWOoC9tXTI/PkjwIS9LpR4IpCrGSaoKbW4v2vVyvfpmXy2xIA5LhskNI8EHLtmlW+U=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZEpCaWV6TGRKQlQwSGc1bnpiWERpSm9EbkRhSzdlOXRubzc5UTM5dTQxS2dI?=
 =?utf-8?B?VXBRbHJ2SEIxS0FUWkM1MXdyaXlnRXgvcFE2S1Vqc1BDL1hXeFNaanZvMkc1?=
 =?utf-8?B?T3pmWlZMTGdYcXZmMTVIemh6MXA5WlNlTzFXTkFBZWIzTWVCVkNPdThqc2JX?=
 =?utf-8?B?eWlUTUFHTE9jYkFlM0YyUHBJWWE3T1RsYWVaZk9Hc01LUWhWMEkwUWdVT1Zs?=
 =?utf-8?B?MDdHQlZVcXAyYm1hM09jeCt4dU9SMWZBOHdjeXoxMzhTRHR6L0c4QlFNRGI5?=
 =?utf-8?B?VXNjRW9mcnZFNWJyeFN0Mm9jbmI0OUdwZUtiQ2xhZXVkaklHek1ZQTg5WUZi?=
 =?utf-8?B?R0w3MW5XY294cXRvY3k4QjZCMlVXWW5aUDEyd3RJcXdvQ284WStnV0pxcThD?=
 =?utf-8?B?a3AzUUxodnFSR3JTZXFpVjBmTjkxOWVtRi9jQkpXVDRPZXV4ZDJjbVdEOTF6?=
 =?utf-8?B?bVVYa2hxQWo0UktzYjRLVnkyL2xzOEUxc3FSQTA0VmIzalFWYmlMUnpxT3JL?=
 =?utf-8?B?YTJGNmVTUXl1NzhUSkJYcVd5QWdQK09yNXFnZXVqZU1FaU1ObWE4cnI3WkJ1?=
 =?utf-8?B?TFlwT0pFbFI4akVYcURFaVNYY3lscXptTFNEWnZVeXZTUzMxWmZqdXVtdDZm?=
 =?utf-8?B?VXlIUW1kR2NjYWIvaUNOZnR4WndzV01IMWFNcHVidlhiVkRPeDNxaWhRbkpE?=
 =?utf-8?B?S1RxV1FSV3Y3d0crMTY5Z3ZReURzeVlvSmdaRWtqNFVObDNYTlRrcjhWK2U3?=
 =?utf-8?B?dWt4c2ZGVkpoNStUTE9tcHJKaUEwQUZhU0p6V0lkRk9RcURWTEZSR2NGZEJl?=
 =?utf-8?B?RFFFbzhJb21JeHJlSlRwVjgvVnBUdENtS0FsYjBWTk4zQ0lKOC9SZlczRDZE?=
 =?utf-8?B?OHU4ckdRSTkwMkRJSzdrc1ZNUVNXMmFxYmVSU2IyUjFWVEtCSGJTdG9yS0h3?=
 =?utf-8?B?cTNkOXVQcFcxTWViMlI4MEROd3o3WTMxWWd3WkxVQjNIWUI2ayttOURwQzZr?=
 =?utf-8?B?TTNQUjBPZHY3dVNqeThrTnZxTlRCeWQrTUsza1FVZjQybi9KT0dBL2JDSHha?=
 =?utf-8?B?dVRXbFF6cU1qOFU1UStnZTVDNEtsdTNvaDBDeVFzNWpHdG5HUjJZMzMyRmI5?=
 =?utf-8?B?TVNGOEJFWCtPeHZpZWxjY3dRZFJLcWdQZDFDUVdoSlBVQ3JBR0FMU2VQQVAr?=
 =?utf-8?B?bFpjR0J5c2xqVjNQVXlxVTJPZ1lyaFQ5SG5Pb1hmS2J3WWl1QkhwZ3h0V0tS?=
 =?utf-8?B?dVRSREJna3pUOUpqMTFPczcyNEFjdjQ3bU9RYnpoSjNZYnlTbWZ0ZjdvbVh5?=
 =?utf-8?B?TE41RUhjUzNlUGxFVGNPZ0R0ZGlyV0F1QUNxb1JnZFF6SWk1aHBZa09kaWNr?=
 =?utf-8?B?WU9yZGRzc1BpRVZZR0l5Q2NRK2tDUGVPeFJMYjZrYXRSeHY0QkRpNS9JYzNO?=
 =?utf-8?B?VWJUaXEzenZRVk5KZEpBenJTQVkvREYybE5YUC9PNjBlVHYyMitweWdWZzlP?=
 =?utf-8?B?TzlGZExKNG42UnR2ZnZZY0h5bFhhZXpEeGJaMWV1alhrTjNaODRuUlNvcC9v?=
 =?utf-8?B?MFRvdG12TWFNZG1ISGlpTmI4dVpGblNiN2E3SVlWOVVFYXJCQW9GM2t3MjhT?=
 =?utf-8?B?eTViOXg1ZVJDTzlweFk1c1crQ0oyU0lkSmoveVFMek9QTDdkRWxVNURCTEl3?=
 =?utf-8?B?Y1hUd3dQNDlHZmdqL0J6Smp6WGJrb1NBdTFRT213NnlEaVlEUncvRnpNRE5t?=
 =?utf-8?B?bVBxQ2VlZEpiTlZQSzdpalBBK2ZWZmNUNWJ2cUx6R0xzV3ZPUGZVcU9DZm52?=
 =?utf-8?B?U01Jd1Qva1RLRDg3RGFCaVpTZVdxK2U3WllHL011blo4ZjVOOUo2THRtN2pk?=
 =?utf-8?B?TkRKbVBNNE9Ya2piRWt2WEhuajdHaDNZUTRwOE1zazJtNlVLWW1XTGwycXND?=
 =?utf-8?B?QzN5V1QyMTZxU1U4S1p3UGlVU1NvZzhzK3gwWnZIVG9FVndLUDNVekwvR0ls?=
 =?utf-8?B?U0VrWmM3Sm5vY1A2TDc2cDdVUUxhZWtjMlJCSkpEc2xRSWNia0pmb1ozdThu?=
 =?utf-8?B?LzNRVTBJd3kxVkx2WDhXTEFiN0M5elVlM3hkd1hiZEZEZ2ZlNmpOOC9TQ2xp?=
 =?utf-8?B?NDNGY3RGT1pxTThUU0F3M0NTaXM1NmJuQ1ErQU5sYU1KM1lDUjVXRHBtT0Rs?=
 =?utf-8?B?QUxOdlFMTnB5N1krbG1wNjdIbzFCMnMyREwzSGJRNFdMYjR0bFQ4am15SENL?=
 =?utf-8?B?VmFRbjFYSXhITFc0cGE4UFN2endzU25yS3dUeXNHekhIY21PdUlhMGZwYTZK?=
 =?utf-8?Q?FYAWNnUP68Jhcg5VQM?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7689d6db-51ea-4d19-b5c9-08dea03e30b9
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2026 07:10:10.1827
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RFuI70+QeGW0SdZoFSRKmzVPEBCVBgfjOIdSXisfGsn/TdnVNGNfp/8UQHVqLAU5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7682
X-Spamd-Bar: ----
Message-ID-Hash: ZER63Q2PGNFJPXJEZMDM5S5WU227RS2X
X-Message-ID-Hash: ZER63Q2PGNFJPXJEZMDM5S5WU227RS2X
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Xueyuan Chen <Xueyuan.chen21@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: Optimize sg_table-to-pages conversion in vmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZER63Q2PGNFJPXJEZMDM5S5WU227RS2X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.751];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com,linaro.org,collabora.com,arm.com,google.com];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email]
X-Rspamd-Queue-Id: 898E0442C8D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNC83LzI2IDEzOjI5LCBCYXJyeSBTb25nIHdyb3RlOg0KPiBPbiBUdWUsIEFwciA3LCAyMDI2
IGF0IDM6NTjigK9QTSBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
IHdyb3RlOg0KPj4NCj4+IE9uIDQvNi8yNiAyMzo0OSwgQmFycnkgU29uZyAoWGlhb21pKSB3cm90
ZToNCj4+PiBGcm9tOiBYdWV5dWFuIENoZW4gPFh1ZXl1YW4uY2hlbjIxQGdtYWlsLmNvbT4NCj4+
Pg0KPj4+IFJlcGxhY2UgdGhlIGhlYXZ5IGZvcl9lYWNoX3NndGFibGVfcGFnZSgpIGl0ZXJhdG9y
IGluIHN5c3RlbV9oZWFwX2RvX3ZtYXAoKQ0KPj4+IHdpdGggYSBtb3JlIGVmZmljaWVudCBuZXN0
ZWQgbG9vcCBhcHByb2FjaC4NCj4+Pg0KPj4+IEluc3RlYWQgb2YgaXRlcmF0aW5nIHBhZ2UgYnkg
cGFnZSwgd2Ugbm93IGl0ZXJhdGUgdGhyb3VnaCB0aGUgc2NhdHRlcmxpc3QNCj4+PiBlbnRyaWVz
IHZpYSBmb3JfZWFjaF9zZ3RhYmxlX3NnKCkuIEJlY2F1c2UgcGFnZXMgd2l0aGluIGEgc2luZ2xl
IHNnIGVudHJ5DQo+Pj4gYXJlIHBoeXNpY2FsbHkgY29udGlndW91cywgd2UgY2FuIHBvcHVsYXRl
IHRoZSBwYWdlIGFycmF5IHdpdGggYSBpbiBhbg0KPj4+IGlubmVyIGxvb3AgdXNpbmcgc2ltcGxl
IHBvaW50ZXIgbWF0aC4gVGhpcyBzYXZlIGEgbG90IG9mIHRpbWUuDQo+Pj4NCj4+PiBUaGUgV0FS
Tl9PTiBjaGVjayBpcyBhbHNvIHB1bGxlZCBvdXQgb2YgdGhlIGxvb3AgdG8gc2F2ZSBicmFuY2gN
Cj4+PiBpbnN0cnVjdGlvbnMuDQo+Pj4NCj4+PiBQZXJmb3JtYW5jZSByZXN1bHRzIG1hcHBpbmcg
YSAyR0IgYnVmZmVyIG9uIFJhZHhhIE82Og0KPj4+IC0gQmVmb3JlOiB+MTQ0MDAwMCBucw0KPj4+
IC0gQWZ0ZXI6ICB+MjMyMDAwIG5zDQo+Pj4gKH44NCUgcmVkdWN0aW9uIGluIGl0ZXJhdGlvbiB0
aW1lLCBvciB+Ni4yeCBmYXN0ZXIpDQo+Pg0KPj4gV2VsbCByZWFsIHF1ZXN0aW9uIGlzIHdoeSBk
byB5b3UgY2FyZSBhYm91dCB0aGUgdm1hcCBwZXJmb3JtYW5jZT8NCj4+DQo+PiBUaGF0IHNob3Vs
ZCBiYXNpY2FsbHkgb25seSBiZSB1c2VkIGZvciBmYmRldiBlbXVsYXRpb24gKGV4Y2VwdCBmb3Ig
Vk1HRlgpIGFuZCB3ZSBhYnNvbHV0ZWx5IGRvbid0IGNhcmUgYWJvdXQgcGVyZm9ybWFuY2UgdGhl
cmUuDQo+IA0KPiBJIGFncmVlIHRoYXQgaW4gbWFpbmxpbmUsIGRtYV9idWZfdm1hcCBpcyBub3Qg
dXNlZCB2ZXJ5IG9mdGVuLg0KPiBIZXJl4oCZcyB3aGF0IEkgd2FzIGFibGUgdG8gZmluZDoNCj4g
DQo+ICAgMSAgIDE2MzggIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgPDxkbWFfYnVmX3ZtYXBf
dW5sb2NrZWQ+Pg0KPiAgICAgICAgICAgICAgcmV0ID0gZG1hX2J1Zl92bWFwKGRtYWJ1ZiwgbWFw
KTsNCj4gICAgMiAgICAzNzYgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5j
DQo+IDw8ZHJtX2dlbV9zaG1lbV92bWFwX2xvY2tlZD4+DQo+ICAgICAgICAgICAgICByZXQgPSBk
bWFfYnVmX3ZtYXAob2JqLT5pbXBvcnRfYXR0YWNoLT5kbWFidWYsIG1hcCk7DQo+ICAgIDMgICAg
IDg1ICBkcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbV9wcmltZS5jDQo+IDw8ZXRu
YXZpdl9nZW1fcHJpbWVfdm1hcF9pbXBsPj4NCj4gICAgICAgICAgICAgIHJldCA9IGRtYV9idWZf
dm1hcChldG5hdml2X29iai0+YmFzZS5pbXBvcnRfYXR0YWNoLT5kbWFidWYsICZtYXApOw0KPiAg
ICA0ICAgIDQzMyAgZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfYmxpdC5jIDw8bWFwX2V4
dGVybmFsPj4NCj4gICAgICAgICAgICAgIHJldCA9IGRtYV9idWZfdm1hcChiby0+dGJvLmJhc2Uu
ZG1hX2J1ZiwgbWFwKTsNCj4gICAgNSAgICAgODggIGRyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13
Z2Z4X2dlbS5jIDw8dm13X2dlbV92bWFwPj4NCj4gICAgICAgICAgICAgIHJldCA9IGRtYV9idWZf
dm1hcChvYmotPmltcG9ydF9hdHRhY2gtPmRtYWJ1ZiwgbWFwKTsNCj4gDQo+IEhvd2V2ZXIsIGlu
IHRoZSBBbmRyb2lkIGVjb3N5c3RlbSwgc3lzdGVtX2hlYXAgYW5kIHNpbWlsYXIgaGVhcHMNCj4g
YXJlIHdpZGVseSB1c2VkIGFjcm9zcyBjYW1lcmEsIE5QVSwgYW5kIG1lZGlhIGRyaXZlcnMuIE1h
bnkgb2YgdGhlc2UNCj4gZHJpdmVycyBhcmUgbm90IGluIG1haW5saW5lIGJ1dCBkbyB1c2Ugdm1h
cCgpIGluIHJlYWwgY29kZSBwYXRocy4NCg0KV2VsbCBvdXQgb2YgdHJlZSBkcml2ZXJzIGFyZSBu
b3QgYSBqdXN0aWZpY2F0aW9uIHRvIG1ha2UgYW4gdXBzdHJlYW0gY2hhbmdlcy4NCg0KQXBhcnQg
ZnJvbSBhIGhhbmRmdWwgb2Ygd29ya2Fyb3VuZHMgd2hpY2ggbmVlZCB0byBDUFUgYWNjZXNzIGFz
IGZhbGxiYWNrIERNQS1idWYgdm1hcCBpcyBvbmx5IHVzZWQgdG8gcHJvdmlkZSBmYiBkZXYgZW11
bGF0aW9uLg0KDQpUaGUgdm1hcCBpbnRlcmZhY2UgaGFzIGFscmVhZHkgZ2l2ZW4gdXMgcXVpdGUg
YSBoZWFkYWNoZSBpbiB0aGUgZmlyc3QgcGxhY2UgYW5kIHRoZXJlIGFyZSBhIGNvdXBsZSBvZiB1
bnJlc29sdmVkIHByb2JsZW1zIHJlZ2FyZGluZyBzeW5jaHJvbml6YXRpb24gYW5kIGNvaGVyZW5j
eS4gDQoNCldoZW4gYSBkcml2ZXIgd291bGQgYmUgcHVzaGVkIHVwc3RyZWFtIHdoaWNoIG1ha2Vz
IHNvIGZyZXF1ZW50IHVzZSBvZiB0aGUgZG1hX2J1Zl92bWFwIGZ1bmN0aW9uIHRoYXQgaXQgbWF0
dGVycyBmb3IgdGhlIHBlcmZvcm1hbmNlIEkgdGhpbmsgdGhlcmUgd291bGQgYmUgcHVzaCBiYWNr
IG9uIHRoYXQgYW5kIHRoZSBkcml2ZXIgZGV2ZWxvcGVyIHdvdWxkIHJlcXVpcmUgYSB2ZXJ5IGdv
b2QgZXhwbGFuYXRpb24gd2h5IHRoYXQgaXMgbmVjZXNzYXJ5Lg0KDQpTbyBmb3Igbm93IEkgaGF2
ZSB0byByZWplY3QgdGhhdCBwYXRjaC4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4g
QXMgSSBjYW4gc2hvdyB5b3Ugc29tZSBvZiB0aGVtIGZyb20gTVRLIHBsYXRmb3JtczoNCj4gDQo+
IDE6DQo+IFsgICAgNi42ODk4NDldIHN5c3RlbV9oZWFwX3ZtYXArMHgxN2MvMHgyNTQgW3N5c3Rl
bV9oZWFwDQo+IDhkMzVkNGNlMzViYjMwZDhhNjIzZjBiOTg2Mzk5OGEyNTI4ZTQxNzVdDQo+IFsg
ICAgNi42ODk4NTldIGRtYV9idWZfdm1hcF91bmxvY2tlZCsweGI4LzB4MTMwDQo+IFsgICAgNi42
ODk4NjFdIGFvdl9jb3JlX2luaXQrMHgzMTAvMHg3MTggW210a19hb3YNCj4gOTZlMmU1ZTk0NTdk
Y2RhY2NlM2E3NjI5YjA2MDBjNWRiZWNhNjIzYl0NCj4gWyAgICA2LjY4OTg3M10gbXRrX2Fvdl9w
cm9iZSsweDQzNC8weDViNCBbbXRrX2Fvdg0KPiA5NmUyZTVlOTQ1N2RjZGFjY2UzYTc2MjliMDYw
MGM1ZGJlY2E2MjNiXQ0KPiANCj4gMjoNCj4gWyAgMTE2LjE4MTY0M10gX192bWFwX3BhZ2VzX3Jh
bmdlX25vZmx1c2grMHg3YzQvMHg4MTQNCj4gWyAgMTE2LjE4MTY0NV0gdm1hcCsweGI0LzB4MTQ4
DQo+IFsgIDExNi4xODE2NDddIHN5c3RlbV9oZWFwX3ZtYXArMHgxN2MvMHgyNTQgW3N5c3RlbV9o
ZWFwDQo+IDhkMzVkNGNlMzViYjMwZDhhNjIzZjBiOTg2Mzk5OGEyNTI4ZTQxNzVdDQo+IFsgIDEx
Ni4xODE2NTFdIGRtYV9idWZfdm1hcF91bmxvY2tlZCsweGI4LzB4MTMwDQo+IFsgIDExNi4xODE2
NTNdIG10a19jYW1fdmIyX3ZhZGRyKzB4YTAvMHhmYyBbbXRrX2NhbV9pc3A4cw0KPiAwY2Y5YmU2
Yzc3M2E4ZjE0YWFiOWRiOWViZjUzZmVhY2I0OTk4NDZhXQ0KPiBbICAxMTYuMTgxNjgyXSB2YjJf
cGxhbmVfdmFkZHIrMHg1Yy8weDc4DQo+IFsgIDExNi4xODE2ODRdIG10a19jYW1fam9iX2ZpbGxf
aXBpX2ZyYW1lKzB4YThjLzB4MTI4YyBbbXRrX2NhbV9pc3A4cw0KPiAwY2Y5YmU2Yzc3M2E4ZjE0
YWFiOWRiOWViZjUzZmVhY2I0OTk4NDZhXQ0KPiANCj4gMzoNCj4gWyAgMTE2LjMwNjE3OF0gX192
bWFwX3BhZ2VzX3JhbmdlX25vZmx1c2grMHg3YzQvMHg4MTQNCj4gWyAgMTE2LjMwNjE4M10gdm1h
cCsweGI0LzB4MTQ4DQo+IFsgIDExNi4zMDYxODddIHN5c3RlbV9oZWFwX3ZtYXArMHgxN2MvMHgy
NTQgW3N5c3RlbV9oZWFwDQo+IDhkMzVkNGNlMzViYjMwZDhhNjIzZjBiOTg2Mzk5OGEyNTI4ZTQx
NzVdDQo+IFsgIDExNi4zMDYyMDldIGRtYV9idWZfdm1hcF91bmxvY2tlZCsweGI4LzB4MTMwDQo+
IFsgIDExNi4zMDYyMTJdIGFwdV9zeXNtZW1fYWxsb2MrMHgxNjgvMHgzNjAgW2FwdXN5cw0KPiA4
ZmIzM2NiY2UzYjg1OGQ2NTFiOWRhMjZmYzM3MDA5MGE2N2NmYjcwXQ0KPiBbICAxMTYuMzA2NDY4
XSBtZHdfbWVtX2FsbG9jKzB4ZDgvMHgzMTQgW2FwdXN5cw0KPiA4ZmIzM2NiY2UzYjg1OGQ2NTFi
OWRhMjZmYzM3MDA5MGE2N2NmYjcwXQ0KPiBbICAxMTYuMzA2NTkxXSBtZHdfbWVtX3Bvb2xfY2h1
bmtfYWRkKzB4MTFjLzB4NDAwIFthcHVzeXMNCj4gOGZiMzNjYmNlM2I4NThkNjUxYjlkYTI2ZmMz
NzAwOTBhNjdjZmI3MF0NCj4gWyAgMTE2LjMwNjcxMl0gbWR3X21lbV9wb29sX2NyZWF0ZSsweDE5
MC8weDJjOCBbYXB1c3lzDQo+IDhmYjMzY2JjZTNiODU4ZDY1MWI5ZGEyNmZjMzcwMDkwYTY3Y2Zi
NzBdDQo+IFsgIDExNi4zMDY4MzNdIG1kd19kcnZfb3BlbisweDIxYy8weDQ3YyBbYXB1c3lzDQo+
IDhmYjMzY2JjZTNiODU4ZDY1MWI5ZGEyNmZjMzcwMDkwYTY3Y2ZiNzBdDQo+IA0KPiBXaGlsZSB3
ZSBtYXkgd2FudCB0byBlbmNvdXJhZ2UgbW9yZSBvZiB0aGVzZSBkcml2ZXJzIHRvIHVwc3RyZWFt
LA0KPiBzb21lIGFzcGVjdHMgYXJlIGJleW9uZCBvdXIgY29udHJvbCAoZGlmZmVyZW50IFNvQyB2
ZW5kb3JzKSwgYnV0IHdlDQo+IGNhbiBhdCBsZWFzdCBjb250cmlidXRlIHVwc3RyZWFtIG91cnNl
bHZlcy4NCj4gDQo+IEJlc3QgUmVnYXJkcw0KPiBCYXJyeQ0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
