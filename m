Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fWmMD8EMKWqxPQMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 09:05:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CE666677D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 09:05:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=xpRXs8Zt;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4DD2240A3F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 07:05:35 +0000 (UTC)
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010012.outbound.protection.outlook.com [52.101.56.12])
	by lists.linaro.org (Postfix) with ESMTPS id B26DF40499
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 07:05:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wC5gaRwugFgobAoTCWdjnvaFw5ZahNuTM/nnOT6KX/MSD1G0vYricNY7y1vS99ava03T01XuqX6A454WYigeSyjhL38goLJhSBlQwlHK+KSN8GpU6BKrt2XTSy4WWOrCIPvN3u+9JHLfg1pwqMmpM0uA15RyJbeCVDhln5D1B45iYhlFiqxss8Iuzm0bGEO3jTCeUruww2TwIv1e7kk2Ukul5h2KypYga5Ioix5QwGGuMOZCajOM/xgafD51FpVDGWeKDAf6V4+g/4Q2yA/iJJr558wvmVLyJzrUo1w52HGC9q++7zMzcNT13w895i0VOlySJfu+RPVY4jwAAbVMpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3UI3tncPTi8BPTuOtb0LYX0hQd3bu6+ZfrwFLx8wrcU=;
 b=Dcf5wKXS9ot4tdy1yWhVeG8o4RS1ehsNjfusLSobe2+hCiCKlfng4P/sfdAp5lEW7HZV7kNpJmzWn21EvkOjm8T7aj7moePGCetehqiIDDwOIAsPkGb6Qnye6O6TaYQwhq3yNL/0vtvBls6e+MfUjlZTZTy3KRuJF92cgCP+3cFl++lAsULIkOlUV+Swt+01iLnVh5RpBpwrb7oA6DDu9HUW2M5HOo0t75UsCZXm+m2z+lLC5v68nkAMCFHBmfSRHpkAPjzzHImP9KcKCE7jnpdj03FcYxPf9B4Cy5dNg6IfQL0Sm8ylOXEhi+VOjsOh+DhDLxoeCZ3E/h9NW/Lldg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3UI3tncPTi8BPTuOtb0LYX0hQd3bu6+ZfrwFLx8wrcU=;
 b=xpRXs8ZtYT0DzY/FDERfvzMxQqgVOIXkAqu265cTbwjGbI6QPgb9RXnbue2uOTYiuaEZlA92tuVRMi3WQGAVVQelWxAVrhCCIP0pJHdMj/L2ueTapH/dL1APNXK/gITWYe8gTQJq4hDzomPaAXghwFNu30+J0ew2aiOCrePUL80=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA1PR12MB8598.namprd12.prod.outlook.com (2603:10b6:806:253::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Wed, 10 Jun
 2026 07:05:22 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0092.006; Wed, 10 Jun 2026
 07:05:22 +0000
Message-ID: <c78eec30-159f-41f6-b725-8402752f90dd@amd.com>
Date: Wed, 10 Jun 2026 09:04:06 +0200
User-Agent: Mozilla Thunderbird
To: Bobby Eshleman <bobbyeshleman@gmail.com>
References: <20260603-tcpdm-large-niovs-v1-0-f37a4ac6726c@meta.com>
 <20260603-tcpdm-large-niovs-v1-2-f37a4ac6726c@meta.com>
 <bdce2488-fe77-4f36-9ed6-dd2c785fa7c1@amd.com>
 <aiMY8CpckM8Jav0g@devvm29614.prn0.facebook.com>
 <0c86f5d3-b5e9-4cac-aa9d-30c5c8ecca66@amd.com>
 <CAKB00G3opAoAYswsq2uz0Q6jgku8u4NthKOzCbSumZ0qK7QxcQ@mail.gmail.com>
 <a51e97bd-39dc-492f-bd7d-f137423277df@amd.com>
 <aigqFQWzPkiSh3ie@devvm29614.prn0.facebook.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <aigqFQWzPkiSh3ie@devvm29614.prn0.facebook.com>
X-ClientProxiedBy: FR4P281CA0357.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f4::18) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA1PR12MB8598:EE_
X-MS-Office365-Filtering-Correlation-Id: c9f7bbaa-e450-4695-b251-08dec6bea395
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|23010399003|366016|1800799024|7416014|376014|10063799003|11063799006|56012099006|4143699003|6133799003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	U9FM1uTIw9GGijuROFDG0oSAWEZO4ts2TW7shhHgPp0oo2WTeuuMJd4Pt6QU2y/O9zoJ5F4iGh+f+OMPTQT3HvOY5blUChNkKKQeWbUAflUfR0CBNWQ/nbsDZLVfGXEGoYkHP8aw+O9ysZPu9pz/d7dJhT04UBpwcta3cnwdtZrQLkFsTVIzjOxZMjhpzw5V4eyU2FC9qO07dsaLZWygI5EwEuNApX7XRF8/e0yrfJz2cTuyCikLEl1iH6ekoaXEBH+RhxEccmFVFPRTBagEdmHk20Y//2KBhnr8ZvzGsQwM+IqcMSwpqAmwceeNJaAjR1lBhiX2y8RLVk0mBrpvtSZzJJU0X6Eax3nUadZsSiR9aM3zZ2rsvYDLBBR/uO3bh4Yc0vqDklJy7eReNB81yttkmJEEDJ4okS9akL8prPKKTcLboAjtJruBA5/K+ayOp89VgEl3luPyLn66K+s8lXpoBPZG3LcEWxZuImKa024p9qZ3MgwiDw4hAQ+JICEmAT6A93r93zSCavUGpo89BHpYopGXV4iiv20P1Y79ERdbpz//jqdo4xE4sN+0xKzeyYpuBdYGGyDzVvj8dXHCH070z9KbqY2xnOv7f0Xke4Zf5FV5b1ImEITWbeuX5iyXzUSA8Ld5U+K0UYTsISc/gmY5IJ1OCZUTq0EmtAvB/aEJxt4twN9IKrvVNE3tJJw7
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(366016)(1800799024)(7416014)(376014)(10063799003)(11063799006)(56012099006)(4143699003)(6133799003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WEJDNStCY3ZCZ2Q1b2k0cWxhVVdSMHBPcVBCODYxRlNBa2lDUCtadm1iRFNT?=
 =?utf-8?B?Z2hMSUk2RTRTZ3hZUDdPc2xIcGQxTnZWbTRqblNVenZISER0dkpKSU83V2Uy?=
 =?utf-8?B?cktIcGZDWVkrcHVpUi9abk5jajJEbGtWZWlHWG5NVnZFMjYxUTRoMjFOOW9T?=
 =?utf-8?B?M25xdXFqMm0wY3QydUgxakw1UEdrUWN1WFR3emtMQXM0NnZGeEkwdXhlaVYv?=
 =?utf-8?B?bnA1OHpHenRUWXpVYXpkcDJCOTdVMm0zQTdESGFDK3JHTUt6ZjlVaFVNRS96?=
 =?utf-8?B?eUZNTXZoRHgwNk1Fc0ZwVTgyVmF1R0tKa29aaWd3RnZ3OUZMekJkTXY5NEJh?=
 =?utf-8?B?enAydXZGZW5hUWtUbElSSnRGd2cybzBYUVBiZ3B3MEw1ZDRGdzNQV2tPbmdT?=
 =?utf-8?B?U1U4cVc5dEZvaEVPYUtRL05haU5RL1dPRlVZK0pyMEtReUtnZTQvVFQ2MVBI?=
 =?utf-8?B?NmZLYnlNZ01RQkFSY1JaWEN5RjJkc0pkWkxKZmJ1b2lXaitNMTNSOEtIaDUr?=
 =?utf-8?B?blVpbzk5VnVOQWxHREhib2tvQ1pZZWJrOVh4RndqQjBoK0I0eVpGOXVBWGo1?=
 =?utf-8?B?VCt6UDBZdGZRVWlWY3IrUHFHOUJqU3kwRVV1dzJTSTN5ZHB2b3VFbVlTRDZh?=
 =?utf-8?B?cnNQWk1hMnhySmpWUURzOUU1ODNDdTlkVjZDZUJ4THZvN0tHUDhNVzRiZDhW?=
 =?utf-8?B?UlM3S2gySGl4WE43STBWL3UrRXNFckZuLzlEVEFCbkg2YWw0QWdYdVF3RmVR?=
 =?utf-8?B?TGNVV1M3MTVhREQrNDc0RVY4eXlIdTBYTnFLZE9Ybk5ndWptUEZiNldKaXor?=
 =?utf-8?B?Q05hVS9tWVlhZEVaVGJhdzMwVHh1aHJtQWpWT0dHOEdzS0RySnNpVmxzMXB6?=
 =?utf-8?B?UCtzeUJUbkozN2diNTVTemhFUEk4NExrWGY2Q3hJdXhjeTZ0UEQxUXB3M1oz?=
 =?utf-8?B?M3Y4WEEraC9KMDYvOTUxdHRHMXltOCt1SmZ3Q0FRNTUyemlKY3loOUVkcnpR?=
 =?utf-8?B?ZFNQQUgwMkptazIveU8xdTFqUWlxZXNVRU4yQmFSMDkvTXE5d2o1M0o1MTNM?=
 =?utf-8?B?cWFYdEdPL2htbGlaUXQ3VUFtRkZjMFBueVJVakZ1azhSWENwTUVnK1h1OWw1?=
 =?utf-8?B?OERTTmoydFgrbjZkUmNSdi9RRWZob2VCUU1ubEdoUU0reTJia3FHVm9RWGUv?=
 =?utf-8?B?U2lZV3BVQU1lWXRwdjVIMzhBWnNyMloxTjZVMmJkUHFmcDVHOEZlL1Rnd2ls?=
 =?utf-8?B?SzNUNUZZbHdyRjRxcEJydnA4MHF6Sk01VFhmcTdUR2pWeVA1eEV6ZmkveXVB?=
 =?utf-8?B?ZUpKVjYxeUFBTzN1ZHFMcVpYQ3loeGNndDRleERrSWNJVTJHUnFIWkpSaEVj?=
 =?utf-8?B?SW9ZYmk5dXdWcDQrMUVFZS9rRncyY1JLWjVYUjdtOUU3ZC9HYUNLK21PVHZr?=
 =?utf-8?B?LzRWejVXV3E1NkNYYkpoWnBjZ2lMb0xudzZGTWI2SUZTQjVXWFYrY1dqUWZH?=
 =?utf-8?B?NWZiTTc4QTV1UWFaR0MyTGM1NCs5b2dnejZsMlFkVDFycTMwdmNRdmNJcnp6?=
 =?utf-8?B?VHdJSWdsU0I0SDlkZ3BqZFh1b2Q1djVSdTNobDMydXBkVWo1aGdneTZFcmxC?=
 =?utf-8?B?SXVjT21BZjBWTFRkUlZaaDBiMHZiQ1lraHdaZEwyRnFZVnZnQ0xJUGl2ZVN6?=
 =?utf-8?B?NDlxSDlrRmd1UWFjOW03RXl2NEJ5UEV5TmRkNk1BWTdMV0tCOUxodVdSQ0lT?=
 =?utf-8?B?MUN0UHRMdE1WSDNyTHZsdDNYRytlUTFqWC9VOVUwci9xRHgxQ1BnanVXdkJ4?=
 =?utf-8?B?RlYwSmlNclBGdzdTOHk1b2trOEZtcUxEakJweGhQVUVxdnhiWU02a3BPcDJy?=
 =?utf-8?B?Y1RpQ2JJTFI0eERkaUQzVEp5c20wUFNDa09KcSt6R2dPVXB5a2xhWEE2WjI5?=
 =?utf-8?B?Z09aTExnbUgrWVVoalp2YXBRbVJmODNuZEhWbzRnUkdBSkRaRlU4NVNUWTF3?=
 =?utf-8?B?eUpydTkxY2xEdVNvK25SaUhyc3djNm9HV2p5TEV5ZXdjeUJnODFtOWhqbi9W?=
 =?utf-8?B?NlV6N1RSSklzYzFsRkJkSk9mcEhadW5TWFRCR0dFb2JkaFdVZ3p3NFV3c2Ri?=
 =?utf-8?B?MDZDZDBLTXBGT1BUYVRHM2NnY1BRQVRoMy9ldWlSZGVJdkNDNEdQWWRoTzlV?=
 =?utf-8?B?K2ZwVEI3bjgzd1l0QmhLRzVRZ29QdHdNZTRyM0ZBUEFBeUZHV3g2dVZUYnB1?=
 =?utf-8?B?NzRTV0JkT2ZZaE95QkxkN1Ewb1poa1dHaEJvclBHSUdnRXBONDA4SlpVQ29v?=
 =?utf-8?Q?QC24X2X0/kQBnG5rJN?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9f7bbaa-e450-4695-b251-08dec6bea395
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 07:05:22.5788
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +jcpW5n71EkJnjSrLpPbEVLknf/3YNE0O8pZQe0UKv4Ww45oXdr9BpIzkalxRg/j
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB8598
X-Spamd-Bar: ----
Message-ID-Hash: M5I5UMHGRTXGLBGB6PUHX7VM3XG2QCMX
X-Message-ID-Hash: M5I5UMHGRTXGLBGB6PUHX7VM3XG2QCMX
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, almasrymina@google.com, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next 2/4] udmabuf: emit one sg entry per pinned folio
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M5I5UMHGRTXGLBGB6PUHX7VM3XG2QCMX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:bobbyeshleman@gmail.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:almasrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,meta.com];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,amd.com:mid,amd.com:from_mime,meta.com:email,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 98CE666677D

T24gNi85LzI2IDE2OjU4LCBCb2JieSBFc2hsZW1hbiB3cm90ZToNCj4gT24gTW9uLCBKdW4gMDgs
IDIwMjYgYXQgMDM6NTk6MDRQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IE9u
IDYvOC8yNiAxNTo1NSwgQm9iYnkgRXNobGVtYW4gd3JvdGU6DQo+Pj4NCj4+PiBPbiBTdW4sIEp1
biA3LCAyMDI2IGF0IDExOjQy4oCvUE0gQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tIDxtYWlsdG86Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPj4gd3JvdGU6DQo+Pj4N
Cj4+PiAgICAgT24gNi81LzI2IDIwOjQ0LCBCb2JieSBFc2hsZW1hbiB3cm90ZToNCj4+PiAgICAg
PiBPbiBGcmksIEp1biAwNSwgMjAyNiBhdCAxMTozMDowN0FNICswMjAwLCBDaHJpc3RpYW4gS8O2
bmlnIHdyb3RlOg0KPj4+ICAgICA+PiBPbiA2LzQvMjYgMDI6NDIsIEJvYmJ5IEVzaGxlbWFuIHdy
b3RlOg0KPj4+ICAgICA+Pj4gRnJvbTogQm9iYnkgRXNobGVtYW4gPGJvYmJ5ZXNobGVtYW5AbWV0
YS5jb20gPG1haWx0bzpib2JieWVzaGxlbWFuQG1ldGEuY29tPj4NCj4+PiAgICAgPj4+DQo+Pj4g
ICAgID4+PiBnZXRfc2dfdGFibGUoKSBlbWl0dGVkIG9uZSBQQUdFX1NJWkUgc2cgZW50cnkgcGVy
IHBhZ2UgZXZlbiB3aGVuIHRoZQ0KPj4+ICAgICA+Pj4gdW5kZXJseWluZyBmb2xpbyB3YXMgbGFy
Z2VyLg0KPj4+ICAgICA+Pj4NCj4+PiAgICAgPj4+IEluc3RlYWQsIHdhbGsgZm9saW9zW10gYW5k
IGVtaXQgb25lIHNnIGVudHJ5IHBlciBmb2xpby4gV2hlbiBmb2xpb3MNCj4+PiAgICAgPj4+IHJl
cHJlc2VudCBsYXJnZSBwYWdlcyAoYXMgaXMgZm9yIE1GRF9IVUdFVExCKSwgZWFjaCBzZyBlbnRy
eSBpcyBhIGxhcmdlDQo+Pj4gICAgID4+PiBwYWdlLiBOb3JtYWwgUEFHRV9TSVpFIHNnIHRhYmxl
cyBhcmUgdW5jaGFuZ2VkLg0KPj4+ICAgICA+Pj4NCj4+PiAgICAgPj4+IFJlcXVpcmVkIGJ5IG5l
dC9jb3JlL2Rldm1lbSB0byBzdXBwb3J0IHJ4LWJ1Zi1zaXplID4gUEFHRV9TSVpFIHdpdGgNCj4+
PiAgICAgPj4+IHVkbWFidWYuDQo+Pj4gICAgID4+DQo+Pj4gICAgID4+IFRoYXQgZG9lc24ndCBl
eHBsYWluIHdoeSB0aGlzIGlzIHJlcXVpcmVkLg0KPj4+ICAgICA+DQo+Pj4gICAgID4gU3VyZSwg
Y2FuIGRlZmluaXRlbHkgYWRkLiBEZXZtZW0gY3VycmVudGx5IHJlcXVpcmVzIGRtYWJ1ZiBzZyBl
bnRyaWVzIHRvDQo+Pj4gICAgID4gYmUgbGVuZ3RoIGFuZCBzaXplIGFsaWduZWQgd2hlbiBpdCBh
bGxvY2F0ZXMgbmlvdnMgZm9yIE5JQyBwYWdlIHBvb2xzLg0KPj4+ICAgICA+IFRob3VnaCB1ZG1h
YnVmIGlzIG5vdCB2aW9sYXRpbmcgYW55IGRtYWJ1ZiBjb250cmFjdCBieSBlbWl0dGluZw0KPj4+
ICAgICA+IFBBR0VfU0laRSBlbnRyaWVzIGFuZCB0aGUgYWJvdmUgcmVzdHJpY3Rpb24gaXMgcHJv
YmFibHkgbW9yZSBhDQo+Pj4gICAgID4gc2hvcnRmYWxsaW5nIG9mIGRldm1lbSwgYnkgZW1pdHRp
bmcgYSBzaW5nbGUgZW50cnkgcGVyIGZvbGlvIHRoaXMgcGF0Y2gNCj4+PiAgICAgPiBhbGxvd3Mg
dWRtYWJ1ZiB0byBiZSB1c2VkIGJ5IGRldm1lbSBmb3IgbGFyZ2UgcGFnZXMuDQo+Pj4gICAgID4N
Cj4+PiAgICAgPj4NCj4+PiAgICAgPj4gUGxlYXNlIG5vdGUgdGhhdCBhY2Nlc3NpbmcgdGhlIHBh
Z2VzL2ZvbGlvIG9mIGFuIHNnLXRhYmxlIHJldHVybmVkIGJ5IERNQS1idWYgaXMgaWxsZWdhbCBh
bmQgc3RyaWN0bHkgZm9yYmlkZGVuIQ0KPj4+ICAgICA+Pg0KPj4+ICAgICA+PiBSZWdhcmRzLA0K
Pj4+ICAgICA+PiBDaHJpc3RpYW4uDQo+Pj4gICAgID4NCj4+PiAgICAgPiBJdCBzZWVtcyBib3Ro
IGRldm1lbSBhbmQgaW9fdXJpbmcgemNyeCBhdCBsZWFzdCBpbnRyb3NwZWN0IHRocm91Z2ggdG8N
Cj4+PiAgICAgPiB0aGUgc2ctdGFibGUgdG8gYnVpbGQgTklDIHBhZ2UgcG9vbHMgKG5vdCBhY2Nl
c3NpbmcgdGhlIG1lbW9yeSBpdHNlbGYsDQo+Pj4gICAgID4gaG93ZXZlcikuIElzIHRoZXJlIGEg
YmV0dGVyIHdheT8NCj4+Pg0KPj4+ICAgICBUaGF0J3MgYW4gYWJzb2x1dGUgTk8tR08hIFdlIG5l
ZWQgdG8gc3RvcCB0aGF0IGltbWVkaWF0ZWx5Lg0KPj4+DQo+Pj4gICAgIFRvdWNoaW5nIHRoZSB1
bmRlcmx5aW5nIHN0cnVjdCBwYWdlIG9mIGFuIERNQS1idWYgZXhwb3J0ZWQgc2ctdGFibGUgaXMg
c3RyaWN0bHkgZm9yYmlkZGVuLg0KPj4+DQo+Pj4gICAgIFdlIGV2ZW4gaGF2ZSBjb2RlIHRvIHdy
YXAgdGhlIHNnX3RhYmxlIGFuZCBoaWRlIHRoZSBzdHJ1Y3QgcGFnZXMgb24gZGVidWcgYnVpbGRz
IHRvIGNhdGNoIHRob3NlIGlzc3Vlcywgc2VlIGZ1bmN0aW9uIGRtYV9idWZfd3JhcF9zZ190YWJs
ZSgpLg0KPj4+DQo+Pj4gICAgIE15IGxhc3Qgc3RhdHVzIGlzIHRoYXQgdGhlIE5JQyBwYWdlIHBv
b2xzIGFyZSBidWlsZCBkaXJlY3RseSBmcm9tIHRoZSBETUEgYWRkcmVzc2VzIGV4cG9zZWQgYnkg
dGhlIHNnX3RhYmxlLg0KPj4+DQo+Pj4gICAgIFdhcyB0aGVyZSBhbnkgY2hhbmdlIEknbSBub3Qg
YXdhcmUgb2Y/DQo+Pj4NCj4+PiAgICAgUmVnYXJkcywNCj4+PiAgICAgQ2hyaXN0aWFuLg0KPj4+
DQo+Pj4NCj4+PiBPaCBubyBjaGFuZ2UsIHlvdXIgbWVudGFsIG1vZGVsIGlzIHN0aWxsIGN1cnJl
bnQuDQo+Pj4gVGhleSBqdXN0IGdvIHRocm91Z2ggZWFjaCBzZyBhbmQgdXNlIHNnX2RtYV9hZGRy
ZXNzKCkgb24gZWFjaC4NCj4+DQo+PiBBaCwgdGhhbmtzISBUaGF0IHdhcyBhIG5lYXIgaGVhcnQg
YXR0YWNrIDpEDQo+Pg0KPj4gWWVhaCB0aGF0IGlzIHBlcmZlY3RseSBjb3JyZWN0LCBxdWVzdGlv
biBpcyBkbyB5b3UgdGhlbiBzdGlsbCByZWFsbHkgbmVlZCB0aGlzIHVkbWFidWYgY2hhbmdlPyBJ
IG1lYW4gdGhlIERNQSBBUEkgdXN1YWxseSBtZXJnZXMgdG9nZXRoZXIgY29udGlndW91cyBETUEg
YWRkcmVzc2VzLg0KPj4NCj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3RpYW4uDQo+Pg0KPiANCj4gSGV5
IENocmlzdGlhbiwgc29ycnkgZm9yIHRoZSBkZWxheSBJIGp1c3RlZCB3YW50IHRvIGRvdWJsZSBj
aGVjayB3aGF0DQo+IEknbSBzZWVpbmcuLi4NCj4gDQo+IEkgcmV2ZXJ0ZWQgdGhlIHVkbWFidWYg
cGF0Y2ggYW5kIGNvbmZpcm1lZCBkZXZtZW0gc3RpbGwgcnVucyBpbnRvIDRLDQo+IHBhZ2VzIGV2
ZW4gZm9yIGh1Z2VwYWdlIHVkbWFidWYuIEkgc2VlIHRoYXQgdGhlIGRtYV9tYXBfZGlyZWN0KCkg
cGF0aCBpcw0KPiBiZWluZyB0YWtlbiwgd2hpY2ggaWYgSSBhbSByZWFkaW5nIHRoZSBjb2RlIGNv
cnJlY3RseSByZXN1bHRzIGluIHRoZQ0KPiBzZ19kbWFfbGVuKHNnKSBpbmhlcml0aW5nIHNnLT5s
ZW5ndGggZGlyZWN0bHkgKHNldCBieSB1ZG1hYnVmJ3MNCj4gc2dfc2V0X2ZvbGlvKC4uLiwgUEFH
RV9TSVpFKSBjYWxsKSwgY29tcGFyZWQgdG8gdGhlIGlvbW11X2RtYV9tYXBfcGh5cygpDQo+IHBh
dGggd2hpY2ggbG9va3MgbGlrZSBpdCBkb2VzIG1lcmdlIHdoZW4gcG9zc2libGUuDQoNCg0KT2sg
dGhhdCBtYWtlcyBtb3JlIHNlbnNlLiBZZWFoIHNvbWV0aGluZyB3aGljaCBjb3VsZCBwb3RlbnRp
YWxseSBiZSBpbXByb3ZlZCBlbHNld2hlcmUuDQoNCkZlZWwgZnJlZSB0byBnbyBhaGVhZCB3aXRo
IHRoaXMgcGF0Y2ggYXMgYSB3b3JrYXJvdW5kLCBqdXN0IGFkanVzdCB0aGUgY29tbWl0IG1lc3Nh
Z2UgYW5kIG1heWJlIGFkZCBhIGNvZGUgY29tbWVudCB3aHkgaXQgaXMgbmVjZXNzYXJ5IGFuZCBo
ZWxwZnVsLg0KDQpUaGFua3MsDQpDaHJpc3RpYW4uDQoNCj4gDQo+IEJlc3QsDQo+IEJvYmJ5DQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
