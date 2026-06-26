Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DA7OC/5uPmokGAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jun 2026 14:22:22 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAF56CCF12
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jun 2026 14:22:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=yxqzl6JY;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F64443CAF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jun 2026 12:22:20 +0000 (UTC)
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011029.outbound.protection.outlook.com [40.93.194.29])
	by lists.linaro.org (Postfix) with ESMTPS id 2D1A43F858
	for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Jun 2026 12:22:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ySah26RMzLTd0eupgPzgQoWDSxCGqyN07NgMpOy/8lQU793E6FILTNxbNaX9m3YK3rrkkbOxobWqAhHvzoPSefFubZNhK0/mAwXnhZUUJNvKE7R37mJYtDvqZdVpeCDwDgOqy+7IhNCdZ6TRhS97cv4NiQ6zpkcdT3XDLyKaernrbUfk0PZgeOBxoQMi4TCWSgvcEgHZy6pGQFvoi1DNq9RidqPtfqSD9SwZC0SEUely761qvBt/IqXqOB/NI7Wn+jrBLb927wwljhif2jKBy19o9hP3ntLbJS8M09X/w6LySwpJ4N6L6i2R74UH4g4Qp+SP2/V++/J2rOjigXhLBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JEQBeWbkOT7ptvnj9ICW1bo8aS2tF3EjAsIfAYnzta4=;
 b=dp/vm6gwVPE7D0b5gdUk36+r7/j+coqU2uBA33ZpC3H4YH0scN4yP5jm0ObWrZ4tEtra0wDnYmeF9ueBcMX72Vzf86djcdQSkJiKVH6vWVhBY3In3jOCoqXueAQhFGrFvvsOvJmQIJhKRvzRKiwZ84AAJqjSOgns2g8V7bY9R9poHDIpbi8XKEDvWcn8odHVv0dRr9jR1TSvY76mdqdSUVG4QWwegDss2g9SV/Les/H/S0Sk6K8ju7ngr9mTTyXx/e7hAGJ+xL8NRomAbar8bWPDT8TOSp7JGdBV7HixKgqRpgJEpx50/6YwBhgIbdXDEbbPq2mIFHpIClLNmIcO7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JEQBeWbkOT7ptvnj9ICW1bo8aS2tF3EjAsIfAYnzta4=;
 b=yxqzl6JYuQ0bRO2XAAsqhU86FmfVmPg2ld0n3us7q45CY1deukhLv6wP+24fLjd2NajOc65mQzJZUuZnyQm0CGVX1LkaJvUKau9Fsxog//76GlRGW+GqMvCRs/wUDVLh+F370sADZ3Bm5v9gdvNaSgDPPzA1/TiebvnFOkyknuA=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ2PR12MB8808.namprd12.prod.outlook.com (2603:10b6:a03:4d0::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.17; Fri, 26 Jun
 2026 12:22:03 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0159.016; Fri, 26 Jun 2026
 12:22:02 +0000
Message-ID: <cfc287ff-6ab3-4cb3-bddc-6d0e32235847@amd.com>
Date: Fri, 26 Jun 2026 14:21:54 +0200
User-Agent: Mozilla Thunderbird
To: Philipp Stanner <phasta@kernel.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Danilo Krummrich <dakr@kernel.org>, Gary Guo <gary@garyguo.net>,
 "Paul E . McKenney" <paulmck@kernel.org>, Boqun Feng <boqun@kernel.org>
References: <20260626100442.2202221-2-phasta@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260626100442.2202221-2-phasta@kernel.org>
X-ClientProxiedBy: FR2P281CA0042.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:92::15) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ2PR12MB8808:EE_
X-MS-Office365-Filtering-Correlation-Id: c4bde4a2-659b-43f2-2740-08ded37d86de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|376014|1800799024|366016|23010399003|3023799007|6133799003|56012099006|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	nE0turpB5mOw2ybuL/RS2CTIbdQIvjycfwrEm41Ul44oNsrAwHAW+BpYL0PJ+qTvl0p5SFlqXZv2HClxH2rNXgY0szWC1RZhr21B4ajFIqJkqZTjtHbmZvG2wyuhcBCXPweVxbwZfgWJEaIu/Mg9IrUm4uzX3GeVLdgVHfkQd3z4AC1t6BaEZRu3Yv1LyX2LGYW8lngB6ieLHZeER9bwodxOWt4IVsbA938mX1y6GaoWJu92veCtVu5Tog7ZdEZeQJFR5KKhpvkH+smV/eVccQ3ZKfLbTrt3R89yHKNKLQhzhyUkCUANrkVyAA694FtBwryRWcUFA8nF32I+THzIbVTvD12eU5aZIb3JpTqDegspx4LBH8gPbIxUKN9qr8gYG6CN2OlgRnTGqCkM8NxPCrj5XRcBkbacxyFBo8Oq3s417AQSknvbYtcwlGtwc8nvASl9tTLPZ42K6Kb1ChCALjxV8fTqcxP/CNVNZ+yUsOQ0ejtlvT3sNJ9DteJb7IcY/bwBYsdggTxeMQKhzmbZYFYkQ6P4aThniPhEsrkM056+n6cFXIbqK2Ts9BKgtu8peYMfv2t6/gc03jzIkt/W0KyqXNRcr1KBpe98ic0rGAG3c9DxKVdjs13+PUOjDcRRQpDxIYf9jc7Tk6eDUre5Cn+9RHw+arLvvYUmZja6a08=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(23010399003)(3023799007)(6133799003)(56012099006)(11063799006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aHZBSnF2QXNkOWhHU09MZ0hDZWJUNnQ2TTFqSXRYakZVYStlSWdnY0REd21k?=
 =?utf-8?B?Z1h6MXN2NTU0SzFIaEdsMCsrSU43T1hnWm9ESzN3eUVSMUVVOUZoRjlVd3V0?=
 =?utf-8?B?Y3l3SXgrc21aeXZ1SlMrSmVaa0trV0xEbDBiV0dnck5MWHJ2N0NvVWF4THhN?=
 =?utf-8?B?WlBRVnRNa3JRWDZoeFkrWXd5c0Z2ZHl6VDlrTW40Rml0QnBhaW9QTDlIaTFX?=
 =?utf-8?B?Q3ZVMitaY2Y2WHNzKzViak1VOW9MbGlMb1E4cjRKWmNDNkhlWVVZV2dyVS9T?=
 =?utf-8?B?VDJ0c1ZLNEMycEduY0plVnVQOW1qUjlBdk0zajhtRXk1blA5T3k1aFA4THF6?=
 =?utf-8?B?NEdtRTIwTGJFU3BQdFo5WUR0TVBQVmIrRGFPck0vaW4vU3ZLbk9WZGlpMFZl?=
 =?utf-8?B?bDcvbHY5ZE1ibmQ3ejBML1FWYUdrNDdHZ1dWZmhSZVhwaGhkQ2ZiajgvNmJ6?=
 =?utf-8?B?WEd3NEpLeHpRa3hMVlRWdnF0Sm1QSmtES3VpWWRPREpOTEpoT2pCWTA1Sk9k?=
 =?utf-8?B?eHJGVFZDS05yL3ZiQlRHbEhNMm1BM1hLdWpXaGk5MVEzTzNvUEtZSlNqbkha?=
 =?utf-8?B?TnJ5MUF5b09HOFMxUm1TdTVWczIzcWNHMmFxY2FSWWJjU2dxMVYxaHZickJZ?=
 =?utf-8?B?OEdlSy9oczE4ankrOXJhSGVYdHFkWkMrTVR4b0c1OXhjU0t3YisybHZrZG1R?=
 =?utf-8?B?dGdhZ05DSk0xTW1TdmFtMkx6Uk51MWNFdEhwZ1Q1OXF6d1lyQ05IcFYxbjhl?=
 =?utf-8?B?MG1lWWV0dHdqdVY2clQyMTFsOWVjVklRVVk1MlNsbVk3MkQ2N2ovYmxBZ0FT?=
 =?utf-8?B?NDR1anlFWjhhaU8vUk9nVzZTcmZqVE1VNmlvZFdrby9vQUNaTjJGR3RWZXJQ?=
 =?utf-8?B?dk9aT0hzZmg3U3FYQ1ZjN0wrdHNYa0tVcGlFN1M0SUlZVHNBUUNqdDljbVlQ?=
 =?utf-8?B?ZG9XNTQ4QXpFSENrVWpreldSN1BBNkxmdkRkL3F6ODZuSWNra1I4RXBGYmlW?=
 =?utf-8?B?TWdtdW9wdkcrckw5RS9Pb25GNnFtL05Fc1pGbW5BUklFbmJPM1cyWXRkeWlk?=
 =?utf-8?B?akF4TUsyQUFvVzViR2RpUnlSK1hIck8zYWpTbEhObHRFNmM2TUI0MjkxYXVr?=
 =?utf-8?B?ZzNxOFF5UDlXQTNlOHlWTmlwVWFCNXR2Z0MrWWplZDh5YnY5bExBM3pJM3JK?=
 =?utf-8?B?MGZGeXpVK0NKbHovWTZvNnhDSWJQWnEwNzdXbHZkZ0Yxc3F6OXZ1enQ1S2pJ?=
 =?utf-8?B?K3FPVVNzQnZDc0hCN05Vb29ZTEVpb1R4bjBKNGdMenpQdXFNL01FaXdyZWJs?=
 =?utf-8?B?T0xKRURHYzVrZDkzaDZFaFBBV1pUQTAwUFdxNTZNaVZtODhBSnUxbEYvVWpF?=
 =?utf-8?B?MGJiMWxDN0swanBraXJ3Wit2SnM5RDE4YWNPK0JWb3RHMElxbUpEN0Vxbi9O?=
 =?utf-8?B?Zjd6L2xNOFN3WGhRbDFMdlFRUU1vSkN2akZ2Lzdlc05sSDdFWUorU052akNy?=
 =?utf-8?B?ZXp3WHVWMmJpOEx5OHlZOUtPK3V4UWlHNTBMOEx4Rkd1WDZNR3R2YTJENzF5?=
 =?utf-8?B?S2dsY2VqVHNERUtObVdzbUVJaWlEb3p1Zno5MGtUZktzMm1SUzBRM1h2aVBX?=
 =?utf-8?B?cG9mYk5MSGNDWG56M1MrK2UzNjhQZ3BoR1NvQ0xTRnR5amxrOWZvTnVFU0Rv?=
 =?utf-8?B?WldJVHlJMHRnZmRMbzNscXVHK3lxNXgxYjJtQ2l0dEU3cUNCTGZ2eWMzb0ZW?=
 =?utf-8?B?Wkpxd1FDTkptRnhJaUMrNFBrRG84L0tTT2xSREd5bmE1enZzUmV6MDBBbTMv?=
 =?utf-8?B?a2orUUtWb2ZtVjA3VG04SEZUKzRzdTZQOHVkWldXSExVWll4SXQvYzUyRkdS?=
 =?utf-8?B?MWNvYWhoUXA5TmRaSERKVWN6Zm42cGJjaDFjemtGZmhmaktHeVErNi8raXFP?=
 =?utf-8?B?RFZDWWsxSG5ZM3ZBZjNBMUwxeTllYTdzWWkvSjBQelVYRHhtYlo0emhWYm40?=
 =?utf-8?B?UmtUUFg4M1NwbTVjaUtjOFlIRUJwblllem1qeERPOFVJdjB1U3lxZFdwZ2VK?=
 =?utf-8?B?NjdDSkM3dXR4aWc2Uzh1UzBMM01VbEU4eGU5MkZIWUZleVpKSmNWYUlmMS9a?=
 =?utf-8?B?ODVxenF5TmRmeHlncjVQckZUcVFLVU1ZTFArRXVGb0Y3OUNLaXl0K2IybUZL?=
 =?utf-8?B?Vmd0YnhiUDJkYjJFRmNmLzgvR2tjWkhYOEJXb1NXaVdVeWo5Z0hEL21iZlBz?=
 =?utf-8?B?L3dGOGNndjhPTHJnRUo1bmJ6LzByMmlpZ1VLa0djVk5aUlVkM25ZeDMzNllp?=
 =?utf-8?Q?ejvcox2jHxsK/M5ONX?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4bde4a2-659b-43f2-2740-08ded37d86de
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2026 12:22:02.2906
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: unGqEwxav7bQYiU3PULfi/auaQoWFV+RL5ubP57rwz2x5jDkawW9zoYgDFS6Q0S1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB8808
X-Spamd-Bar: ----
Message-ID-Hash: ZM7R3F4AI636A7OKTZEJAT4DUEXZWHO4
X-Message-ID-Hash: ZM7R3F4AI636A7OKTZEJAT4DUEXZWHO4
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: dma-fence: Fix potential NULL pointer dereference
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZM7R3F4AI636A7OKTZEJAT4DUEXZWHO4/>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:sumit.semwal@linaro.org,m:boris.brezillon@collabora.com,m:tvrtko.ursulin@igalia.com,m:andre.draszik@linaro.org,m:dakr@kernel.org,m:gary@garyguo.net,m:paulmck@kernel.org,m:boqun@kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:from_mime,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8AAF56CCF12

T24gNi8yNi8yNiAxMjowNCwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiBUaGUgY29tbWl0IG1l
bnRpb25lZCBpbiB0aGUgZml4ZXMgdGFnIGJlbG93IGludHJvZHVjZWQgYSBtZWNoYW5pc20NCj4g
dGhyb3VnaCB3aGljaCBmZW5jZSBwcm9kdWNlcnMgY2FuIGZ1bGx5IGRlY291cGxlIGZyb20gZmVu
Y2UgY29uc3VtZXJzLg0KPiBUaGlzLCBkZXNpcmFibGUsIG1lY2hhbmlzbSBpcyBiYXNlZCBvbiB0
aGUgZmVuY2UncyBzaWduYWxlZC1iaXQgYXMgdGhlDQo+ICJkZWNvdXBsaW5nIHBvaW50Ii4NCj4g
DQo+IEEgc29waGlzdGljYXRlZCBpbnRlcmFjdGlvbiBiZXR3ZWVuIFJDVSBhbmQgYXRvbWljIGlu
c3RydWN0aW9ucyBhdHRlbXB0cw0KPiB0byBlbnN1cmUgdGhhdCBmZW5jZSBjb25zdW1lcnMgY2Fu
IHN0aWxsIGludGVyYWN0IHdpdGggZmVuY2UgcHJvZHVjZXJzDQo+IHRocm91Z2ggdGhlIGRtYV9m
ZW5jZV9vcHMsIGNhbGxiYWNrIHBvaW50ZXJzIGludG8gdGhlIHByb2R1Y2VyLg0KPiANCj4gVGhp
cyBpcyB0aGUgZGVzaXJlZCBiZWhhdmlvcjogdG8gY2hlY2sgZm9yIGRlY291cGxpbmcsIHRoZSBz
aWduYWxlZC1iaXQNCj4gaXMgZmlyc3QgY2hlY2tlZC4gSWYgaXQncyBub3QgeWV0IHNpZ25hbGVk
LCBSQ1UgZW5zdXJlcyB0aGF0IHRoZSBvcHMNCj4gcG9pbnRlciBjYW5ub3QgeWV0IGJlIE5VTEwu
DQo+IA0KPiBIZXJlYnksIGRtYV9mZW5jZV9zaWduYWxfdGltZXN0YW1wX2xvY2tlZCgpIGZpcnN0
IHNldHMgdGhlIHNpZ25hbGVkLWJpdCwNCj4gYW5kIHRoZW4gc2V0cyB0aGUgb3BzIHBvaW50ZXIg
dG8gTlVMTC4gUmVhZGVycyBmaXJzdCBsb2FkIHRoZSBvcHMNCj4gcG9pbnRlciwgYW5kIHRoZW4g
Y2hlY2sgdGhyb3VnaCB0aGUgc2lnbmFsZWQtYml0IHdoZXRoZXIgdGhlIHBvaW50ZXIgY2FuDQo+
IGxlZ2FsbHkgYmUgYWNjZXNzZWQuDQo+IA0KPiBUaGVzZSBzZXQgYW5kIGxvYWQgb3BlcmF0aW9u
cyBjb3VsZCBvY2N1ciBvdXQgb2Ygb3JkZXIgb24gd2Vha2x5IG9yZGVyZWQNCj4gcGxhdGZvcm1z
LiBIZW5jZSwgd2UgbmVlZCB0byBlbmZvcmNlIHN0cmljdCBvcmRlcmluZyBhbGwgdGhlIHRpbWUu
DQoNCkFoISBHb29kIGNhdGNoLCBub3cgSSd2ZSBnb3Qgd2hhdCB5b3UgbWVhbiB3aXRoIHRoYXQu
DQoNCj4gDQo+IEFkZCB0aGUgYXBwcm9wcmlhdGUgbWVtb3J5IGJhcnJpZXJzLg0KPiANCj4gQ2M6
IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4gRml4ZXM6IGY0Y2MzYWI4MjRkNiAoImRtYS1idWY6
IHByb3RlY3RlZCBmZW5jZSBvcHMgYnkgUkNVIHY4IikNCj4gU2lnbmVkLW9mZi1ieTogUGhpbGlw
cCBTdGFubmVyIDxwaGFzdGFAa2VybmVsLm9yZz4NCj4gLS0tDQo+IFRlc3RlZCB3aXRoIGRtYWJ1
ZiBhbmQgZHJtX3NjaGVkIHVuaXQgdGVzdHMuDQo+IA0KPiBNZW1vcnkgYmFycmllcnMgYXJlIG5v
dG9yaW91c2x5IGRpZmZpY3VsdCwgc28gSSB3b3VsZCBhcHByZWNpYXRlIGlmIHNvbWUNCj4gb2Yg
dGhlIG1vcmUgZXhwZXJpZW5jZWQgZm9sa3MgY2FuIGNoZWNrIHRoaXMuIE5vdGFibHksIEkgYW0g
bm90IHN1cmUNCj4gd2hldGhlciB0aGUgc21wX3dtYigpIGlzIG5lY2Vzc2FyeS4NCj4gDQo+IFRo
ZSBkb2N1bWVudGF0aW9uIGZvciB0ZXN0X2FuZF9zZXRfYml0KCkgbWFrZXMgdGhlIG15c3Rlcmlv
dXMgc3RhdGVtZW50DQo+ICJUaGlzIGlzIGFuIGF0b21pYyBmdWxseS1vcmRlcmVkIG9wZXJhdGlv
biAoaW1wbGllZCBmdWxsIG1lbW9yeQ0KPiBiYXJyaWVyKSIsIGJ1dCB0aGUga2NzYW5fbWIoKSBz
ZWVtcyB0byBiZSBzb21lIHNvcnQgb2YgZGVidWdnaW5nDQo+IGJhcnJpZXIsIGFuZCBpbiBhbnkg
Y2FzZSB0aGUgZG9jdSBkb2Vzbid0IG1ha2UgaXQgb2J2aW91cyB0byBtZSB3aGV0aGVyDQo+IHRo
YXQgImZ1bGwgYmFycmllciIgY29tZXMgYmVmb3JlIG9yIGFmdGVyIHRoZSBiaXQgc2V0dGluZyB0
YWtlcyBwbGFjZS4NCj4gDQo+IE1vcmVvdmVyLCBpbiBteSBvcGluaW9uIHdlIHNob3VsZCBvcmRl
ciBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoKSwgdG9vIOKAkw0KPiBidXQgaWYgd2UgYWdyZWUgdG8g
bWVyZ2UgQ2hyaXN0aWFuJ3MgbmV3IHNlcmllcyBbMV0gdGhhdCBuZWVkIHNob3VsZA0KPiBkaXNh
cHBlYXIuDQo+IA0KPiANCj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8y
MDI2MDYyNDEyMjkxNy4yNDgzLTEtY2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tLyANCj4gLS0tDQo+
ICBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCAyNCArKysrKysrKysrKysrKysrKysrKysr
KysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS5jDQo+IGluZGV4IGM3ZWExZTc1ZDM4YS4uMmU4MGIwMTQ5OWRlIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS5jDQo+IEBAIC0zNjMsNiArMzYzLDE4IEBAIHZvaWQgZG1hX2ZlbmNlX3NpZ25hbF90aW1l
c3RhbXBfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0KPiAgCQkJCSAgICAgICZmZW5j
ZS0+ZmxhZ3MpKSkNCj4gIAkJcmV0dXJuOw0KPiAgDQo+ICsJLyoNCj4gKwkgKiBGdWxseSBvcmRl
ciBzZXR0aW5nIG9mIHRoZSBiaXQgYWJvdmUgd2l0aCBzZXR0aW5nIG9mIHRoZSBvcHMgcG9pbnRl
cg0KPiArCSAqIHRvIE5VTEwgYmVsb3csIHNvIHRoYXQgYWxsIHBhcnRpZXMgY2FuIHVzZSB0aGUg
c2lnbmFsZWQgZmxhZyB0bw0KPiArCSAqIGRldGVjdCB0aGF0IHRoZSBmZW5jZSBkZWNvdXBsZWQg
ZnJvbSBpdHMgb3BzIGluIGEgc2FmZSBtYW5uZXIuDQo+ICsJICoNCj4gKwkgKiBUaGUgY291bnRl
ciBwYXJ0cyBvZiB0aGlzIGJhcnJpZXIgYXJlIGluIGRtYV9mZW5jZV90aW1lbGluZV9uYW1lKCkN
Cj4gKwkgKiBhbmQgZG1hX2ZlbmNlX2RyaXZlcl9uYW1lKCkuIEFsbCBvdGhlciBmdXR1cmUgcGFy
dGllcyB0aGF0IHJlbHkgb24NCj4gKwkgKiB0aGUgc2lnbmFsZWQgZmxhZyBmb3IgdmFsaWQgYWNj
ZXNzIHRvIHRoZSBvcHMgcG9pbnRlciB3aWxsIG5lZWQgYQ0KPiArCSAqIG1lbW9yeSBiYXJyaWVy
Lg0KPiArCSAqLw0KPiArCXNtcF93bWIoKTsNCj4gKw0KPiAgCXRyYWNlX2RtYV9mZW5jZV9zaWdu
YWxlZChmZW5jZSk7DQo+ICANCj4gIAkvKg0KPiBAQCAtMTE3MCw2ICsxMTgyLDEyIEBAIGNvbnN0
IGNoYXIgX19yY3UgKmRtYV9mZW5jZV9kcml2ZXJfbmFtZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSkNCj4gIA0KPiAgCS8qIFJDVSBwcm90ZWN0aW9uIGlzIHJlcXVpcmVkIGZvciBzYWZlIGFjY2Vz
cyB0byByZXR1cm5lZCBzdHJpbmcgKi8NCj4gIAlvcHMgPSByY3VfZGVyZWZlcmVuY2UoZmVuY2Ut
Pm9wcyk7DQo+ICsJLyoNCj4gKwkgKiBGdWxseSBvcmRlciB0aGUgZGVyZWZlcmVuY2UgYWJvdmUg
d2l0aCB0aGUgZmxhZyBjaGVjay4gT3RoZXJ3aXNlLA0KPiArCSAqIG9wcyBjb3VsZCBiZSBkZXJl
ZmVyZW5jZWQgYXMgYSBOVUxMIHBvaW50ZXIuIFRoZSBiYXJyaWVyJ3MNCj4gKwkgKiBjb3VudGVy
cGFydCBpcyBpbiBkbWFfZmVuY2Vfc2lnbmFsX3RpbWVzdGFtcF9sb2NrZWQoKS4NCj4gKwkgKi8N
Cj4gKwlzbXBfcm1iKCk7DQo+ICAJaWYgKCFkbWFfZmVuY2VfdGVzdF9zaWduYWxlZF9mbGFnKGZl
bmNlKSkNCg0KSW5zdGVhZCBvZiBhZGRpbmcgdGhlIHNtcF9ybWIoKSBJIHRoaW5rIHdlIHNob3Vs
ZCBjaGVjayB0aGUgb3BzIHBvaW50ZXIgaGVyZSBmb3IgY29uc2lzdGVuY3kgd2l0aCB0aGUgb3Ro
ZXIgY2FzZXMgd2hlcmUgd2UgY2FsbCB0aGUgb3BzIGZ1bmN0aW9ucy4NCg0KPiAgCQlyZXR1cm4g
KGNvbnN0IGNoYXIgX19yY3UgKilvcHMtPmdldF9kcml2ZXJfbmFtZShmZW5jZSk7DQo+ICAJZWxz
ZQ0KPiBAQCAtMTIwMyw2ICsxMjIxLDEyIEBAIGNvbnN0IGNoYXIgX19yY3UgKmRtYV9mZW5jZV90
aW1lbGluZV9uYW1lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPiAgDQo+ICAJLyogUkNVIHBy
b3RlY3Rpb24gaXMgcmVxdWlyZWQgZm9yIHNhZmUgYWNjZXNzIHRvIHJldHVybmVkIHN0cmluZyAq
Lw0KPiAgCW9wcyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCj4gKwkvKg0KPiArCSAq
IEZ1bGx5IG9yZGVyIHRoZSBkZXJlZmVyZW5jZSBhYm92ZSB3aXRoIHRoZSBmbGFnIGNoZWNrLiBP
dGhlcndpc2UsDQo+ICsJICogb3BzIGNvdWxkIGJlIGRlcmVmZXJlbmNlZCBhcyBhIE5VTEwgcG9p
bnRlci4gVGhlIGJhcnJpZXIncw0KPiArCSAqIGNvdW50ZXJwYXJ0IGlzIGluIGRtYV9mZW5jZV9z
aWduYWxfdGltZXN0YW1wX2xvY2tlZCgpLg0KPiArCSAqLw0KPiArCXNtcF9ybWIoKTsNCj4gIAlp
ZiAoIWRtYV9mZW5jZV90ZXN0X3NpZ25hbGVkX2ZsYWcoZmVuY2UpKQ0KDQpTYW1lIG9mIGNvdXJz
ZSBoZXJlIGFzIHdlbGwuDQoNClRoYW5rcywNCkNocmlzdGlhbi4NCg0KPiAgCQlyZXR1cm4gKGNv
bnN0IGNoYXIgX19yY3UgKilvcHMtPmdldF9kcml2ZXJfbmFtZShmZW5jZSk7DQo+ICAJZWxzZQ0K
PiANCj4gYmFzZS1jb21taXQ6IGNkZWIyY2NkOTkzZWQ4NjQ3YWRiYmRhMmMzYjEwM2FhNzE3ZmQ2
ZjcNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
