Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKGJAXzi6GkHRQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Apr 2026 17:00:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 62619447A11
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Apr 2026 17:00:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5FB433F821
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Apr 2026 15:00:10 +0000 (UTC)
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011035.outbound.protection.outlook.com [40.107.208.35])
	by lists.linaro.org (Postfix) with ESMTPS id 1700D3F7B1
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Apr 2026 15:00:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b="Y/h7lDY8";
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.208.35 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iPQMbuZm05g6mOSzIRXTAfGH3+mmeKPsEqdMjJee6tzFbn48JMdkooAKYMCHWojpaHllT6xCBwCvXkEiP401snO/Bl+BARdM/I8D6EOu0aHP1R76uXMzb+KQao55iR/3jhGGgyCIY1PLh70ERCbkef5PdAvu/+AE6I1p9cI6ZQ/joH3AVVCO2oxYM7YZqA2jbb1sKlhZPAMijKAQD62ox8f/dS3BuhegyRq4Z+G0qZJqiwoDPUvhg75+QZeluCQZXUd0Zcs+IVvVoC7R09uRjHtofEv/FYFPf3Ds9TaYW+GS+3ItMyqdtTrIUldweXDgqjame5YxmgfSA2GoavMZQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VgJM+r8FUK64NIwaToeS0Jqf6Ffw4GG63eLK/XBmOxE=;
 b=gtOilO05tgFQeSzQWo5vyEyScyf4wjSV0Bf+rqa1ulvcMjLtj8jF3CYQdjoU2pTxumJNc0yr8x3DTLuY0OVeX/KAvs0XXOUlKtKorZ6YAc4o83VPuqSqeX2xnrQIHQb8LBBgHmQPoGBMmMZZ+5Lp6Z0zutVsfF2WRxoY6LJLw1eN1S25dZrET/e6brSdCFCKCzM/f84ZzduKb6CtDRKvy0h7DJj35vPGzG/wanliXAE0KNsOVZH7/XCAzGT7guQ7IUaLXDMTZ6VcaJziWGgj8m4COoQcTZky3feP2ZOFc9FVh9NOBRI4jCgPTM0D6aSdq/h0xZXx69qic45RiTEpbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VgJM+r8FUK64NIwaToeS0Jqf6Ffw4GG63eLK/XBmOxE=;
 b=Y/h7lDY8X/Ya2G/33EKxl+NQeVTRJw+TC8gaYxonW+wToUPT8VAAxM5J683UrrrIfV+ZbaiL04EpAg91wRNeY0wNGSPpR+g1M+DzCUQppTaj1NNELfEiyGrIQnWq0MKaYQxkLceW3jDp3q87M0gILWcfUDhlHLur+PKLLKiLvRt2gqXFdLszmW/wYGrhBBd3WAKdEuerW4DIUNIEOPBUttMpNzaRMlxgR5z2TIUswQzoQeNk/db+ZJmiNG7gCDJzh19tLLWIToQw2yytNDKFeWSoVbaO5soKH968tP5bEnLM9AyRtIqQsAeTVRapPfDmC9lv0lMybwcawFNBhNFnGg==
Received: from LV8PR12MB9620.namprd12.prod.outlook.com (2603:10b6:408:2a1::19)
 by DM4PR12MB6012.namprd12.prod.outlook.com (2603:10b6:8:6c::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9846.16; Wed, 22 Apr 2026 15:00:02 +0000
Received: from LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528]) by LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528%5]) with mapi id 15.20.9846.019; Wed, 22 Apr 2026
 15:00:01 +0000
Date: Wed, 22 Apr 2026 12:00:00 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260422150000.GK3199414@nvidia.com>
References: <21-v1-b5cab63049c0+191af-dmabuf_map_type_jgg@nvidia.com>
 <c413710b-4c28-4ed8-88ec-aeb8c4482011@amd.com>
 <20260413121628.GE2588311@nvidia.com>
 <f6d38a08-009c-4efe-9dc3-6bcf00ac35f7@amd.com>
 <20260422115306.GI3199414@nvidia.com>
 <fd8065ce-fd0e-4df5-9c80-8e9603657cfe@amd.com>
 <20260422131337.GJ3199414@nvidia.com>
 <e67426b9-4ded-4f6c-8309-7f847adb4540@amd.com>
Content-Disposition: inline
In-Reply-To: <e67426b9-4ded-4f6c-8309-7f847adb4540@amd.com>
X-ClientProxiedBy: YT4P288CA0082.CANP288.PROD.OUTLOOK.COM
 (2603:10b6:b01:d0::12) To LV8PR12MB9620.namprd12.prod.outlook.com
 (2603:10b6:408:2a1::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR12MB9620:EE_|DM4PR12MB6012:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d39485a-5cb6-449d-214f-08dea07fd43d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|7416014|376014|366016|22082099003|56012099003|18096099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	NDVN1wZS960bvxxCyFyOpFyNyGlik59XaYx9T9Z+tD6gdaWl9MUZ+OqCv7S7Qf/mAIgiTFdKYpzxLxdVpbPhtc3+wuWZxUYHfK64/O8xt4ol0N0twv9l2Wdn2xlmfgXAguZFGHR8Obo2Vmrf55EXffKZdnX9UBSH2qYSIuMoF9uyoKSDhOWIhaz2HlZptSBCrY0/W2QVHO/Jq+KcVgkHybNmNWuS5V0jnEPNdxh2w/CIhR9BUUGFwwEh3YAb2IiaJfvbo4DiLX1KFbNChue1uUaNolLFutIREV4fpMfMW478rHsRpco9iDAwxXrfEWmgMWxDv9ROWOt54aW3/92erHegVT8lsdgFMRNSuBBd4A+LF253VW7DBIsmXssUwit+Alu0T8xFGF+JRpMRsui2JaYaYYlzpcL+Oxez2uz5mD1ggD5TUkZcVeB86TZ3Ce60mxkZ0V+oFHzmRdqlPhaaAgUHvrL1sn0hXa+o+fWZ81NLnp93oi7dfqZoHflQMaclddSKkUtEW+XNC+85PKby4PUeX39nt3olGlVDcAP1mIY67xz0w6CrSPJOp7JFicogsX+Cw0t0UMfDi5c6qAt7itiQsqU95ESsmxXYIXSoTh2p778D6bAajnANf3GAeW/MpXgqGGozyuLFqd4nMtXIG5Eh3GmCRbY4IfC/feW+jHKEvmCGwHtb4urV4OrQn4rkH8/fREejWjFBOxB2h9GnO8J4hdAq+ECSPfinaAEbPpI=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV8PR12MB9620.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(22082099003)(56012099003)(18096099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OXRGeVVQM3FZQXZaKzlReUc0Zzd6c1ZvOFlOUmdBMmdxU2NiVzdHLzFXU0pZ?=
 =?utf-8?B?dWdTOVZXSCtNUXY3V2VkZzFHWVZpbXU1d2hxNjNSTjRFallCZGUwQUZpZDNQ?=
 =?utf-8?B?TUwyWWQxK0tiMENPWTNNbk5XdVZHWW4zSHlhT2tQY1JoVnZqL1A1VkhNMkND?=
 =?utf-8?B?aWdTeTkyM1FEdytDTFVYT21PdCswVEp1b04vMTd0ZFhjVjZodXFTS0VTRXlJ?=
 =?utf-8?B?dkI1YlJlMEx2UHdaMThHNi90QzROZWtvWTBhOU9raFhpdFpVNndjTmdvM0lY?=
 =?utf-8?B?UFFQSEZKRHhPV0J1MHdObndKSkd3Mnd3ZTUzYTlvblBqK2xjalAvL1hHT2Z1?=
 =?utf-8?B?RG5KSDBjYzlGQTVNQ3dHVGNZWjFzVW16cnRyL1lzNjNzVW9STnJNT3Q3a0gy?=
 =?utf-8?B?V1dXeVN3VUJJK1VJZGpqNnlTU2ZuM3dhNGt0WVhEWFRPMEFCS1ZJOEIwdGJi?=
 =?utf-8?B?SHQvSStHSkJWbVZieXZrZXczb3BJUWI1YVZjUFZ3WXN6c0gwamRkYVQvajA0?=
 =?utf-8?B?NTR5MWVMVC8xTG9SUEY5eVE0TGo5dWhabFJpZngyUnBWanpDRnVUMFF5Wmpy?=
 =?utf-8?B?QUI4MG1vSC93Rk5hMDNCZ1QwSXhtSmc4MlVKUHJkMURZNHFlazhKWkVKTXJG?=
 =?utf-8?B?Sy9IM1dkOC9wQnBUOXBjeitTdTh3Ui83QkthdEZZUHNDeWw1eWhzcnVHZzRt?=
 =?utf-8?B?eTdnL2hsendOU0pjV25MektvRjQzQzZZV0xpUGFSN0tNc0RVSVdUYU1PVVZa?=
 =?utf-8?B?L2R1YXdiYmZicG9OVmozb3NaQlFiY1hwQjRSNldMYUl3OGJRd0szb1QveUpL?=
 =?utf-8?B?V09xNlpDNmdlVFhHU0JnMGpDOGFDaXJ3VmdFajRLZEhydE52MUtxTHVuUzB0?=
 =?utf-8?B?cEorck1ZbzhTVjdYM2NRemdFZnFUdDdiRVl3UU01WVBSTGRHRTVrdW5CU1RN?=
 =?utf-8?B?U2lHd2UzZjlPYVlCaExwdDlYRDdIQnpHbTk0SCswTXgrM1FFMWw3aXF5bDJQ?=
 =?utf-8?B?VVJOMlFVL1F5UXI2Vkp6aitrTktvSjN1aVlBcHlyRlM2QjAyY0cyRSswTndY?=
 =?utf-8?B?MjRBSUp4NVBhSmVFK1phdUlETGdQVy90VU81dXRQcDQveVdTMkozWUs1OTRn?=
 =?utf-8?B?eXVBQjFRZnlKY3JWdS93SnRqOWFaOHlPMmtEKzllSWNOaGtadDZSVjdHaS9o?=
 =?utf-8?B?WjB2ZzkyWDdSaW81Tm1vdEJDSVNoYW10ZHVYdFFlNG1zV3NQMWVwbWNOeU0v?=
 =?utf-8?B?YU5SLzgvM29kV2tKVlcwRk8rbDZQamxoSnNwQndIQkdrMGMwLzRkVUZFM09Q?=
 =?utf-8?B?aHkwdWNFYVEwN2JnbVJ3ZUEvbkhma25Tb2U0RThsZmxrZWFiQlBhMEltZWp5?=
 =?utf-8?B?UkdjVk5tUm9FWW9FcEt1N1B6alFONDB3YkVKb2JnclQvZHJZVnIrY1BOd1Rn?=
 =?utf-8?B?bTZDOTdMenh3ZHUvQUYyVWJHSW14cnNwMlVKNVF6eWtzS0NjVnFvUmUvd1pv?=
 =?utf-8?B?SjUyd3FOeWU1bHJieDBTa1pUMlFnM0dEcTZYMis4Uk9VRjFlanR6KzAxcUJo?=
 =?utf-8?B?c25mTm5MWW9ka09lY1crbzdyVmVxVXBrRk8zbmc1VllqNHNHQ1JxaExOVU91?=
 =?utf-8?B?R1VjYTRDSGNGYjlqbkhwaU54ZFM1NUhpTEcwTStjcC9DUGplejJLZ3JsMnJ3?=
 =?utf-8?B?WEY1dVlWbVl0amRFaGdra0dUeUIwd0ZaaWRGcTZTRVBhMW5yOGpWVzROYzVz?=
 =?utf-8?B?dU5ISVJZL2J4cXpqSXRqb3pzSS9RcXdOQmc2anRKUERsNlZkNDVsdGsvQysy?=
 =?utf-8?B?bHNpc2lJZW9TR3pqUDFpd2pnOFVFSUw5RlF3TDQzVFhlYmx6aG04NEswWGRF?=
 =?utf-8?B?bDdIRkM5WWw1clpFQkt1L1BZdk5wWXNqYjhlam45TmdIMGI5eVBzaytUNmpw?=
 =?utf-8?B?ZGtZV2NpVGtIYnorQzYzZjNyemUvelY3WlQrWlk0eE52TFNyU1VzN3ZhWDE3?=
 =?utf-8?B?dzFSTXNGZnVFNUlvdnpnazRZSitIbm1tVVJuMFh5eDBOamR2UVZoYkxzVVQ2?=
 =?utf-8?B?Vy9Na2tRNzgrR2NqSzlNY2lpK0tGNU1IckRRSVY2SmEyYlZSais2UkYweDZx?=
 =?utf-8?B?WGxsa011NWRwWFV3MGlVWmp1cnJCbXIwRlFmNFd0Ly9zOXFvZ1ZGcDlPRDZt?=
 =?utf-8?B?MTRqQUlSS2t3YlFPMlhIazNXeTdRN1oyKzRhVDM3dFBwb3A3WEtDaXlOaFZr?=
 =?utf-8?B?TWFDU1M5VHk1cTZkTFk1K3p3TlduR0NuTDdJOHliTXR3TDRhaUptVGJaRVZs?=
 =?utf-8?Q?VknX+e1qJ3yr5J99SA?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d39485a-5cb6-449d-214f-08dea07fd43d
X-MS-Exchange-CrossTenant-AuthSource: LV8PR12MB9620.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2026 15:00:01.8023
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PO5VsNEdkzZVrwhp14CjSAptIyBHAvhCYP3ymPXYhMAw9exJoHt3E+Dpsh9pnycI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6012
X-Spamd-Bar: ----
Message-ID-Hash: 2IWHCLSUABAXTI6CWYCVTVDUFXLCPW7T
X-Message-ID-Hash: 2IWHCLSUABAXTI6CWYCVTVDUFXLCPW7T
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, iommu@lists.linux.dev, Kevin Tian <kevin.tian@intel.com>, Leon Romanovsky <leonro@nvidia.com>, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Matthew Brost <matthew.brost@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas Hellstrom <thomas.hellstrom@linux.intel.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 21/26] dma-buf: Add the Physical Address List DMA mapping type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2IWHCLSUABAXTI6CWYCVTVDUFXLCPW7T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.784];
	FROM_NEQ_ENVFROM(0.00)[jgg@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 62619447A11
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCBBcHIgMjIsIDIwMjYgYXQgMDQ6MDQ6MTlQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gPiBXZWxsLCBteSBmaXJzdCByZWFjdGlvbiBpcyB2ZXJ5IG5lZ2F0aXZlLCB0
aGlzIHN1Z2dlc3Rpb24gaXMgbGVha2luZw0KPiA+IGRlZXAgaW50ZXJuYWwgZGV0YWlscyBsaWtl
IGlvbW11X2RvbWFpbiBvdXQgb2YgdGhlIHNpbmdsZSBwbGFjZSB0aGF0DQo+ID4gbmVlZHMgdGhl
bSAtIGlvbW11ZmQgLSBpbnRvIGFib3V0IDYgZXhwb3J0ZXIgZHJpdmVycy4gTm90IG5pY2UuIEkg
aGF2ZQ0KPiA+IHRoZSBtaXJyb3Igb2YgeW91ciBjb25jZXJuIHRoYXQgSSBkb24ndCB0cnVzdCBE
Uk0gZHJpdmVycyBub3QgdG8gYWJ1c2UNCj4gPiB0aGUgaW9tbXVfZG9tYWluIHBvaW50ZXIgaW4g
c29tZSB2ZXJ5IGNyZWF0aXZlIHdheS4NCj4gDQo+IFllYWgsIG9mIGNvdXJzZSB0aGF0IGFyZ3Vt
ZW50IGdvZXMgaW50byBib3RoIGRpcmVjdGlvbnMuDQo+IA0KPiBUaGUgcG9pbnQgaXMganVzdCB0
aGF0IHdlIGhhdmUgbXVjaCBtb3JlIGltcG9ydGVycyB0aGFuIGV4cG9ydGVycyB0bw0KPiBoYW5k
bGUsIGFuZCBmcm9tIGV4cGVyaWVuY2UgaXQgd2FzIGFsd2F5cyB0aGUgaW1wb3J0ZXIgd2hvIG1l
c3NlZA0KPiB0aGluZ3MgdXAuDQoNCkkgdGhpbmsgdGhhdCBpcyB0cnVlIGZvciBzY2F0dGVyIGxp
c3QsIGJ1dCBpdCBpcyB0aGUgb3Bwb3NpdGUgZm9yIHRoaXMNCmlvbW11ZmQgY29ubmVjdGlvbi4g
T25lIGlvbW11ZmQsIG1hbnkgZXhwb3J0aW5nIGRyaXZlcnMuDQoNCkkgaW1hZ2luZSBhbGwgdGhl
IGNvbXB1dGUvc2VydmVyIHR5cGUgRFJNIGRyaXZlcnMgcGx1cyBSRE1BIGFuZCBWRklPDQp3aWxs
IHdhbnQgdG8gaW1wbGVtZW50IGV4cG9ydGVycy4gVGhhdCdzIGF0IGxlYXN0IDUuLg0KDQo+IEJh
Y2tncm91bmQgaXMgdGhhdCB0aGUgaW1wb3J0ZXIgaW50ZWdyYXRlcyB0aGUgYnVmZmVyIGludG8g
aXQncyBvd24NCj4gaGFuZGxpbmcgd2hpY2ggbWlnaHQgbm90IGJlIG1hZGUgZm9yIHRoZSB3YXkg
dGhlIGV4cG9ydGVyIGlzDQo+IGV4cGVjdGluZyB0aGluZ3MgdG8gYmUgdXNlZC4NCg0KSSB0aGlu
ayBkbWFidWYgaGFzIHJvYnVzdCBydWxlcyBmb3IgbGlmZWN5Y2xlLCBhbmQgdGhlIGludmFsaWRh
dGlvbg0Kbm90aWZpY2F0aW9uIG1lY2hhbmlzbS4gSXQgaXMgY29tcGxleCBhbmQgcGVyaGFwcyBu
b3Qgd2VsbCB1bmRlcnN0b29kLA0KYnV0IGFsbCB0aGUgdGVjaG5pY2FsIHBpZWNlcyBhcmUgdGhl
cmUgdG8gYWxsb3cgYSBjb3JyZWN0IGltcG9ydGVyLg0KDQpJIGZ1bGx5IGFncmVlIGlmIHRoZSBp
bXBvcnRlciBtZXNzZXMgdXAgdGhlIHJ1bGVzIHRoaW5ncyB3aWxsIGJlDQpicm9rZW4gYW5kIHlv
dSB3aWxsIGhhdmUgY29ycnVwdGlvbiBpc3N1ZXMuIEJ1dCB0aGV5IGNhbiBtZXNzIHVwDQpzY2F0
dGVybGlzdCBsaWZ0aW1lIHRvbyEgWWVzLCBWTUFzIGFyZSBhIHJlYWxseSBlYXN5IHdheSB0byBt
ZXNzIGl0DQp1cCwgYW5kIGZvciBzb21lIHJlYXNvbiBEUk0gZHJpdmVycyByZWFsbHkgd2FudCB0
byBwdXQgdGhpbmdzIGluDQpWTUFzIDxzaHJ1Zz4NCiANCj4gPiBIb3dldmVyLiBXaXRoIGEgc3Vp
dGFibGUgaGVscGVyIHdlIGNhbiBsYXJnZWx5IGlzb2xhdGUgdGhpcyB0byBhDQo+ID4gc2luZ2xl
IGZ1bmN0aW9uIGFuZCB5ZWFoIEkgY2FuIHNlZSBtYWtpbmcgdGhpcyBmdW5jdGlvbmFsLg0KPiAN
Cj4gVGhlIGltcG9ydGFudCBwb2ludCBpcyB0aGF0IHRoZSBleHBvcnRlciBzaG91bGQgbm90IG5l
ZWQgdG8gZXhwb3NlDQo+IGl0J3MgcGh5c2ljYWwgZGF0YSBzdG9yZSBhbmQgaG93IGl0J3MgaG91
c2VrZWVwaW5nIHdvcmtzLg0KDQpJJ2QgYXJndWUgdGhlIG90aGVyIHNpZGUganVzdCBhcyBzdHJv
bmdseSwgdGhlIGltcG9ydGVyIHNob3VsZCBub3QNCmhhdmUgdG8gZXhwb3NlIGl0cyB1bmRlcmx5
aW5nIEhXIG9iamVjdHMgb3IgaG93IHRoZXkgd29yayBlaXRoZXIuDQoNCldvdWxkIHlvdSBiZSBv
cGVuIHRvIGFuIGluLWJldHdlZW4/IFRoZSBleHBvcnRlciBhbmQgaW1wb3J0ZXIgYm90aA0KaGF2
ZSBpbmZvcm1hdGlvbiB0aGF0IHNob3VsZCBub3QgbGVhayBpbnRvIGVhY2ggb3RoZXIncyBkcml2
ZXJzLiANCg0KV2hhdCBpZiB0aGUgZG1hYnVmIG1hcHBpbmcgdHlwZSBjb3JlIGNvZGUgd2FzIHRo
ZSBvbmx5IHRoaW5nIHRoYXQgaGFkDQphY2Nlc3MgdG8gKkJPVEgqPyBUaGUgZXhwb3J0ZXIgcHJv
dmlkZXMgdGhlIGFkZHJlc3MgZGF0YSwgdGhlIGltcG9ydGVyDQpwcm92aWRlcyB0aGUgaW9tbXVf
ZG9tYWluLiBUaGUgY29yZSBjb2RlLCBhbmQgb25seSB0aGUgY29yZSBjb2RlLCBoYXMNCmJvdGgg
YW5kIGRvZXMgdGhlIHJlcXVpcmVkIG9wZXJhdGlvbj8NCg0KSSB0aGluayB0aGF0IHNhdGlzZmll
cyB5b3VyIGdvYWwgdG8gcHJldmVudCBpbXBvcnRlcnMgZnJvbSBhY2Nlc3NpbmcNCnRoZSBpbmZv
cm1hdGlvbj8NCg0KSW4gdGhlIGxhbmd1YWdlIG9mIHRoaXMgc2VyaWVzIEkgaW1hZ2luZSBhIFBB
TCBleHBvcnRlciwgYW5kIGFuDQppb21tdV9kb21haW4gaW1wb3J0ZXIuIE5vIFBBTCAqaW1wb3J0
ZXIqLCBubyBleHBvc2luZyBwaHlzX2FkZHJfdCB0bw0KaW1wb3J0ZXJzLg0KDQpJbnN0ZWFkIHRo
ZSBjb3JlIGNvZGUgd2lsbCBtYXRjaCBhIFBBTCBleHBvcnRlciB0byBhbiBpb21tdV9kb21haW4N
CmltcG9ydGVyLiBUaGUgY29yZSBjb2RlIHdpbGwgcHJvdmlkZSBhICJjb252ZXJ0ZXIgZnVuY3Rp
b24iIGZyb20gUEFMDQp0byBpb21tdV9kb21haW4uIE9ubHkgdGhpcyBjb252ZXJ0ZXIgZnVuY3Rp
b24gY2FuIHNlZSB0aGUgcGh5c19hZGRyX3QNCmFuZCBpb21tdV9kb21haW4gdG9nZXRoZXIuIFRo
ZSBleHBvcnRlciBkb2VzIG5vdCBzZWUgaW9tbXVfZG9tYWluLg0KDQpUaGlzIGlzIGFwcGVhbGlu
ZyB0byByZWR1Y2UgdGhlIGRyaXZlciBidXJkZW4uIEEgY29udmVydGVyIHRoYXQgY2FsbHMNCmRt
YV9idWZfcGh5c192ZWNfdG9fc2d0KCkgY291bGQgZXhpc3QuIFRoZW4gYSBkcml2ZXIgb25seSBo
YXMgdG8NCmltcGxlbWVudCBQQUwgZXhwb3J0ZXIgYW5kIGl0IHdvcmtzIHdpdGggdHdvIG9mIHRo
ZSBpbXBvcnRlciBtYXBwaW5nDQp0eXBlcy4gTWFrZXMgaXQgZWFzaWVyIHRvIGludHJvZHVjZSBm
dXR1cmUgdHlwZXMgKGVnIHNjYXR0ZXJsaXN0LW5nKQ0KDQpJIGRvbid0IHRoaW5rIGl0IHdvdWxk
IGJlIGEgbmljZSBvdXRjb21lIGlmIGV2ZXJ5IGV4cG9ydGluZyBkcml2ZXIgaGFzDQp0byBvcGVu
IGNvZGUgc2V2ZXJhbCBkbWFfYnVmX3BoeXNfdmVjX3RvX1hYWCgpIGhlbHBlciBjYWxscy4NCg0K
KEkgc2F5IFBBTCBleHBvcnRlciBoZXJlIGZyb20gbXkgbm9uLURSTSBwZXJzcGVjdGl2ZSwgYnV0
IG1heWJlIERSTQ0Kd2FudHMgYSBiby90dG0vZ2VtL3BhZ2VbXSBvciBzb21ldGhpbmcgYXMgdGhl
IGV4cG9ydGVyIG1hcHBpbmcgdHlwZSkNCg0KPiA+IERvIHlvdSBoYXZlIGEgcG9zaXRpdmUgZmVl
bGluZyBhYm91dCB0aGUgZ2VuZXJhbCBtYXBwaW5nIHR5cGUgc3lzdGVtDQo+ID4gZnJvbSB0aGUg
ZWFybGllciBwYXRjaGVzPw0KPiANCj4gQXMgZmFyIGFzIEkgY2FuIHNlZSB0aGF0IGdvZXMgaW50
byB0aGUgcmlnaHQgZGlyZWN0aW9uLCB5ZXMuDQoNCk9rYXksIGRvIHlvdSBoYXZlIGd1aWRhbmNl
IHdoYXQgeW91J2QgbGlrZSB0byBzZWUgYXMgYSBub24tUkZDDQpwb3N0aW5nPyBJZGVhbGx5IEkn
ZCBsaWtlIHRvIG1ha2Ugc21hbGxlciBzdGVwcywgdGhpcyBSRkMgd2FzDQpyZXNwb25kaW5nIHRv
IHlvdXIgcmVxdWVzdCB0byBzZWUgZXZlcnl0aGluZy4NCg0KYSkganVzdCB0aGUgY29yZSBkbWFi
dWYgaW5mcmFzdHJ1Y3R1cmUgZm9yIG1hcHBpbmcgdHlwZSBpbmZyYSBhbmQgU0dMDQpiKSBhIHBs
dXMgc29tZSBzZXQgb2YgdGhlIHNpbXBsZXIvc2FmZXIgZHJpdmVyIGNvbnZlcnNpb25zDQpjKSBh
IHBsdXMgYWxsIHRoZSBkcml2ZXIgY29udmVyc2lvbnMNCg0KPw0KDQpJZiB3ZSBhZ3JlZSB0byB0
aGUgImNvbnZlcnRlciBmdW5jdGlvbnMiIGlkZWEgSSBpbWFnaW5lIHRoZSBmb2xsb3dpbmcNCnNl
cXVlbmNlIG9mIHNlcmllczoNCg0KMSkgSW50cm9kdWNlIGJhc2ljIGRtYSBidWYgbWFwcGluZyB0
eXBlcyBmb3IgU0dMDQogICBzaWRlIGFjdGl2aXR5OiBNb3ZlIGRyaXZlcnMgZnJvbSBsZWdhY3kg
dG8gU0dMIG1hcHBpbmcgdHlwZQ0KDQoyKSBJbnRyb2R1Y2UgZG1hIGJ1ZiBtYXBwaW5nIHR5cGUg
Y29udmVyc2lvbiBmdW5jdGlvbnMuIFdpdGggUEFMIHRvDQogICBTR0wgY29udmVydGVyLiBSZXN0
cnVjdHVyZSB2ZmlvIHRvIGJlIFBBTCBvbmx5IGFuZCByZWx5IG9uIHRoZQ0KICAgY29udmVydGVy
IGZvciBTR0wNCiAgIHNpZGUgYWN0aXZpdHk6IE1vdmUgbW9yZSBleHBvcnRlcnMgdG8gUEFML2V0
YyBhd2F5IGZyb20gU0dMDQoNCjMpIEludHJvZHVjZSBkbWEgYnVmIGlvbW11X2RvbWFpbiBpbXBv
cnRlciBvbmx5IG1hcHBpbmcgdHlwZS4gQ29yZQ0KICAgY29kZSBjb252ZXJ0ZXIgZnJvbSBQQUwg
dG8gaW9tbXVfZG9tYWluLiBpb21tdWZkIGltcGxlbWVudGF0aW9uIG9mDQogICB0aGUgaW1wb3J0
ZXINCg0KVGhhbmtzLA0KSmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
