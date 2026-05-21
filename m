Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKq5HTTEDmqiCAYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 10:37:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EF75E5A1252
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 10:37:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3DD64097E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 08:37:06 +0000 (UTC)
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012008.outbound.protection.outlook.com [40.93.195.8])
	by lists.linaro.org (Postfix) with ESMTPS id CE80E4097E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 08:36:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=GsERyUqR;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.195.8 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HCKqeFLEsPDKeYE4DBcbXgU14gCna+MU8Cl02eyeY8oMen5w2ud7clSO6DmZXsTb6gBMwL5dhT3xepSSKSHSQJ4NiqMoYAzswC1xsjPZxvSZOyf/ejHt1nyFBjZAH+mBhFHZMgaCIaxWwiPaoUfsWWq2yTxQrNTZlup82Ft3DgR8Pn0DndsGWTx/DCYMj3yyCTQpKTSVTeZr7//cPD4nw44m/sH43cIea44bYgAURlWplcuISGTw5GtEvgAj/OjUugh2q7pwYC7MGvnaX31lBtBNjGHUyINDLvbLTIroNSv+pXQe4Dmj7Pw10ZqjmcMtZo1OvAXV1I/3vYPwRiUV2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yjVqHtxovV/VU0Gx1sCI/KXhH97UD1BPkitrcHMr6sI=;
 b=CDE2K6z5koVlnM7lcMucV8dGrjzVfz1UReHKI7yDUwT0qFCPMk88h53mmUrRUY8SaJK1OdzVydGG2dLXku0jJpU/2VYGTgyYsFKnu7hbjNxIvEh/lmQzcSQl83Wy6Q1plO0DY3sjvpmA9Z9qbjJDYCeW7XxhM7uG2jSFKhAK/ZulOk0Yjb1crdosv7KHryKVjio1cVA4Jk4orvEWUrWlPbl0fyeW3+DAgA2kfaCnjD+U3v5DE/qaRTTLPNO/hT5T0XRr9odwVaQkzvrC2bIWWzFcfzS2lgM61/PjVvoGM0zUH5rnudF+8IYpjY0ExroZyZOF5BxrGeynW2NpsfYoMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yjVqHtxovV/VU0Gx1sCI/KXhH97UD1BPkitrcHMr6sI=;
 b=GsERyUqR1txJnbftSnSThI+KFrvA1HdsJDKIkCFSyKmI0+tQUtjgosAHa8a0Kd7wBPhVwR0XzEiTjhQXxOcjFku40qwdXhIxA2xn/w/ICLJxqgMPBcl7GUpCCaN3KvgMSa9l9yU964UEOcrtE+uql1wg7JUYKKskNhPrha3UsZM=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ2PR12MB7868.namprd12.prod.outlook.com (2603:10b6:a03:4cd::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Thu, 21 May
 2026 08:36:52 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Thu, 21 May 2026
 08:36:52 +0000
Message-ID: <d793568d-9611-4174-b9e9-c71ffec5ae93@amd.com>
Date: Thu, 21 May 2026 10:36:47 +0200
User-Agent: Mozilla Thunderbird
To: Boris Brezillon <boris.brezillon@collabora.com>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
 <20260513-panthor-guard-refactor-v1-2-f2d8c15a97ce@collabora.com>
 <03a57011-e734-4a74-aef2-e3a6016e15fc@amd.com>
 <20260518111456.30ba9bba@fedora>
 <a9ee80aa-0c9b-4bd7-87bb-d3e228357b18@amd.com>
 <20260518161531.331cab2d@fedora>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260518161531.331cab2d@fedora>
X-ClientProxiedBy: BL0PR0102CA0029.prod.exchangelabs.com
 (2603:10b6:207:18::42) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ2PR12MB7868:EE_
X-MS-Office365-Filtering-Correlation-Id: f60446dd-4e45-421c-ec74-08deb7141bbe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|1800799024|366016|5023799004|11063799006|4143699003|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	b4kraUOn2o2byKWCmaWK/vo3Hl5wmabtkuY2cuVg0vTH2MHzyASrwJ3a+Q23sjxYQD9K3hIG2fs6XSDSrpUjhxc3lV8Kd5LIYy/4uZbaG4w2rOWxP01INvSOdEwNYK/4PTWG0zKjntyAECwb7Kk5QmhFCKENEPjXHgKzcfUzM9+/s33U98omeI5+g6vsinUfCnsmYCXfuZDyr7JF/Bj7UiYRbyZcV/J1/iuRT9LqQhOXvEewAtUpxMfTZOcxrcxdywa2Gy4UZLbPBj0UK+kE0N64VSjSPlHlM6/jBnw/wSW5wmhptFSRSPdgp17HrroqG9NdPCAUIhFWIQRUyPB7+RdBYlLtbFpBINxPeWEltxW2NoqI7jyYXAtDSB1Hd4E0PMxA9prGB1nM9LaXD5nAi7wM3ltQ8UVeWeh1dksYNWvB+n3w3rIw/x08y4XMBO0pxfVsVvr8kRK0ZRlCg4Gxy6c6sS5PQi2MiYMze1rWb8scnvQTokD1hy3s2Xj5mGLnX5cvyvkPz1QcEccQEO5aZdoF/ibPs0Bpe+Ta9OOrpRmpKRysNWYGTehVkb2GqsgrjoAOvC1YLoWoQsTNkZQ8TGLnXPxhv1picB84OSpfwXQi0rW7SA1s6QhuLify0AZxdegZulAH67DpVaWzu1HTXO1NQhJ+PlrmsjuP2my7CpNycMBs5wm83Xw2m+MWoThN
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(5023799004)(11063799006)(4143699003)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NE9BM0tjc0RCdlJDSTBzeU0vVXlhL0RzU2lWOEFzRWkzQ3dGRDQyMFAvM3FL?=
 =?utf-8?B?bUY1a0FyODFGV3BaamhQKzlxYXd6R0ZMbkNpR0RuT0k1MlE1dDRRZ2hEand4?=
 =?utf-8?B?dHFUdFFuVjNCQ083Q040Q1ROZjVEaGJTbjJIeEo4ZVJEcjZkT2Z4VEVkYTJj?=
 =?utf-8?B?YWN0MVVsbFZNQnBlb3IwZkFvVXdpNTRaakdFQ21abHdyeTRpZnI5cmgvY1hD?=
 =?utf-8?B?UlFxbzFDV21pdDJTYW84TlBINjdsWHJ4Ri9zODluaHY5Ym9EUk5GVVJSMnNn?=
 =?utf-8?B?ZHBuR2V5cWhHd0VWdXRRMmNpMGtqSjl5WDArREJlRmErOUh4UnZQR0ZyYm5T?=
 =?utf-8?B?MjdnZ09CQUhXZ2RBaUlYQ0JuVlJCQmZRb3E5a3dXdHk1a1E5bjkxQkxCM0lS?=
 =?utf-8?B?V3JIbnhpSjlQaDhPSzZBdHk3RFQ4bnl2Q09HUitldkIycnJibVZ0TC9wYVZT?=
 =?utf-8?B?emxYWHNBMDFWclBRdVh5WnhFeFRzWnhKVUVTSGUwM1Y0LytzK1F2WWRDTkY4?=
 =?utf-8?B?TVRRdXJXc0dObkE2MXZRSE53cG4yV09lVDU2QnMxanVrUGw0Y0JGclN4RnZh?=
 =?utf-8?B?QmtnUzBjZ0V0eFh5M0FsTlorS3dkT0JrTkp0dndqaGoreFcyeUFqSHdla0Vi?=
 =?utf-8?B?ekNsblcyMlllMUVBa1pPRUwyUEhPOFYzY0owelVyNjVLMFNQc1lGRjQ5RUNH?=
 =?utf-8?B?NGdQQ1BIV0drNjdiRWw1VVFIelgyQ3p4ejZYWG95Sm1BSnhqeExpQkpSNlFa?=
 =?utf-8?B?WWN3VEV4UFlvYS9mOVZNY2pjOTJQTlo3YWdyZStrKytBS0IrVGxqaTBFdHgr?=
 =?utf-8?B?RlBlQksvOVRWR1EzQjNwaTlLTmZZeTBlZFJpdE1HbW0wd3ZJZmp0SWl5eEFN?=
 =?utf-8?B?OHVCQURiUlovaFZEdDc2bkdFNEprZzRhTXVRZFRPR1hUVEpjclJWT3BmWHg2?=
 =?utf-8?B?UUxnWUw4Z0tueEc4RllzVmMyUFFDMEJhT1ZNWnREYXgvais1aFR2bGpia2pp?=
 =?utf-8?B?elBjbHZCM0xSQzFXdWp5YnkzTEZBN0d5anluK29KWmlYQ3hadFd5Rko1cmph?=
 =?utf-8?B?aFM0T2wzakhhaFJVU0IvR3BrNFJockFKTzNSb1ExWjQvL1lKZ2lnN0Zjb0Zn?=
 =?utf-8?B?Y2kyVVNUbzJScmZsUFRqL2c3UzhxRml5ZDlLK1RpYmE5WjlueVVYYUVRbXVU?=
 =?utf-8?B?QTZzUk9qWjFtVDRwZWlIZnBWR0lRKzFZcjZYZ2U5c1NNbGlzL00ydEdYSnhq?=
 =?utf-8?B?dFJWYmdxOCtpd09hL0QxRFVHQUpCckZXeWlVRENyV0hRQ3UzYVZVeFM4TUlt?=
 =?utf-8?B?NEVaRmVoUVJkaElZa0tYUUNsM3NvZFpyNCs0a21JRXlZSG5YZjFpenR6eWZU?=
 =?utf-8?B?TlFVTllDMW1UdDlHaERXTmVxVkQzTXk5eEhaWElyOTBzakpRY0VwOGlRa0kv?=
 =?utf-8?B?aEpWcWZzNEYrQUc1eXpGbzRFOUtVK1NTU0t0a2ZoZUF4eDR2QUlxM1lEWCtD?=
 =?utf-8?B?aWsrUHY2Mkpjb29yU1dnSHorZExHZjhFODdNMlQxbGVVV2hONTNxaGJXWjI3?=
 =?utf-8?B?YnlWa1p1ZnQrU3JiWDh0dGtjdk1VU3FMVHIwcGlYamlvNm5EZGNRQWdDNDdl?=
 =?utf-8?B?R0QxeUhhYk16bk4vWFVCeVh4OFZxTTkrY0UrY0ZObVlhL0hGaTBUVUtFTHJT?=
 =?utf-8?B?RFZMc3ZTNFZkdzJteXBhbm15VnRJM21vZENvMVhqUmRNK0ovWjdZaVRpSHBk?=
 =?utf-8?B?cnRCYUViK2FmckM3U2YranRWemNHOVN0UUc3Z0NVVUZ1VCszY0tkVUQzV3Ni?=
 =?utf-8?B?Sk1OZDZLWmJpcEdJZTB1WTFtZk8wQWdxc1NEeEJWLzIzalduMHlhZU5qcm1w?=
 =?utf-8?B?MlhEMnprdzgxRVZ5eE9ySGpSRWNZclRERWFGUTlab2RFSjBQSk5lZ3JvSzdF?=
 =?utf-8?B?ODl5Z0s4VXBUcExTdXZrWmRBT0dxNDFqNHJDTWNYV2RjK2RRT2grTTZ1dWwz?=
 =?utf-8?B?UEx3NXg2cE1xQURvZXpId1NHaFVJWUttSDFKd2t4c1B1dVhxbitpS1JqdVRR?=
 =?utf-8?B?SDRib3R1YlpGK2VjWktEdDduQXJwM1h5NVBvandsVlYyMjJVZ1IzNFZiVHIw?=
 =?utf-8?B?N3lpeVhRWUZURXUwNHBhRlhaQktwK2k3NjlLakc4WU02QWVIQTJJTm1vSUJU?=
 =?utf-8?B?VVVOQ3ZVcHY2VVd1L3k5Mmo2V3Q0N0JWUkM3aURSb3E2a3NHNjk4WnRQTXhx?=
 =?utf-8?B?UlFHWUZjdDNFcUNPci9hYXVBaWRXSkgzMnZnUnlwQzAzdTlqaVNoVFpqRlVw?=
 =?utf-8?Q?GTYYdar3W1V/QmFVGn?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f60446dd-4e45-421c-ec74-08deb7141bbe
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2026 08:36:52.6916
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s0tWQQ9lRlwQ+zlAh+xJCSInalvosqNM/in0mHVNDTey24Hm6nagDvUPhQp469js
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB7868
X-Spamd-Bar: --
Message-ID-Hash: WF2FJSB5LM4ZG4RV34T3GTOXHRDIMAYW
X-Message-ID-Hash: WF2FJSB5LM4ZG4RV34T3GTOXHRDIMAYW
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/6] dma-resv: Define guards for context-less dma_resv locks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WF2FJSB5LM4ZG4RV34T3GTOXHRDIMAYW/>
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
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[arm.com,linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,collabora.com:email,amd.com:mid,amd.com:email]
X-Rspamd-Queue-Id: EF75E5A1252
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8xOC8yNiAxNjoxNSwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOg0KPiBPbiBNb24sIDE4IE1h
eSAyMDI2IDE0OjE4OjQxICswMjAwDQo+IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4gd3JvdGU6DQo+IA0KPj4gT24gNS8xOC8yNiAxMToxNCwgQm9yaXMgQnJlemls
bG9uIHdyb3RlOg0KPj4+IEhpIENocmlzdGlhbiwNCj4+Pg0KPj4+IE9uIE1vbiwgMTggTWF5IDIw
MjYgMDk6MTA6MjMgKzAyMDANCj4+PiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+IHdyb3RlOg0KPj4+ICAgDQo+Pj4+IE9uIDUvMTMvMjYgMTg6NTgsIEJvcmlzIEJy
ZXppbGxvbiB3cm90ZTogIA0KPj4+Pj4gV2hlbiB1c2VkIHdpdGhvdXQgYSBjb250ZXh0LCBkbWFf
cmVzdiBhcmUgbm8gZGlmZmVyZW50IGZyb20gcmVndWxhcg0KPj4+Pj4gbG9ja3MuIERlZmluZSBn
dWFyZHMgc28gd2UgY2FuIHVzZSB0aGUgZ3VhcmQtc3ludGFjdGljIHN1Z2FycyBmb3INCj4+Pj4+
IGV4cGxpY2l0L2ltcGxpY2l0IHNjb3BlZCBsb2Nrcy4NCj4+Pj4+DQo+Pj4+PiBTaWduZWQtb2Zm
LWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiAgICAN
Cj4+Pj4NCj4+Pj4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4NCj4+Pj4NCj4+Pj4gSG93IGRvIHlvdSB3YW50IHRvIHVwc3RyZWFtIGl0PyBN
eSBwcmVmZXJlbmNlIHdvdWxkIGJlIGRybS1taXNjLW5leHQsIGJ1dCBJIHRoaW5rIEkgY2FuIGxp
dmUgd2l0aCBhIHBhbnRob3Igc3BlY2lmaWMgYnJhbmNoIGFzIHdlbGwuICANCj4+Pg0KPj4+IEV2
ZXJ5dGhpbmcgUGFudGhvciByZWxhdGVkIGdvZXMgdGhyb3VnaCBkcm0tbWlzYy1uZXh0LCBzbyBk
cm0tbWlzYy1uZXh0DQo+Pj4gYWxzbyBoYXMgbXkgcHJlZmVyZW5jZSA7LSkuIEJ1dCBJJ2QgbGlr
ZSB0byB3YWl0IGZvciBtb3JlIGZlZWRiYWNrIG9uDQo+Pj4gdGhlIG90aGVyIGRybSBwYXRjaGVz
LCBhbmQgdGhlcmUgYXJlIGEgZmV3IHRoaW5ncyBJIG5lZWQgdG8gYWRkcmVzcyBpbg0KPj4+IHRo
ZSBwYW50aG9yIHBhdGNoZXMgYW55d2F5LCBzbyBpdCdzIGxpa2VseSB0byB0YWtlIGEgY291cGxl
IG1vcmUgd2Vla3MNCj4+PiBmb3IgdGhpcyBzZXJpZXMgdG8gaGl0IHRoZSBkcm0tbWlzYyB0cmVl
LCB1bmxlc3MgeW91IGhhdmUgYSBnb29kIHJlYXNvbg0KPj4+IHRvIGZhc3QtdHJhY2sgdGhpcyBz
cGVjaWZpYyBwYXRjaC4gIA0KPj4NCj4+IFdlbGwgdGhlIERNQS1idWYgY29kZSBpdHNlbGYgdXNl
cyBkbWFfcmVzdl9sb2NrL3VubG9jaw0KPiANCj4gVGhlcmUncyBubyB1c2UgaW4gZG1hLXJlc3Yu
YyB0aGF0IGNhbiBiZSBjb252ZXJ0ZWQgdG8gZ3VhcmRzLiBJIGdhdmUNCj4gZG1hLWJ1Zi5jIGEg
dHJ5LCBidXQganVzdCBsaWtlIGZvciBwYW50aG9yLCBJIGRvbid0IHJlYWxseSBsaWtlIHRoZSBm
YWN0DQo+IGl0J3MgaGFsZndheSB0aHJvdWdoIChvdGhlciBsb2NrcyBzdGlsbCB1c2UgbWFudWFs
IGxvY2tpbmcpLCBzbyBJJ2QgYmUNCj4gdGVtcHRlZCB0byBjb252ZXJ0IGV2ZXJ5dGhpbmcgYXQg
b25jZSBmb3IgY29uc2lzdGVuY3kuIElmIHlvdSdyZSBmaW5lDQo+IHdpdGggdGhhdCwgSSBjYW4g
Z2l2ZSB0aGlzIGEgdHJ5Lg0KDQpXZWxsIGRlcGVuZHMgb24gd2hhdCBldmVyeXRoaW5nIG1lYW5z
LiBJIHdvdWxkIG9ubHkgY29udmVydCBkbWEtYnVmLmMgaW4gb25lIHBhdGNoIGFuZCBub3RoaW5n
IGVsc2UuDQoNCj4+IGFuZCBvYnZpb3VzbHkgaGFzIHRlc3QgY2FzZXMgZm9yIGFsbCB0aGUgZGlm
ZmVyZW50IHZhcmlhbnRzLg0KPiANCj4gTG9va3MgbGlrZSB0aGUgdGVzdCBjYXNlcyBhbGwgdmFs
aWRhdGUgdGhhdCBkbWFfcmVzdl9sb2NrKHgsIE5VTEwpDQo+IHJldHVybnMgMC4gSWYgSSB3ZXJl
IHRvIGNvbnZlcnQgdGhvc2UgdG8gZ3VhcmQoZG1hX3Jlc3YpKCksIHRoZXNlIGNoZWNrcw0KPiB3
b3VsZCBiZSBnb25lLiBJcyB0aGF0IG9rYXkgd2l0aCB5b3U/DQoNCkFoLCBnb29kIHBvaW50LiBO
byB3ZSBuZWVkIHRvIGNoZWNrIHRoZSByZXR1cm4gdmFsdWUgaGVyZS4NCg0KU28ga2VlcCB0aGUg
dGVzdCBjYXNlcyBhcyB0aGV5IGFyZSwgdGhleSBiYXNpY2FsbHkgbWFrZSBzdXJlIHRoYXQgd2Ug
Y2FuIGFjdHVhbGx5IHVzZSB0aGUgZ3VhcmRzIHdoZW4gdGhlcmUgaXMgbm8gdGlja2V0Lg0KDQpU
aGFua3MsDQpDaHJpc3RpYW4uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
