Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fFsiF6MxQmpG1gkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 10:49:39 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 143356D7ABE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 10:49:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=bv85y6To;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39BC340AA0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 08:49:38 +0000 (UTC)
Received: from PH7PR06CU001.outbound.protection.outlook.com (mail-westus3azon11010063.outbound.protection.outlook.com [52.101.201.63])
	by lists.linaro.org (Postfix) with ESMTPS id 72C5E40AA7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jun 2026 08:49:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zm+slauHIYbplgJE0cccx1JnSWqbuMGSwYXNOctIRZH82XsNoVKiNnAbOB2b18dovp2niwSl7wQcN15X+/1qHroSAP0GB6iy32e6rXTXKv9LN9j5MG7if+p0lMsPm3QBuNMiEBtnaH/BXrcfSkBIukqZQFS9bnEpV1Aa8h+Ug39gzHmMIni/Xiy3NI2l1P/Ri5P+X1XGiLd09WU72W86AqaGQwei599gE1QzU4LXPRfmQAD7x3q0dUeNIWMxfKk3FVO+MmcKtMJ0iB14SmE9GAZwMVUQbIb1lJW76xsRbdQdbaVOJO9L72kzAsu04j2r9CKLli1g7z5HHrwf37aDLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z44lhA18GGakRfAZgS2pIKDizL/E0yBvjsmTDx1Xrfo=;
 b=rXiqtOb7I62bECRw8tlSsDVWTtfPN6N9Ke0mrPK6rUU9XTkmQtYa1cepEu5E6wy8h02VeJRlymIGbLddaAKrv7T6D5xIoldRud+EkUQOl1+YIgBF7njRKH7n/SmtR8TYa+zz6l8Ko+wAa0/lm7do7II9fMUZxJxmUdg5jjZcEbttlEdNH0+aSN0V8JlDfJDyI9xB214tG/7otWwuJofNbzW36GSSiip9aqTjneYLtIK/qYFiykvUAxai0wDwzpE4yXazJQxezJN0XP/Ylnwx42xXawEPBLO9m8U067MGYBkmM6hNdyeVn2CxThywq1rlwCsKE0lZditI33DYXWBaEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z44lhA18GGakRfAZgS2pIKDizL/E0yBvjsmTDx1Xrfo=;
 b=bv85y6ToTNUEwyOBY3gBHYBAFoIG2bwBk7+ICGTq1wFGFu+j9u12bidFWV5tFbYUfYJm96g2W9Ate0u71MZ9VKaRixfwQMr4LCaUiy5/3K5uNp41iwxFWgCaESK+dWE7bAF3kBzb3DDdCI+5IrvUVG1QIJJimDP3bvCzNhTD+9c=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH3PR12MB7643.namprd12.prod.outlook.com (2603:10b6:610:152::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 08:49:19 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0159.018; Mon, 29 Jun 2026
 08:49:19 +0000
Message-ID: <688077c3-903d-4cf5-837f-40621175cb30@amd.com>
Date: Mon, 29 Jun 2026 10:49:14 +0200
User-Agent: Mozilla Thunderbird
To: Philipp Stanner <phasta@kernel.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Danilo Krummrich <dakr@kernel.org>, Gary Guo <gary@garyguo.net>,
 "Paul E . McKenney" <paulmck@kernel.org>, Boqun Feng <boqun@kernel.org>
References: <20260629075636.2513214-2-phasta@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260629075636.2513214-2-phasta@kernel.org>
X-ClientProxiedBy: MN0P222CA0022.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:208:531::29) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH3PR12MB7643:EE_
X-MS-Office365-Filtering-Correlation-Id: ae42ac82-e3ab-4486-e357-08ded5bb4f0f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|366016|7416014|23010399003|1800799024|18002099003|22082099003|11063799006|56012099006|3023799007;
X-Microsoft-Antispam-Message-Info: 
	rdlJj2/kpvHesxtXcDdZ+Orh2hiYk6X3fwG8kHuzhKtz+nSIC5xzBZq1WOaOOxxIRgZT7JgOR+u8/nEF37PBgSxfD4mr3uQiS/D5Us6pCy65+o0gUAVEgsoDTgGAsfUj3NC175uKKBQfHd2zWwUOXjRxx9xzjcvWYx03pix5AkSJIIq8XPYeXIHPs4PjQaT4xLZlM4IRAz/K98ZIs0gH+6Ozt5Gl9wtJOwT+UuN8pmu53kkCZB+N2pn3p9QMAI+XeAnYulAh8OOifU/arrcFe6lAXFb5lH6vDRx7M1UZEd0jwsafjcsf23AfMeTUzg8MBTAyb2mkuPNgL1ENzcWy+u36gFgl7T26jlCQTENg89rwiNWkIfHEwT0cTlYrULZtSEXRRZf6Tv/yQMyJ81rqSFaUiZ4t2z9c62+ieJ3f0pTclLhOhprbXfB9ZXaComLxQNdtSVqYY8tIrdm13zjXKVODN/bzW5z1bci9jGrwc7QQ6y8tzDNY+VS9W/sIIvZUVpkIOB6pqsoDBmjTToCuOJyKxyQA2vRuCcGNe21Nkfuq31HFNs/q5X/TLkjbEK0MBn5LwkvXHqHmAJrwJbdsjs65+cq/usgo364/c0zzSCdTTRkQcEMGuPZyWlHflddqxWXNFpFfYq14rWOVGt7mpHi4p1AOPEX2cAYEOG1UTFg=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(7416014)(23010399003)(1800799024)(18002099003)(22082099003)(11063799006)(56012099006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZHplTUhkNWhIY3RMQUZBRldQUjRwWTE5YjY4enpjVFlocjJXZDBhU1J3VzM0?=
 =?utf-8?B?ZEN6YzhkMnU4U2hUcjJhakx5L0F5dWprcVo5bFZJZkJDUlU1aHp2SU9PLytH?=
 =?utf-8?B?VUxDSEFxejlrZmVSajZHWlJFVDhpaEJnSUNpY2EvNDE2Nlh4Wk9ZazRCeCtt?=
 =?utf-8?B?bXRUK1hPaXNqUzlHeWVQOFRubGxhNVdHWDhaUWVRMlJYc0lRZnlpNmZMemll?=
 =?utf-8?B?WkJsVld5THRlYkwza0ROVUxxU2dGQkdCaW9GVU82UldkMWFGNDM3aFRVaHdP?=
 =?utf-8?B?RG03bXBVeUIxM2xOYzNIT3A1Sm5FUWVjYTlKRUY2SDNqOFhBV3FkMGFZY04y?=
 =?utf-8?B?QmIwbGZnUUNWMVBVYnEzdUpQRjRyNUYyMU56d1gxWHIzOG51TnBDWlRENG52?=
 =?utf-8?B?TVZPVVhBWFdDb2FJR09YT29ubFVoaDF0QTFIQlFIYzJEMURodHFWZHNyTmt0?=
 =?utf-8?B?TDZoNUxlWGM4UDVzcHJvOFJ0MTJDcy80RXhVc0RER0Z6dmJxMlhRT2x5cG1P?=
 =?utf-8?B?ZjhnTDZKRzdIc1dvYzBSUGxlSzdNMVdJRndyL1lxZkZsZ1U4QmhyR2NUOWJH?=
 =?utf-8?B?UUo2OEdhbE8vaWRWcFdndDRiSHlaZkRSUXptdzRRMlBHV1dGTUhBTCs1OXFE?=
 =?utf-8?B?eC94V3NRTzRsellyQXpvczI3dkhqbllhc0NPeGRIeU1tRmo2RWVSUXlIdjk0?=
 =?utf-8?B?OGZwWmx3bDlmbHBabjhpemM2bU1MYlh5cHhHQTd4ZjVIMHU5UHo2S0UwZ0dD?=
 =?utf-8?B?NDBnaW9HcGowbEoyM08zOEtoYnlKd1ZzUWIzMU84Vy92cmV1cUZhcDhkdXd1?=
 =?utf-8?B?VEtoMGZScFJSK2wrMHlGaHFDc2p4WXFxN3NoMjdFditacVVHU3IxZ1hiZm5a?=
 =?utf-8?B?RnlvWkxNQlYxZHg4UlpUZmJrNTVYR3FMMitiU2NZVlpSc2kxUEl2RzVEekJl?=
 =?utf-8?B?SG8zakh2eENEMjFwa3VhV2NmUTFIeWNFTjBiZkVlRjk3ZWZXb1o0WGl0Z1lZ?=
 =?utf-8?B?L3JOV3I3amlpWDgxMHR0SVRDRm9zTTFrTDI2dmVKOGtWOVF4c3BPR2NaeWdN?=
 =?utf-8?B?OXlMVTlsb0oxczhzUmhYcnhPSlZSamNPWThSMU1rN0pMR2wyemVQdEttK3l2?=
 =?utf-8?B?bzBMQnRVQkN1aU8xNUVJQzJiUTdienBBcmsyQTlyZWNhb21hN1FDKzNXajRo?=
 =?utf-8?B?UWt4NncweEtPa1h0aVRHWnh1QTNSZlFIdlVnTk1wc2NMTUd4cTdpR3d4K2Vz?=
 =?utf-8?B?QVlZT2ZUZFd0eWFGREtsZWJIOHhYYTRCWGIzNWlPSU1yNjV4OHlRUVgyOStJ?=
 =?utf-8?B?c0RvVVgzcWpHMld1RTU0dEE1a3NaWmpESHlZbkF0eEJneVlrQjNNcFBNQk1t?=
 =?utf-8?B?ZXJzSkJ1Vko4c1h5eFNIN1RKajJPaGdEd1ZyLzJDLzdjSzlvQVVaemdBSmE0?=
 =?utf-8?B?amRtV2l4dzVDWXMyWXg2VVAveXk2cGxVZ1JZRlVYRXVLTU5PSWZ5WFljNHNM?=
 =?utf-8?B?T3RJYk9ucFN4VVhObXg4Tlh0TUdsRnZwVDZ3VzFWSHYxS2xJZGRlY2x5NWtJ?=
 =?utf-8?B?TDBOMW4yT2JDTmtZMXhTclhQR0JTbEhJeG05bjhhMmxVcGlNampNTkRSWkxw?=
 =?utf-8?B?eXZkY2VkNjhTeHozRHJVc0UvcU0rZ3A1TldlbStCR1hpcVgrQStXQkhjZm5V?=
 =?utf-8?B?czVxelZvSitCWitscWZBVUc3bEMzdktyZVgwZjhHdWVTYnQxNEdFMVI1S0oz?=
 =?utf-8?B?cHpsVjBVWk1TdTlER3RkYm1MUDREcDJhN28vZkVVTEIzK1h4NlJTMlY1NjJj?=
 =?utf-8?B?K3N4WERrdTZ0RlRKUXh3Y3dRaERDaG9EUVoyZGtvOCtnWGgyWnk4TTFobkhi?=
 =?utf-8?B?bzNIUVg2MFpKVjF1YjZNTHlqTnQ3bGpxczdkVXh6QnFEeGVHNFJlcHpqQlJK?=
 =?utf-8?B?NEtQSVFoWlhzRUJPQjl5bHNyNVZrTlhMYTRrVG52Q0pVVUN3YzdxRG5GRTNn?=
 =?utf-8?B?UlhVa0ZGSENwMERuMkVBVE9FQ2ZWcFF0Q1JsZmx2OFAxTEZRSHl1clFVUkFO?=
 =?utf-8?B?ajIxTjV6b3B1aUtIUUtpZ2tBaDBwZnRFMkFWZG5XNVlqRDFVUEFyb09yZXNH?=
 =?utf-8?B?UFR1aCt2VUF2M1RCNWNZS2ZKcEpWSDRUb0hRRWtaVjVKWXhPZVJMRENhQkt5?=
 =?utf-8?B?SUxhNWZrT1hQK0QwVE53bmdPSk9wN3JCZ1hHVE1xKzBwMXJvUW1nSFZScERI?=
 =?utf-8?B?bUVLbWl2WVIwMFpGRkJnYWFqaytMUWN6dXhoNUJoc0ZrK1ZRRm9XTFNSaThS?=
 =?utf-8?Q?tPWXkMNtxurq/xLTKZ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae42ac82-e3ab-4486-e357-08ded5bb4f0f
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 08:49:19.6697
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5QaG61w76Haeki+EFkYCM1nbJZ3A4oGeBYhQHC1ZW7BMIciLBnM/kNKlq5RGfJQQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB7643
X-Spamd-Bar: -----
Message-ID-Hash: YPJIUHXGL4EEJFCJ66F4CDPQ45KSF4JJ
X-Message-ID-Hash: YPJIUHXGL4EEJFCJ66F4CDPQ45KSF4JJ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: dma-fence: Fix potential NULL pointer dereference
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YPJIUHXGL4EEJFCJ66F4CDPQ45KSF4JJ/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:email,amd.com:mid,amd.com:from_mime,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 143356D7ABE

T24gNi8yOS8yNiAwOTo1NiwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiBUaGUgY29tbWl0IG1l
bnRpb25lZCBpbiB0aGUgZml4ZXMgdGFnIGJlbG93IGludHJvZHVjZWQgYSBtZWNoYW5pc20NCj4g
dGhyb3VnaCB3aGljaCBmZW5jZSBwcm9kdWNlcnMgY2FuIGZ1bGx5IGRlY291cGxlIGZyb20gZmVu
Y2UgY29uc3VtZXJzLg0KPiBUaGlzLCBkZXNpcmFibGUsIG1lY2hhbmlzbSBpcyBiYXNlZCBvbiB0
aGUgZmVuY2UncyBzaWduYWxlZC1iaXQgYXMgdGhlDQo+ICJkZWNvdXBsaW5nIHBvaW50Ii4NCj4g
DQo+IEEgc29waGlzdGljYXRlZCBpbnRlcmFjdGlvbiBiZXR3ZWVuIFJDVSBhbmQgYXRvbWljIGlu
c3RydWN0aW9ucyBhdHRlbXB0cw0KPiB0byBlbnN1cmUgdGhhdCBmZW5jZSBjb25zdW1lcnMgY2Fu
IHN0aWxsIGludGVyYWN0IHdpdGggZmVuY2UgcHJvZHVjZXJzDQo+IHRocm91Z2ggdGhlIGRtYV9m
ZW5jZV9vcHMgKGNhbGxiYWNrIHBvaW50ZXJzIGludG8gdGhlIHByb2R1Y2VyKS4NCj4gDQo+IFRo
aXMgaXMgdGhlIGRlc2lyZWQgYmVoYXZpb3I6IHRvIGNoZWNrIGZvciBkZWNvdXBsaW5nLCB0aGUg
c2lnbmFsZWQtYml0DQo+IGlzIGZpcnN0IGNoZWNrZWQuIElmIGl0J3Mgbm90IHlldCBzaWduYWxl
ZCwgUkNVIGVuc3VyZXMgdGhhdCB0aGUgb3BzDQo+IHBvaW50ZXIgY2Fubm90IHlldCBiZSBOVUxM
Lg0KPiANCj4gSGVyZWJ5LCBkbWFfZmVuY2Vfc2lnbmFsX3RpbWVzdGFtcF9sb2NrZWQoKSBmaXJz
dCBzZXRzIHRoZSBzaWduYWxlZC1iaXQsDQo+IGFuZCB0aGVuIHNldHMgdGhlIG9wcyBwb2ludGVy
IHRvIE5VTEwuIFJlYWRlcnMgZmlyc3QgbG9hZCB0aGUgb3BzDQo+IHBvaW50ZXIsIGFuZCB0aGVu
IGNoZWNrIHRocm91Z2ggdGhlIHNpZ25hbGVkLWJpdCB3aGV0aGVyIHRoZSBwb2ludGVyIGNhbg0K
PiBsZWdhbGx5IGJlIGFjY2Vzc2VkLg0KPiANCj4gVGhlc2Ugc2V0IGFuZCBsb2FkIG9wZXJhdGlv
bnMgY291bGQgb2NjdXIgb3V0IG9mIG9yZGVyIG9uIHdlYWtseSBvcmRlcmVkDQo+IHBsYXRmb3Jt
cy4gVGhpcyBwcm9ibGVtIGNhbiBiZSBzb2x2ZWQgdmVyeSBlbGVnYW50bHkgYnkgdXNpbmcgdGhl
IG9wcw0KPiBwb2ludGVyIGl0c2VsZiBhcyB0aGUgc3luY2hyb25pemF0aW9uIHBvaW50LiBUaGUg
cG9pbnRlciBpcyBlaXRoZXIgTlVMTCwNCj4gb3IgY2Fubm90IGJlY29tZSBOVUxMIHdoaWxlIGl0
IGlzIGJlaW5nIHVzZWQgdGhhbmtzIHRvIFJDVS4NCj4gDQo+IFJlcGxhY2UgdGhlIHNpZ25hbGVk
LWJpdCBjaGVjayBpbiBkbWFfZmVuY2VfdGltZWxpbmVfbmFtZSgpIGFuZA0KPiBkbWFfZmVuY2Vf
ZHJpdmVyX25hbWUoKS4NCj4gDQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnDQo+IEZpeGVz
OiBmNGNjM2FiODI0ZDYgKCJkbWEtYnVmOiBwcm90ZWN0ZWQgZmVuY2Ugb3BzIGJ5IFJDVSB2OCIp
DQo+IFNpZ25lZC1vZmYtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+DQoN
ClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
DQoNCj4gLS0tDQo+IENoYW5nZXMgc2luY2UgdjE6DQo+ICAgLSBVc2Ugb3BzIHBvaW50ZXIgaW5z
dGVhZCBvZiBtZW1vcnkgYmFycmllcnMuIChDaHJpc3RpYW4pDQo+ICAgLSBSZXBocmFzZSBjb21t
aXQgbWVzc2FnZS4NCj4gLS0tDQo+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCA0ICsr
LS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS5jDQo+IGluZGV4IGM3ZWExZTc1ZDM4YS4uMGEwMjVkZmRmMTMxIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gKysrIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+IEBAIC0xMTcwLDcgKzExNzAsNyBAQCBjb25zdCBjaGFy
IF9fcmN1ICpkbWFfZmVuY2VfZHJpdmVyX25hbWUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+
ICANCj4gIAkvKiBSQ1UgcHJvdGVjdGlvbiBpcyByZXF1aXJlZCBmb3Igc2FmZSBhY2Nlc3MgdG8g
cmV0dXJuZWQgc3RyaW5nICovDQo+ICAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5vcHMp
Ow0KPiAtCWlmICghZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZyhmZW5jZSkpDQo+ICsJaWYg
KG9wcykNCj4gIAkJcmV0dXJuIChjb25zdCBjaGFyIF9fcmN1ICopb3BzLT5nZXRfZHJpdmVyX25h
bWUoZmVuY2UpOw0KPiAgCWVsc2UNCj4gIAkJcmV0dXJuIChjb25zdCBjaGFyIF9fcmN1ICopImRl
dGFjaGVkLWRyaXZlciI7DQo+IEBAIC0xMjAzLDcgKzEyMDMsNyBAQCBjb25zdCBjaGFyIF9fcmN1
ICpkbWFfZmVuY2VfdGltZWxpbmVfbmFtZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4gIA0K
PiAgCS8qIFJDVSBwcm90ZWN0aW9uIGlzIHJlcXVpcmVkIGZvciBzYWZlIGFjY2VzcyB0byByZXR1
cm5lZCBzdHJpbmcgKi8NCj4gIAlvcHMgPSByY3VfZGVyZWZlcmVuY2UoZmVuY2UtPm9wcyk7DQo+
IC0JaWYgKCFkbWFfZmVuY2VfdGVzdF9zaWduYWxlZF9mbGFnKGZlbmNlKSkNCj4gKwlpZiAob3Bz
KQ0KPiAgCQlyZXR1cm4gKGNvbnN0IGNoYXIgX19yY3UgKilvcHMtPmdldF9kcml2ZXJfbmFtZShm
ZW5jZSk7DQo+ICAJZWxzZQ0KPiAgCQlyZXR1cm4gKGNvbnN0IGNoYXIgX19yY3UgKikic2lnbmFs
ZWQtdGltZWxpbmUiOw0KPiANCj4gYmFzZS1jb21taXQ6IGNkZWIyY2NkOTkzZWQ4NjQ3YWRiYmRh
MmMzYjEwM2FhNzE3ZmQ2ZjcNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
