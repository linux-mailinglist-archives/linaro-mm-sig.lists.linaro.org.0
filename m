Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMR5FxzZCmrb8gQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 11:17:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D9909569838
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 11:17:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE18F406AD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 09:17:14 +0000 (UTC)
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012003.outbound.protection.outlook.com [52.101.53.3])
	by lists.linaro.org (Postfix) with ESMTPS id CF2FE40475
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 09:17:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=n2cu12bm;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.53.3 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=huV/hQorE2M5rnl0MiXAKMKP0LMHWDD36h1puEvA20ixXbzV9Nk1En7DK3oWYIjzd8Q3bqj4i/DF4UcErcxtn42LnjridWxDLs4UOfQwBFXv9AkI00LoRoKicpKXawMEUWiVgLoLE1D/N7kvYtnBabOVwl0SVew0BeRknh1ZAd+4C2Nmoy9zdL+F05x98b1Ox41OW7vfG9OyDQuv8KjZBmDqPP/hRxEezzeIHCTh589vBNjeiwYnAid1g9kUuU19IVO4V7kh0dh4b2vPpcNd94AJvS2ev2okm+E5Nz7uvyrEMm41SAvW7Eurw9YkT5tThNe7ppYXT6+5FAFrHOyi0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8mwNt+McfOPGrwrs7q6p+5GwN65tbNUfu4uqRqZCFxI=;
 b=McSAEKsKmZvmhTjgA4I9UJE6Nx+YVH7E8qdI3BS0ocEAgdJq1sUx6kj3il/03xYkgdc/oViJ9kxJRSBD770ql50nPrBU/6WAwI8ZysmPT1U+emChLkEfBHz644b+oWoFW98gno9bzMbCMax6EpcwmKlpjGAswgX9kr0Abn3c3nXOYeAVitE3TO01JRj4lP2YY+DnJavsrvhl42z4G79MF5a+Yyk+JwgZLHOufpjhLwNHe5B0haMQUtOe6UUlXMCYQB9jk4f1gNUgB2a5JpUn3fLvYsOed9QsJl0hZOQYIdRusdhCkSnWKtE3rF46LgAQ4WmPCZf5p+Ai1kWyoChPLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8mwNt+McfOPGrwrs7q6p+5GwN65tbNUfu4uqRqZCFxI=;
 b=n2cu12bmQpLq6+SV8mtSeieQnGkycvn9bR2Kz7mnJt4JcYmaHYLyIRI+GpADtIh+9JsZCgmKPHBA8ZRX2NIhw2Xd+S4NT5wBGrXpz7wu6cksTGwgnEghPCItJ+xXQWBVYARGmZqiM8L9rGhhMBJP+seU+rQoO1lG/uzEdHv/dLs=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH3PR12MB8353.namprd12.prod.outlook.com (2603:10b6:610:12c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.18; Mon, 18 May
 2026 09:17:01 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Mon, 18 May 2026
 09:17:01 +0000
Message-ID: <a872ef35-6d5b-41fd-9242-bb44902fb237@amd.com>
Date: Mon, 18 May 2026 11:16:55 +0200
User-Agent: Mozilla Thunderbird
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Chia-I Wu <olvaffe@gmail.com>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
 <20260513-panthor-guard-refactor-v1-3-f2d8c15a97ce@collabora.com>
 <CAPaKu7TULU6_-8eoygq0svBTbnX-vFvF3sH5hDzyi9kDP-9enQ@mail.gmail.com>
 <20260518102813.50555650@fedora>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260518102813.50555650@fedora>
X-ClientProxiedBy: FR4P281CA0270.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e8::20) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH3PR12MB8353:EE_
X-MS-Office365-Filtering-Correlation-Id: 750752e5-23c8-4d8d-895b-08deb4be37ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|7416014|1800799024|4143699003|11063799003|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	tuMXEwIiV+wRpSgkgJA4CAvwY/aKKrx2oaiNKddvFml0xPLUzuWwhQCMu/vx7286UcgT40pdo3kPbCJeJGjUQZw1v8tGdToNPMMbwumPEPE7D0jI7Nr0DONG7NnWXO37joU1tW3b3WiNVAWWICRqkNIrSMNBdog49Ify3C4cw/u0sqBsET+7EVwkKN+JE0cZpX2mhPeerJakfcOLa/bLpfxJLPjC/DjZxHZjoU0TgzGRSdG3MNiYxdN3eTZr3HF+rmvZv88OLNLwASCLk/5lt7Yupa38Nvv9ziV/Jznzn7yNkedOlhyGQTZl2EHiuepUPy31tBDSvkM45rpifHmUJFY2U7DNX5+uFAsRw0tOslOWEbg165bEvrFxSbuU5og6wmFXYpZvDil0+ryI/0/9jKPr7HqCadVNNRj64dGUQQYtuc9+lcgab0tYYbdh2JFrlSBZtDHvNz7o0F+HZypWcUbiyL36GWCWDEmchGbhz2JN+gmWKSD/uXCe20W+GbWR0QN9amnPi/s16fun/wCXAIUtYy7uSpOUUcl8tN0ADQ4K8bH1VzpHO3ul7dMU8+TQKbDW1MjDDqg9oTuHBjyposEPHMfR0Lq/mews9OopNF8KCMwEei4wh+CM1133oAw+pD6Z22hQ48CDpdGlmDuF13jKe5SEzEk+j0cwkPqh6itHJRvjJYPqvsd8BMWnT4JK
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(4143699003)(11063799003)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RUY2TGYrbjNHNHoxcVpwUDVCamJhNjZ6cmlPWnRjYmRXK1pQc3BONVYwZkF0?=
 =?utf-8?B?VFNDZ0tybUNaUWtlTFFhaHczc05kZGg0MWQ1c1RRUkpFd2UwN0hMaWdkdjZp?=
 =?utf-8?B?RFY5SHpwQlFVd0N2aVZ3Y2ZxdGluNHBIUkU4cWEwVGpFeHB3b2lFTnZac0hF?=
 =?utf-8?B?ZlRKS0dHNm5XWGh6WDU3elg1cHdDRXlDRnp2WmwrM2pRVFZaZWlXeTN2UFJo?=
 =?utf-8?B?WXI2WUQ0VU5qMmxmZnQ0WG5MeVNBbXUwSXNwSUdTaVdVM0xEdVQzRDlMOFNs?=
 =?utf-8?B?YkxCTFhqdG50QytvbUdVOHBNNGZORS92MXMwVUR1SlB0TzM5bTNwcTgyOVps?=
 =?utf-8?B?M2lBekJMeW53S1lJNTVJM1FlS0tCZmhqZzhpUUswN0wvcVZDSk5UeGUwVEh4?=
 =?utf-8?B?M2JVUGxNT3lXcElDWEYyeTNhb2tqbUxncTdOcm5QM1hSSDhPa1NLRmlBUW00?=
 =?utf-8?B?RG96Nm9rWUY2aTM0TDBQWVltdEp1ZFJVSmczUU9XVlZkWjRpK2pRT2RuTUtj?=
 =?utf-8?B?Qm1zbCtxZnBQU2xTNzRwMmlPVUlvZ3dWemxnam01RzhtQ2pIdnNzUUR0YnJI?=
 =?utf-8?B?b3ZSSWdmbWQ4cno5cEhJUnRNdHNFWEE3TTltbU1EUGtMenFIT21Id0hTWXFh?=
 =?utf-8?B?V3E3NmRMMURJVnlHdkFOWW5XQ3pZTjh1Nng4QktKWmxBZUZmV1FPVm8rL2lt?=
 =?utf-8?B?UGVFRmE4bnNZSGM5by9ScnVCWmdnUXpmQUc5b3owSCtrU0orL3VUMVVaMkQy?=
 =?utf-8?B?QU5wOGJJME93UzcweHlUMTBkMnd2WW0rNXJjQ0E2b1UweTRVdHFJYXp0dzcv?=
 =?utf-8?B?RS9NWFJMU1NlY2VtTGt2Szd6Sk1CZGxsMWJpOW1haEU0QlQ2bTRoNUw1Zncx?=
 =?utf-8?B?TGpGdkc0NlRYQ0VMcEZSOWoyVUpYdGVlMTlRQmtxazQ5SEpPelM0WGhzcElK?=
 =?utf-8?B?aXRoOVBHOWFFVzE2bzFKcWhmc0t2TXFNeU1rcUNwZUVnMFVtMzNjdWZ3eGwz?=
 =?utf-8?B?Y3l3YVZLYUVuOXppNWZQbnR6RERISEtwZmE2S1FyU3lUdXA5R0E2c3NDSU1J?=
 =?utf-8?B?eEQ3cGVNR2pmQTl0TElBK0Nwc3NQN2hEb3NhY29XUU50aTVUdzlmS21aSEpQ?=
 =?utf-8?B?ZDhwU0UxcEJoQnp6b1k5VEFSaW9tU1FDTHBYQW9YQUUxdGl4UUlBQ2dKTnpj?=
 =?utf-8?B?UVF5NW9JdXM1ck9sbWU3RHFjL2lFL1V6UzZVQVpsbFpmN2dGcGpWMnB4bEtC?=
 =?utf-8?B?bFVWaXgzTE1PYzltTytrL1BRNkhRUTU3dVQ0ZjY5T2NUUUpjcG1odEIxUVBn?=
 =?utf-8?B?cWQwSDNpREs1TGlFK2lMWC9qTEVmcldDRTVsbDRXR3pyTG9GRGpPK1NFbnhw?=
 =?utf-8?B?aDYxVHRFTUovL1h2OU1iSDlqSnVINVBkanJyTmxqaGVQUDJRZVZNeUxBUzlQ?=
 =?utf-8?B?a0Vpa0dVYmtpR0xEWWs5aDlJaForQUJMelA2WHIwcjlJSjJqaXd6c3JtY041?=
 =?utf-8?B?V1pUNUxGeWVBYyttRHdjMWo3K0djclRqTzRZRkR1aXJ6TU50ZUtCY2VsOWNQ?=
 =?utf-8?B?WXpZNnJBaTFOb01nd28zU1B1QWlZeWtPV1hWd2lBNmswZG03K0plK1gzWWIv?=
 =?utf-8?B?bnFibHQvdFF3dWtQNFpEdTFwTEtRTTdpZy90K0p5N0RWZWxOMDZGWFF2TUtE?=
 =?utf-8?B?THNlNVdrMWJYa0VNWDBoTHZUYUJKeEZpTk16MVJwelB1dTQxMFRwa1RjWkh1?=
 =?utf-8?B?aDY4RDQ5NDN5N0p5UUxhRVRBYk5zc1VRZEVBZlFIdEVwR0ZtbWtDNkp0YXJK?=
 =?utf-8?B?d2RXditFajA4cG9mRnpNK1Bpc2ZEMW1RbXVPbnloL1BVZmRhYmRHNzNQVEx0?=
 =?utf-8?B?YTYxbmlyaGI4VFBaUENrUVRKSWszeFh4Um02SlREb3dtRk9JS0c0RWxHMmNJ?=
 =?utf-8?B?dHpHUE9yQlNBN3M1dE95VGR2NFVTclBQUExDUG5vQ2NlS2ZXK0p3WWFKZGRj?=
 =?utf-8?B?YnlONk5rMFVKSytLWEV3OCtDRktWOFhDajJLT3BmWjFCSVBKS1plZGJFOTRa?=
 =?utf-8?B?MXRveEQ4VGkwNXlpN0dKSy9HY1lJcnVIRG03Z2FIRjhKQXBuNDNsSC9UN0dl?=
 =?utf-8?B?NjVsZkM3RlAvcElndkZtb0hmN2RVVnJMNFByVmhLeWl0MVYxQjVXNHRPMEJG?=
 =?utf-8?B?eHhGTDA5TksyeVF4bloxQkh2ZkFZZ29XS1V2NEl5K25XQ0x2NVh2ZnB1UTVt?=
 =?utf-8?B?emwwQVhpM2NpKzNzMjJYMEZKbXBSbnR5OHVWNThVeVBab2t2dm50WXIreVkw?=
 =?utf-8?Q?Jz2YxiSsU8r1nWLdPv?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 750752e5-23c8-4d8d-895b-08deb4be37ea
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 09:17:01.1274
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bfh9Nur/+DpxnmR1wZGgXjzAGrQtVHv1PLHFyItD0jQvkBVMCNs8yScjOtTfBbuP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8353
X-Spamd-Bar: --
Message-ID-Hash: WSUCBLVLNRX46JIKOKF4IFOJPTQUR5QF
X-Message-ID-Hash: WSUCBLVLNRX46JIKOKF4IFOJPTQUR5QF
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/6] drm: Define a conditional guard for drm_dev_{enter,exit}()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WSUCBLVLNRX46JIKOKF4IFOJPTQUR5QF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: D9909569838
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[arm.com,linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:mid,collabora.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

DQoNCk9uIDUvMTgvMjYgMTA6MjgsIEJvcmlzIEJyZXppbGxvbiB3cm90ZToNCj4gT24gVGh1LCAx
NCBNYXkgMjAyNiAxMTozNDo1MiAtMDcwMA0KPiBDaGlhLUkgV3UgPG9sdmFmZmVAZ21haWwuY29t
PiB3cm90ZToNCj4gDQo+PiBPbiBXZWQsIE1heSAxMywgMjAyNiBhdCAxMDoyNOKAr0FNIEJvcmlz
IEJyZXppbGxvbg0KPj4gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiB3cm90ZToNCj4+
Pg0KPj4+IERlZmluZSBhIGNvbmRpdGlvbmFsIGRybV9kZXZfYWNjZXNzIGd1YXJkIHRvIGF1dG9t
YXRlIHRoZQ0KPj4+IGRybV9kZXZfe2VudGVyLGV4aXR9KCkgc2VxdWVuY2UuDQo+Pj4NCj4+PiBT
aWduZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEu
Y29tPg0KPj4+IC0tLQ0KPj4+ICBpbmNsdWRlL2RybS9kcm1fZHJ2LmggfCA5ICsrKysrKysrKw0K
Pj4+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9kcm0vZHJtX2Rydi5oIGIvaW5jbHVkZS9kcm0vZHJtX2Rydi5oDQo+Pj4gaW5k
ZXggNDJmYzA4NWY5ODZkLi43OWQxOTU4ZjkzZTQgMTAwNjQ0DQo+Pj4gLS0tIGEvaW5jbHVkZS9k
cm0vZHJtX2Rydi5oDQo+Pj4gKysrIGIvaW5jbHVkZS9kcm0vZHJtX2Rydi5oDQo+Pj4gQEAgLTQ5
MCw2ICs0OTAsMTUgQEAgdm9pZCBkcm1fZGV2X3VucGx1ZyhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
KTsNCj4+PiAgaW50IGRybV9kZXZfd2VkZ2VkX2V2ZW50KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
IHVuc2lnbmVkIGxvbmcgbWV0aG9kLA0KPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1
Y3QgZHJtX3dlZGdlX3Rhc2tfaW5mbyAqaW5mbyk7DQo+Pj4NCj4+PiArLyoNCj4+PiArICogT25s
eSB0aGUgY29uZGl0aW9uYWwgZHJtX2Rldl9hY2Nlc3MgZ3VhcmQgaXMgdmFsaWQuIFRoZSBkcm1f
ZGV2IG9uZSBpcw0KPj4+ICsgKiBoZXJlIHNvIHdlIGNhbiBleHRlbmQgaXQgd2l0aCBhIGNvbmRp
dGlvbmFsIHZhcmlhbnQuDQo+Pj4gKyAqLw0KPj4+ICtERUZJTkVfTE9DS19HVUFSRF8xKGRybV9k
ZXYsIHN0cnVjdCBkcm1fZGV2aWNlLA0KPj4+ICsgICAgICAgICAgICAgICAgICAgeyBXQVJOX09O
KCJVc2UgY29uZCBndWFyZHMiKTsgX1QtPmlkeCA9IC0xOyB9LA0KPj4+ICsgICAgICAgICAgICAg
ICAgICAgZHJtX2Rldl9leGl0KF9ULT5pZHgpLCBpbnQgaWR4KTsgIA0KPj4gSWYgdGhpcyBpcyBl
dmVyIG1pcy11c2VkLCBkcm1fZGV2X2V4aXQoLTEpIHNlZW1zIHRvIGNhdXNlIE9PQiBhY2Nlc3Mu
DQo+PiBJcyBCVUcgbW9yZSBhcHByb3ByaWF0ZSB0aGFuIFdBUk5fT04/DQo+IA0KPiBJIGFjdHVh
bGx5IGhhZA0KPiANCj4gCQkJaWYgKF9ULT5pZHggPj0gMCkgZHJtX2Rldl9leGl0KF9ULT5pZHgp
LA0KPiANCj4gYXQgc29tZSBwb2ludCwgYW5kIEkgZGl0Y2hlZCBpdCB0aGlua2luZyB0aGUgV0FS
Tl9PTl9PTkNFKCkNCj4gaW4gc3JjdV9yZWFkX3VubG9jaygpIHdvdWxkIGNvdmVyIGZvciB0aGF0
LiBJIGNhbiBhZGQgaXQgYmFjaywgb2YNCj4gY291cnNlLg0KPiANCj4gSSdkIGJlIGZpbmUgd2l0
aCBhIEJVR19PTigpIHRvbywgYnV0IGV2ZXJ5IHRpbWUgSSB0cmllZCB0byBhZGQgb25lIEkndmUN
Cj4gYmVlbiBlbmNvdXJhZ2VkIHRvIGhhbmRsZSB0aGUgdW5leHBlY3RlZCBjYXNlIGluc3RlYWQu
DQo+IA0KPiBJZGVhbGx5LCB3ZSB3b3VsZCBoYXZlIGEgREVGSU5FX0xPQ0tfR1VBUkRfQ09ORCgp
IHZhcmlhbnQgdGhhdCwgaW5zdGVhZA0KPiBvZiBleHBhbmRpbmcgYSBub24tY29uZGl0aW9uYWwg
b25lLCB3b3VsZCBkZWZpbmUgdGhlIHdob2xlIHRoaW5nIHNvDQo+IHRoYXQgdGhlIG5vbi1jb25k
aXRpb25hbCB2YXJpYW50IGlzIG5ldmVyIGV4cG9zZWQuDQoNCldvdWxkIGl0IGJlIHBvc3NpYmxl
IHRvIHVzZSBCVUlMRF9CVUcoKSBoZXJlPw0KDQpPdGhlcndpc2UgSSB0aGluayB3ZSBzaG91bGQg
c29tZWhvdyBjb21lIHVwIHdpdGgganVzdCB0aGUgY29uZGl0aW9uYWwgZ3VhcmQgdmVyc2lvbiBz
aW5jZSB0aGUgZ3VhcmQgb25lIGlzIGNsZWFybHkgYnJva2VuIGZvciBTUkNVcy4NCg0KUmVnYXJk
cywNCkNocmlzdGlhbi4NCg0KPiANCj4+DQo+Pj4gK0RFRklORV9MT0NLX0dVQVJEXzFfQ09ORChk
cm1fZGV2LCBfYWNjZXNzLCBkcm1fZGV2X2VudGVyKF9ULT5sb2NrLCAmX1QtPmlkeCkpOw0KPj4+
ICsNCj4+PiAgLyoqDQo+Pj4gICAqIGRybV9kZXZfaXNfdW5wbHVnZ2VkIC0gaXMgYSBEUk0gZGV2
aWNlIHVucGx1Z2dlZA0KPj4+ICAgKiBAZGV2OiBEUk0gZGV2aWNlDQo+Pj4NCj4+PiAtLQ0KPj4+
IDIuNTQuMA0KPj4+ICANCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
