Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKnwKq2XpWmPEQYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 02 Mar 2026 14:59:09 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 188B61DA411
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 02 Mar 2026 14:59:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C98E33F7E6
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Mar 2026 13:59:07 +0000 (UTC)
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013033.outbound.protection.outlook.com [40.107.201.33])
	by lists.linaro.org (Postfix) with ESMTPS id 20F3E3F76A
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Mar 2026 13:59:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=HQOhajVY;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.201.33 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wgi0a1zTWTRXdGMlO6jhBMWKbbVX5V9seLfszBuJoBjuwrSgqTAVVeJPr/qVO9meebcZaDsA2ixACkLwBbD0pjxwUgwXKjN8vp9VOJ08UPFxxFjhnqPzP6IjzozEKHuJV+BDg4A3R6MGFkXUItaQUYvdXi2bxtvcFpvAbO75FV7IQsTOipAwjM6f/vyuoUOZjTKHf8m2iqJMk2ysC4uMeAtVz1Z0Ys5F61PrDhbC3Tllj+WqT753VsjPuhA1evZWf/R1hdOI6HykLFhyyFhV+6iSJMEV7jLo8dSxnlpcXXDcg5Ow16XvVnUAbjYFQMrpfG8nxfSNVpYPvm23SZzJBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fvk+KdHJWpwgtE20rmk5rnspvKis9Oeccv6Dy65Yv9E=;
 b=vREpGJmBFkg1DDbXFEr8m6JDUcPHCEBq4zxrFhM0L/9ycqQjTED7ixXl7Kb65u1MFthCsYTfppZ43HsO1lICHbrNGVoFakk38TDPB0x6PrEcnvXnd0fvbWUkUa8pGIrxBfg62Zk06xFeUHJDhD6f48fby6w5XJ7J1SSTs3pSlQ/OkQoPkf7wKltsjcOo12Kf7kVua/GXPSteThpCy+k6IyXEtRiEI95c5v185WVblPK86VyZXrtyrehT28Dz89j7h+Jc4QbF9vwgn5RQt75RkISKsxMaD+nEIeZLlc+QvBBuqDpK0NQK9sRJtqN7t+BW0Uz4BAODfo3gAln+lTPsiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fvk+KdHJWpwgtE20rmk5rnspvKis9Oeccv6Dy65Yv9E=;
 b=HQOhajVYL67DuxN3m5nkfyfDrK2pN2AiDlpDSTFikc5GBfd3jxh7WwqmI1XpMaBuXi6Sy00yAex7EUZL3CHePQtkLX/opsDqpUw0xQK1uaihjFJkKC1seGnki7xlPI3tOiC+P/D8GYclHIqe47MCc5nAVx1p2uyr0iEkgM0XUJE=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS4PR12MB999076.namprd12.prod.outlook.com (2603:10b6:8:2fa::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.20; Mon, 2 Mar
 2026 13:59:03 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9654.014; Mon, 2 Mar 2026
 13:59:03 +0000
Message-ID: <c088698d-0bb2-4b0a-acad-946ec3df5777@amd.com>
Date: Mon, 2 Mar 2026 14:58:55 +0100
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@nvidia.com>
References: <0-v1-0a349a394eff+14110-dmabuf_kunit_jgg@nvidia.com>
 <7c30f527-abc4-43a9-a11c-9233015b0a59@amd.com>
 <20260302130113.GV5933@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260302130113.GV5933@nvidia.com>
X-ClientProxiedBy: BN0PR04CA0207.namprd04.prod.outlook.com
 (2603:10b6:408:e9::32) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS4PR12MB999076:EE_
X-MS-Office365-Filtering-Correlation-Id: ead43ae5-2532-41b5-25af-08de7863dc6e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|7416014|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: 
	30Ut3JnSvAcze54VavS+F/Q+GzwFg2YuSgN4wcLBMDXhihyvSnHBjBwVPn6WeGHORLhg5YK6hBLIC1KEpthWF/95iKV+jek3awOlgbe1O8RoW5Bifs4OsWPWTNZ7jtsNWI9YPTmeVWxKPenGGOyebwe6rG/sogKL+pFCDbs95B5qIrhRfZuWy6FmlfM9qrs8T7GlD+d1eINpFLQRp2rdh+DvfZ0M/cus5doq5wWBHJqEhTVwuqrWMH6s/Wh4YMigrkYc/xtn5IleQUMl0j3d9whOYd0pW5HBaF1EXFHErPpV9p6Jc7wtEzmMViKWGr0+LvR7s8asNLqa8h56YEBGtjPbnR9Uvbu5+/IViiVBB5rxOeKYGM8bbJLkfdsfs344qJAfTW56AUTE0FEbJM+0GINSXjwvedyo929L84sFc2YlYGGPHbAQ/m4L6JyNc89Z3jjslgGmc0FZr73TTiOCZhcdLICc72eMTcQSDRploFM5jqP0iZwHf8F37tIanstzCG31ZlFJO6yOfgc0ERIAPZCYCHAzSpnb1T6KgzIUeW3XEOvzlmkB8KOAFECXWDsCdvTvMWPgAh/F1ZAO06FVt3h6AGbqcxlFFQYA1aCAy5ms2tCVJJPDoh2SGSu2hU+cPbwDKdmiPLQ6iWG8Sl4nQLjx8zWpPZqdmzpDmC68Q3Wj3B7r1Dy3ioDef0juFGsSz20ui213PRCI+RFQ2+00XaFEl8zsDoXgJvP/7v0p7QA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SkwxZ3pRWlFTcDdlaXN4WFlydUlUQmg5c2RKNDlvdHgySXBLQmpzZldERkFt?=
 =?utf-8?B?dTVsR1oyVmVJeS85eW1FUWxGR245eERSSytsK1VHckk2NzRpTGNGbEF2alE4?=
 =?utf-8?B?WTNCd3V2ZEFRMVZDeEorNGtSR2NkZkpwbFd6Ylk5SFlhMnN5c3k2QnJucnZy?=
 =?utf-8?B?Z1Y3ek5WbzViTlp6NGdtdE1DMkNKekNSbTRweDY5aFZuYktUQkJQTzdVQmJM?=
 =?utf-8?B?M2l2aTRXN0NDcEZPb2hRdkpKU3YrMFA2bEFNQ1plQ3JNTUNCSGhvWGlvbEU0?=
 =?utf-8?B?azhtc3NaZGxHVElTZGtHM1lPeEZOWWFqUm1SMkVyMlkwYkN5WmtMSW5nSS9l?=
 =?utf-8?B?TFVlWktRMGczdkY3aUMzNGwvb296OEhQODJDTnQwSzcvL3FiVE5sWmJHaS85?=
 =?utf-8?B?bE02YVE4ZGR3ODRsbHB1RFVSME5NT21nZ0RGQzZJdVBOczRPM29waE5rd2JO?=
 =?utf-8?B?WHJvODdQendvZkVvNGZUVjljdHBFRzNzbHpGWXpsY25QQmtBWjdRUUZQS280?=
 =?utf-8?B?YlU4bXRjWGtGTXI0QllRaXdMdFBQaDFuVVZUdjJuYVFoTjZOcXNFMmhGRy9S?=
 =?utf-8?B?N0NtdzZFb2lHNnk3RDMxMStBZk0zRWRtRXRORzhneDFvYVhSRktXSzVTL2xV?=
 =?utf-8?B?NW9PZ1RPRXU3YVhPK1BIbzVuNys2QlhrYTBhemkyNlkzamh0TnB0WXBRTWFv?=
 =?utf-8?B?eWYrbncrQVZJRTlqL3hXWnZKSkxDaHY0SVdpTnoxRUtiQ0k4cVFLeis1MS9s?=
 =?utf-8?B?dERJckNRS1I5OUxFQ1hwTU9aa3BRcjUrcEtUNStONXJQdkl2TmgwM0grZWdV?=
 =?utf-8?B?Zkc4ZWJlaVVxWmQwaFUvS3JLMHUvZHBzc3lpRnJWWUd3SlRwaWNFVlZyNEt6?=
 =?utf-8?B?cEYvTGUzTUk3NkNQVXhaRUZwRlBnVGx6RHE2TWwwYmVRczl4WS9waTJtV1U5?=
 =?utf-8?B?QjlxS3ZRR1ZiK09sR2x4K2VPa00rUFNlVERDUWVBb2twcFhGNDJ5dVZuQ2NT?=
 =?utf-8?B?cFVLMkVBYlR0L3AzN2k3cnpuU0Q1Y3lFbGFjN2hZK2l4c1NZWE44KzFuMGI3?=
 =?utf-8?B?U3U0L2hrc3k4OFVnWDd3bUlENmF1bjhsU1FMamNWYzhWb1Rqa3VneHJ0Z2pX?=
 =?utf-8?B?Mm0vTW9YSGVXMWNLbUgrUldreDNrbnpTSVRnUUc2cWFiN2Z1dEM4Q3lJVERz?=
 =?utf-8?B?VkhqZVhxQklUdWljcXRzYkd6WFZadTh0Y2x2ZmJRdHJVZE5WeUYyRzNwQThn?=
 =?utf-8?B?N2cvcWdFVmJTejk0Myt5c2laUDY5citLU043K01MekFQMEs0ZUxWTGoxVDFn?=
 =?utf-8?B?b2lieDUwbUx1RGNRcHF3K1pBWGQzR1dNOXQ5N3YxSjhWdlFFSjcxSmVIek5l?=
 =?utf-8?B?ZU9TLzRRUHBDUDlFSHA4YXhqUklOME92Z1UzOWlSRzdNc0NyenFOUjFGTTBF?=
 =?utf-8?B?OGdUQVY1bTJLTzJFeVNGUTYwaS9wcm5PZEZzOERxaHRybUlWOTU0NFhoaGdl?=
 =?utf-8?B?Qmw1NGVoeXh4ZVpmZzFGRDlYTzFGQTYyZjFqN0poMEF3WG5BaFhIWW9nT1o1?=
 =?utf-8?B?aC9aWmNHbVlDdTk4Yk1OVEZ2d1E2MmpTZGd4WVZyNlFybTdHNWVjSkkrc1E0?=
 =?utf-8?B?c0xsdXBpdGJrWXFVOUZPWFlIRjZ2ZUZ5T3pYdGtGSE9IMzRXbm11cmk1TDcx?=
 =?utf-8?B?TDlrcFA4aUd3YmxoT3Nhbllra2tFTzFqNzA5cVlEU0dMNWkrVUxjcS9tbWdO?=
 =?utf-8?B?MGxOUkoyMEFNZzNiK0NuQlNyRitRVThFNENGUS9FbHlnakNqYXp1dlVSanpQ?=
 =?utf-8?B?TGJvUDk5WkJweXhOV0dnOHFXenFjVUxUWTFKRTRrNUxDVmR5OXRQUWdYdFNI?=
 =?utf-8?B?NEMxQ3g2ZlpMUlU0K0FGOEZSVG9Xd1gxdWFCT0c2RlI5TDJ5ajRWeTJsZUF5?=
 =?utf-8?B?aDVDc0I2R3U1T2tXb04xa3lNMGRhYXhPVHYwL25XY1NYcGRmZU95azFOM2tZ?=
 =?utf-8?B?RGFrWWdLTHFKRnRDNUhxVHJxNEZTeU9PWmRSM1ovU0IvWkh4aDVuWVd2dVpQ?=
 =?utf-8?B?ZTBQMURpbG1BblNQeVRoSGFiNHpFZFNQcDI1UXNqOC9WemF6bHh1ZkhCeUlT?=
 =?utf-8?B?eGhpZWJFemZoOGc3cTBiU08rQ2toZTRwbE1qVER3elVGYkwxK1BkOGIyemMv?=
 =?utf-8?B?WDFYNFk5aU5XbUozL1pCVjhmSDIxeld3Qi9TME92U05kejMzeUFCa2FqclBO?=
 =?utf-8?B?b2xZa2FUeUZNQTM4YVh4dUxWamxvVlMzS2Z6MUQ1SHc5a1o5cWlTWE0xNnUr?=
 =?utf-8?Q?h37upnR+HjIhgzgkiZ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ead43ae5-2532-41b5-25af-08de7863dc6e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 13:59:03.0158
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G4t7MB9QFidkugl/al+qO2G+k1h+U0gcQDho/1ReEiCRYFq45uNZAGQySYUAmpq4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PR12MB999076
X-Spamd-Bar: ----
Message-ID-Hash: ROOMOGLJBVUXR56F3JKVLAX3J5VX5BPY
X-Message-ID-Hash: ROOMOGLJBVUXR56F3JKVLAX3J5VX5BPY
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: David Airlie <airlied@gmail.com>, dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Rodrigo Vivi <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Tvrtko Ursulin <tursulin@ursulin.net>, patches@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/5] Replace the dmabuf custom test framework with kunit
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ROOMOGLJBVUXR56F3JKVLAX3J5VX5BPY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
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
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.810];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,linux.intel.com,lists.linaro.org,vger.kernel.org,intel.com,ffwll.ch,linaro.org,ursulin.net,lists.linux.dev];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:mid]
X-Rspamd-Queue-Id: 188B61DA411
X-Rspamd-Action: no action

T24gMy8yLzI2IDE0OjAxLCBKYXNvbiBHdW50aG9ycGUgd3JvdGU6DQo+IE9uIE1vbiwgTWFyIDAy
LCAyMDI2IGF0IDEyOjQzOjM0UE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBP
biAzLzEvMjYgMTk6NTcsIEphc29uIEd1bnRob3JwZSB3cm90ZToNCj4+PiBVc2luZyBrdW5pdCB0
byB3cml0ZSB0ZXN0cyBmb3IgbmV3IHdvcmsgb24gZG1hYnVmIGlzIGNvbWluZyB1cDoNCj4+Pg0K
Pj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yNi12MS1iNWNhYjYzMDQ5YzArMTkxYWYt
ZG1hYnVmX21hcF90eXBlX2pnZ0BudmlkaWEuY29tLw0KPj4+DQo+Pj4gUmVwbGFjZSB0aGUgY3Vz
dG9tIHRlc3QgZnJhbWV3b3JrIHdpdGgga3VuaXQgdG8gYXZvaWQgbWFpbnRhaW5pbmcgdHdvDQo+
Pj4gY29uY3VycmVudCB0ZXN0IGZyYW1ld29ya3MuDQo+Pg0KPj4gT2gsIHllcyB0aGF0IHdhcyBv
biBteSB0b2RvIGxpc3QgZm9yIGxpa2UgYW4gZXRlcm5pdHkgYXMgd2VsbC4NCj4+DQo+PiBObyBp
ZGVhIHdoZW4gb3IgZXZlbiBpZiBJIGhhdmUgdGltZSB0byByZXZpZXcgdGhhdCwgYnV0IGZlZWwg
ZnJlZSB0bw0KPj4gYWRkIG15IEFja2VkLWJ5IHNob3VsZCB0aGF0IGdvIHVwc3RyZWFtLg0KPiAN
Cj4gSSdtIGNvbmZ1c2VkIGJ5IHRoaXMgc3RhdGVtZW50LCBhcmVuJ3QgeW91IHRoZSBwZXJzb24g
d2hvIHdvdWxkIHNlbmQNCj4gaXQgdXBzdHJlYW0/DQoNClN1bWl0IGFuZCBtZSBhcmUgdGhlIG1h
aW50YWluZXJzIGZvciBETUEtYnVmLCBidXQgdGhlIGRybS1taXNjLW5leHQvLWZpeGVzIGJyYW5j
aGVzIHVzZWQgdG8gc2VuZCBETUEtYnVmIHBhdGNoZXMgdXBzdHJlYW0gYXJlIHVzZWQgYnkgbXVj
aCBtb3JlIHBlb3BsZS4NCg0KPiBJdCBpcyBqdXN0IGEga3VuaXQsIEkgd291bGRuJ3QgZXhwZWN0
IGFuIGludGVuc2l2ZSByZXZpZXcuIFRoZSB0ZXN0cw0KPiBzdGlsbCBydW4gYWZ0ZXIgYWxsDQoN
CldoZW4gc29tZWJvZHkgZWxzZSBoYXMgdGltZSB0byB0YWtlIGEgbG9vayBvdmVyIHRob3NlIHBh
dGNoZXMgSSB0aGluayB3ZSBjYW4gcHVzaCB0aGVtIHRvIGRybS1taXNjLW5leHQgQVNBUC4gSSBq
dXN0IHdhbnRlZCB0byBub3RlIHRoYXQgSSdtIG9rIHdpdGggdGhhdCBhcyBtYWludGFpbmVyIGFu
ZCB0aG9zZSBwYXRjaGVzIGRvZXNuJ3QgbmVlZCB0byBiZSByZXZpZXdlZCBieSBtZS4NCg0KUmVn
YXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4gVGhhbmtzLA0KPiBKYXNvbg0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
