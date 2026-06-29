Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xQTxNqQ5QmrU2AkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 11:23:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 567BE6D81C7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 11:23:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=jff1AA11;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4053240A71
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 09:23:47 +0000 (UTC)
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012015.outbound.protection.outlook.com [40.93.195.15])
	by lists.linaro.org (Postfix) with ESMTPS id 43241401F2
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jun 2026 09:23:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P58839D0efgulknsEBsbdT+uZ8di+bIKKJsXAFLyu9VH/t3/z/bBBfoz2rRUkMtOZbskWtgwB9XsJ1WRkX9V1NmMciWY58vyBHLEiSw0W/o+vxEoSdq6/Mac64LJteBr2+O9PHcNzdex4mjqE9rChkILyCQJ+ZrUrlz+4g5fUVb3IUbFhDXLQiQOFEEqiXRSjTwF4MDayfPXiayekByAd/caB+dfIr0Ldf2kEzYHW+JuMx5h9TZ1l2i/MiFHgMpP+Bpy4tT9k7KEgq7X/1inYCLaufMxH9pbkcIYYiVODwMFjUcuHu9/Kt0UwfKTBmfywtc7RP5eFH1L5o2h8lUQtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6zwCWDl56huYpWyV0Y2fwl0Z2ZAV8E/g7gcd18kQNqQ=;
 b=D5hdPIeME8JPvW8/FYg07vZ7pnF47waZIjaTR5kOlgoOpGnfVfMVYDH0c8uqtNyXjTS8QTB4ohmSf+WupCayrn0ipfGuxH5GEAVpPSme4ej1S/FruVNeOd5IUf/gZsuMnq5vQ9QnIOd+yrFZFmV/tZ+xOtT/zoAZot0JIqViMlIrOsnIgVuPbsdEJGnbD0bjL1JT2mTwK73MTMC1l5lUUPGSPmoeQnykjbqXKkNvCl+KyzilRnFEwuGNi0Tl9VqdAbWzCqO0hxUkTsXdhdlnKldCDYrvx3fF8GJVy220ZeT/9CTGcZ+H98OtRQuuP09pGbnBW33MidDxE539kecm5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6zwCWDl56huYpWyV0Y2fwl0Z2ZAV8E/g7gcd18kQNqQ=;
 b=jff1AA11cRzVw4pTMgUfd5TnjvLL3zPAgs6VXHD46wwRkrl00H54KqbUqcqZz1xoOD5fGhc/OxdHz8mWZW6OPiWv7GZsnN4ZJx4veNt48271DDuzD1MS0Zz/0QPZSiXnpohxL2d3S2IzpDDEcwBqMyTXP3Hz2WnVaw7TRf2krYI=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SN7PR12MB6863.namprd12.prod.outlook.com (2603:10b6:806:264::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.14; Mon, 29 Jun
 2026 09:23:33 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0159.018; Mon, 29 Jun 2026
 09:23:33 +0000
Message-ID: <f59bb996-a46f-4b5f-9229-bce5dc1a0685@amd.com>
Date: Mon, 29 Jun 2026 11:23:28 +0200
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, simona@ffwll.ch, sumit.semwal@linaro.org,
 tvrtko.ursulin@igalia.com, dakr@kernel.org
References: <20260624122917.2483-1-christian.koenig@amd.com>
 <c9d8f3a762601f352bd176d4ae5c7977edaeab11.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <c9d8f3a762601f352bd176d4ae5c7977edaeab11.camel@mailbox.org>
X-ClientProxiedBy: FR5P281CA0056.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f0::19) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SN7PR12MB6863:EE_
X-MS-Office365-Filtering-Correlation-Id: 69f4f797-4646-4658-8b41-08ded5c016cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|23010399003|376014|366016|18002099003|22082099003|11063799006|56012099006|4143699003;
X-Microsoft-Antispam-Message-Info: 
	0gaa/VHcFdkTk5BSNzokVnaoFZfOsvDBUzvvxRcCiM84D6LBa5+q6pGzDyZOvoTioDWMiLYRmKGxV2e86UCmxpkTHL0AF2YZxTeTSricPuHy9Vku+3niy/XteF+6jEKLd9cupNHWGhhpcyVseQ7Kkkzy7ueYe/ZB4K71iOT+LvyVkqFQu8y1cwuy17zrO9UYPcX/xoICZsFQCJwDdYafZ+C7FJ+fDwOWESFiANpbul1PxHI8X4hGLAEbwzfD9NeZZ/RwvBYbobCH/9KLSpo48M6V5zmdfIdA83Z3YfFqJfXotLm42oHUNOpMgLgRTtzfGBMhgP6+MZBvLGj3jR2I322th/hAqLsiYhqSqnHuMVjjEwC4zZGbs2J/pjgU1VjfWd5gXaYrII5NLUDTiBGbneCGOtKnDz0yF7TYvgWoTjBEZiVlLTt8CO5RXstEHCzQD0q9fOgnOEy5e6kp+lxT6Or3Vq8qGl3bDsEe6+1+Li5IXNI/5c32w2e8PG7xKIl3QIwEfizri/g3OKA22QNcR7a8t11Q1MdekXNRNck/Mwy8GJbuHVzooL+pv/j30Y7nVubNYaDgjiFyz9HwQY/1K505vQrFrorvxxOTkNKswi8Ph/Z9BxS8dX+mhg6u15iWRgjuEnuEfRFOuoxTABfmypavtGtnJ3NzLb4iSUs6T9M=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(18002099003)(22082099003)(11063799006)(56012099006)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Zm9XYWNwZGxYYSt1NzNxeDZlYUlLaHBkTXN2VlZHS2F6eUlYL1JQM2grK2wy?=
 =?utf-8?B?RVA2SlI5OUlhWTBvK284UWJ1bnQwWkp3eE5WTUc0c29XK2lFQjhVZStkREpT?=
 =?utf-8?B?cE1Ec3BvcUNCUGFJN1N6eS9oakN4bC9DbjQvV2FFdnZJU3RIQXFkSE5RZlVU?=
 =?utf-8?B?eDUzWVBFUmViVFpGWjhoRXNyYnZ5QjlMQThOMUF1UFdxanRYM1h3aEFOY0ZU?=
 =?utf-8?B?SHhFby9NV1FVTXE0SDhVU2tqK2JJVzJZME9uVUJqTVgvQVBtREREZ3gwUVRh?=
 =?utf-8?B?ZW53WGZ6WFhsd0RvUXB2cGZVRTF6WWZGVFhiTlg2ZVNLWmZnNVJUbEVITW1D?=
 =?utf-8?B?anN0T0FoU0EvMDFNU2FLS3NnblBrVlptbE5RN3JnTVFHSEx0bmFzcFNLdU1k?=
 =?utf-8?B?UXpxZ3FOOFJzUU1tMWxjK2NyRDlWeGczTFdmcG4vZWJQUnNMR0ZsM0w1ZHln?=
 =?utf-8?B?eDJlM0d1dWxvN3ZuQUtqTUpWTHlIMEZDdFRqT2xEcW9RcTR6QTFrZEQreGpT?=
 =?utf-8?B?VjlFQ2ZUQjhFcWJ5aDBweStkRktSdFRzM1BaRWU0b1c1V0tZYmJwblF5ZWZF?=
 =?utf-8?B?Ymo2bDZQYk9LeVJFVEdzaVFIR0tpSVpIcnFHamNBVDhMUjBjNjVjcXpSODdS?=
 =?utf-8?B?dFEwcGFrK0dtemFYWkpTTnVSVElFWVppcmxRZXNXZTdBaUp0WGt4L3NvY0Jn?=
 =?utf-8?B?NkRjZ2FXSW91OE95aEtYaC9ySWU0TzhDTGg3OWMxZnpWdDVuZG5LZGY4cWNn?=
 =?utf-8?B?cFFXamdmd1JrNkZVZWNNMVZ3MCtGbjhUWTlaR3I2SjB6UElzWGZ1Q2dvUWE4?=
 =?utf-8?B?NGtvRCtONk1YQTZmNXhpcmsvMVA5SXkzMmpiNWtWcWU3bXJkeE1PMFRZd0Jw?=
 =?utf-8?B?MFBzWFowZDM2VngrZmRXS2pORzI5MHNuOTJKYVZ2Y3lXYnE2enBlU3ZuVU4x?=
 =?utf-8?B?NjlYSHJuRkpqNlZYZE1UdXoyRldyTml6UzZqSC9FR1JrOXE3cGc2MFRCM0pm?=
 =?utf-8?B?andSR2dzcjRLQVViUVloSlFNUHpseDM2MDZCeEFnQUdTcDF5dzNWYVJpbEtB?=
 =?utf-8?B?TjlreC9ZN3hYOS9YU1d0a3VOdVEvUk9wWVBnWmUyVUswMjBJV1J0cklWNkhP?=
 =?utf-8?B?Q29yVndVTHc3TUJ2MmRCck5IdGpZTW8zU1Vlb1d4V3pXTVlZZUxnWXZVdVNv?=
 =?utf-8?B?NE42SHNEeFVQdjh6dHE1MTliaDd1SGM1clRNRlNYRXMyVDF1QjBJVnJkRm5p?=
 =?utf-8?B?QWNBMkNxNXFHcFJ3NFlwUHNqQmJITFRiT0xmWS9DZnpHTDhlTjIwMU8wNnpW?=
 =?utf-8?B?ak85TCtIZk1VMFhncGtuRUQ0ZHFKaDAzdDdWV2hYSUJEbjdmRGpyeGViVkxN?=
 =?utf-8?B?Nk1nVGhnODdIOTZ6NlFYNVBMdWloOW05TVg5ZnhjVnVEbnhhNWxpSVMvbkhk?=
 =?utf-8?B?TVFNWk05VU1QZmZFa09rTmw1eDVUTkRmU3dEamhOek9vRGtuK0VaWFlwbmRM?=
 =?utf-8?B?a3hrZHBnT0VwYk50ZG93ZTgwWUxGUzF1RUlSbVdCS0VlRGhkSGVWUzVIQW9L?=
 =?utf-8?B?bzVaTitwM0hZYi8zb0JNMGp2NkdzUExKaHg1M08xbGczaVN4Z1BNMEZhUjc4?=
 =?utf-8?B?aHNOTlBrZUswZ1pRZDhQRzZjcmxtU3dON2tmaDlwNFltclgwemw0b0NZbEIy?=
 =?utf-8?B?QklnRkw3M01kcEdGTEY4aVBWQjV3aElTQnFMZ0lDY0ZDMFFoRTBKcVVEWDN6?=
 =?utf-8?B?RlhoUksvUlNkSVFqQU10VG1Icy8wVXROdUdzSXRDbVFINC9pamtnb0RzNmRn?=
 =?utf-8?B?VkpPK2lySm01RnNPa0oyVmQ1UHNlZWNCSHRXbEVLdDlaQVBHVTBiT3MyUTF3?=
 =?utf-8?B?Y2hBMnZxU1hZZDJBMHkrNW5SU1hQU0ZQWXVGaWZHTkdMVFRWa1JYSGVtNzZJ?=
 =?utf-8?B?UFdPUWdYVUhiRmpQYUtLWXVkbitxUFlhWDdORXpvenNNTFJCREUrdUx0S3d2?=
 =?utf-8?B?ZjFvV1ZydEhmalAybzhraTB4bHFtSzRIS2ZaTzRvRTlndm9pQWZUY3I3c2tY?=
 =?utf-8?B?S1U4VkdPZUV1cWZ0ck9UMm1HVzdnLzFEbTV3RWRoU2dMNjNaTzhJaUZKaTRh?=
 =?utf-8?B?V08vaEpZNXRZeHlkeU50cFhmMFNlMGt3K0Q3dnJHdExxU1NFSUtGL3o1bnRj?=
 =?utf-8?B?VFArYlUwR1luQUZPT1NPZmpKZnhxcTBoOFd6UXVFMGVXdDJKZGJFbFBtckNY?=
 =?utf-8?B?R3RWUHZWSFNiTmhoMkRlcjFNNC9oOWdXK1VwYWxHcVlUM1VhVUdEZWhnUytx?=
 =?utf-8?Q?v1x7jZkbm3BbI4Mtoz?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69f4f797-4646-4658-8b41-08ded5c016cd
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 09:23:32.8967
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aR+b0VKbixsYybSNhlJNYwDaJWNvku5i0NodG45M3BcGziz9UjtEghaMLpaCalAa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6863
X-Spamd-Bar: ----
Message-ID-Hash: 5JY4WZQFNFBXACT35KAPNTLWR7WRRKEG
X-Message-ID-Hash: 5JY4WZQFNFBXACT35KAPNTLWR7WRRKEG
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: dma_fence cleanup/rework
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5JY4WZQFNFBXACT35KAPNTLWR7WRRKEG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:tvrtko.ursulin@igalia.com,m:dakr@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[amd.com:-];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 567BE6D81C7

T24gNi8yNS8yNiAwOToyNSwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiBPbiBXZWQsIDIwMjYt
MDYtMjQgYXQgMTM6MTMgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBUaGVuIHRo
ZSBsYXN0IHBpZWNlIGlzIGRyb3BwaW5nIGNhbGxpbmcgZW5hYmxlX3NpZ25hbGluZyBjYWxsYmFj
ayB3aXRoIHRoZQ0KPj4gZG1hX2ZlbmNlIGxvY2sgaGVsZC4gVGhpcyBtYWtlcyBpdCBwb3NzaWJs
ZSBmb3IgYmFja2VuZHMgdG8gYWNxdWlyZSBsb2Nrcw0KPj4gd2hpY2ggYXJlIHNlbWFudGljYWxs
eSBvcmRlcmVkIG91dHNpZGUgb2YgdGhlIGRtYV9mZW5jZSBsb2NrLg0KPj4NCj4+IFRoaXMgaXMg
bmVjZXNzYXJ5IHRvIGFsbG93cyB1c2luZyB0aGUgZG1hX2ZlbmNlIGlubGluZSBsb2NrIGluIG1v
cmUgY2FzZXMsDQo+PiBwcmV2aW91c2x5IGJhY2tlbmRzIHVzZWQgc29tZSBjb21tb24gZXh0ZXJu
YWwgbG9jayBmb3IgdGhlaXIgZG1hX2ZlbmNlcyB0bw0KPj4gZm9yIGV4YW1wbGUgbWFrZSBpdCBw
b3NzaWJsZSByZW1vdmUgZmVuY2VzIGZyb20gbGlua2VkIGxpc3RzLg0KPiANCj4gSGkgQ2hyaXN0
aWFuLA0KPiANCj4gdGh4IGZvciBhbGwgdGhpcyB3b3JrISBJIHdpbGwgcmV2aWV3IGFyb3VuZCBh
IGJpdCBkdXJpbmcgdGhlIG5leHQgZGF5cy4NCj4gDQo+IEZvciBjb21wbGV0ZW5lc3MsIGxldCBt
ZSBhc2sgaGVyZToNCj4gSXMgdGhlcmUgYW55IHJlbGF0aW9uLCBvciBhbnkgd29yayBpbiB0aGUg
cGlwZSwgd2hpY2ggeW91IHdvdWxkDQo+IGNvbnNpZGVyIGEgZ29vZCBzb2x1dGlvbiBmb3IgdGhl
IHJhY2UgY29uZGl0aW9ucyBkZXNjcmliZWQgaW4gdGhlc2UgdHdvDQo+IHRocmVhZHMgWzFdWzJd
Pw0KPiANCj4gDQo+IFJlZ2FyZHMNCj4gUC4NCj4gDQo+IA0KPiBbMV0gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvZHJpLWRldmVsLzIwMjYwNjE4LWxpbnV4LWRybV9jcnRjX2ZpeDItdjEtMS1jMDNl
NzdiMzZmMzRAbGluYXJvLm9yZy8NCg0KTm90IHlldCwgdGhpcyBpcyBqdXN0IHRoZSBzdHVmZiB3
ZSBwcmV2aW91c2x5IGRpc2N1c3NlZCBzbyBmYXIgYnV0IG5ldmVyIG1lcmdlZC4NCg0KSSB3YXMg
dGhpbmtpbmcgYWJvdXQgYWRkaW5nIGEgZmxhZyB3aGljaCBwcmV2ZW50cyBzZXR0aW5nIG9wcyB0
byBOVUxMIGZvciBpbXBsZW1lbnRhdGlvbnMgd2hpY2ggZG9uJ3QgZGVzaXJlIHRoYXQuDQoNCj4g
WzJdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC9mYTBkYzk3NTdiZjgzNDM1MTZj
NGIxNTZhMmI3MGVjOTFiNjRlZjhmLmNhbWVsQG1haWxib3gub3JnLw0KDQpZZXMsIGl0IHNob3Vs
ZCBiZSBwb3NzaWJsZSBub3cgdG8gcmV3b3JrIHRoZSBoYW5kbGluZyBpbiBub3V2ZWF1IHRvIG5v
dCByZWx5IG9uIHN1Y2ggYmVoYXZpb3IuDQoNClRoZSBrZXkgZm9yIHRoaXMgaXMgcGF0Y2hlcyA4
IGFuZCA5IGluIHRoZSBzZXJpZXMuIFdoaWNoIGFsbG93cyB5b3UgdG8gaGF2ZSB0aGUgY2xlYW51
cCBkaXJlY3RseSBhZnRlciBkbWFfZmVuY2Vfc2lnbmFsKCkuDQoNClJlZ2FyZHMsDQpDaHJpc3Rp
YW4uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
