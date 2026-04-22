Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oH6dAhWE6GkNLQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Apr 2026 10:17:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BC8443577
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Apr 2026 10:17:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D1B240500
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Apr 2026 08:17:23 +0000 (UTC)
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011050.outbound.protection.outlook.com [40.107.208.50])
	by lists.linaro.org (Postfix) with ESMTPS id 9AC3540431
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Apr 2026 08:17:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=aral3Sh1;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.208.50 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yYKLPrbuVwmVB4GlGq6pM9eXThLbfucOCewUmby954a3GmcTJ8hu8ML3gnVfC7XAWr4idKK6E2ClTPCqTkwOtocz8WFtw5iVC9p6J+S5TP7GgYydnbf9AVoDflRMf8EPcdJGXUxZTIcj1wVF3js5B3RHKyUQjZqMk4Ol7hBcTJqOQ0+fUeSTfYiidGn0CgFUdVDIDLlnL19i1Yt2m9DeV6w/O3duUd6+GMJrfnvK+R81gNu9rCA8+xVd+XyECOjvWSiyo+CFSTpk+if/K6n6u0iRphg4vQasss4YHV/30nnd25jFR8lHx6JDpdGLCqk8MawSl36+AbmdtjFWEqtZBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FDCwzwfi5Bq62423qgGzcfEZ1cD0n3hPrRggyPBRWlM=;
 b=mpJKXComODxeM0pTDiCWet7Vq5va3WP8CXO1uBX+46oHqeGcuybcTRooeprSbTU4Pmp1vdtAvlcAp6CzTWHcUCmPyHVa2R7zYFrU68QBBhMhNY4k8N4BMIB1F2jOj52YLvrV7Fz2zLla5hOJwqpnsorOpsxqlQ01U5NLZVK7mSN1Z8h26NokMYD0Lw0XsIxH90MlwmRD/wOLlhtzUA4pYuDhyWjngWMgRWQKuZoaaAxI1WY89lKYksiWdOG+ZVQJDaNGetiTQyxb/Z4yB7Z3uL0KoUS+Y8aYJWfZedShcvgS3HktO+Va8SKUoAST9Cplgnz8392bNirzQON80w62Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FDCwzwfi5Bq62423qgGzcfEZ1cD0n3hPrRggyPBRWlM=;
 b=aral3Sh1sp1/YLC2wwgbFENQhm4ldZvV+DJ6UbSQsuPplKnINdm5Yk+1gImkzMxb1CPdq9XDrdDpN9R0K70M6KHa/spQCDvRl57hFVc49wOfoJaaKcKkWa9svgw4qUCTTnE2d030BG4zVMLGgcK6TtYKLHTNgBIwDPwXGkxn7qs=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS0PR12MB7898.namprd12.prod.outlook.com (2603:10b6:8:14c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.18; Wed, 22 Apr
 2026 08:17:14 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9846.016; Wed, 22 Apr 2026
 08:17:13 +0000
Message-ID: <f6d38a08-009c-4efe-9dc3-6bcf00ac35f7@amd.com>
Date: Wed, 22 Apr 2026 10:17:06 +0200
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@nvidia.com>
References: <21-v1-b5cab63049c0+191af-dmabuf_map_type_jgg@nvidia.com>
 <c413710b-4c28-4ed8-88ec-aeb8c4482011@amd.com>
 <20260413121628.GE2588311@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260413121628.GE2588311@nvidia.com>
X-ClientProxiedBy: BL1P221CA0019.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:2c5::20) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS0PR12MB7898:EE_
X-MS-Office365-Filtering-Correlation-Id: c706a918-f714-4240-274b-08dea0478ef7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|376014|1800799024|366016|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	mNr7347r2+OM5Pw+sjvHTX8tQZkDM101dnufb+j1892ns5cf7avx/RSObuyaRjH9nUdXJsmdmAKaYzalvIu2zpBsJ7ejIQs0lOmz5+3l9q510sdC8OPNGCW+myE3vfO/icmIe2D+bdE9G8ZXyFjJPJHnzWLlnId4oDQT4jzpJt0Z9wL5w2TPrf5YSBfvjyzLD4L66KEv8goiCtcj45XvGa0CNiBU72NqdThs3eR5KFmAcabnvk7UVmwgpS5CfzRoyq7UU5pHTYd9xNJTMVwXKxzNS1a7iuBkh83TVjAThpjoaMp+FlZQM80Zgs68zgAr2RQynhd4WfHVbDx5HFIFBAyTsokpTIIycKNYkqFMjMQdeXLFhSWGrFHgfwaSgUWw28OJXWTtIZo3SqezPpMqwVPoPyRR7AgQB3Z3FBi0Uod4Nt3KzTmZVM/Yk01CE6I5GwZ7ASUoM1RnTz95p7o1kvWmNGZRwuZLflpIyZzdfWAaydkMOO+4ecuFNn5NZ6xHrxUezhARsE7IZjRhmT5HdXpiBxWNw+O5EscWXStP1bSZchX2iHRJZdxkt9Eibxiy/OQ7QlW8bodLbHDnks7aW6vXHTTaHusjfgfJbTJ7ZzqVAgoBocQlMxFFjleWkHqDMkTtxemLPFi4Zy86xofJsUwjmLtISNsQhAFKEbtOnwMP2eJx8pC0hqviOSexhmrdgMU+KD1Ri76//GVgh1vqnl1oCIcnCkdyPiq0OqNkW3c=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dE44V0NrZUQ2US9rczRyVERkaWNmZ1ZXbUdCUVJCL1NFWGxzODczYXVNdFBC?=
 =?utf-8?B?VVB4WmpGWTF1WGFrM1AwWEJ1cERqRG9RcWZwN3hNcTlEQXIwMU1CZzJZRGlR?=
 =?utf-8?B?djgzcS81VlV2SFFkUlRSVHVIMGZYVzd0YVlFOUZ5cmV6cnQxYVc3cDZsVGpl?=
 =?utf-8?B?dTF3UGN0S0J1L2o1YlZGTmhIVkdmdjVsSDd3VzU5QXZNYjB3ZmtjTFV5bHYx?=
 =?utf-8?B?Mk1tdkdyVzFaNTBUK1ozMXNjSXZoTzQreDdOSHNDalVEQ2lpQ2xDZW9wTklN?=
 =?utf-8?B?K1pRQTYwMG00QWJHYkZCWURBTFZZbDNHY2xaUmtxOWxHemxSZ2N6QTloSHhD?=
 =?utf-8?B?SUFHYkxBZmI3YXJncHRsQUU5WE9peXhRUmU4TWRtVnI5b2dZSDR1SUZuNzB1?=
 =?utf-8?B?dllDUFAyZ1R1UkpPL21WTjc4MHh2Mk5zSkZPZ3RoY1ZRWkRqL0ZYMTdUK3RP?=
 =?utf-8?B?OGtjTWdsRUM3cTkyNW5DY2FZZjcyMkVOaGlrLzFVMkp5cWJVeG96Ny9ZZzJa?=
 =?utf-8?B?ZWNVeXpzdDc4ZVFPWVNpWGw1dEVuZTNXWFMvK01xOGZhKzRNTUN6Sy92akps?=
 =?utf-8?B?SEVZa1FyUHFMeUFrQ3F1Skd0akJDZ0U2ekhzTEt5cFIyc1BTcmZsVVlEMmlR?=
 =?utf-8?B?NnlxdDdQdGNneHdtM3pSZmFEYWJNeU15MzZtY2tPelo4VDFhYU9EbllQd1dX?=
 =?utf-8?B?L0wxa3M5aUtBSm9hcVQxZnIyU2FaUUhMKzRtK2c1UDVFS1RCdkVkMzRKWHJG?=
 =?utf-8?B?YUZUOFNFTWh3eHFEQmU5MlM2VTkzSzJ5anFDQVVUVzEyUDF1NytINzd5NXZL?=
 =?utf-8?B?M05PU0tYZDV0aUZNQTJpM3RyQmVyYk5xWHdYcEM3a2kyT3VXUEp6YWVGU2xW?=
 =?utf-8?B?ZUhzN1JZQlVMM0ZaSzN2b3dvclc0Q3Q2Zkt1U1RBM3pwL295UklWVEtiY1hQ?=
 =?utf-8?B?YWtaUmExZ3E1MkpIYzBvNzdpUmFCODh1QUxBL2JESDNZTlkxR2J1UzFuUkw1?=
 =?utf-8?B?enpPQmpIQnlERDRYVytHQWVQQVQ0K21TelRNYkV4U3MzV3BIeXl3VnI4TUIz?=
 =?utf-8?B?Q3k2VTQrd2NMVmNEQUZvdjNwcUxmZGNQOHp4N0VWd3psWXh6b3dDU2pTcHdZ?=
 =?utf-8?B?TTlmb2luUHFIWHBEMkQ2eTVQVTdjYitZcW1XU0RSdmx3SnovSmcxWmwwVjAr?=
 =?utf-8?B?V2toL1FWRjhYbXk4eEx0bEkzUEJBR3pDZTlHdDEvb0lMRHIraGRWdS9RcGxs?=
 =?utf-8?B?QTNXQnN1UzZMY2dDSTVhRlZhT3Z1bWZuVlNIVjVVaW5uSmltTEdNQnUrSVdk?=
 =?utf-8?B?U25QY2hkeTN1OWk5WHhaUGl5M2srQjNjdEpadkpxUlVHbUZLMVRydDFlUjV6?=
 =?utf-8?B?T1U4ZVNVa0ZEQUY5c0VHYjB1bU5VT2l4RGJuYVhZbFl1cjZtTnZEZzJBMzVk?=
 =?utf-8?B?MW9ZMGVyMkRVc1N2OEZVN1lra0o5MDRCcFowa0tMNElESDZTZVBxb05ZbnBu?=
 =?utf-8?B?T3JENHNnUEpETVFxb1lIZkhIdHR2dFZZeDNNdGN3Ymh3N0doK2lubmVhNFBT?=
 =?utf-8?B?SGZKK1lnbTFzcGlnSmF1WDJvbmpLSXJYc0JQZ3dHekxyL2E3SHI3aDVldnkx?=
 =?utf-8?B?VkRnVmJnRi9MS1R0aGNBUGZhWnh2K2cxZUNJSy84YW5YcDhjUXpvUEJSamJr?=
 =?utf-8?B?MmtuT2U1SEtYNVhWa1BTWFV6N2lsaU9pbDY1SW9RL2tzVUY4YkxoTEV6ZGk3?=
 =?utf-8?B?ekR0a1FQZ2xidTJ3Q3J4blJKVWdZbWJ2VDRHTGRYRDlScCtVWlVDTXJhdW5r?=
 =?utf-8?B?bnkvZGpzK0h4MnRCM2lRNlkzc3V3akJ5TWpQaC9oa3BQRUhWMUdONmJSSk9X?=
 =?utf-8?B?L09SWHVqUDdjcHNQMlU1Tk9PWDhKZXV2dElnbkN1d1ZFQkJoU1ZMUGRQdjBx?=
 =?utf-8?B?WTltTkxnQXlIbXZuWDVMY1VQWVd1ZXRXSlJzdnIreEYvMis5OXpnOWdVTmNl?=
 =?utf-8?B?Wmo1RGc1eDFoYTR2d1FISk5PTXd1YTR2ckEzVWd0RXVHanU5TXpabWkrMHpO?=
 =?utf-8?B?VGo5WUd1MExLV0t1RldwdUUzUEwycDFGMTAvcUVwNTViUS9XNUFPejYwNGs3?=
 =?utf-8?B?SW9PT3F1YjRtd09PbG45ZS9ZZTZBbXE1QWRFWnZCZ1Q0ZlpLNVF6N0hVVE1u?=
 =?utf-8?B?TnZYWDRsRXY0akhaRU40TUl3NzYrdnVtUGE1dS81dW9OUFl1UkU3anpCc2Ez?=
 =?utf-8?B?bWVxQmJlUEFKT1RHUUEvSmk3MEgvTWlhaUlEOFpWSi9Qb1h3dWhqaThHRXhU?=
 =?utf-8?Q?diz+JiDc9T17IZuQS3?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c706a918-f714-4240-274b-08dea0478ef7
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2026 08:17:13.6866
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4x6xhoTJcRHNZdaTSlOGRyMwLoWsMVYDkf4+AslgeUyFtmi3ZvaHQmZAMD+3X8Tr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB7898
X-Spamd-Bar: ----
Message-ID-Hash: UI3X5Q72MC7UKAH5IGEH6CHZI3SEXW47
X-Message-ID-Hash: UI3X5Q72MC7UKAH5IGEH6CHZI3SEXW47
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, iommu@lists.linux.dev, Kevin Tian <kevin.tian@intel.com>, Leon Romanovsky <leonro@nvidia.com>, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Matthew Brost <matthew.brost@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas Hellstrom <thomas.hellstrom@linux.intel.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 21/26] dma-buf: Add the Physical Address List DMA mapping type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UI3X5Q72MC7UKAH5IGEH6CHZI3SEXW47/>
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
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.951];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 59BC8443577
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNC8xMy8yNiAxNDoxNiwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiBPbiBNb24sIEFwciAx
MywgMjAyNiBhdCAxMDo1ODoyMEFNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4g
T24gMi8xOC8yNiAwMToxMSwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPj4+IFRoaXMgdHlwZSBp
cyByZXF1aXJlZCBieSBpb21tdWZkIGFuZCBrdm0gYXMgZG1hYnVmIGltcG9ydGVycy4NCj4+Pg0K
Pj4+IER1ZSB0byBzZW5zaXRpdml0eSBhYm91dCBhYnVzaW5nIHBoeXNpY2FsIGFkZHJlc3Nlcywg
cmVzdHJpY3QgaW1wb3J0ZXJzIGJ5DQo+Pj4gdXNpbmcgRVhQT1JUX1NZTUJPTF9GT1JfTU9EVUxF
UygpLiBPbmx5IGlvbW11ZmQgY2FuIGltcGxlbWVudCBhbiBpbXBvcnRlciwNCj4+PiB0aGUga2Vy
bmVsIG1vZHVsZSBsb2FkZXIgd2lsbCBlbmZvcmNlIHRoaXMuDQo+Pj4NCj4+PiBBbGxvdyBhbnl0
aGluZyB0byBpbXBsZW1lbnQgYW4gZXhwb3J0ZXIgYXMgdGhlcmUgYXJlIHVzZSBjYXNlcyBpbg0K
Pj4+IERQREsvU1BESyB0byBjb25uZWN0IEdQVSBtZW1vcnkgaW50byBWRklPL2lvbW11ZmQgYW5k
IGl0IGlzIGhhcmQgdG8gYWJ1c2UNCj4+PiB0aGUgQVBJIGFzIGFuIGV4cG9ydGVyLg0KPj4+DQo+
Pj4gVGhlIHBoeXNpY2FsIGFkZHJlc3MgbGlzdCBleHBvcnRlciByZXR1cm5zIGEgcGh5c2ljYWwg
YWRkcmVzcyBsaXN0IGluIGENCj4+PiBzaW1wbGUga3ZhbGxvYydkIGFycmF5IG9mIHN0cnVjdCBw
aHlzX3ZlYy4NCj4+DQo+PiBBcyBmYXIgYXMgSSBjYW4gc2VlIHRoYXQgaXMgc3RpbGwgYSBwcmV0
dHkgYmlnIE5PLUdPLg0KPj4NCj4+IFdlIGhhdmUgc2VlbiBzbyBtYW55IHByb2JsZW1zIHdpdGgg
ZGlyZWN0IHBoeXNpY2FsIGFkZHJlc3MgYWNjZXNzIGJ5DQo+PiB0aGUgaW1wb3J0ZXIgdGhhdCBJ
IGNsZWFyIGRvbid0IHdhbnQgdG8gcmVwZWF0IHRoYXQgcGVyZm9ybWFuY2UuDQo+IA0KPiBZb3Un
dmUgc2FpZCwgdGhpcyBpcyB3aHkgSSB1c2VkIHRoZSBFWFBPUlRfU1lNQk9MX0ZPUl9NT0RVTEVT
KCkgLQ0KPiBpb21tdWZkIGRvZXMgbm90IGhhdmUgYW55IHByb2JsZW1zIHRvIHVzZSB0aGlzIGNv
cnJlY3RseS4NCj4gDQo+IFdoeSBpcyB0aGF0IG5vdCBnb29kIGVub3VnaD8gQXMgSSB1bmRlcnN0
YW5kIGl0IHlvdXIgb2JqZWN0aW9uIGlzbid0DQo+IHRoYXQgdGhlcmUgaXMgYSB0ZWNobmljYWwg
aXNzdWUgd2l0aCBpb21tdWZkJ3MgaW1wbGVtZW50YXRpb24gaXQgaXMNCj4gdGhhdCBzb21lIG90
aGVyIGRyaXZlciBjb3VsZCBpbXBvcnQgcGh5cywgZG8gaXQgd3JvbmcgYW5kIG1ha2UgYQ0KPiBt
ZXNzLiBJIHRoaW5rIEVYUE9SVF9TWU1CT0xfRk9SX01PRFVMRVMoKSBmdWxseSBhZGRyZXNzZXMg
dGhpcywgbm8/DQoNCk5vLCBub3QgZXZlbiByZW1vdGVseS4gSSBjbGVhcmx5IGRvbid0IHdhbnQg
c3VjaCBhbiBpbnRlcmZhY2UgaW4gRE1BLWJ1ZiBhdCBhbGwuDQoNCllvdSBjYW4gZG8gdGhhdCBh
cyBwcml2YXRlIGlvbW11ZmQgaW50ZXJmYWNlLCBlLmcuIHdoZXJlIGlvbW11ZmQgb2ZmZXJzIHRo
ZSBmdW5jdGlvbmFsaXR5IHRvIHNheSBnaXZlIG1lIFBGTnMgaWYgeW91IHdhbnQgdGhhdC4NCg0K
QnV0IHdoZW4gdGhlcmUgaXMgYSBETUEtYnVmIGludGVyZmFjZSBldmVuIGlmIGl0IGlzIGxpbWl0
ZWQgdG8gaW9tbXVmZCB0aGVuIG90aGVycyB3aWxsIHdhbnQgdGhhdCBhcyB3ZWxsIGFuZCB0aGF0
IGlzIG5vdCBzb21ldGhpbmcgd2Ugc2hvdWxkIGRvIGFnYWluLg0KDQpFdmVuIGZvciBpb21tdWZk
IEkgdGhpbmsgd2UgZG9uJ3QgbmVlZCB0aGF0LiBXaGF0IGlvbW11ZmQgZG9lcyBpcyBiYXNpY2Fs
bHkgbWFuaXB1bGF0aW5nIGEgc3BlY2lmaWMgSU9NTVUgYWRkcmVzcyBzcGFjZS4gU28gdGhlIGlu
dGVyZmFjZSBzaG91bGQgYmUgdG8gZ2l2ZSB0aGF0IGFkZHJlc3Mgc3BhY2UgdG8gRE1BLWJ1ZiBh
bmQgc2F5IGhleSBwbGVhc2UgbWFwIHlvdSBiYWNraW5nIHN0b3JlIGF0IHRoaXMgYWRkcmVzcyBp
bnRvIHRoaXMgYWRkcmVzcyBzcGFjZS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiBUaGUg
b25seSBwYXN0IHByb2JsZW1zIHlvdSd2ZSByYWlzZWQgd2VyZSByZWxhdGVkIHRvIGltcHJvcGVy
bHkgdXNpbmcNCj4gVk1BcywgdGhhdCBpc24ndCBoYXBwZW5pbmcgaGVyZS4NCj4gDQo+PiBNeSBt
YWluIHF1ZXN0aW9uIGlzIHdoeSBkb2VzIElPTU1VRkQgbmVlZCB0aGUgcGh5c2ljYWwgYWRkcmVz
cyBpbg0KPj4gdGhlIGZpcnN0IHBsYWNlPw0KPiANCj4gQ1BVIGlvbW11IGh3IG9ubHkgd29ya3Mg
aW4gcGh5c2ljYWwgYWRkcmVzcy4NCj4gDQo+PiBJZiB0aGF0IGlzIHJlYWxseSBzdHJpY3RseSBu
ZWNlc3NhcnkgdGhlbiBJIHN0cm9uZ2x5IHN1Z2dlc3QgdG8gbm90DQo+PiB0b3VjaCBkcml2ZXJz
L2RtYS1idWYgaW4gYW55IHdheSwgYnV0IG9ubHkgZG8gdGhpcyBpcyBwcml2YXRlDQo+PiBpbnRl
cmZhY2UgYmV0d2VlbiBpb21tdWZkIGFuZCBLVk0uDQo+IA0KPiBUaGlzIGlzbid0IGJldHdlZW4g
aW9tbXVmZCBhbmQga3ZtLiBJZiBpdCB3YXMganVzdCB0aGF0IHdlJ2QgcHJvYmFibHkNCj4gYmUg
YWJsZSB0byBrZWVwIGdvaW5nIHdpdGggdGhlIHByaXZhdGUgcGF0aCBsaWtlIFZGSU8vaW9tbXVm
ZCBhbHJlYWR5DQo+IGhhcy4NCj4gDQo+IFRoZSB0d28gcGF0aHMgd2UgYXJlIGludGVyZXN0ZWQg
aW46DQo+IA0KPiAxKSBWRklPIHRvIEtWTQ0KPiAgICBBbGxvdyBLVk0gdG8gaW1wb3J0IGEgRkQg
aW5zdGVhZCBvZiB1c2luZyBhIFZNQSBsaWtlIGlvbW11ZmQgbm93IGNhbi4NCj4gMikgR1BVIGFu
ZCBSRE1BIGRyaXZlcnMgdG8gSU9NTVVGRA0KPiAgICBTdXBwb3J0IFNQREsgYW5kIERQREsgdHlw
ZSB1c2Vyc3BhY2UgZHJpdmVycyB0byB3b3JrIHdpdGggR1BVIG1lbW9yeQ0KPiAgICBUaGlzIGlz
IGJlY29taW5nIGEgcG9wdWxhciB0b3BpYw0KPiANCj4gSmFzb24NCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
