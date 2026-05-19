Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BfdAj56DGoSiQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 16:57:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6341B580FB1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 16:57:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 30AAB406F4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 14:57:00 +0000 (UTC)
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011070.outbound.protection.outlook.com [52.101.52.70])
	by lists.linaro.org (Postfix) with ESMTPS id CB7493F829
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 14:56:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=bCHlGGqz;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 52.101.52.70 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	dmarc=pass (policy=reject) header.from=nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NJ4Q4LaGvDPUbM9b9PCCV3Weke6z79L7SzKl5o7AZPtQxvUofTAMCU56w3goHqzu8Yy23uh8kkg4V6BUTq9zu3LYHRaD5cwHVCO6i4awu747ldSTF7sShHBKiHiQPKj1N4C1ACKJs4OaJaHdmOpLcUybfx4JFxf70dcyPMvweA4HSb+u/HPv98uCOS3xamTUF6MJ1f4g3SBeYyTHgu03R28HAejsKDnipjAURMchflWVfK6uOkN01JrkYU4G2B+0E+t1Mcu44WGEC5eiSxIznHYdxWvDL8fBx2BQgS47iOqRUa0vaj8aac3hp5XcZ159LrBF1ZVLkHJ5EEkBcPoOYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ftv5J2n61PMhLXfdW/djuMLo9CFFUDPP14l0Nl3WZmY=;
 b=C1SSWzyB9FqpDmH0otdenQjV46oL5/QtqADLyL1Kzt2DFPjCayMiZos0fUfIfl89s3VQqrIXQ3rh0OVr9fPLUL0OGt78WxZEmdDKkzQBtufFXs1nARBQZHJsNuSooq4oQovmEADwtvLhrkBrDbDPrp7DUMsp9TkO5ne+n9iW63lRTxOh+Ll0GKHSI1tvSOXB/AEFzru6rUVzcxIFMmsAMyzdIaekftjSwTnOxyF+N+a8ExiQpznUc+mA26GOCGkz22DPHmxoqEFUjGifW5JUuL1gxukEoIA2Wa2h6acORu2SoRbKEquVm2IWKsaa5eoY3cTMTdGuuuwe2IQz6ptZCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ftv5J2n61PMhLXfdW/djuMLo9CFFUDPP14l0Nl3WZmY=;
 b=bCHlGGqzHak8zGulSEvENW74jMMCT8Guif2luMll39cGl9SH3BbGXrQj6QvwkQB8mzsh8mYMq4UAVPYXlSh45J4mSTJdRVe9Pk46HJcJjMyuQUyvjytYdbOIzHkCE9xa2CaDItz4hZjqQGr9HSlp0HmXNbNMLq2SNevT7t6oSmy1rY9r9AnaYD/H/+htBrr5fAT9kI8HLy7c9GggC+03dWNhmRfuOKBiEv8/pKOUVxXlgDIlx9/qzPauKFIi3Gowxz4LsNNfRfpudBVi4+24lKdD3ekTw+DSkfxldQ3tcMlAA9ew2OP2NSGwx+CGKqiWSGpnP+HNmMyNSXSvL+5BKw==
Received: from LV8PR12MB9620.namprd12.prod.outlook.com (2603:10b6:408:2a1::19)
 by DS0PR12MB7801.namprd12.prod.outlook.com (2603:10b6:8:140::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.18; Tue, 19 May
 2026 14:56:50 +0000
Received: from LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528]) by LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528%5]) with mapi id 15.21.0048.013; Tue, 19 May 2026
 14:56:48 +0000
Date: Tue, 19 May 2026 11:56:47 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Matt Evans <mattev@meta.com>
Message-ID: <20260519145647.GA3602937@nvidia.com>
References: <20260416131815.2729131-1-mattev@meta.com>
 <20260416131815.2729131-4-mattev@meta.com>
 <20260424182426.GG3444440@nvidia.com>
 <c598a21e-ee50-42d9-98dc-2959e84ace50@meta.com>
 <20260430171106.GA6829@nvidia.com>
 <2d0eb275-64ef-4710-806b-36f6b32f7122@meta.com>
 <52162da4-e1cc-4f90-a95a-218d6089cd71@meta.com>
Content-Disposition: inline
In-Reply-To: <52162da4-e1cc-4f90-a95a-218d6089cd71@meta.com>
X-ClientProxiedBy: YT1PR01CA0129.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2f::8) To LV8PR12MB9620.namprd12.prod.outlook.com
 (2603:10b6:408:2a1::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR12MB9620:EE_|DS0PR12MB7801:EE_
X-MS-Office365-Filtering-Correlation-Id: 8fdb41bb-ff17-4994-6556-08deb5b6da2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|376014|7416014|366016|22082099003|18002099003|56012099003|3023799003|11063799006|4143699003;
X-Microsoft-Antispam-Message-Info: 
	1AtSy38tdOQ+JzXGVnaifU1g78CiGJ2FMC/SqIgAOL2dos4clgrzUvgGOcZYIfZTubGp/Im0k5pHdaPe2aJQK5YtIhecYJ0XKWdyxlavLFRip4fwcnCVTAspkx93UV1YarYcUfx81LuCUFHQVgPs2hKx+FC0XYew/I3tGvV9wZPJ0y0eSl3Y1mfxpxDcmVj66V2FpbHCPZVCXHc5jWHh9wk3URrVUh2tp2vMP5SITMp6RDA6X98cIaIoFwiOiaWsZ09LQlIG3UixYmfSaD3X+WQqm7JArofdhqriBPs1Luo49eOKRZAPOXg1oepyeRkCQOwzcM+2dY6t7IN9QKdj/dvLRQpPJQsLzEMv+Ls2EBB4jR4XF8sIX1vdKqIflvuslG06xwNk5cBLQ4rwtZ1oY4CemQzrWxfOp6dih1p8MTnZ1ZhdYjMHlXqH31m8a7gkbgEr0olWhyVX491BAgB2XHvMupW2ieUQ7XdDP0tKW2Q5dObeWJelEBZ5vUTS5wRWWMCKXpgFIBCHU5wc95LutM96eBmw5gNqhbHCI00viTe6b5anOBLUJpwJc72vc9TZGNQQI7eAIqyiQW11eEshoUUGJEdtDtD3d8h+JVgSoZM5pCFF+SbzLyG4y4VCoHZu2jtiEWw6BwwalGzx2Yh7cHB5ZlNYbFj7WMzVGwaj/PkTOBjgIuquA9RnlclM1LSS
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV8PR12MB9620.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(22082099003)(18002099003)(56012099003)(3023799003)(11063799006)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MXdnL0hmUmExL1BZSzdVamlxRjU2cnJyOGpGbTB3ZDFPVmVUMDVTNE5YVzBX?=
 =?utf-8?B?VDBNajZwajBlS1J1VlZjVmlVd2tSNW04MzlWOVN3Y1NyUm5ZU1NrbHRiRVZt?=
 =?utf-8?B?bUhtZ1Rvdk9GNk5EQnljN2IrdFg2WFIzNWlXS2xOVjBZNm1aNWQxaXVRMXlE?=
 =?utf-8?B?L2VBTXFMYW0ra1c1VmFTM2V6NVNnWTA3TkZsN1M4OWI0RGIvcWJtV3hxVFV2?=
 =?utf-8?B?aHFMZUxUa3RGbFNINFVNeFdkRDFzdTJMS25RZS9rZk83NmRyOWlYNGZsaWFU?=
 =?utf-8?B?aG9LRjdDcTNSV0dOWmpIU3ZQRFY1MWdGSExBc3F2T0VUZS9QeVdmak9HYWcx?=
 =?utf-8?B?YmRSd2hxVmVJVE9TVFZJVHNmL3lnLzlnVGtVM0wySFB0dDJONWxYaDdQZTR0?=
 =?utf-8?B?ZXRib1FKU3NjOUtKN2t6TU9xZ1NFdGMrSGVlYUc2Zm9kTzNRbUExUTg4S00z?=
 =?utf-8?B?bGJvY1pXd01ILzVGZjJVYkt4d1hodWszL2dsYWk2bGh3Y1dUTlp6V3hEREtM?=
 =?utf-8?B?YzQxOExCaWNOV0hBUmZKelFmN3h6MEwwcXlzNU8zNlR6V3QrSXBMTjFQRUt6?=
 =?utf-8?B?OHdQMHpPQjRZRmwrSmJGdHh2L253LzZscENEQzVCd2UzZ0RHNjlqMTVEZ1RD?=
 =?utf-8?B?VjJEVWJhZ0pDWngvL3BxNUFpVENxQ2N3VFdkTHlxSlEwU01pckt6aC9LTm9p?=
 =?utf-8?B?MmlXMGFLRUVUZGdzOWhkVVJoVUdaWUpST1RSTzNnbGxJUHpmNTZBZXRHNmp1?=
 =?utf-8?B?eHRKTnZGZUN4TU41WEdac2VSZEhONGlHWEZ3ZDJjZm9DSEJpSk9IbjBOL0xO?=
 =?utf-8?B?ZjdFY1o0K1c4V056VjMyYlpNMzBQOGpwZHJ3aUwyMzV0Zzl4MU5CbVZmUXE5?=
 =?utf-8?B?NzllYy9jYjBJQ09ybDFRZDRvMU41SHhDLzNGaWMzRG9zZ3hyUjhPVW51UkJt?=
 =?utf-8?B?UHpXR00zZEcvc2JaUzJPRG8yR2w1YisxMFIrNHdvSTl1NVJ5SDFPSUxkNlhB?=
 =?utf-8?B?MVJ1Y3orZ2p5aGszZW1JWFZjKzdUcnRvZ2Q2SGFUNXF5Ny9WQ2M2MnlOcDk1?=
 =?utf-8?B?aEFkalJ3Tk03a1ZDUysrOGNFTzF6SGk5ZjdicSttUHpHS1FMTnphYXZtYm1H?=
 =?utf-8?B?ZlJrcGFJN1RyQ21PWWsvYTkvbnRUdkxncFhYM1pOeUdzT1UyS25QbXJUV2FG?=
 =?utf-8?B?dnJHemdCVnJ0b2c1ZS9kK2tsZnB4R3pOTnQxbk1HLzBNRXc0NzRwNnJZcGwv?=
 =?utf-8?B?OTNEcVUxYmFoY3V6a2dMRXZvNEJVa1M1Z0g4bXZsT2Z5Q2tPSGVjY2RKMyts?=
 =?utf-8?B?Q3hkMzRwSHF0dnJkaS9XR0p6eU1uUzFzb2ZBbGNqVTBqR2gzOFdxYmVyaFdt?=
 =?utf-8?B?VjFIcG5MMXd2U001VGZmSmJSRE5RdHBmbjFNWGgzK2FLSUpRY2pyMjB2TjR6?=
 =?utf-8?B?SVJNUnVvbzBGVlVSanFKYkoyKzl3RkNjd3RJRGZrRi85aDBnU2cwZUN3clJp?=
 =?utf-8?B?cVZlNFhVWTRNekdlSjR3UCt4V21MQklrSFBMK3AxRmVldWJHMmZBcnJDTVh1?=
 =?utf-8?B?cHNqVjFXNGVqVGhCaWNpYlFZSXIwdUhJSk8xaUhSRitvMzNudk5sYlZZdW5r?=
 =?utf-8?B?S3AremhWVFl5TU92NHFHMjVtZDU0Skg4d1cyeWE1eWk3RHByUFFVWFdwWXgr?=
 =?utf-8?B?N3RjcU1qMFRJNDcvbkRZam5IRE1udHFxZExaZlRrTWZycmF3cEJpRHZQeDh6?=
 =?utf-8?B?bnVPZ1JPVU5TOTMvdlhVVEt2Z3h1QzJLOGVxclNmZGp0dld5RVcvb09iN2x1?=
 =?utf-8?B?RGZrd0VySVRoTzZSRjhHRUNpTjRJUjFIdTI1aDkzSHpkS0xYQWgyZjc2c2Uv?=
 =?utf-8?B?dk9xemhPUGlrRkllVHNGQ1FLVWtLZDNmZlVtZ0w3OHNPczQ4VHE5NlZWV2hD?=
 =?utf-8?B?TTVrZHZpOUxWRDI0ZEx5aVpPQTZZbWNKU0h2MHF0aTB0TlNuNHdjWXM5QnNS?=
 =?utf-8?B?a09Xay9aakZNZmpkdEdnYXpBd2xvbnFnOEU1NGNuNWZEQ3U5NkdKdjFHbnZV?=
 =?utf-8?B?aFBCQlpvQWNPVWl3c0liZysvWDZGUCt4MXVPK0o4WlB3T3RjdExrYURHdzFm?=
 =?utf-8?B?NTRaVG1HdVp4SDlJYkhsV3JWUlhwdlhrNTF4YnRLcWEyU0d1a3lGcC9Idjlm?=
 =?utf-8?B?a0lveTNLelcwVG5SYjl2MXNhT0NHVzMxT2dweVFuOE5CNzk5LzNqQTVKNEsr?=
 =?utf-8?B?bHdGb2NXdFV3UUlNUWNkSDU3N211cmdGUW01NWdNaGV4QU9MV3JWR28raTEw?=
 =?utf-8?Q?WoA+CwPMDtnqUFETPW?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fdb41bb-ff17-4994-6556-08deb5b6da2a
X-MS-Exchange-CrossTenant-AuthSource: LV8PR12MB9620.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2026 14:56:48.4371
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t4+ZqnSD2aY56MLvI0UBGpclLaLJWktGZz9XW4HVV5G8YHjeWjMjeqU3BE0njyxr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB7801
X-Spamd-Bar: --
Message-ID-Hash: W3UY2BUHV3R7PMZQ2LRYY5XUP52NQ7XK
X-Message-ID-Hash: W3UY2BUHV3R7PMZQ2LRYY5XUP52NQ7XK
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Alex Mastro <amastro@fb.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] vfio/pci: Add a helper to create a DMABUF for a BAR-map VMA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W3UY2BUHV3R7PMZQ2LRYY5XUP52NQ7XK/>
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
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jgg@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: 6341B580FB1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCBNYXkgMDYsIDIwMjYgYXQgMDg6MDM6MDhQTSArMDEwMCwgTWF0dCBFdmFucyB3cm90
ZToNCj4gPiA+ID4gPiA+ICvCoMKgwqAgLyoNCj4gPiA+ID4gPiA+ICvCoMKgwqDCoCAqIFRoZSBt
bWFwKCkgcmVxdWVzdCdzIHZtYS0+dm1fb2ZmcyBtaWdodCBiZSBub24temVybywgYnV0DQo+ID4g
PiA+ID4gPiArwqDCoMKgwqAgKiB0aGUgRE1BQlVGIGlzIGNyZWF0ZWQgZnJvbSBfb2Zmc2V0IHpl
cm9fIG9mIHRoZSBCQVIuwqAgVGhlDQo+ID4gPiA+ID4gPiArwqDCoMKgwqAgKiBwb3J0aW9uIGJl
dHdlZW4gemVybyBhbmQgdGhlIHZtX29mZnMgaXMgaW5hY2Nlc3NpYmxlDQo+ID4gPiA+ID4gPiAr
wqDCoMKgwqAgKiB0aHJvdWdoIHRoaXMgVk1BLCBidXQgdGhpcyBhcHByb2FjaCBrZWVwcyB0aGUN
Cj4gPiA+ID4gPiA+ICvCoMKgwqDCoCAqIC9wcm9jLzxwaWQ+L21hcHMgb2Zmc2V0IHNvbWV3aGF0
IGNvbnNpc3RlbnQgd2l0aCB0aGUNCj4gPiA+ID4gPiA+ICvCoMKgwqDCoCAqIHByZS1ETUFCVUYg
Y29kZS7CoCBTaXplIGluY2x1ZGVzIHRoZSBvZmZzZXQgcG9ydGlvbi4NCj4gPiA+ID4gPiANCj4g
PiA+ID4gPiBJJ20gbm90IHN1cmUgSSB1bmRlcnN0YW5kIHRoaXMgY29tbWVudD8NCj4gPiA+ID4g
PiANCj4gPiA+ID4gPiBGb3IgdGhlIG9sZCBwYXRoIHZtX3Bnb2ZmIGZvciBieXRlIDAgb2YgdGhl
IGJhciBzdGFydHMgYXQgc29tZSBsYXJnZQ0KPiA+ID4gPiA+IG9mZnNldA0KPiA+ID4gPiA+IA0K
PiA+ID4gPiA+IEZvciB0aGUgbmV3IHBhdGggdm1fcGdvZmYgZm9yIGJ5dGUgMCBvZiB0aGUgZmly
c3QgcmFuZ2Ugc3RhcnRzIGF0IDANCj4gPiA+ID4gDQo+ID4gPiA+IEdsYWQgeW91IGFza2VkLsKg
IDopDQo+ID4gPiA+IA0KPiA+ID4gPiBUaGlzIGlzIHRyeWluZyB0byBhY2hpZXZlIGtlZXBpbmcg
L3Byb2MvPHBpZD4vbWFwcyAob3Igc2ltaWxhcikgc29tZXdoYXQNCj4gPiA+ID4gYXMgaW5mb3Jt
YXRpdmUgYXMgcHJlLURNQUJVRiBCQVIgbW1hcCwgaW4gdGVybXMgb2Yga2VlcGluZyB0aGUgVk1B
DQo+ID4gPiA+IHZtX29mZnMgY29sdW1uIHVzZWZ1bC7CoCBCZWZvcmUgdGhpcyBwYXRjaCwgc2F5
IHlvdSBtbWFwKCkgdHdvIHNsaWNlcyBBDQo+ID4gPiA+IGFuZCBCIG9mIHRoZSBzYW1lIEJBUjoN
Cj4gPiA+ID4gDQo+ID4gPiA+IMKgIHN0cnVjdCB2ZmlvX3JlZ2lvbl9pbmZvIGJhcl9yZWdpb247
DQo+ID4gPiA+IA0KPiA+ID4gPiDCoCB2bV9hID0gbW1hcCgwLCAweDEwMDAsIC4uLiwgZGV2aWNl
X2ZkLCBiYXJfcmVnaW9uLm9mZnNldCArIDApOw0KPiA+ID4gPiDCoCB2bV9iID0gbW1hcCgwLCAw
eDEwMDAsIC4uLiwgZGV2aWNlX2ZkLCBiYXJfcmVnaW9uLm9mZnNldCArIDB4NDAwMCk7DQo+ID4g
PiA+IA0KPiA+ID4gPiAuLi55b3UnZCBzZWUgc29tZXRoaW5nIGxpa2UgdGhpcyBpbiAvcHJvYy9i
bGFoL21hcHM6DQo+ID4gPiA+IA0KPiA+ID4gPiBmZmZmZjQwMDAwMDAtZmZmZmY0MDAxMDAwIHJ3
LXMgMTAwMDAwMDAwMDAgMDA6MDcgMTQ4wqDCoMKgwqANCj4gPiA+ID4gL2Rldi92ZmlvLyBkZXZp
Y2VzL3ZmaW8wDQo+ID4gPiA+IGZmZmZmNTAwMDAwMC1mZmZmZjUwMDEwMDAgcnctcyAxMDAwMDAw
NDAwMCAwMDowNyAxNDjCoMKgwqDCoA0KPiA+ID4gPiAvZGV2L3ZmaW8vIGRldmljZXMvdmZpbzAN
Cj4gDQo+IExvb2tpbmcgYXQgdGhpcyBhZ2FpbiwgSS93ZSBnb3QgdGhpcyBiYWNrd2FyZHMgYW5k
IEkgbWl4ZWQgdXAgdHdvIHRoaW5nczoNCj4gDQo+IFRoZSBnb2FsIG9mIHRoaXMgcGF0Y2ggX2lz
IGFscmVhZHlfIHRvIG1ha2Ugc3VyZSB0aGUgVk1BJ3Mgdm1fcGdvZmYgKHdoZXRoZXINCj4gdmll
d2VkIGluIC9wcm9jLzxwaWQ+L21hcHMgb3IgZWxzZXdoZXJlKSBzdGlsbCBtYXRjaGVzIHRoZSBt
bWFwKCkncyBvZmZzZXQuDQo+IA0KPiAoRm9yIGEgbW8sIGlnbm9yZSB0aGUgcmVzb3VyY2UgaW5k
ZXggZW5jb2RlZCBpbnRvIHRoZSBvZmZzZXQuICBDb25zaWRlciBqdXN0DQo+IHRoZSBvZmZzZXQg
aW50byB0aGUgQkFSIGl0c2VsZiwgaW5zaWRlIHRoZSBWRklPX1BDSV9PRkZTRVRfTUFTSy4gSSds
bCBjb21lDQo+IGJhY2sgdG8gdGhlIGluZGV4IGVuY29kZWQgaW50byB0aGUgdXBwZXIgYml0cy4p
DQo+IA0KPiA+ID4gPiB0aGVuIHRoZSBWTUEncyB2bV9vZmZzIHdvdWxkIG5lZWQgdG8gYmUgdGh1
bmtlZCBiYWNrIGRvd24gdG8gMCAoc2luY2UNCj4gPiA+ID4gdGhlIGZhdWx0IGhhbmRsZXIgdGhl
biB0cmVhdHMgdm1fYiArIDAgYXMgdGhlIGZpcnN0IGJ5dGUgb2YgdGhlIERNQUJVRikuDQo+ID4g
PiA+IFRoYXQgd29ya3MvYWRkcyB1cCwgYnV0IHRoZW4gdGhlIHZtX29mZnMgb2YgYm90aCBWTUFz
IEEgJiBCIGJvdGggaGF2ZQ0KPiA+ID4gPiBvZmZzZXQgMCwgYW5kIGl0J3MgaGFyZGVyIHRvIGRp
ZmZlcmVudGlhdGUgaW4gL3Byb2MvYmxhaC9tYXBzLg0KPiA+ID4gDQo+ID4gPiBZZXMsIGFuZCB0
aGF0IHdvdWxkIGJlIGNvcnJlY3QuDQo+IA0KPiBXaHk/ICBUaGlzIHBhcmFncmFwaCB3YXMgb3V0
bGluaW5nIGEgaHlwb3RoZXRpY2FsIGFsdGVybmF0aXZlIGltcGxlbWVudGF0aW9uDQo+IHRoYXQg
Y3JlYXRlcyB0aGUgRE1BQlVGIHRoZSBzaXplIG9mIHRoZSBWTUEgYW5kIHN0YXJ0aW5nIGZyb20g
YW4gb2Zmc2V0IGludG8NCj4gdGhlIEJBUiBiYXNlZCBvbiB2bV9wZ29mZiwgYW5kIHRoZW4gY29t
cGVuc2F0ZXMgYnkgc2V0dGluZyB2bWEtPnZtX3Bnb2ZmID0gMA0KPiBzbyB0aGF0IHRoZSBmYXVs
dCBkb2Vzbid0IHJlLWFwcGx5IHRoZSBvZmZzZXQgYWdhaW4uICBUaGF0IHdvdWxkIG1ha2UgYnl0
ZSAwDQo+IG9mIHRoZSBWTUEgYWNjZXNzIGNvcnJlY3Q6DQoNCkkgc2VlLCBJIG1pcyB1bmRlcnN0
b29kIHdoYXQgeW91IHdlcmUgc3VnZ2VzdGluZw0KDQo+IFRoaXMgcGF0Y2ggaXMgc3VwcG9ydGlu
ZyB0aGF0IHByb3BlcnR5IGJ5IGluc3RlYWQgY3JlYXRpbmcgdGhlIERNQUJVRiBzbw0KPiB0aGF0
IHRoZSBWTUEncyB2bV9wZ29mZiAod2hpY2ggaXMgbWFpbnRhaW5lZCBhbmQgdGhlIHNhbWUqIGFz
IHBhc3NlZCBmcm9tDQo+IG1tYXAoKSEpIGluZGV4ZXMgdGhlIERNQUJVRiBzbyB0aGF0IGJ5dGUg
MCBvZiB0aGUgVk1BIGFjY2Vzc2VzIHRoZSBzYW1lDQo+IGFkZHJlc3MgYWJvdmUgaW4gWzFdLiAg
VGhlIERNQUJVRiBzcGFucyBmcm9tIHRoZSBzdGFydCBvZiB0aGUgQkFSIHNvIHRoZQ0KPiBmYXVs
dCBoYW5kbGVyIG1hdGhzICh3aGljaCBpbmRleGVzIHRoZSBETUFCVUYgYnkgdm1fcGdvZmZzKSBp
cyBjb21tb24gZm9yDQo+IGFsbCBidWZmZXJzLg0KPiANCj4gIGEgPSBtbWFwKDAsIDB4MTAwMDAs
IC4uLiwgZGV2aWNlX2ZkLCAweDQwMDApOw0KDQo+ICAgICAgICAgICswICAgICAgICAgICArMHg0
MDAwDQo+ICAgICAgICAgICstLS0tLS0tLS0tLS12LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tKw0KPiAgICAgICAgICB8ICAgICAgICAgICAgICAgQkFSICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwNCj4gICAgICAgICAgfCAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8DQo+ICAgICAgICAgICst
LS0tLS0tLS0tLS1eLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKw0K
PiAgICAgICAgICAuICAgICAgICAgICAgLg0KPiAgICAgICAgICAuICAgICAgICAgICAgKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tKw0KPiAgICAgICAgICAuICAgICAgICAgICAgfCAgVk1BICAg
ICAgICAgICAgICAgICAgICAgfA0KPiAgICAgICAgICAuICAgICAgICAgICAgfCAgdm1hLT52bV9w
Z29mZiA9IDQgICAgICAgfA0KPiAgICAgICAgICAuICAgICAgICAgICAgKy0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tKw0KPiAgICAgICAgICAuICAgICAgICAgICAgLiAgICAgICAgICAgICAgICAg
ICAgICAgICAgLg0KPiAgICAgICAgICArLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tKw0KPiAgICAgICAgICB8IGludmlzaWJsZSAgfCAgRE1BQlVGICAgICAgICAgICAgICAg
ICAgfA0KPiAgICAgICAgICB8ICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAg
fA0KPiAgICAgICAgICArLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKw0K
PiANCj4gU2FtZSogZXh0ZXJuYWxseS1vYnNlcnZhYmxlIGJlaGF2aW91ciBhcyB0aGUgb2xkIG1t
YXAoKS4NCg0KU3VyZSwgYnV0IGl0IGlzIGEgbWVzcy4uDQoNCllvdSBzaG91bGQgY3JlYXRlIHRo
ZSBkbWFfYnVmIHRoYXQgaXMgdGhlIG5hcnJvdyBvbmUgdGhhdCBvbmx5IGNvdmVycw0KdGhlIHJl
cXVlc3RlZCBtbWFwLiBUaGUgdm1hX3Bnb2ZmIHNob3VsZCBiZSBleGFjdGx5IHdoYXQgaXMgcGFz
c2VkIHRvIG1tYXAuDQoNCkFuZCB0aGVuIGhhdmUgYSBzaW1wbGUgJ3ZtYV9wZ29mZl9hZGp1c3Qn
IHRoYXQgZml4ZXMgdXAgdGhlIHBnb2ZmIHRvDQpiZSAwIGJhc2VkIGZvciBpbnRlcm5hbCBvcGVy
YXRpb24gb2YgdGhlIGZhdWx0IGhhbmRsZXIuDQoNCkl0IGlzIG5vbnNlbnNlIHN0dWZmIGxpa2Ug
dGhpczoNCisJcHJpdi0+c2l6ZSA9ICh2bWEtPnZtX3Bnb2ZmIDw8IFBBR0VfU0hJRlQpICsgcmVx
X2xlbjsNCg0KVGhhdCBpcyByZWFsbHkgb2JqZWN0aW9uYWJsZSwgdGhlIHNpemUgc2hvdWxkIG5l
dmVyIGhhdmUgYW55dGhpbmcgdG8NCmRvIHdpdGggYSBwZ29mZi4NCg0KSmFzb24NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
