Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CC6sDiK1ymmE/QUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Mar 2026 19:38:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CF835F5AD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Mar 2026 19:38:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C42B93F7D0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Mar 2026 17:38:40 +0000 (UTC)
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012040.outbound.protection.outlook.com [40.93.195.40])
	by lists.linaro.org (Postfix) with ESMTPS id 8F20A3F689
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Mar 2026 17:38:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=BV1IhFPw;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.195.40 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BrsrOxqc0NmGueIAZSRmdfh7op/nN2D1J5OF+++cycmjSI9YDedvGdZQUzA5CcSvyrpor1bj4FF83T6v1pAjo9J4zKjDQXMQ13ak6XOEVi6px9e6SSWTnwgh+HPUtC2j4g2xIuS9jiJnoIGsdGn/Vv4mkjdwxemT1DlKGJ/L5XIegISw2j2D//tZpY/Orr0KHk4KHiB1TYj7syGPHPJ3MXx5vFkJGuaAxJmsKdMaNeCVGgUQqh7BHqUYHKo2I3djXp+3G8+8wxClihmoBezapntLEBWAXrkEXpwVlDMB73eUZ8MI/cTbqtYNH0H5+ZfILL2NAHosK2WFXHwpKwnukQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3kvybm4fNI1bNuhdSTNiiffgvzWLPk3Na4YKHH3Qfck=;
 b=KUsTUNQ8o8wAWCC9Ko0IR48I3TzMnTnTNxNYcrpUecifagPcnnobmrSfukXufykH/jx99Gv33mmsvs5Agwm+3kBJQoMD6GN/CDUhR4ofQIz+5ngz+X6RuhIVDufGwwUGDzRxR2MfUKtRIjRnEfcDOSw5VOP4RCd02yrNIhMUtTe3QqTb7sKDgf9vDtjLU3vrtuWQBc2mjVGWK9m0VA3H2e7BkdMkkXC9Nsc9R8lWXJV4AAthCRudIN67llLz5bfw1vVJx9vlTPXYMzPTpFj6Tag5zQjTVA+ha5eYshLlU6EV2lR6mpMrHiqrI7bYD3FKktNUCP9U32joh9+Dt6RVLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3kvybm4fNI1bNuhdSTNiiffgvzWLPk3Na4YKHH3Qfck=;
 b=BV1IhFPwlUkiYC/XA+ONAFwNHig/iDmrnc2xeNb0UC2Cy8k96UiFg+TEM0thZv50bxwoFdC7rT+WkXvqmeRCwylOXdgCEeHFMzGpSJfGHLt12yiyvL/M+v4h3JBoL1IasbhHG0umA6y9dJ47dfFdMiDdaDpQ1Eg6ZNAsxpEnDv0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by BY5PR12MB4324.namprd12.prod.outlook.com (2603:10b6:a03:209::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Mon, 30 Mar
 2026 17:38:34 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9769.014; Mon, 30 Mar 2026
 17:38:33 +0000
Message-ID: <5391e530-6ddc-4132-905c-c23ff0b277a0@amd.com>
Date: Mon, 30 Mar 2026 19:38:29 +0200
User-Agent: Mozilla Thunderbird
To: Li Ming <ming.li@zohomail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>
References: <20260328-fix_dma_fence_chain_find_seqno-v1-1-3847c8ef0292@zohomail.com>
 <bb78ce6f-603a-40eb-ac47-bf5ea06a6cc8@zohomail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <bb78ce6f-603a-40eb-ac47-bf5ea06a6cc8@zohomail.com>
X-ClientProxiedBy: MN0PR03CA0024.namprd03.prod.outlook.com
 (2603:10b6:208:52f::32) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|BY5PR12MB4324:EE_
X-MS-Office365-Filtering-Correlation-Id: af7f6641-ef5d-4794-02b5-08de8e832a6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	Mlk3DW5oxg1KxMddX+LJD3dFuIdYW/LKe6e/mQq80F3N0YafbzjLtTo81+NYpv+9WkIas0GogKK/ToZl5bvTwFPp+5GCgi475UGT9h1lKjUsK0TDMDerX95BuMCNGtWaIinLXMJPDhs+jXOKpJVb/wFXFYBxn7iqO8IUIHXg3OU5lkUimZ9MPlIwMrgYS84vMBW+cP+OBPEj/I7XQ2QTP5IvQx7DzyROjzjqk/tB9dAFLHktEogjiSiO4SeppH7VnMGoPbBSXL22Pu0q/Z00i0Tg9md/hnuSOX9h7fAD+exM8NDukODgDEqmAcgSeSO47zmT9Fu8vh/ZA75MlDvMfU0HcRrjOTZWreX3QF7BnBvOTaKHWtgorTRoHwukZDg2qoVz07+O8uwbo1MXc/Mvhzs1Mobh6KEtNV3TlCIoJo/0gEn4TQKZyHZEL7JTvTfnMx8wM4S8a8IPwDsDKqiA/dyClLtb49UFZQkw2K0iH7yno/KN1m4Jo5n1vpGC6QClo1ezhPnKD38m6Gzfp5FAsoe9ks0FuJ2vEMkz6x5KGxAb7DNNNUClY2NTuwB6JwJD2lZdRe5od3nh/Euk5USDUrJoUagLUArQv9+vBSZT1LLM9ZHFmgMiFm2Ma/u+z1bVeGEuZaPqA3gQhaKLOV85DPHD7Av3tYF47UKLeklUkXDXn4kNNXDxJBZgntdQHQFbiblMQmCA4ZE3xOaKqJc1xLRzUtCT6gliF3EHlS5LPP8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?L3RrVHR2YU9kcHpOaHcwdHhWM1Y5VEdqc3ZRL0lIckhzQ3lGZGRCQVRkUy85?=
 =?utf-8?B?OCtxT2dBdkhlWDRxOE8zTStNWEd2VWt5QjdFV2VQa2JGMmpadkZKemo0RUx2?=
 =?utf-8?B?anRLU2p4bDZBaVpzeWFiN0RLK05VL0Q1TGUrQlRLUjhoNFQrZlVxOXJkSndF?=
 =?utf-8?B?RUJhVi83U3ZSdTBPNnRnWjRZSTNmeUpOTzcrd3J5Tll3OFpXYmQzU0pLRkhR?=
 =?utf-8?B?aFloVzFwbkZObXliWE44aGNkREtKd1lxTVp6b1V3OTJQS3pmeWhBRGZDOHIy?=
 =?utf-8?B?SktTbGVaL1ZUQ3RLT0JZWWROUUZOQXMzeCtiVXZRTUhvajRMQ1BiVFpBNUVK?=
 =?utf-8?B?dGFpaVJ2NjJjTldVYzBmcnhLQTdERjBPdEdXN2dLNndVRVpsaFIrV2ZWWUps?=
 =?utf-8?B?OFEzV0NwQ1FTeUhvc3A4RVFRUkh5aWtyRlJ0ZC9zU2ZtdGZVakg1a2lzcHRR?=
 =?utf-8?B?cTBlNU1pVnFNTUg5eUdLVUZIeS9Ec0Z3YzdXQ08xOEpzdVY5NFlmUCthWDJ4?=
 =?utf-8?B?U01USGEyMll5OEtjZ1RJWThKWmUxUXV3R1BPSldCKy9JaVZneWlOSXgyUWNr?=
 =?utf-8?B?VG5tMGRnZk1Ja3NOSFUzd1JGdXFnS0RJZUxYZTVuOFJOWU1PMGRJS2xVaHg5?=
 =?utf-8?B?VktrL1JYbUJsUm9VVHFKUHp3WDdNVXdmczhTZ2hMbS83d2NlRkhERjJjcllw?=
 =?utf-8?B?aGZKMFlSMU9qbVczbHZ6a2xLZ2xrMWRiMnNXblh2N0Z2dmZRVm9YYnJHelBy?=
 =?utf-8?B?YzlVZFZjMHVFbEZuNzVlMTd2TEdqa05mdEpQL2NBQzZqOVNkSXprZzE0WlJI?=
 =?utf-8?B?OUZDNVBWYzhDYU84bWpuVUlyc2VxVDVRRVdVOE5zd2JlYkd4RUFvSkFZTEs5?=
 =?utf-8?B?dzFIdkZMM09LY3J2U0xvZXQxU3NLeS9Fd0FHOXpkaWN6c05mWElYaUtTcGRN?=
 =?utf-8?B?cm1uTHlqR2tyS0ppZ21RdTdnUXhsTFZwT3BMUGwybkQ1NTB4UUNwSEgrNEY1?=
 =?utf-8?B?TzdRL2dJWitYSlYzZDdtQS9CeVpUdDgrS0FYcEw3VTB0dlhDdTZjMFkyNHl6?=
 =?utf-8?B?Z3g5Z3ZEcXlCSHZ1NmFHOW9Mc0pEOWQyNXpHbzEvNEg1dTJyVStFUmJEbHpx?=
 =?utf-8?B?ZTJvU2ZWbjU0eUk3ZEJkbGZmNHpFclVnakNjb0ZlMS9TTHMyNENGYTFNSVY4?=
 =?utf-8?B?TDFJQ1dxNVZnM1hrNEJSY01YelJlbWZsRlVxL0N5KzRGWVpiSU93dmdacjRV?=
 =?utf-8?B?ZlhvY2NlZHhtTVUraHdrWTBEOXFvTCtLU3hVdjZXYXVncmQ3VXZWQ05VUHcx?=
 =?utf-8?B?cmNSWHQ1Z0hBaWRlUWpRblNGcy8xSzZkMzczcGV1NC95UERrUHNSZHpoYVE2?=
 =?utf-8?B?NkVKS2MySDR3M2xRZUpObDVyY2pBcVM2c0thU2RkZ2tQUVBGQ1NpdjU3UWlo?=
 =?utf-8?B?VXhFZFE4dTdIYXZFa2Z6Rkxzc2R3THVvcFhGK3RYbkQ4SlJybHIzd0xIalo3?=
 =?utf-8?B?MjJiT2E5NDZLN0Z6eGZNd1N2cVRkZUs4ZGNkNFJqbFBJbUU2T25aNGlkNmI3?=
 =?utf-8?B?cUNyZzc5UHRxTlJ6OXd0Y3p0OVluTW1yQ0RyRVE5VzJhOVVwRTdZWjU3R0dx?=
 =?utf-8?B?MWRSMHdRZFZ6bHpldzhvV1ZRNFRBSWYzUzJOSnh2OVRFM0F1R0xCSDluRm9U?=
 =?utf-8?B?WTRlVksxcUZoRU5tK3BrQXp4Rzc4WHVzZm1ZMk1HbjcxZDc5L2gvR2FGQVFv?=
 =?utf-8?B?bXptckRHZjdLMU1uQUVLYkszRGZWb0tFR0pRNG1maVNhaDBiWjJybS9iZ0lY?=
 =?utf-8?B?Um93Y1FERXZJNHptUDE5NFJpOGxkaTJvV1psbFlZRTZNZHBCZmJCZHl4S01p?=
 =?utf-8?B?dnpwOVdLcWxhZEprTEk4ZXdmUkllQXh3R01hNEw4YmRyeHIyZkpPdXdSSW5N?=
 =?utf-8?B?dGI1TXdidEluQVpVN2NwSjJodEdCZGs2ZTUzSzNEdU5yK1N3YTFxMGZla1J1?=
 =?utf-8?B?dStRWGtIY05mNExHTDlmT09vMmdyempZRXVWVmtBQjB0TTkxaEhEUFg3MnNM?=
 =?utf-8?B?SUZmWVFUS2c3VmcvZUo3VlNYZkxlV1FZWmNjSExIUm1YQWF4TjlqV2ZRODcw?=
 =?utf-8?B?T1FjZ0RrSnRES1BYQzZXQUo1Qmt5SzFsaEg4R241NlVabHY2eWJ4RnNNa0lD?=
 =?utf-8?B?MlhKdUpXZHlObU5pN0M4U2NocWwzRmg4a01CVm9mOTRMNFFITG1iSldWdXAy?=
 =?utf-8?B?cy9McFBLREo5eSt4MW1RN2ZlODIxL2g5cWJkU1h0TURwKzJpRmZiMjhVZ0VC?=
 =?utf-8?Q?iH1jlESzHb7CAlEsrM?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af7f6641-ef5d-4794-02b5-08de8e832a6b
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2026 17:38:33.8126
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8dQ9KTj01JlVchyeCKttMCTUJNheT2OHME2mSdeRmj9y9bg1i2uJvMghFHuSCJHI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4324
X-Spamd-Bar: ----
Message-ID-Hash: 6NWDBJ7VCPLBZMR3HTNHJJH64KNPQ2AN
X-Message-ID-Hash: 6NWDBJ7VCPLBZMR3HTNHJJH64KNPQ2AN
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RESEND] dma-fence: Dereference correct dma_fence in dma_fence_chain_find_seqno()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6NWDBJ7VCPLBZMR3HTNHJJH64KNPQ2AN/>
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
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,linaro.org:email,zohomail.com:email]
X-Rspamd-Queue-Id: B7CF835F5AD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMy8yOC8yNiAxMToyNiwgTGkgTWluZyB3cm90ZToNCj4gDQo+IOWcqCAyMDI2LzMvMjggMDI6
NDcsIExpIE1pbmcg5YaZ6YGTOg0KPj4gZG1hX2ZlbmNlX2NoYWluX2ZpbmRfc2Vxbm8oKSB1c2Vz
IGRtYV9mZW5jZV9jaGFpbl9mb3JfZWFjaCgpIHRvIHdhbGsgYQ0KPj4gZ2l2ZW4gZG1hX2ZlbmNl
X2NoYWluLiBkbWFfZmVuY2VfY2hhaW5fZm9yX2VhY2goKSBhbHdheXMgaG9sZHMgYQ0KPj4gcmVm
ZXJlbmNlIGZvciB0aGUgY3VycmVudCBmZW5jZSBkdXJpbmcgaXRlcmF0aW9uLiBUaGUgcmVmZXJl
bmNlIG11c3QNCj4+IGJlIGRyb3BwZWQgYWZ0ZXIgYnJlYWtpbmcgb3V0LiBJbnN0ZWFkIG9mIGRl
cmVmZXJlbmNpbmcgdGhlIGxhc3QgZmVuY2UNCj4+IGFzIGludGVuZGVkLCBkbWFfZmVuY2VfY2hh
aW5fZmluZF9zZXFubygpIGluY29ycmVjdGx5IGRlcmVmZXJlbmNlcyB0aGUNCj4+IGZpcnN0IGZl
bmNlIGluIHRoZSBjaGFpbi4NCj4+DQo+PiBGaXhlczogN2JmNjBjNTJlMDkzICgiZG1hLWJ1Zjog
YWRkIG5ldyBkbWFfZmVuY2VfY2hhaW4gY29udGFpbmVyIHY3IikNCj4+IFNpZ25lZC1vZmYtYnk6
IExpIE1pbmcgPG1pbmcubGlAem9ob21haWwuY29tPg0KPj4gLS0tDQo+PiDCoCBkcml2ZXJzL2Rt
YS1idWYvZG1hLWZlbmNlLWNoYWluLmMgfCAyICstDQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFp
bi5jDQo+PiBpbmRleCBhOGE5MGFjZjRmMzQuLjcxZmExNzNhZWYxMyAxMDA2NDQNCj4+IC0tLSBh
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYw0KPj4gKysrIGIvZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS1jaGFpbi5jDQo+PiBAQCAtMTAzLDcgKzEwMyw3IEBAIGludCBkbWFfZmVu
Y2VfY2hhaW5fZmluZF9zZXFubyhzdHJ1Y3QgZG1hX2ZlbmNlICoqcGZlbmNlLCB1aW50NjRfdCBz
ZXFubykNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRvX2RtYV9mZW5jZV9jaGFpbigq
cGZlbmNlKS0+cHJldl9zZXFubyA8IHNlcW5vKQ0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgYnJlYWs7DQo+PiDCoMKgwqDCoMKgIH0NCj4+IC3CoMKgwqAgZG1hX2ZlbmNlX3B1dCgmY2hh
aW4tPmJhc2UpOw0KPj4gK8KgwqDCoCBkbWFfZmVuY2VfcHV0KCpwZmVuY2UpOw0KPj4gwqAgwqDC
oMKgwqDCoCByZXR1cm4gMDsNCj4+IMKgIH0NCj4+DQo+PiAtLS0NCj4+IGJhc2UtY29tbWl0OiBj
MzY5Mjk5ODk1YTU5MWQ5Njc0NWQ2NDkyZDQ4ODgyNTliMDA0YTllDQo+PiBjaGFuZ2UtaWQ6IDIw
MjYwMzI3LWZpeF9kbWFfZmVuY2VfY2hhaW5fZmluZF9zZXFuby03YWRlYTY0ZWZlMDENCj4+DQo+
PiBCZXN0IHJlZ2FyZHMsDQo+IA0KPiBBZnRlciBsb29raW5nIGRlZXBlciBpbnRvIHRoaXMgaXNz
dWUsIGl0IGlzIG5vdCBhIGJ1Zy4NCj4gDQo+IFNlZW1zIGxpa2UgdGhpcyBmdW5jdGlvbiByZXF1
aXJlcyB0aGF0IGNhbGxlciBuZWVkcyB0byBob2xkIHRoZSByZWZlcmVuY2Ugb2YgdGhlIGdpdmUg
ZmVuY2UgYmVmb3JlIGNhbGxpbmcgaXQuIFdoZW4gcGZlbmNlIGNoYW5nZWQsIG5lZWQgdG8gdHJh
bnNmZXIgdGhlIHJlZmVyZW5jZSBmcm9tIHRoZSBvcmlnaW5hbCBmZW5jZSB0byB0aGUgbmV3IGZl
bmNlLiBUaGF0IGlzIHdoeSBpdCByZWxlYXNlcyB0aGUgcmVmZXJlbmNlIGZvciB0aGUgb3JpZ2lu
YWwgZmVuY2UgaW4gdGhlIGVuZC4NCg0KWWVhaCBleGFjdGx5IHRoYXQuIFdlIGhhdmUgZG9jdW1l
bnRlZCB0aGUgYmVoYXZpb3IgaW4gdGhlIGtlcm5lbGRvYzoNCg0KICogQWR2YW5jZSB0aGUgZmVu
Y2UgcG9pbnRlciB0byB0aGUgY2hhaW4gbm9kZSB3aGljaCB3aWxsIHNpZ25hbCB0aGlzIHNlcXVl
bmNlDQogKiBudW1iZXIuDQoNCkJ1dCB0aGF0IGlzIHNvbWVob3cgbm90IGVub3VnaC4NCg0KSWYg
eW91IGhhdmUgc3VnZ2VzdGlvbnMgaG93IHRvIGltcHJvdmUgdGhlIGNvbW1lbnRzIHRoZW4gcGxl
YXNlIHNwZWFrIHVwLiBUaGlzIHBhdGNoIGhhcyBiZWVuIHN1Z2dlc3RlZCBhcyAiZml4IiBudW1l
cm91cyB0aW1lcy4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KDQo+IA0KPiBTb3JyeSB0byBt
YWtlIHRoaXMgbm9pc2UuDQo+IA0KPiANCj4gTWluZw0KPiANCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
