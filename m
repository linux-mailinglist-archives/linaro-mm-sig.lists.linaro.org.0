Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBI1IJiRy2nMJAYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 11:19:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B14366E7C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 11:19:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB09F3F96E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 09:19:18 +0000 (UTC)
Received: from SJ2PR03CU001.outbound.protection.outlook.com (mail-westusazon11012017.outbound.protection.outlook.com [52.101.43.17])
	by lists.linaro.org (Postfix) with ESMTPS id 020363F719
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Mar 2026 09:19:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=eRKIiYb7;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.43.17 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m78rCI/Dm/7ILO8SLWAIzwpCYLV/qX+t3ZDjkp/BHhOIOGn9bL7WRWsDZiQsRrFk/2TDe1BrSXgFcZkQiLPZcPHA3IA+rw1Rgis9tYOBqQNPlqDqwax1SVurawWSNaVAinuls+ZtyWQEpQNa2G268aObeiG/SzrtrlWO6DU/oiFEowjFxdVZIbFYE+Fq2mpIYxwjmIpDXVQ/cuOAeyaA7WkTjywF4X/wLomB9GS5dyS3CvM+Jr7tZO4oZIIsVnyMlQkw5B+uefJDfRVCwLTqNFaXpW4A+4qKSFenZCuxANJOvdOc1dsCuYlXW0OdkscliBgGpp0PNhjeJMjQqVzeZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8uRDj9ZJSeo61OSR7kE63DPMeClXfmvzISg+YAdnjU0=;
 b=pwT4CHQPI9OTqZ2QgxF57HBfk9O2n2ZLg9QiSyJPyUSBS8G9+rUoeucDwwfVKdjHQg3a6KSessIDK+TKUk/BCwdUsUw2EmIb3CjuT6Qfc95HxKrSJ+cQVs40F++FbyIvXQM5t6U1Lxc5jx9GYAvz9/RNH13l5yy4h7UHZlcYpLTMrkGwkhgiksdRHwkvLsdG6B1NrUPu7dU5VHzXWr9qvzW24ry5rK2ENaQEbiC46ZFfvMlsGvBRbRqGf5qnKI0f5x9X6DdN1q0yUjN6aiOhpJdqlHN6CliinfypyS8JMBx+m6DLkdeJYh+kjlEeOW/YTV81FJzkfGg3B6rHNGikDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8uRDj9ZJSeo61OSR7kE63DPMeClXfmvzISg+YAdnjU0=;
 b=eRKIiYb7z/ggAcQ/zbTH0vRwV6VvqoC8u5OH/2ZJUyEGE3m8g1xGvXv94RAe0dLEInRVGqjp5WtlLuLScg/opCUVrVxMUV+ABEXh1lJPxSs2MP02Ph8v6kyRvin3ym+CQZBo/5rTQtG7eIpuSHTHd6pJZh6i6vW5XnX0nDMvnn8=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA1PR12MB7040.namprd12.prod.outlook.com (2603:10b6:806:24f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 09:19:13 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 09:19:13 +0000
Message-ID: <d3e186a8-d807-4e4f-ac63-806aefea2b68@amd.com>
Date: Tue, 31 Mar 2026 11:19:08 +0200
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 dri-devel@lists.freedesktop.org
References: <20260330133623.17704-1-tvrtko.ursulin@igalia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260330133623.17704-1-tvrtko.ursulin@igalia.com>
X-ClientProxiedBy: MN2PR11CA0013.namprd11.prod.outlook.com
 (2603:10b6:208:23b::18) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA1PR12MB7040:EE_
X-MS-Office365-Filtering-Correlation-Id: 828ba407-1eeb-4e2c-c689-08de8f0692c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|376014|366016|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	6tFJC6ekD+D3FNC4UUuP5oD9lE/ekWV5JZq/P2YpXirA5qN2VYQZ+/Vdq7ZagwuXD6+K/kZth5GTM62KRvZ9Th66+dRCqr3bdpWkUPBYL8Qm+Znq59fxBJBNbxJX1X8BP+adLW/SofSqshdHcw7HIwJ6FyRPnaBlmWia5HRDJZv5P0pVsKLqbs/V2URa4+5htkiY1/nYwJXX+5+fpAdKxRH1OCrBm8cHbNEeWGENdWX01SVlfOhGj1WljC+k8dcsS6iFl2MOmAem/CT3qUzJYwW2utiCbabWKdsP/mw/4DGiF2UzUWDSgR3F5qA9cI+cOUTObbfemmClh8r6u9ktXFoFwc9FAr2xefXkJn0cREK86I1d0IewxFUy0kOvyJwG+EC5cW3R9K+uxgcYq0X6oR6csj66rt2rYhLf4b9wVQ4L/Sa87RgMqXqwF5g6pQadMbdLwCqxMvHBOpgOi0+iOr2IDiUkbV4n8GZ3klIn36UW/smkSVXBqcobj7uGKjH4qbAVtPbkzXmKmpYupC5yfTXhIjK/gzs6seYsvrQ83DBqukEBA5QEFo6933DLnye2NOIR0Xx+gYoEQWLzXPM6UWMLfL4K2uOioDpA9wW3y75y2pJGlOJxNfayp9cNqIWDsi0ls6aVoF6CEv56lqKDeuCrkds2NDNQEb9t8IxKx2Us5KE6znsPR/TNL279Zb0Pi8YOVWz/W9AJr61F6Jn2MUovWsiAGUJXDdUC60kC83k=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dnp5bWFhcDBWQmxjc0FOWmxqNHJXT3ZJbjE2K21uUm5ZYmp1YTVOY04wanBM?=
 =?utf-8?B?YVB3UWZoREtLdVIwOGlVQXcrTEYzbVBzaFdqU3BMSWxIaVlPbm95ZDR3Sndn?=
 =?utf-8?B?MllxS1kwV3V1cFZhY2ZwNjJHWXN5V0xyMktRMWt2a1BUdnVVbjJmTWhEZ0Iz?=
 =?utf-8?B?RCs2aWd0TmtrSUI0d2VXSHRTQi9sYjNZWUJDUVhPT1Yzc0pNVkE0aThKSTdl?=
 =?utf-8?B?NWs2dXAzbDhnL0dJWGdhb2FTL09ZWCtDYkpOQlBvU3V4TW44NzRtSFVlRzdR?=
 =?utf-8?B?Wk8yZE01UFpxQzNLN3h4Y1ZCdDkzREJpNjQxdnhEOU5IOXNhcUNJbkI4N2t4?=
 =?utf-8?B?d04vVUY0UlY2VEJRRmhFc0MyZFdSaXdxdTgwYWwwUEU5eUhuMTdJQ0c0ZW5O?=
 =?utf-8?B?TDk5SVRRVFNDeXFhSkVDbmFjYkVHWVRvSzZPOVp6V2pkSzgyL3Q2ZTI1OSt6?=
 =?utf-8?B?UmttUTlTRWkwaEJNODM0ZzV0dnIzUVJTTXJiTE9xdnoyNFNtWWRzUkZ6RUxD?=
 =?utf-8?B?VCtvOUtwYlJlMWo0eGhCTG8xd1dBeDlGYmJjTUZUQnlCYVR5aFJlcnM3VlJY?=
 =?utf-8?B?S1c4SENqU0Z6cEs1bmd2UVRiUDR0QTdZM3E1b2p4VFBBNisxWmFMOEE3Yk9u?=
 =?utf-8?B?bVFMZHpPaEdFZkZ2TWlDL0ZtY1Zzb3JsZTdhQ1N5SFVZc1hjWmxGYnZPWjFH?=
 =?utf-8?B?WmQyT1JveldQcHEzSXRvai8wL1QzZmxDVTJ3UW4yN2lpWTZIbXBLbnVGRE53?=
 =?utf-8?B?bUVZcU5OcFpyT29nbmRsejBHWllIRFVsOVpqWVVTQ3lZN0p3VnUyT01IM1Ru?=
 =?utf-8?B?N1E0UnluVVEwK2VhMitYYUZiNFJtU2h4VVBJeUVjWWRZNjFoSU9LUDVkTTBP?=
 =?utf-8?B?cisvYmJLVEY1TTBTTTlWOWNEcXFocFVYY3lRbHRjZDY4WlhIa1NBSlduTGhv?=
 =?utf-8?B?dXJUYURoVEwxVndvakg3Vk9SWGZEcUo4YVphTTFwS2V4MWtnc0tqaGlJRXpa?=
 =?utf-8?B?ZHB4V201UjBNTExxdmtsWHhGU0c5VTQ3QkpPUVRaNzl4dndqWmtZMTVDeisv?=
 =?utf-8?B?KzRqd0hTQ1MvRTJBSlZ0K0YvSUcvOTZiUW5MNkpDeUV3MUpBdjNMSUc0SU9L?=
 =?utf-8?B?RDEwVGZPNVY3dlZVK1FzWHNES2U5SVdhRytCaGIwK05MbnZiK3Bla21LYVZL?=
 =?utf-8?B?WkI3US9Zb21CS0pURkxPdjM1dVFNaGxKU20wKzZXYmFJZ3ZramFDSVZ5QnJk?=
 =?utf-8?B?bnh2S01sWTJzcDlIaXV6dHZ0czFNSERmWWdvbUFlalZNeCs0TXAwMTJSM0ky?=
 =?utf-8?B?TU5NZXlDQ290bXVpcDUzclhuNi9YQnhTNXlyNGVIRkI5V2I5em5QeUNNQ2xw?=
 =?utf-8?B?RldWVG9oUlJiS2VNcmNTaUdtR2kvVGFaRFhZS2tsajBIMzhDaHFCR2ZEV2pw?=
 =?utf-8?B?NW0wVkZHcTc1Zk1TZjRtWUtrZ21VeG50YzJ2cXpjdUc5N1pncHA2TkU3UTZU?=
 =?utf-8?B?cHJFRGg2R2NVeWY3ZWdMdFltUFRBb1FWOWpFb1RLeHhvVDN5dUZMN3VqS3R2?=
 =?utf-8?B?VzVtSkJXSkhCZDZ2bnB6OFZQTk5INmVYbzdhNnZ6Y1NLVm1BdWVQRnUvdkk1?=
 =?utf-8?B?NHhCMUFwMFVLVlQ0eVd6YmVVQjVKeHhpbkIyT3gxSDVEbGpJUHdDeVFCZ2dh?=
 =?utf-8?B?MzJTOFdISk9WT3BMR3ZNTldKbU1ZcDFPbnRXSmM2RzFKWGo4TUNSYkNRbThu?=
 =?utf-8?B?RW93VjM4WkgyQTJXRzB4R010RXVxQTBJM0RFZjZnUm00RXJVUHFxV0FiZVM5?=
 =?utf-8?B?WHE0NitjTm53TCtPaGFwemkvRmljUXlBWDZwZmdNMDdsTmtGUmFDU0xCQTE1?=
 =?utf-8?B?and4M3ovSjdDV1NUTmpQenNRUTd2NlA4eUpZb2RhUE9PQ0VhYlNuNUlhMnJO?=
 =?utf-8?B?RkpZUzVKZjNMTUtiSThmbGFUeHJsVzhWem9aM2lQRXB0TGJHWVR3OXlzTUds?=
 =?utf-8?B?VENpMjFBbGp4WVlxZWlaamNhNnVJRkpCWW1FVTh5c3pNU0ZTVjF4S1hhMXVu?=
 =?utf-8?B?ZmtDY1VMVkNrM3ZWakJYMXdnU2NwRVRPbFdHczRObm9JbU1xRitTZ1pCRk9Y?=
 =?utf-8?B?VlVuVnUrMEFUL082YkxMbFBJR05BbVlOYWdkdHY3Y01nZWhjOXlJaWhiUEZC?=
 =?utf-8?B?d08xY29kNmc3N0xDcTkxVjZvQ210dld1ZnE2emZjMkRYRTRYYkk0QjM2N013?=
 =?utf-8?B?bGlVRUxiQi81UzJWRWNVMEQzdmQxTE1DaTNSYU1KRG8ybmE2dWwvSUpFSDZq?=
 =?utf-8?Q?gLdPavmV1acY6oXA1W?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 828ba407-1eeb-4e2c-c689-08de8f0692c1
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 09:19:12.9226
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9hwC83UvFQCD4d3eFz1Zxm5FB60bDn+ZLHvR/we032aGtyEyv1UGwNPO4pPgsOr/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB7040
X-Spamd-Bar: ----
Message-ID-Hash: NSK5QYMUMNJ6YBQZXTRBPJTQFGGYOYUH
X-Message-ID-Hash: NSK5QYMUMNJ6YBQZXTRBPJTQFGGYOYUH
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: kernel-dev@igalia.com, Philipp Stanner <phasta@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Move signalling tracepoint to before ops detach
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NSK5QYMUMNJ6YBQZXTRBPJTQFGGYOYUH/>
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
	NEURAL_HAM(-0.00)[-0.948];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,amd.com:mid,igalia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 03B14366E7C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMy8zMC8yNiAxNTozNiwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+IE1vdmUgdGhlIHNpZ25h
bGxpbmcgdHJhY2Vwb2ludCB0byBiZWZvcmUgZmVuY2UtPm9wcyBhcmUgcmVzZXQgb3RoZXJ3aXNl
DQo+IHRyYWNlcG9pbnQgd2lsbCBkZXJlZmVyZW5jZSBhIG51bGwgcG9pbnRlci4NCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpZ2FsaWEuY29tPg0K
PiBGaXhlczogNTQxYzhmMjQ2OGI5ICgiZG1hLWJ1ZjogZGV0YWNoIGZlbmNlIG9wcyBvbiBzaWdu
YWwgdjMiKQ0KPiBDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KPiBDYzogUGhpbGlwcCBTdGFubmVyIDxwaGFzdGFAa2VybmVsLm9yZz4NCj4gQ2M6IEJvcmlz
IEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+DQo+IENjOiBsaW51eC1t
ZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
Zw0KDQpHb29kIGNhdGNoLiBJIGp1c3Qgc2lsZW50bHkgYXNzdW1lZCB0aGF0IHRoZSBmZW5jZSBp
cyBub3Qgc2lnbmFsZWQgd2hlbiB3ZSB0cmFjZWQgc2lnbmFsaW5nLg0KDQpHb2luZyB0byB0YWtl
IGFub3RoZXIgbG9vayBzaW5jZSB0aGVyZSBtaWdodCBiZSBtb3JlIHByb2JsZW1zLCBidXQgZm9y
IG5vdzoNCg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDMgKyst
DQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS5jDQo+IGluZGV4IDE4MjZiYTczMDk0Yy4uMWMxZWFlY2FmMWIwIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gKysrIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS5jDQo+IEBAIC0zNjMsNiArMzYzLDggQEAgdm9pZCBkbWFfZmVuY2Vf
c2lnbmFsX3RpbWVzdGFtcF9sb2NrZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQo+ICAJCQkJ
ICAgICAgJmZlbmNlLT5mbGFncykpKQ0KPiAgCQlyZXR1cm47DQo+ICANCj4gKwl0cmFjZV9kbWFf
ZmVuY2Vfc2lnbmFsZWQoZmVuY2UpOw0KPiArDQo+ICAJLyoNCj4gIAkgKiBXaGVuIG5laXRoZXIg
YSByZWxlYXNlIG5vciBhIHdhaXQgb3BlcmF0aW9uIGlzIHNwZWNpZmllZCBzZXQgdGhlIG9wcw0K
PiAgCSAqIHBvaW50ZXIgdG8gTlVMTCB0byBhbGxvdyB0aGUgZmVuY2Ugc3RydWN0dXJlIHRvIGJl
Y29tZSBpbmRlcGVuZGVudA0KPiBAQCAtMzc3LDcgKzM3OSw2IEBAIHZvaWQgZG1hX2ZlbmNlX3Np
Z25hbF90aW1lc3RhbXBfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0KPiAgDQo+ICAJ
ZmVuY2UtPnRpbWVzdGFtcCA9IHRpbWVzdGFtcDsNCj4gIAlzZXRfYml0KERNQV9GRU5DRV9GTEFH
X1RJTUVTVEFNUF9CSVQsICZmZW5jZS0+ZmxhZ3MpOw0KPiAtCXRyYWNlX2RtYV9mZW5jZV9zaWdu
YWxlZChmZW5jZSk7DQo+ICANCj4gIAlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUoY3VyLCB0bXAs
ICZjYl9saXN0LCBub2RlKSB7DQo+ICAJCUlOSVRfTElTVF9IRUFEKCZjdXItPm5vZGUpOw0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
