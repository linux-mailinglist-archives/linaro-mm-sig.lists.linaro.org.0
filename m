Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 825508A4E32
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Apr 2024 13:57:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 44CE93F1AA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Apr 2024 11:57:32 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2054.outbound.protection.outlook.com [40.107.237.54])
	by lists.linaro.org (Postfix) with ESMTPS id 38F3D3F1AA
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Apr 2024 11:57:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=FTq9H99p;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.237.54 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MWLce5aaSM6dnN0+VkugxBcmITpCS5+5E21q/njDKWsEOYr3IpBvoqjGiHf9R6B79OUNO7y/QI0sMZcr8ct/zRIvp2tDZ+Wi1fMXdPfF/fhZ63JtJuIu8CfiK5BxJL1xhnjzv4lQNcZNO4ZVke49MvDbgbNG4Gm6de89jCD3eVWpNXX0fjPBRrdj9hEsYRhkjLAm0I1Fc0VC1Ye7VG7hh8lAB/pD9RHoLtTBkEGeGQ5mNDqgzq/vl7ot3VwojXa49zUR6f1PwOuyU+DZ1HTrfM84IMnikTEZzNhF71MbLhOS9W3ycQNdPwz5MN/VObigxeqDppRhnkVrbBWj7eMAHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wCptlZIQCcMDtQueiVhSHWTr0JI0xAPMCUZZHpBZEhY=;
 b=mVeGT5fwO7ie9L8of9iNghubC4ke+py9K29qL69wDdDNbJ8TxBb8y9MmZQ1Mp+FASCVoE7zdj/eJiAQHNCyFZDLDBouQvztXxRzCvPGIBcXUDu8iV/3bTV6xQNuciWp6jNSeWw5I6/pOie0i9si9oPlka4PXUpb+8YfFYA/JY0kun5FW0yvkEkp9h+ixLuu7gSUEu3Ni1CiG0h4L65wZU4InK5n2IJQcfKG5emkG+fC4jQlJqbehlvnMCaWa0dWtKlmCEveovjulqQoOXpzdb+zh8ViTKe4bk+GnUYXIbolaTpVm3Md1azlufcbrj5n1Pk5c57LNExevIMFh+zag6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wCptlZIQCcMDtQueiVhSHWTr0JI0xAPMCUZZHpBZEhY=;
 b=FTq9H99p+vwossLsSoaCBoxLZ9AWY7VA/6j3rqPaden0ZnEdnMMLBdONV2f6NOUk2vaNtybKWg+9wWD9tOlJnFDs+sO/EKOfCCpouSZwyBCP5jLmWWAk8k+5CWgSRfzEp7xjyoQXiZC1bEuCezkXmSOGL8ti7rKcyQOFXUUjzmI=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ0PR12MB6902.namprd12.prod.outlook.com (2603:10b6:a03:484::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Mon, 15 Apr
 2024 11:57:27 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a%6]) with mapi id 15.20.7452.049; Mon, 15 Apr 2024
 11:57:27 +0000
Message-ID: <aab5ec51-fcff-44f2-a4f5-2979bd776a03@amd.com>
Date: Mon, 15 Apr 2024 13:57:21 +0200
User-Agent: Mozilla Thunderbird
To: zhiguojiang <justinjiang@vivo.com>, "T.J. Mercier" <tjmercier@google.com>
References: <20240327022903.776-1-justinjiang@vivo.com>
 <5cf29162-a29d-4af7-b68e-aac5c862d20e@amd.com>
 <cc7defae-60c1-4cc8-aee5-475d4460e574@vivo.com>
 <23375ba8-9558-4886-9c65-af9fe8e8e8b6@amd.com>
 <CABdmKX2Kf4ZmVzv3LGTz2GyP-9+rAtFY9hSAxdkrwK8mG0gDvQ@mail.gmail.com>
 <e55cad9b-a361-4d27-a351-f6a4f5b8b734@vivo.com>
 <40ac02bb-efe2-4f52-a4f2-7b56d9b93d2c@amd.com>
 <4fedd80c-d5b6-4478-bfd3-02d1ee1a26e5@vivo.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <4fedd80c-d5b6-4478-bfd3-02d1ee1a26e5@vivo.com>
X-ClientProxiedBy: FR4P281CA0371.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f8::7) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ0PR12MB6902:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d75ea0c-7748-45e5-6e2b-08dc5d43383d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	F4TrhYJNUUSQGf6JV4ZTBZA7hcNjA+Nd3JQCtL/eEa+Az+2GVHC6RxMGcBp39S7zrcWjuslbQgFxfMcsW3xwt7satv5+VrUfvAH6opK4BuSPBcYbZGuBg8I7XCZNM152YstAVvkY2hdIGm3/vpHSt2c8LQW4JCK7IEOE3ts7pkA/8cbX3YQj7Eyf+nogggC4AmcjmIqePX3guB974hGbwS0Jl1BgPFTb1pNLhuEZxySfSG+wMFmxaScvxL4CJWBVE3TBYL24iHms7KhKo/g10Ag0qM2+tx7oZrW475zDJsnjv7AMe2wKe4n+anJ7nHZ0TQUy/6+FopM6yGuvFAWwdgdrFK+txdGFVcNDdn9mdHvBkQoFexPXFee0lcV90gGm3ab8P8KyzGkdM+qaGXxi//Kp0P7w3ubJ1kYtcHPh2Tp7LP81S9tb6FVWWmDXFL3rnb4P8AWGGFB38k1wQApPvSiIukGnBwpDrugxMpDi8/a2zlz/8TY9Ahycmd/JTN0LL+WrzsmA9rR8JBNXlcoioXwQgq6GB9D4XTf19VeNVaa5G5YngHasEOun0F/5G+nPrtHQKxJl7o1ZUDLRCt/Qsdlo4GjOB3t+3/ximVGigRPNJtitiyzF9wLnDnNswvTlLMpYGjuYRmH92PC+rLa/m2p4SMLmj5uUw0A4IQdS1xY=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WWJuNjh3eEpSQk9FSkJPNWVOYjJBL1l0L2lHOGtqa1AzU0NQeFFRRUVMRGdZ?=
 =?utf-8?B?RTNWK1ZFQUVDMUN5ejZSR2lKTjFuRWtlSUFSalM4dDN3MkFNTkZ1Y094cDJu?=
 =?utf-8?B?dWxIdXRDWkVxRFBteE80QnUreTIyWTQrc3krSTJJOENVYW9UbWI5TlgrTG9x?=
 =?utf-8?B?Q2FaQmxRa1ZjQWVIeThTdThjdC9mM2Z0UjJkTGtIU2pubk5oVzIwWWc3N29L?=
 =?utf-8?B?SE44djMwdFlPWktyVmhpT2g3aFlrUTg2cGtYbzZlbnZqTElsbE1MU1JUQk91?=
 =?utf-8?B?dFQ4MGQ0aXRIRThoQjRvRGFmQ0wyZzJmRUxOU0RPaTh2dHpIcGpvL2kyUmcw?=
 =?utf-8?B?TDRuRnVaNStiY2N1TGZZdGpmV1owSlM1eVlpUWcwd2lQbU5GN21weSt1Q3J2?=
 =?utf-8?B?NXZPRzlZRjlnbGMxc1dyOHhjeFpJUHF4Y3gwa0R4dVJQeHJyZ2doamVvNkNw?=
 =?utf-8?B?SmNLaU0rOElnTHNCRUNrbXp0Q0ZkZU5sODYzU0dKeWkwZ2FZcDhKNStXNmlV?=
 =?utf-8?B?Y0VBODBaUGFaUmtQL1RhRmsxaFUwc0FVR2hqcTlyRVhCK0xMNGRpQUxoK0J3?=
 =?utf-8?B?b091dlRDV2hNN3JvTmFMMTh4ekhEcCszbi8vdEczT29kVFRmQVV3ekFmWC9I?=
 =?utf-8?B?RTZGUkxsenpMSCs0aTcyekRtR2xNdW8wVCtPdDQraUZNS00rZ29sUHVLR0JW?=
 =?utf-8?B?QXFrOHRKVy8xVDVwb1VYaDBnUldXVEQ1RG9PZ0ZZS3BTTmt4cGpNQjRMWEVp?=
 =?utf-8?B?T1EzY2hsYWVuVjNJRE55NG02eEhFMUNxSUNJWmNON1VNQkxqMzlVd2hzTXN0?=
 =?utf-8?B?NytrdU1DaU5HVW9IUk5XQkl6dHJmZE02MVFCUzdLbUJXdktyRUJFSkRVLzNV?=
 =?utf-8?B?L0gxZGQ4endQdVR4WVR0NmI4citsUWc1eHZPanNlcG5jWFdsNzY3OEIzTlZa?=
 =?utf-8?B?WElMYXZQaXBETzJQT0dFWHYvRXRiNXQzUm81V3BFMFFjM3UxU0VEVHk2NGFT?=
 =?utf-8?B?cGJTSDVFUXpXWlh4cS95MUFnQXptUXl3bGRGVHY4cDVHb0drZWpXa3J4ZEI4?=
 =?utf-8?B?NXlFSTdKVkVPR0pxcEwydG9ESkV4anBuU2V6aVBoWWNiaHFuTkZLd1B0NGZJ?=
 =?utf-8?B?Vm5VUGdTc3dLK091UGFMZDBMY0pyMFplaVBCb3B2VnNFNjdvU2Zld0dDbGMw?=
 =?utf-8?B?OHdiakVRNk5udEJKL3djNmM2Mm91Y0Z1NkhsWkZTenBRaUJseXpwR2tRc2FY?=
 =?utf-8?B?aWhESVZ3RWtvOFl6WGFMZ2VrcG9OeGxVazlHUzM0TE9CTHlXNmNLaW5sWWhM?=
 =?utf-8?B?ZFVmVzNOeDJCZm1DNU9GVHlweHlIODF0QXI1d3lzcm5HcTJnVjY4N3dxOEhF?=
 =?utf-8?B?R1dOUTRiOTFscWFMLzFVRnE5YjhHbEdOV1A0eDkvUEJwWlBSaWYyNEUxMDlh?=
 =?utf-8?B?WHBMMXVPMHNMdThtMFZ4WWV2UXYySHdmeVJZcnRzL1Rta3JWVG5ZSzQ4WkdG?=
 =?utf-8?B?ZlZjekhYTzlZQzBuTVVKb0lSNWgzbWFvaW5YZGJZL1BNbXN0YjB4cWZWSy92?=
 =?utf-8?B?UVFPb2xuNXJMV3dMUGZKTVNRcnM2cFJxYkV5V2hGaW4vL0ZTMnBNejhTaTJk?=
 =?utf-8?B?alcwc0RjblVZNjl0MDBpSVJ2YnhqdjYvV1g3eVVmRUxhNEJ4bHhtWmd0QWxa?=
 =?utf-8?B?b0lBRllPTkY1WHFRaXRmNFpYb0VRM0s0QUhQQ25LQ2hQMkhxU0ZMUGFRUktH?=
 =?utf-8?B?WC9VMWcxeGJZSFNyalAwdzRURFlkSjlqN2owZzBXSHpHQ1NZSUxZWUN6Tkk0?=
 =?utf-8?B?QVZzYzVveUw4NlZjMmVsT09iOGFFQ0crS3pidzVvNDJxR1prbnVtVmt5bjdQ?=
 =?utf-8?B?MGFtbysvbmRtdFhUS2tqUnM4MGJCS0twa0htU1lic08zNUZnRktpeHgvblVP?=
 =?utf-8?B?YzFJNkUwTk93VUkyQmRkMVlwdHZVdDdXQ3djbmJFOFpPQ1RQSHFhSlZpN0Rr?=
 =?utf-8?B?a3JtSjJKbElneUQ1bnJCLzgxdHFtTHpoYVRqNTA5TDdBTjdGV05iSCtKZjAx?=
 =?utf-8?B?R3QwRjRpZ0RFWENaM3pUK3RvaHZQWDRjTjdkN0hPc1RnWXBUUnp1Z3Jra0xR?=
 =?utf-8?Q?DK8w=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d75ea0c-7748-45e5-6e2b-08dc5d43383d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2024 11:57:27.2398
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LUJbTjPRugKdwb6Z+b4bzSqDksVPd3GgZALUnjcTv8MsVagYVu1P1hxQ+xWwKEsG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6902
X-Rspamd-Queue-Id: 38F3D3F1AA
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.99 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.237.54:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-0.963];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: GDQ7UYQQFFYLUXPB2LUXSQPGWDVNQHKK
X-Message-ID-Hash: GDQ7UYQQFFYLUXPB2LUXSQPGWDVNQHKK
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: fix dmabuf file poll uaf issue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GDQ7UYQQFFYLUXPB2LUXSQPGWDVNQHKK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTUuMDQuMjQgdW0gMTI6MzUgc2NocmllYiB6aGlndW9qaWFuZzoNCj4g5ZyoIDIwMjQvNC8x
MiAxNDozOSwgQ2hyaXN0aWFuIEvDtm5pZyDlhpnpgZM6DQo+PiBbU29tZSBwZW9wbGUgd2hvIHJl
Y2VpdmVkIHRoaXMgbWVzc2FnZSBkb24ndCBvZnRlbiBnZXQgZW1haWwgZnJvbSANCj4+IGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbS4gTGVhcm4gd2h5IHRoaXMgaXMgaW1wb3J0YW50IGF0IA0KPj4g
aHR0cHM6Ly9ha2EubXMvTGVhcm5BYm91dFNlbmRlcklkZW50aWZpY2F0aW9uIF0NCj4+DQo+PiBB
bSAxMi4wNC4yNCB1bSAwODoxOSBzY2hyaWViIHpoaWd1b2ppYW5nOg0KPj4+IFtTTklQXQ0KPj4+
IC0+IEhlcmUgdGFzayAyMjIwIGRvIGVwb2xsIGFnYWluIHdoZXJlIGludGVybmFsbHkgaXQgd2ls
bCBnZXQvcHV0IHRoZW4NCj4+PiBzdGFydCB0byBmcmVlIHR3aWNlIGFuZCBsZWFkIHRvIGZpbmFs
IGNyYXNoLg0KPj4+DQo+Pj4gSGVyZSBpcyB0aGUgYmFzaWMgZmxvdzoNCj4+Pg0KPj4+IDEuIFRo
cmVhZCBBIGluc3RhbGwgdGhlIGRtYV9idWZfZmQgdmlhIGRtYV9idWZfZXhwb3J0LCB0aGUgZmQg
cmVmY291bnQNCj4+PiBpcyAxDQo+Pj4NCj4+PiAyLiBUaHJlYWQgQSBhZGQgdGhlIGZkIHRvIGVw
b2xsIGxpc3QgdmlhIGVwb2xsX2N0bChFUE9MTF9DVExfQUREKQ0KPj4+DQo+Pj4gMy4gQWZ0ZXIg
dXNlIHRoZSBkbWEgYnVmLCBUaHJlYWQgQSBjbG9zZSB0aGUgZmQsIHRoZW4gaGVyZSBmZCByZWZj
b3VudA0KPj4+IGlzIDAsDQo+Pj4gwqAgYW5kIGl0IHdpbGwgcnVuIF9fZnB1dCBmaW5hbGx5IHRv
IHJlbGVhc2UgdGhlIGZpbGUNCj4+DQo+PiBTdG9wLCB0aGF0IGlzbid0IGNvcnJlY3QuDQo+Pg0K
Pj4gVGhlIGZzIGxheWVyIHdoaWNoIGNhbGxzIGRtYV9idWZfcG9sbCgpIHNob3VsZCBtYWtlIHN1
cmUgdGhhdCB0aGUgZmlsZQ0KPj4gY2FuJ3QgZ28gYXdheSB1bnRpbCB0aGUgZnVuY3Rpb24gcmV0
dXJucy4NCj4+DQo+PiBUaGVuIGluc2lkZSBkbWFfYnVmX3BvbGwoKSB3ZSBhZGQgYW5vdGhlciBy
ZWZlcmVuY2UgdG8gdGhlIGZpbGUgd2hpbGUNCj4+IGluc3RhbGxpbmcgdGhlIGNhbGxiYWNrOg0K
Pj4NCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyog
UGFpcmVkIHdpdGggZnB1dCBpbiBkbWFfYnVmX3BvbGxfY2IgKi8NCj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ2V0X2ZpbGUoZG1hYnVmLT5maWxlKTsN
Cj4gSGksDQo+DQo+IFRoZSBwcm9ibGVtIG1heSBqdXN0IG9jY3VycmVkIGhlcmUuDQo+DQo+IElz
IGl0IHBvc3NpYmxlIGZpbGUgcmVmZXJlbmNlIGNvdW50IGFscmVhZHkgZGVjcmVhc2VkIHRvIDAg
YW5kIGZwdXQgDQo+IGFscmVhZHkgYmVpbmcgaW4gcHJvZ3Jlc3NpbmcganVzdCBiZWZvcmUgY2Fs
bGluZyANCj4gZ2V0X2ZpbGUoZG1hYnVmLT5maWxlKSBpbiBkbWFfYnVmX3BvbGwoKT8NCg0KTm8s
IGV4YWN0bHkgdGhhdCBpc24ndCBwb3NzaWJsZS4NCg0KSWYgYSBmdW5jdGlvbiBnZXRzIGEgZG1h
X2J1ZiBwb2ludGVyIG9yIGV2ZW4gbW9yZSBnZW5lcmFsIGFueSByZWZlcmVuY2UgDQpjb3VudGVk
IHBvaW50ZXIgd2hpY2ggaGFzIGFscmVhZHkgZGVjcmVhc2VkIHRvIDAgdGhlbiB0aGF0IGlzIGEg
bWFqb3IgDQpidWcgaW4gdGhlIGNhbGxlciBvZiB0aGF0IGZ1bmN0aW9uLg0KDQpCVFc6IEl0J3Mg
Y29tcGxldGVseSBpbGxlZ2FsIHRvIHdvcmsgYXJvdW5kIHN1Y2ggaXNzdWVzIGJ5IHVzaW5nIA0K
ZmlsZV9jb3VudCgpIG9yIFJDVSBmdW5jdGlvbnMuIFNvIHdoZW4geW91IHN1Z2dlc3Qgc3R1ZmYg
bGlrZSB0aGF0IGl0IA0Kd2lsbCBpbW1lZGlhdGVseSBmYWNlIHJlamVjdGlvbi4NCg0KUmVnYXJk
cywNCkNocmlzdGlhbi4NCg0KPg0KPj4NCj4+IFRoaXMgcmVmZXJlbmNlIGlzIG9ubHkgZHJvcHBl
ZCBhZnRlciB0aGUgY2FsbGJhY2sgaXMgY29tcGxldGVkIGluDQo+PiBkbWFfYnVmX3BvbGxfY2Io
KToNCj4+DQo+PiDCoMKgwqDCoMKgwqDCoCAvKiBQYWlyZWQgd2l0aCBnZXRfZmlsZSBpbiBkbWFf
YnVmX3BvbGwgKi8NCj4+IMKgwqDCoMKgwqDCoMKgIGZwdXQoZG1hYnVmLT5maWxlKTsNCj4+DQo+
PiBTbyB5b3VyIGV4cGxhbmF0aW9uIGZvciB0aGUgaXNzdWUganVzdCBzZWVtcyB0byBiZSBpbmNv
cnJlY3QuDQo+Pg0KPj4+DQo+Pj4gNC4gSGVyZSBUaHJlYWQgQSBub3QgZG8gZXBvbGxfY3RsKEVQ
T0xMX0NUTF9ERUwpIG1hbnVuYWxseSwgc28gaXQNCj4+PiBzdGlsbCByZXNpZGVzIGluIG9uZSBl
cG9sbF9saXN0Lg0KPj4+IMKgIEFsdGhvdWdoIF9fZnB1dCB3aWxsIGNhbGwgZXZlbnRwb2xsX3Jl
bGVhc2UgdG8gcmVtb3ZlIHRoZSBmaWxlIGZyb20NCj4+PiBiaW5kZWQgZXBvbGwgbGlzdCwNCj4+
PiDCoCBidXQgaXQgaGFzIHNtYWxsIHRpbWUgd2luZG93IHdoZXJlIFRocmVhZCBCIGp1bXBzIGlu
Lg0KPj4NCj4+IFdlbGwgaWYgdGhhdCBpcyByZWFsbHkgdGhlIGNhc2UgdGhlbiB0aGF0IHdvdWxk
IHRoZW4gYmUgYSBidWcgaW4NCj4+IGVwb2xsX2N0bCgpLg0KPj4NCj4+Pg0KPj4+IDUuIER1cmlu
ZyB0aGUgc21hbGwgd2luZG93LCBUaHJlYWQgQiBkbyB0aGUgcG9sbCBhY3Rpb24gZm9yDQo+Pj4g
ZG1hX2J1Zl9mZCwgd2hlcmUgaXQgd2lsbCBmZ2V0L2ZwdXQgZm9yIHRoZSBmaWxlLA0KPj4+IMKg
IHRoaXMgbWVhbnMgdGhlIGZkIHJlZmNvdW50IHdpbGwgYmUgMCAtPiAxIC0+IDAsIGFuZCBpdCB3
aWxsIGNhbGwNCj4+PiBfX2ZwdXQgYWdhaW4uDQo+Pj4gwqAgVGhpcyB3aWxsIGxlYWQgdG8gX19m
cHV0IHR3aWNlIGZvciB0aGUgc2FtZSBmaWxlLg0KPj4+DQo+Pj4gNi4gU28gdGhlIHBvdGVuaWFs
IGZpeCBpcyB1c2UgZ2V0X2ZpbGVfcmN1IHdoaWNoIHRvIGNoZWNrIGlmIGZpbGUNCj4+PiByZWZj
b3VudCBhbHJlYWR5IHplcm8gd2hpY2ggbWVhbnMgdW5kZXIgZnJlZS4NCj4+PiDCoCBJZiBzbywg
d2UganVzdCByZXR1cm4gYW5kIG5vIG5lZWQgdG8gZG8gdGhlIGRtYV9idWZfcG9sbC4NCj4+DQo+
PiBXZWxsIHRvIHNheSBpdCBibHVudGx5IGFzIGZhciBhcyBJIGNhbiBzZWUgdGhpcyBzdWdnZXN0
aW9uIGlzIGNvbXBsZXRlbHkNCj4+IG5vbnNlbnNlLg0KPj4NCj4+IFdoZW4gdGhlIHJlZmVyZW5j
ZSB0byB0aGUgZmlsZSBnb2VzIGF3YXkgd2hpbGUgZG1hX2J1Zl9wb2xsKCkgaXMNCj4+IGV4ZWN1
dGVkIHRoZW4gdGhhdCdzIGEgbWFzc2l2ZSBidWcgaW4gdGhlIGNhbGxlciBvZiB0aGF0IGZ1bmN0
aW9uLg0KPj4NCj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4+DQo+Pj4gSGVyZSBp
cyB0aGUgcmFjZSBjb25kaXRpb246DQo+Pj4NCj4+PiBUaHJlYWQgQSBUaHJlYWQgQg0KPj4+IGRt
YV9idWZfZXhwb3J0DQo+Pj4gZmRfcmVmY291bnQgaXMgMQ0KPj4+IGVwb2xsX2N0bChFUE9MTF9B
REQpDQo+Pj4gYWRkIGRtYV9idWZfZmQgdG8gZXBvbGwgbGlzdA0KPj4+IGNsb3NlKGRtYV9idWZf
ZmQpDQo+Pj4gZmRfcmVmY291bnQgaXMgMA0KPj4+IF9fZnB1dA0KPj4+IGRtYV9idWZfcG9sbA0K
Pj4+IGZnZXQNCj4+PiBmcHV0DQo+Pj4gZmRfcmVmY291bnQgaXMgemVybyBhZ2Fpbg0KPj4+DQo+
Pj4gVGhhbmtzDQo+Pj4NCj4+DQo+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
