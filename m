Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A36789F9CA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Apr 2024 16:22:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 07F2C3F359
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Apr 2024 14:22:29 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2107.outbound.protection.outlook.com [40.107.244.107])
	by lists.linaro.org (Postfix) with ESMTPS id 254DE3F359
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Apr 2024 14:22:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=ft7AR8Na;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.244.107 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A/A39cTkRMay/8oLdSh+p5+w7tV7NcR+N18b1ZEOpspBZ2Fb7OpQ88YmVHRoGdjth7gLuKc/lEoO7HUrfyAbNONFHkeItgNdrwat7xVDHNx0jYGjLYxzGL9dzdv166AvM1x//dBZDJwzEU7/LrxFGjkAhV3OABIew/NAhwZatVBmpxOik9yX8XsiKQ5Y28lgTbqsHQXVcoawc6/uHrnXTf5IWniQr8BqtAUjWpVloP4JnctGYFRnybAbPe0PES/Roe38Et6whXxDo4xl4reX6UenNACwuqwpkscaXbuzr9Idqa137rXuBjt7LyIwE7r+Mlmsneo9rcruvD1ImEQLkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bK2luO03Ielw2QJsOORU4GatgvD/LP3DVTBkFsLY5t4=;
 b=T9oXnmiwLXAHBrnKPNZrn+DpRYvEcMJMRQve+kZUnXkpxJDPulAcpuyWPwGpz9+40pg7qhlvFiQ4D4V0y7D1qh2Zydnn9O9JGkAMn9McrhRUEZkORzL2rP7wr5wHem/b/ZSog9DFHebopF23WLl3G2yHQBdWb+eGptUM/BVCjT+TjXmcpLXDtzoBpRMAfa55KZg6UE2lSGIGg8/xoPYEJUbQx5ECYs0pzoxYWm6oHfLDHtwAn15MDxEbTrg8LUzD/kpMgFIayW8+cTuitzbrZrZ0PD1iz4Oyra3xqy5bEp0PNIaiBmm31+fh3hm5ZMGMv8s2QJjw341L6ERig85qaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bK2luO03Ielw2QJsOORU4GatgvD/LP3DVTBkFsLY5t4=;
 b=ft7AR8NaC9NpiJQjA3IT/5GuwLYTjeNtobEsVGwwgxgemozN/AOOKdH72Fh6B77NWDApKnwH9EPADdkxapavzhUhtZtUcKrDWSMpmwic/JTr/9VAuKND1fwcFaPyq+Hvvolw/RGBDeYOu/bTLGw96et7vi5U4kajIcRq2UF2jOA=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM4PR12MB5721.namprd12.prod.outlook.com (2603:10b6:8:5c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Wed, 10 Apr
 2024 14:22:19 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a%6]) with mapi id 15.20.7409.042; Wed, 10 Apr 2024
 14:22:18 +0000
Message-ID: <0df41277-ded5-4a42-9df5-864d2b6646f5@amd.com>
Date: Wed, 10 Apr 2024 16:22:00 +0200
User-Agent: Mozilla Thunderbird
To: "T.J. Mercier" <tjmercier@google.com>, Rong Qianfeng <11065417@vivo.com>
References: <20211113062222.3743909-1-jay.xu@rock-chips.com>
 <1da5cdf0-ccb8-3740-cf96-794c4d5b2eb4@amd.com>
 <3175d41a-fc44-4741-91ac-005c8f21abb8@vivo.com>
 <9e6f1f52-db49-43bb-a0c2-b0ad12c28aa1@amd.com>
 <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
 <CABdmKX1OZ9yT3YQA9e7JzKND9wfiL-hnf87Q6v9pwtnAeLHrdA@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CABdmKX1OZ9yT3YQA9e7JzKND9wfiL-hnf87Q6v9pwtnAeLHrdA@mail.gmail.com>
X-ClientProxiedBy: VI1PR08CA0239.eurprd08.prod.outlook.com
 (2603:10a6:802:15::48) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM4PR12MB5721:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	RAXuz9Ue2n4VdHjHSbGXIZ/vzZ+1nvGL/X64R5AM9YvsqaC7qLb4moYn+texMzZJEs4RHXH1J63x1CftnPE+uPopw8Hf4VKx0twtv0cumaQR2+SQZDAAHCNjXbjFsR4VcPLGcTckAVhRIwo1kbu9cMkBvy46p7ArjtkR/ojVU20Vyxpj1XdZe9hzJIrVvMH2jz+ZwbgBhgqES8iOCHHC8kGaICcJtpOvPfJh3DzYHOjW5A8ylok+xcn2kjXuL5nkmSZlbEPe3Yb3V5JvJnL5KWgVmFvo2Vdg+bVkVbA7RPutVHXlfMfkzEiuE183NCCLql4VF1MIXJFr3+6mGlhgSwb7wbriPvzS82952Z/JQzYfR91FPFmyCdr5vyJyEFvPGWLl6/nQT84ZNd95iGjChALeZpxwzCy0q5nZxDa54qP3ysoFojNpLdqNEm7siT5NcBTgKqUrvm4cPCfin5pZHrmcp0sQoZJxQY75PamlbYk12s6YfG5hp+KGNSSFWJSU2U4wjzhWQTUmFDZdaNPYsabSAySyRkWzd51deif6u66aFM7UgDI1x0oddYvg4O37M9t3z52R+zuP5X9dvQ6TM2K8W3vNLNWqE/p47LlUv+o=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7416005)(366007)(376005)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?d1JCRnczTDVWSzRSeXhIN3FTYk1lTXhuWkpWUG9FK2Y5bEx4UFd2ekRJa0hU?=
 =?utf-8?B?R3BxN29GemtIMWdja0MvMlptcW9jY3NtWm5CM25PTHpHTk84RWRCOU9KMzd6?=
 =?utf-8?B?YXdMclR0b1NBR3lnWkJwN2tCdllpQ0d3K0l6bjM5cEQ5ME5WRlUxbjZVUDhp?=
 =?utf-8?B?cXJ0SlNTZTExc3lqV213MjlYK0ZRdjduc3B3MFFUZnErK29OTXB1c05vaG1R?=
 =?utf-8?B?eDFGNkloeUNFdUZqMU1yVVF1OWZrQmZYYXRCSHh3VUtwZDJiR0V4NC9KdTNP?=
 =?utf-8?B?S2hsTHZDWEZDbzRSMnZxaTZwZmxYSlVzd01uakQ3VlZYcTBVbnpUcU53WUJs?=
 =?utf-8?B?R284RkVyRzJzV2hxbnhFa09LaFBxRFlmTkw5UGFRQUZkK0MzYk1XeThMUkRV?=
 =?utf-8?B?RmRlQURiQUtMMTNnS09hWXM5Rm44TWZoV1FVem1iQlF3VCtiUUZzZVFaVzJw?=
 =?utf-8?B?emF4NElvYTM3RUFlVi81M3pRWGNKWkpCTXdpRndyd2RldTJUM3BUbXE4ZnM0?=
 =?utf-8?B?YUxRSW5SZ0d5UlFWS1RXMGwxQWxUZGl4OXcvN2JwdFhIc1lzejJkOE5kWkpJ?=
 =?utf-8?B?Vk5tNG53TVY0L21iYWtRSE9XakxDZjU1MUo0bzNqREdwVExIZlB2UEZScUhH?=
 =?utf-8?B?aU1aUk4vc1p5clo2UUwwUkFmQ0xtQ2FST2ZEVGtpcDI2VE9hNUJSSkRma1A4?=
 =?utf-8?B?aDM1NEJLRzM3RzZiNHJiK21LOG9odGE2aVNDL2RzQXRsajU1dTFHSUNXTkpK?=
 =?utf-8?B?SVNXM2ltd1B5Y0xjdktvVFo0YnRnWERHdkdNZlhRRHY1bkozSnlqbElXTE9z?=
 =?utf-8?B?T25Sd201b0oxelgwbmV1QnR4eGY1aGxIQkZJWXQrRzcxamx4MW4zN25BeXZ1?=
 =?utf-8?B?K1RmOTlic0tISEIzVHg4N0J1Zi9oTzlqYU15ZHJrUWdVNitrOGdMR0szZkZC?=
 =?utf-8?B?ZTZCNmRPdnNieFFqMXcrS1hmamxZMFgyblF4WnFqc0VNYUM2MEx0blk1SGor?=
 =?utf-8?B?OVJHaWFSMWtpMEJRVU5SSnJxUDlHLzFZMUptSFJ1SG45V3YxV1BoYXdvRkhS?=
 =?utf-8?B?ZU1wNUQyaDFQVFBCam1iK1BmMDhBdzcxazB2ajVCTWZFVGc2SHFlT0szMlNH?=
 =?utf-8?B?OXk4WUprbTRUUGxQZUZPQ0xuQWF0b2J6a0ZyaWRmckNDN3ppdnFDa2g0ZmYw?=
 =?utf-8?B?OHJlVXhpYXN1UlJUWlE2N2Nkc1k2dHBucVJvSVJYVUlpZVA0dXpoM05CeHVG?=
 =?utf-8?B?UDF2Y09Qc1lldG8zbnhWazd0Q284UXRIOW5QL1dscTdEaFFoRTZPOHQ5L1lx?=
 =?utf-8?B?MXM1Q3JCZGVwSlVtbWxOMkxaL01FS1QxajRISndXblJmYmozK0l0NkpCZXNk?=
 =?utf-8?B?WDVreWNnQzNSa2xKOTZoOHp6ZVB0Z2JzZ1A5TW9qRDByOVdMQmhPbzllWC9V?=
 =?utf-8?B?ZlNYT3E2d1d6MEh1VFBLR0owMXVBWTA3SVdvSGhRazhzMmpjeVJWZExFbVZl?=
 =?utf-8?B?Mkd2Q2J6aVUrSmhXK1VHaTRBeURSUWJOMnBHc0tNSm84dVcvdzdnZUhHUHls?=
 =?utf-8?B?NlFGUWtlOG9ZVU4zdDk1aVBGTEloLy9DaDBsM2pReXdyU2U4cC9sOWNjaTZi?=
 =?utf-8?B?WnJjbVJNWUFvRkpibFlNdlVJbEp2TmpXd25iWE1SRENpTm82UVhwN25XL3k2?=
 =?utf-8?B?M2pLbWpsNVVhZnUvSnNuV0NVT2oydkE2SE9BdllZdGFNMmxhQVN5N1haRnBF?=
 =?utf-8?B?K1hWSE5oS0FaWkdUOHB0d2YvQWROdW44dFdac0pjR2p2b1lZR2VjbHFhU2ZF?=
 =?utf-8?B?R2ppNzlDcEp0VUNEeEwzU04yMHFHZ3JVeVJJQS9sZGltYzQzbWlOQXhpYlNp?=
 =?utf-8?B?Tzh4TnlLOEtEWllUS3Z4aFJud2pMaUE1ekVjd1FMWkJsaWdIRkF5RFU4THpK?=
 =?utf-8?B?cGV0ODNHMmJIRDZVazN4NzF4ZGN5YkhFdll6dzl1SFVKYVRyYTUzMW10OUlN?=
 =?utf-8?B?SDh4L3ppeDdBSGV4NzYvN09RQ0xnKy9MeFgzaDc3WUtFRHV4M0s0WjN1OHg3?=
 =?utf-8?B?aFNQZ0tpK1NRWTVkQmMzY1RvV0o5QWt5TmFSZFdxQWJaMC9RemxYd1F6cG1s?=
 =?utf-8?Q?v17umNHXgyWVmR1ZeLPtGRGUg?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0acf21fd-0ed0-4e31-a196-08dc5969a0e0
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2024 14:22:18.8185
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /2ZcmmtpC3S/0NksgbRKDopFUvc261CS1ni5e3G/T190y/UqE0sEOZuo3TzKDG3x
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5721
X-Rspamd-Queue-Id: 254DE3F359
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.99 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.107:from];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[vivo.com:email];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: PPYRJ2AUZ7XW2K4VWAX3EC7BVMJNCDRL
X-Message-ID-Hash: PPYRJ2AUZ7XW2K4VWAX3EC7BVMJNCDRL
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rong Qianfeng <rongqianfeng@vivo.com>, Jianqun Xu <jay.xu@rock-chips.com>, sumit.semwal@linaro.org, pekka.paalanen@collabora.com, jason@jlekstrand.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: add DMA_BUF_IOCTL_SYNC_PARTIAL support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PPYRJ2AUZ7XW2K4VWAX3EC7BVMJNCDRL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDkuMDQuMjQgdW0gMTg6Mzcgc2NocmllYiBULkouIE1lcmNpZXI6DQo+IE9uIFR1ZSwgQXBy
IDksIDIwMjQgYXQgMTI6MzTigK9BTSBSb25nIFFpYW5mZW5nIDwxMTA2NTQxN0B2aXZvLmNvbT4g
d3JvdGU6DQo+Pg0KPj4g5ZyoIDIwMjQvNC84IDE1OjU4LCBDaHJpc3RpYW4gS8O2bmlnIOWGmemB
kzoNCj4+PiBBbSAwNy4wNC4yNCB1bSAwOTo1MCBzY2hyaWViIFJvbmcgUWlhbmZlbmc6DQo+Pj4+
IFtTTklQXQ0KPj4+Pj4gQW0gMTMuMTEuMjEgdW0gMDc6MjIgc2NocmllYiBKaWFucXVuIFh1Og0K
Pj4+Pj4+IEFkZCBETUFfQlVGX0lPQ1RMX1NZTkNfUEFSVElBTCBzdXBwb3J0IGZvciB1c2VyIHRv
IHN5bmMgZG1hLWJ1ZiB3aXRoDQo+Pj4+Pj4gb2Zmc2V0IGFuZCBsZW4uDQo+Pj4+PiBZb3UgaGF2
ZSBub3QgZ2l2ZW4gYW4gdXNlIGNhc2UgZm9yIHRoaXMgc28gaXQgaXMgYSBiaXQgaGFyZCB0bw0K
Pj4+Pj4gcmV2aWV3LiBBbmQgZnJvbSB0aGUgZXhpc3RpbmcgdXNlIGNhc2VzIEkgZG9uJ3Qgc2Vl
IHdoeSB0aGlzIHNob3VsZA0KPj4+Pj4gYmUgbmVjZXNzYXJ5Lg0KPj4+Pj4NCj4+Pj4+IEV2ZW4g
d29yc2UgZnJvbSB0aGUgZXhpc3RpbmcgYmFja2VuZCBpbXBsZW1lbnRhdGlvbiBJIGRvbid0IGV2
ZW4gc2VlDQo+Pj4+PiBob3cgZHJpdmVycyBzaG91bGQgYmUgYWJsZSB0byBmdWxmaWxsIHRoaXMg
c2VtYW50aWNzLg0KPj4+Pj4NCj4+Pj4+IFBsZWFzZSBleHBsYWluIGZ1cnRoZXIsDQo+Pj4+PiBD
aHJpc3RpYW4uDQo+Pj4+IEhlcmUgaXMgYSBwcmFjdGljYWwgY2FzZToNCj4+Pj4gVGhlIHVzZXIg
c3BhY2UgY2FuIGFsbG9jYXRlIGEgbGFyZ2UgY2h1bmsgb2YgZG1hLWJ1ZiBmb3INCj4+Pj4gc2Vs
Zi1tYW5hZ2VtZW50LCB1c2VkIGFzIGEgc2hhcmVkIG1lbW9yeSBwb29sLg0KPj4+PiBTbWFsbCBk
bWEtYnVmIGNhbiBiZSBhbGxvY2F0ZWQgZnJvbSB0aGlzIHNoYXJlZCBtZW1vcnkgcG9vbCBhbmQN
Cj4+Pj4gcmVsZWFzZWQgYmFjayB0byBpdCBhZnRlciB1c2UsIHRodXMgaW1wcm92aW5nIHRoZSBz
cGVlZCBvZiBkbWEtYnVmDQo+Pj4+IGFsbG9jYXRpb24gYW5kIHJlbGVhc2UuDQo+Pj4+IEFkZGl0
aW9uYWxseSwgY3VzdG9tIGZ1bmN0aW9uYWxpdGllcyBzdWNoIGFzIG1lbW9yeSBzdGF0aXN0aWNz
IGFuZA0KPj4+PiBib3VuZGFyeSBjaGVja2luZyBjYW4gYmUgaW1wbGVtZW50ZWQgaW4gdGhlIHVz
ZXIgc3BhY2UuDQo+Pj4+IE9mIGNvdXJzZSwgdGhlIGFib3ZlLW1lbnRpb25lZCBmdW5jdGlvbmFs
aXRpZXMgcmVxdWlyZSB0aGUNCj4+Pj4gaW1wbGVtZW50YXRpb24gb2YgYSBwYXJ0aWFsIGNhY2hl
IHN5bmMgaW50ZXJmYWNlLg0KPj4+IFdlbGwgdGhhdCBpcyBvYnZpb3VzLCBidXQgd2hlcmUgaXMg
dGhlIGNvZGUgZG9pbmcgdGhhdD8NCj4+Pg0KPj4+IFlvdSBjYW4ndCBzZW5kIG91dCBjb2RlIHdp
dGhvdXQgYW4gYWN0dWFsIHVzZXIgb2YgaXQuIFRoYXQgd2lsbA0KPj4+IG9idmlvdXNseSBiZSBy
ZWplY3RlZC4NCj4+Pg0KPj4+IFJlZ2FyZHMsDQo+Pj4gQ2hyaXN0aWFuLg0KPj4gSW4gZmFjdCwg
d2UgaGF2ZSBhbHJlYWR5IHVzZWQgdGhlIHVzZXItbGV2ZWwgZG1hLWJ1ZiBtZW1vcnkgcG9vbCBp
biB0aGUNCj4+IGNhbWVyYSBzaG9vdGluZyBzY2VuYXJpbyBvbiB0aGUgcGhvbmUuDQo+Pg0KPj4g
ICBGcm9tIHRoZSB0ZXN0IHJlc3VsdHMsIFRoZSBleGVjdXRpb24gdGltZSBvZiB0aGUgcGhvdG8g
c2hvb3RpbmcNCj4+IGFsZ29yaXRobSBoYXMgYmVlbiByZWR1Y2VkIGZyb20gMy44cyB0byAzcy4N
Cj4+DQo+IEZvciBwaG9uZXMsIHRoZSAob3V0IG9mIHRyZWUpIEFuZHJvaWQgdmVyc2lvbiBvZiB0
aGUgc3lzdGVtIGhlYXAgaGFzIGENCj4gcGFnZSBwb29sIGNvbm5lY3RlZCB0byBhIHNocmlua2Vy
Lg0KDQpXZWxsLCBpdCBzaG91bGQgYmUgb2J2aW91cyBidXQgSSdtIGdvaW5nIHRvIHJlcGVhdCBp
dCBoZXJlOiBTdWJtaXR0aW5nIA0Ka2VybmVsIHBhdGNoZXMgZm9yIG91ciBvZiB0cmVlIGNvZGUg
aXMgYSByYXRoZXIgKmV4dHJlbWUqIG5vLWdvLg0KDQpUaGF0IGluIGtlcm5lbCBjb2RlICptdXN0
KiBoYXZlIGFuIGluIGtlcm5lbCB1c2VyIGlzIGEgbnVtYmVyIG9uZSBydWxlLg0KDQpXaGVuIHNv
bWVib2R5IHZpb2xhdGVzIHRoaXMgcnVsZSBoZSBwcmV0dHkgbXVjaCBkaXNxdWFsaWZ5aW5nIGhp
bXNlbGYgYXMgDQpyZWxpYWJsZSBzb3VyY2Ugb2YgcGF0Y2hlcyBzaW5jZSBtYWludGFpbmVycyB0
aGVuIGhhdmUgdG8gYXNzdW1lIHRoYXQgDQp0aGlzIHBlcnNvbiB0cmllcyB0byBzdWJtaXQgY29k
ZSB3aGljaCBkb2Vzbid0IGhhdmUgYSBqdXN0aWZpY2F0aW9uIHRvIA0KYmUgdXBzdHJlYW0uDQoN
ClNvIHdoaWxlIHRoaXMgYWN0dWFsbHkgbG9va3MgdXNlZnVsIGZyb20gdGhlIHRlY2huaWNhbCBz
aWRlwqBhcyBsb25nIGFzIA0Kbm9ib2R5IGRvZXMgYW4gaW1wbGVtZW50YXRpb24gYmFzZWQgb24g
YW4gdXBzdHJlYW0gZHJpdmVyIEkgYWJzb2x1dGVseSANCmhhdmUgdG8gcmVqZWN0IGl0IGZyb20g
dGhlIG9yZ2FuaXphdGlvbmFsIHNpZGUuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gICBU
aGF0IGFsbG93cyB5b3UgdG8gc2tpcCBwYWdlDQo+IGFsbG9jYXRpb24gd2l0aG91dCBmdWxseSBw
aW5uaW5nIHRoZSBtZW1vcnkgbGlrZSB5b3UgZ2V0IHdoZW4NCj4gYWxsb2NhdGluZyBhIGRtYS1i
dWYgdGhhdCdzIHdheSBsYXJnZXIgdGhhbiBuZWNlc3NhcnkuIElmIGl0J3MgZm9yIGENCj4gY2Ft
ZXJhIG1heWJlIHlvdSBuZWVkIHBoeXNpY2FsbHkgY29udGlndW91cyBtZW1vcnksIGJ1dCBpdCdz
IGFsc28NCj4gcG9zc2libGUgdG8gc2V0IHRoYXQgdXAuDQo+DQo+IGh0dHBzOi8vYW5kcm9pZC5n
b29nbGVzb3VyY2UuY29tL2tlcm5lbC9jb21tb24vKy9yZWZzL2hlYWRzL2FuZHJvaWQxNC02LjEv
ZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMjMzc3DQo+DQo+DQo+PiBUbyBiZSBo
b25lc3QsIEkgZGlkbid0IHVuZGVyc3RhbmQgeW91ciBjb25jZXJuICIuLi5ob3cgZHJpdmVycyBz
aG91bGQgYmUNCj4+IGFibGUgdG8gZnVsZmlsbCB0aGlzIHNlbWFudGljcy4iIENhbiB5b3UgcGxl
YXNlIGhlbHAgZXhwbGFpbiBpdCBpbiBtb3JlDQo+PiBkZXRhaWw/DQo+Pg0KPj4gVGhhbmtzLA0K
Pj4NCj4+IFJvbmcgUWlhbmZlbmcuDQo+Pg0KPj4+PiBUaGFua3MNCj4+Pj4gUm9uZyBRaWFuZmVu
Zy4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
