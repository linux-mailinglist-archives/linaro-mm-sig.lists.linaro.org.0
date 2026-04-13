Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cEduFlTU3GmcWQkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Apr 2026 13:32:36 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B81DB3EB551
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Apr 2026 13:32:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 86654404C1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Apr 2026 11:32:34 +0000 (UTC)
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013046.outbound.protection.outlook.com [40.93.201.46])
	by lists.linaro.org (Postfix) with ESMTPS id 420BA402AE
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Apr 2026 11:32:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="R7HJA8/L";
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.201.46 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XpSjLD0V/8GnRH6HBMLtSWBeuKXrobS+j3VJqn+G1oYp6gTGdSUdDqZCwuXLzKgY7wHX9wtEBfWTi0HcIN9XHdgEUCFfsPd82aAA832cdNjIlUblC/uu4GyYsQsh6JhF2wGzs452tb8EoaPBnXCByu3sjm3guLu8Y39WtZ33t32RM6uvvGzhFDQVSC1Ny/WkFfw87DGogEwk3qgZczgt0+2lhOnWYb9Ct6R8fY3qezJKK67cVetLoHDwhqeZJXriXdxHHyT0du7RklBJ2gLPO/A7DnxWKO34o4aSaHd4vhCTIIBApw7MAvFNkJfOF8OCQqH1CKyE731bLFUGC9xOtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DvJr9g1J2T/adJC3ASFCePzpM4bIfVtLnkBeBvR5dw8=;
 b=WpqjoLoCe1Z9cd8OiiQCkYD7Hw81T1CwM4/3/bccNI76nIeHjRsy2IjHzsJ7oFgqALacs1kSU0NkYR62DUeADwXZec2kOsslQtNJb7p2E6gnBcoI8xOAph+ZjVVyzyAfaXdZWJstEgZTSRo8sV4K9XtNPd4iINo4LKrGzfeinXvKBkbJ/OzK1/VF5R+WU7HV0CVUbKbp7ReAZw/i20FxTdfmRJ8Br70fGMI6eOXQV1R160DmhIpL/dB3+01OA44e9HIXUDUV55Gn4f7YLz5tG0hCvtsobIBytstOEPOAUu5qbRXq5rQjphZ9yJLU+tml7QocyCh4NLI/eItiyG3k7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DvJr9g1J2T/adJC3ASFCePzpM4bIfVtLnkBeBvR5dw8=;
 b=R7HJA8/L3huXqgf1sK4gxxLOBpqFv1qDNkpIeCnkDPkLQM6lDR7jB+kKCbNFRi64dNGMjWXOK+JDaaTX4hsCc4Ff0lq6NnokZwWP6yGqfJVOXfeNfZNQ5XsTWM9tpPW/bhqg4loYKdaaovKpEY9DHlMR06HhCAAHSm9OKIezPxc=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA0PPF0C93AC97B.namprd12.prod.outlook.com (2603:10b6:20f:fc04::bc7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Mon, 13 Apr
 2026 11:32:26 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 11:32:26 +0000
Message-ID: <db5342f2-c098-4b27-9522-8b1f78fdc43a@amd.com>
Date: Mon, 13 Apr 2026 13:32:21 +0200
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 dri-devel@lists.freedesktop.org
References: <20260413100526.15729-1-tvrtko.ursulin@igalia.com>
 <20260413100526.15729-2-tvrtko.ursulin@igalia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260413100526.15729-2-tvrtko.ursulin@igalia.com>
X-ClientProxiedBy: YT4PR01CA0368.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:fd::9) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA0PPF0C93AC97B:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ee53bd8-5e18-440f-9eea-08de99505672
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|366016|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	06aum62GeSzHWuNavjYUjFyXJBtWS5i9RDCqpgdzlmx57sRBUxyDb/uj4QIrCK21xTaxL8tS7pAwRdVT27AxrjNrNZW2SwM7zoOjbQmy9/y0OZIct5crvItWVZQLL83phG455AuQ/5nWDJ6vSfaa3r6lcGeglvaZWIIB0pJEi4FEySESiNVSl8yyzNLh8LKdWJnY47jExt/zS6qprFPNC0Tfw3qt3inF+bVcQgNUAQpC8VnI1ZSTrS0UiQEQbdHFYHDugxYdHxGqJ5TFjqaDdA75joDHuKfEi3JP2aJOXTTm1w1kJNUH7eFTFPrvuSmnEVhSAju2jpM+Y8NwAFGPcJo8F35bTpErlRHSvXKrBWl9e14bFIL3FsF6l0XsrFdJJx2XwL93jdpl24k3JVDIPR20TDkixKzpygvcWT4k+ITs5BcVzOzJFc4mJFGxKW0B70uclqzUjjJhv8lKHyJKxRx5OE17Z0gu1Di1CtM8cbQ9vKy57JbJKPK3e6dot74G5/wHr7uXsWAfzGyROOXpPiS+mAqYe5SOJ7JMuKobtQHV0kwHCq337u0JapIBh1eQQL3MMIeWs08VrCRDka2aP16koUsCGYO+w+VKmXeUSBSxBP0HBDzsXuYzIzYve7KgfjUPgwZgSOizo2SOnfXvk/juqLLMeI7ZynmChZoQvs9vIONQysRSYPIJ4uALmyn2Gzkn2YQUw5j/7F7AEEeBvQ+4TzO5WIfh2x9oQxK7jO0=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ekxlaEtYbDV6VkdFeHZ5WXp1dkNIMzIwVjlPcnNuRGRQY1h1b01tc3NBdXg5?=
 =?utf-8?B?dGQ0QXNaK0s5YWErZENqZ3owRHhEKzhoMldEd2EvL0hNQWVhZlJCQ3VVeE14?=
 =?utf-8?B?R2xqVHQ0Qm5EMTI4cnlYbGs1RmxCU05RNWZCR0h0TC9GckZwTGV2UjBUVTNk?=
 =?utf-8?B?d3pCdFVmRWphM3llam9sYkJWMlg2TDdQWDZHL1hRVm5vY3ZMVVlKVEhRVjZ4?=
 =?utf-8?B?MUZnQ0g3WEU3OW1wRU5Xa0tpTm9aZmR2RmZYR0lBaGJwdEp3SVRmQ0VxZXJr?=
 =?utf-8?B?VnZWVnJtUTRFR3VDbm5yYXBKNTFyU3VRdlpXcmM1aWdRRGZGYmdyTG8yakcz?=
 =?utf-8?B?dTFhYVF3c2djaWs1UGx2TnVtQ2VoVjc0blZsMHRnbXQ0TzlDUW5xTmtOeW9q?=
 =?utf-8?B?Nk1jbVFKby9MQUc4a3NTckVrd3EycDdhVWJNZS9qVTBRUnkxVTQ2a2xTdXl2?=
 =?utf-8?B?MERrVkQvNDdsMnA1bDlxK1VjM1dJM2xvMGRUVVhjSDl0c3hqMU1ad1REck9X?=
 =?utf-8?B?NzIxbEJ6aVNYUndVQW5aTENKbGhMNlZpaGQ0UXJzYUI3ZVdKOFJhRS8yQlox?=
 =?utf-8?B?WUlON0V0QjZzQkkzN1c4eVV1OFZWR3VwZE1CdVJ6eStZQUxtV0VLcXNLK0hJ?=
 =?utf-8?B?Wnp4RzdXU28zZ21CeEJGTGs1b05BTWI1ZlE3Vk5lNkk2cXpldlZCOGlQWXpl?=
 =?utf-8?B?Tit0L2g0VTRkbGVpb3lqWkFTRW5CdnFLZDlJTjZqRTZHa0c5a2lRQXAvZmJO?=
 =?utf-8?B?Y2NxbnlzTHFha2NDUHI4SnNZczVLNFZxdUo2R09hVDlxaW4wbk9qRkZZTnYw?=
 =?utf-8?B?YkI5MEFwblBYN2gzYVlDYnlvQ0NoWTZRRDZnSm40OHU5c2FuQnNvOTJxYlNG?=
 =?utf-8?B?bjl4V01abGdlekh1anFYZklJcDZPY3U4eXRJSThYa0lPaStncFFLUUtZRkpJ?=
 =?utf-8?B?ZUZLaFV0dUtmQVhwL1VNRVZDNVR1MjRYckFmdEVJTm4wSUNtQ2NYRy9haFV3?=
 =?utf-8?B?SGdDVDZBd1BvTXpqUXRMYk5hQTNwRTdqd21KbVZkZWU3MU9YL21wMEZGM3Ay?=
 =?utf-8?B?OG9mcFU2Q0sreERzUmo4VTQ0N3JpUEw3T3ZCelRGVTZxK05FMk53TzhZT1Zr?=
 =?utf-8?B?ZFd1ZEhtYkw2dE41VE9NVncxMXVCSE84TXVuUGd6aGJuU1JKQi9XeW5Vdjkw?=
 =?utf-8?B?SWJsaWwzaEowL3FUOC9sOEtMRUlHcHhoTlhnRFpxNzhveS92eTdlN0FxUW1l?=
 =?utf-8?B?eXIrVUtXREZKZjkxZDRkWUxwbmc2U3U4dytLYUlZWHJGZ3FOQmhmQ2ZuT2dV?=
 =?utf-8?B?OTBueDlUSTVRUVZrUEV3TEx5MU0vMmw0ZTBsOU5xamFEcVFRTzYwRWZzeWU4?=
 =?utf-8?B?OXQzWEFEZmZjcEtYLy9nWVVuNUl3VGJwWFRwSG9rcHlJRHlqblByejRNY25u?=
 =?utf-8?B?UjZjR0xvMHZObytJd3NxNEtNL2VtdWJvTWtuMkpCSVRxODV4R0x4QjNEZEpv?=
 =?utf-8?B?cHdNeXlxY1F6UTR5akxrOG1jSG9YQ3dWU1g0YTZ3RytjdXdsVkZaNmppV3Ex?=
 =?utf-8?B?UjV2d3ZVWnFjWFFpUDNXMWxERkFDYzFCVWgzN2JzTmpaV1p2UDhRTE1JbUFy?=
 =?utf-8?B?TnRPb3JNc1BTZlc4OGZnRjVqSVZEZWJsdU1BS1dhenRNSFhLaXo0U0J5eVVu?=
 =?utf-8?B?UGYyNmJHWWNrdWU0VmZnM3VrbUZvK21UVEp3cXc4UWpURmYzQldOVTB2UzMr?=
 =?utf-8?B?N2NWV0U1RGoxQnlUNVJ0dzF5SUZOMThidFFlMU1RYVlJc3FGdW9GYWhKY0Ev?=
 =?utf-8?B?VzRXMEJWN3FpaHk1T1hyN3BubVV3NUo4OVdwTzdjZnI0b0lKMGNwRi9nUjJj?=
 =?utf-8?B?V2EvVjA4QTJxRFl5RWJQSWlKTTZKcHIySURTZC9OZGRtY005clJKVFlIcEFj?=
 =?utf-8?B?YXk4bFE3VXVKZ2I0VW9iUmMxUkZueHZLK0szK3JCT3pLQisrZ0FPcHZTOWhS?=
 =?utf-8?B?eXYyeWJNUmNuVGRGcUcxazZGU3FKbXZCcUdaVEtxVllGL0w3UDdjb3FZZXFq?=
 =?utf-8?B?WTcySEdSMlZPa2NhTHBKOFhib092T0ZWT0w2UkJkM3QrZjZ6TEp1cmNGZURq?=
 =?utf-8?B?emkzdTZOeTBrVTdEYUp0OGhiTm9iVDR3WE5VSnQwUmx2akUyZlc5Rm90bXIw?=
 =?utf-8?B?c2ZaTEx5OEkweWlsaE1XSWJHdW5RbmwzZmtndHVXRlpHMVdUU1pPTloyVVBv?=
 =?utf-8?B?OGpBbUpNemZqY2U5VUVyM1h0eUREdWhmWU40NUlEUTd6Qm9RdXo2aHMzMHov?=
 =?utf-8?B?UmtNVDQrU01IbllKUk1PMFNPMlVBM2MwOUR1YU1scGxCMW1VcEw2dz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ee53bd8-5e18-440f-9eea-08de99505672
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 11:32:26.1548
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l7NEBZkPXeX1Kk1mOpy5oBhMEAtfs5l+bYTus+2u2qiu86790siqs7kRVz2vWDdJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PPF0C93AC97B
X-Spamd-Bar: -----
Message-ID-Hash: XDTZ6ZDOXHFY2DHUEWOYLLWEGPOOP3GW
X-Message-ID-Hash: XDTZ6ZDOXHFY2DHUEWOYLLWEGPOOP3GW
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: kernel-dev@igalia.com, Philipp Stanner <phasta@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/3] dma-fence: Fix potential tracepoint null pointer dereferences
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XDTZ6ZDOXHFY2DHUEWOYLLWEGPOOP3GW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,amd.com:mid,linaro.org:email,collabora.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: B81DB3EB551
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNC8xMy8yNiAxMjowNSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+IFRyYWNlX2RtYV9mZW5j
ZV9zaWduYWxlZCwgdHJhY2VfZG1hX2ZlbmNlX3dhaXRfZW5kIGFuZA0KPiB0cmFjZV9kbWFfZmVu
Y2VfZGVzdHJveSBjYW4gYWxsIGRlcmVmZXJlbmNlIGEgbnVsbCBmZW5jZS0+b3BzIHBvaW50ZXIN
Cj4gYWZ0ZXIgaXQgaGFzIGJlZW4gcmVzZXQgb24gZmVuY2Ugc2lnbmFsbGluZy4NCj4gDQo+IExl
dHMgdXNlIHRoZSBzYWZlIHN0cmluZyBnZXR0ZXJzIGZvciBtb3N0IHRyYWNlcG9pbnRzIHRvIGEg
dm9pZCB0aGlzLg0KPiANCj4gQnV0IGZvciB0aGUgc2lnbmFsbGluZyB0cmFjZXBvaW50LCB3ZSBt
b3ZlIGl0IHRvIGJlZm9yZSB0aGUgZmVuY2UtPm9wcw0KPiBpcyByZXNldCBhbmQgc3BlY2lhbCBj
YXNlIGl0cyBkZWZpbml0aW9uIGluIG9yZGVyIHRvIGF2b2lkIGxvc2luZyB0aGUNCj4gZHJpdmVy
IGFuZCB0aW1lbGluZSBpbmZvcm1hdGlvbi4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpZ2FsaWEuY29tPg0KPiBGaXhlczogNTQxYzhmMjQ2OGI5
ICgiZG1hLWJ1ZjogZGV0YWNoIGZlbmNlIG9wcyBvbiBzaWduYWwgdjMiKQ0KPiBDYzogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiBDYzogUGhpbGlwcCBTdGFu
bmVyIDxwaGFzdGFAa2VybmVsLm9yZz4NCj4gQ2M6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJl
emlsbG9uQGNvbGxhYm9yYS5jb20+DQo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcN
Cj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPiAtLS0NCj4gIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UuYyAgICAgIHwgIDMgKystDQo+ICBpbmNsdWRlL3RyYWNlL2V2ZW50
cy9kbWFfZmVuY2UuaCB8IDI5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKy0tDQo+ICAyIGZp
bGVzIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS5jDQo+IGluZGV4IGEyYWE4MmY0ZWVkZC4uYjNiZmE2OTQzYThlIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS5jDQo+IEBAIC0zNjMsNiArMzYzLDggQEAgdm9pZCBkbWFfZmVuY2Vfc2lnbmFs
X3RpbWVzdGFtcF9sb2NrZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQo+ICAJCQkJICAgICAg
JmZlbmNlLT5mbGFncykpKQ0KPiAgCQlyZXR1cm47DQo+ICANCj4gKwl0cmFjZV9kbWFfZmVuY2Vf
c2lnbmFsZWQoZmVuY2UpOw0KPiArDQo+ICAJLyoNCj4gIAkgKiBXaGVuIG5laXRoZXIgYSByZWxl
YXNlIG5vciBhIHdhaXQgb3BlcmF0aW9uIGlzIHNwZWNpZmllZCBzZXQgdGhlIG9wcw0KPiAgCSAq
IHBvaW50ZXIgdG8gTlVMTCB0byBhbGxvdyB0aGUgZmVuY2Ugc3RydWN0dXJlIHRvIGJlY29tZSBp
bmRlcGVuZGVudA0KPiBAQCAtMzc3LDcgKzM3OSw2IEBAIHZvaWQgZG1hX2ZlbmNlX3NpZ25hbF90
aW1lc3RhbXBfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0KPiAgDQo+ICAJZmVuY2Ut
PnRpbWVzdGFtcCA9IHRpbWVzdGFtcDsNCj4gIAlzZXRfYml0KERNQV9GRU5DRV9GTEFHX1RJTUVT
VEFNUF9CSVQsICZmZW5jZS0+ZmxhZ3MpOw0KPiAtCXRyYWNlX2RtYV9mZW5jZV9zaWduYWxlZChm
ZW5jZSk7DQo+ICANCj4gIAlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUoY3VyLCB0bXAsICZjYl9s
aXN0LCBub2RlKSB7DQo+ICAJCUlOSVRfTElTVF9IRUFEKCZjdXItPm5vZGUpOw0KPiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS90cmFjZS9ldmVudHMvZG1hX2ZlbmNlLmggYi9pbmNsdWRlL3RyYWNlL2V2
ZW50cy9kbWFfZmVuY2UuaA0KPiBpbmRleCAzYWJiYTQ1YzA2MDEuLjIyMGJmNzE0NDZlOCAxMDA2
NDQNCj4gLS0tIGEvaW5jbHVkZS90cmFjZS9ldmVudHMvZG1hX2ZlbmNlLmgNCj4gKysrIGIvaW5j
bHVkZS90cmFjZS9ldmVudHMvZG1hX2ZlbmNlLmgNCj4gQEAgLTksMTIgKzksMzcgQEANCj4gIA0K
PiAgc3RydWN0IGRtYV9mZW5jZTsNCj4gIA0KPiArREVDTEFSRV9FVkVOVF9DTEFTUyhkbWFfZmVu
Y2UsDQo+ICsNCj4gKwlUUF9QUk9UTyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSksDQo+ICsNCj4g
KwlUUF9BUkdTKGZlbmNlKSwNCj4gKw0KPiArCVRQX1NUUlVDVF9fZW50cnkoDQo+ICsJCV9fc3Ry
aW5nKGRyaXZlciwgZG1hX2ZlbmNlX2RyaXZlcl9uYW1lKGZlbmNlKSkNCj4gKwkJX19zdHJpbmco
dGltZWxpbmUsIGRtYV9mZW5jZV90aW1lbGluZV9uYW1lKGZlbmNlKSkNCg0KDQpUaGF0IHJlcXVp
cmVzIHRoYXQgd2UgaG9sZCB0aGUgUkNVIHJlYWQgc2lkZSBsb2NrIHdoaWxlIGRvaW5nIHRoZSB0
cmFjZS4NCg0KTm90IHN1cmUgaWYgdGhhdCBjYW4gYmUgZG9uZSBpbnNpZGUgdGhlIERFQ0xBUkVf
RVZFTlRfQ0xBU1MoKSBtYWNyby4NCg0KPiArCQlfX2ZpZWxkKHVuc2lnbmVkIGludCwgY29udGV4
dCkNCj4gKwkJX19maWVsZCh1bnNpZ25lZCBpbnQsIHNlcW5vKQ0KPiArCSksDQo+ICsNCj4gKwlU
UF9mYXN0X2Fzc2lnbigNCj4gKwkJX19hc3NpZ25fc3RyKGRyaXZlcik7DQo+ICsJCV9fYXNzaWdu
X3N0cih0aW1lbGluZSk7DQo+ICsJCV9fZW50cnktPmNvbnRleHQgPSBmZW5jZS0+Y29udGV4dDsN
Cj4gKwkJX19lbnRyeS0+c2Vxbm8gPSBmZW5jZS0+c2Vxbm87DQo+ICsJKSwNCj4gKw0KPiArCVRQ
X3ByaW50aygiZHJpdmVyPSVzIHRpbWVsaW5lPSVzIGNvbnRleHQ9JXUgc2Vxbm89JXUiLA0KPiAr
CQkgIF9fZ2V0X3N0cihkcml2ZXIpLCBfX2dldF9zdHIodGltZWxpbmUpLCBfX2VudHJ5LT5jb250
ZXh0LA0KPiArCQkgIF9fZW50cnktPnNlcW5vKQ0KPiArKTsNCj4gKw0KPiAgLyoNCj4gICAqIFNh
ZmUgb25seSBmb3IgY2FsbCBzaXRlcyB3aGljaCBhcmUgZ3VhcmFudGVlZCB0byBub3QgcmFjZSB3
aXRoIGZlbmNlDQo+ICAgKiBzaWduYWxpbmcsaG9sZGluZyB0aGUgZmVuY2UtPmxvY2sgYW5kIGhh
dmluZyBjaGVja2VkIGZvciBub3Qgc2lnbmFsZWQsIG9yIHRoZQ0KPiAgICogc2lnbmFsaW5nIHBh
dGggaXRzZWxmLg0KPiAgICovDQo+IC1ERUNMQVJFX0VWRU5UX0NMQVNTKGRtYV9mZW5jZSwNCj4g
K0RFQ0xBUkVfRVZFTlRfQ0xBU1MoZG1hX2ZlbmNlX29wcywNCj4gIA0KPiAgCVRQX1BST1RPKHN0
cnVjdCBkbWFfZmVuY2UgKmZlbmNlKSwNCj4gIA0KPiBAQCAtNjcsNyArOTIsNyBAQCBERUZJTkVf
RVZFTlQoZG1hX2ZlbmNlLCBkbWFfZmVuY2VfZW5hYmxlX3NpZ25hbCwNCj4gIAlUUF9BUkdTKGZl
bmNlKQ0KPiAgKTsNCj4gIA0KPiAtREVGSU5FX0VWRU5UKGRtYV9mZW5jZSwgZG1hX2ZlbmNlX3Np
Z25hbGVkLA0KPiArREVGSU5FX0VWRU5UKGRtYV9mZW5jZV9vcHMsIGRtYV9mZW5jZV9zaWduYWxl
ZCwNCg0KVGhlIHNpZ25hbCB0cmFjZSBldmVudCBpcyBhY3R1YWxseSB1bnByb2JsZW1hdGljLiBU
aGUgcXVlc3Rpb24gaXMgbW9yZSB3aGF0IHRvIGRvIHdpdGggdGhlIHJlbGVhc2UgZXZlbnQuDQoN
ClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gIA0KPiAgCVRQX1BST1RPKHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlKSwNCj4gIA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
