Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPM5IY794GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:17:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D63C5410769
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:17:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E3B5E40982
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:17:32 +0000 (UTC)
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11012009.outbound.protection.outlook.com [52.101.48.9])
	by lists.linaro.org (Postfix) with ESMTPS id 0C5423F719
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Nov 2025 05:52:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=selector1 header.b=mn0odtuj;
	spf=pass (lists.linaro.org: domain of m-malladi@ti.com designates 52.101.48.9 as permitted sender) smtp.mailfrom=m-malladi@ti.com;
	dmarc=pass (policy=quarantine) header.from=ti.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o5ozpKGuFYnYWuK0inrGH87stAaeb5csejMpjl5EbK7IZOxwl1+WBlLxcZ+We9er0WzD8dakbM6BWUFO50iEdyh5J+uxjuxQ4CZcfEdS7HNo0uhw8RvazVozJuz99Oo/PrL8unO2ufahEEu7W4r9YRuvfPC0X6ElE52Mcj5gGXyb5OXWeAIPTrlaHs4OZ2PRT+rybNK4NDA4dkTywLdyCe2hlGF808nrBgKBgFKOE07swol26NDOMEPnD4GSXUMs4aYDfDDn2ZHSllC6Pbf4/CeTVABobgx1RC0gwachCiHT/Z+jPLA0ndP4eeFSVnRX0EJL70b02CHc/TPzBdfobA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tgVPTNkgcqqRAjMiSa5MkUYxqofolhv3Y6VhGeWTTcQ=;
 b=ALS8Oe2VzlD70MDS3eqzGGg5IrXX2ywTzCswK8T2c58HpBMuvE3sbcUlbYqhOLht0NZrdWE5DGmrAw9WTCmhLzpjbd3c6pGn8TZ6bl2Uos/LXtR/yy9nNL9HSNK352nCERUObXnyTBjeCHgxPdpiOguFvLSq94mXN40/9LAJJV3G++Gmky5tYEdY7zuoaHO5NFuc3p5qGWOFELwFAyjvfQBJkMG70J/bq7wSaRvHhCn/jNwdpKJX/1y16CVVbLGvB2xUZIuT2NGGELpJo7Ubdlpy3ZmSprK/Ul5ON2YNAE5KLYWgqJfRXj118P0w1tSzNdeHUe42BP5HBthCLkpkDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=lists.linaro.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tgVPTNkgcqqRAjMiSa5MkUYxqofolhv3Y6VhGeWTTcQ=;
 b=mn0odtuj2388eDxqOtMN2Hu30/uehIJuNpvSlNMge51HNP8hhuPN2CiFhN6e+pixhniIQLEtK4qoLbyM0EgfG2ezpUzUIWjYKQnd8kMUSS4gbYMDHcdmxM7VZXQbS9nF2xkkjS7Pvr4ggB6mkRxuv6f+OvzwGalh4mfCXHaacOI=
Received: from CH0PR04CA0082.namprd04.prod.outlook.com (2603:10b6:610:74::27)
 by SJ2PR10MB7597.namprd10.prod.outlook.com (2603:10b6:a03:53d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Mon, 17 Nov
 2025 05:37:16 +0000
Received: from DS3PEPF000099DF.namprd04.prod.outlook.com
 (2603:10b6:610:74:cafe::b9) by CH0PR04CA0082.outlook.office365.com
 (2603:10b6:610:74::27) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9320.22 via Frontend Transport; Mon,
 17 Nov 2025 05:37:21 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 DS3PEPF000099DF.mail.protection.outlook.com (10.167.17.202) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9343.9 via Frontend Transport; Mon, 17 Nov 2025 05:37:15 +0000
Received: from DFLE201.ent.ti.com (10.64.6.59) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Sun, 16 Nov
 2025 23:37:09 -0600
Received: from DFLE203.ent.ti.com (10.64.6.61) by DFLE201.ent.ti.com
 (10.64.6.59) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Sun, 16 Nov
 2025 23:37:09 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE203.ent.ti.com
 (10.64.6.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Sun, 16 Nov 2025 23:37:09 -0600
Received: from [10.24.69.13] (meghana-pc.dhcp.ti.com [10.24.69.13] (may be forged))
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5AH5b37d1941015;
	Sun, 16 Nov 2025 23:37:04 -0600
Message-ID: <83137569-d34b-4cd1-bff5-81a115c1923d@ti.com>
Date: Mon, 17 Nov 2025 11:07:03 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Roger Quadros <rogerq@kernel.org>, Siddharth Vadapalli
	<s-vadapalli@ti.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
	<davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
	<kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov
	<ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "Jesper Dangaard
 Brouer" <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, "Sumit
 Semwal" <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?=
	<christian.koenig@amd.com>, Stanislav Fomichev <sdf@fomichev.me>, "Simon
 Horman" <horms@kernel.org>
References: <20251109-am65-cpsw-xdp-zc-v2-0-858f60a09d12@kernel.org>
Content-Language: en-US
From: Meghana Malladi <m-malladi@ti.com>
In-Reply-To: <20251109-am65-cpsw-xdp-zc-v2-0-858f60a09d12@kernel.org>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS3PEPF000099DF:EE_|SJ2PR10MB7597:EE_
X-MS-Office365-Filtering-Correlation-Id: 04d948d2-5ab0-4f75-ba7b-08de259b5dda
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|1800799024|36860700013|82310400026|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?aHkyOUVCY3pXbmF6Smw4TFFvNVRBTE5zMW1tUmZTRHozU3B5VlFnKzhGYVhJ?=
 =?utf-8?B?ZFptSUNFeTIzVm40UVN4bFVWS0lwWW10Ulp1ZTBCWVJvditaMEd3U1RDQlgz?=
 =?utf-8?B?RVpTbmVEMWNUQUZXa1g0S29ZWE5IRjl3YmpoRmc5WDRXUUVjdEhDRTFYeW9L?=
 =?utf-8?B?TG93amxGME1henkxRjNaT1EwVHlyZU95b2YyVWVmeWNxTDgxcmIwSSttcEFh?=
 =?utf-8?B?NW1adGVKVjVzK1dqY1huSWIrYzBEMWNlNTZIWjNZcExjNVFWZ1orTmpOQkhx?=
 =?utf-8?B?WUdLL3dNL2ZKOWpDSnMwLzNvVkYwRHdNd2t1YUJubVU0SXpSRUppMmlqUm5y?=
 =?utf-8?B?MG1pQ3UyUFhqU2NmNy8yc2EyMnRCeExpWXpxeURZLy9EWEMyei9NdUs3VXAr?=
 =?utf-8?B?V3NTZlkrVTB6NmVBUmV5cjdzM2JzNUJLS20rQUZyMjZPeTdiek05TDl0RVdR?=
 =?utf-8?B?d05ldnZhdHIva2lRZStNTmdpMHdrRmFYdkwvY053QnBiMlVhOUNUL21RYjhK?=
 =?utf-8?B?dm5VYjlxWStLTEtldEQ4b1dvUDNhSlEyVjhrd3FGUjFCNG5jYTVqNEh3YVcz?=
 =?utf-8?B?YXBtWlFkRWJuN0ZaMERvWDJXWHovOGZOMWwvdGhGQWFVaS9sV2svZy9nMWJ0?=
 =?utf-8?B?QnpYS3dlcVIzenhzdHdzOVBxUm52ZE1aRkRDcjJOQnd5NkcyWHNFTDhHNGRz?=
 =?utf-8?B?eG53d0NzSWE0elBTaUlmZjFuT05jY0ptaEpzeDVpYUI2NzdlSE1nZzJyV1BR?=
 =?utf-8?B?US96RmFJTkRQRkNGcERXcDZPTkFjaFBHMnk3Zm1vR0VVRmdIZmJDaUFBa0hE?=
 =?utf-8?B?cmJJTThvc2xxTTdRd2VCMEdaNVZzR2pOSURWRXppL3ZSdDBQSHFnTklGKzBR?=
 =?utf-8?B?V3h0ZXhCN3BLdlV3OHNxaEdKVFB1VjRnN0RsNk56RkptRGowRUltL1hRYzJN?=
 =?utf-8?B?ZkUzM3ZBZEFxaVp3QzVpNHhpZkN3ekVicHhxL0E4ODhIS2NnTTlubmV3dkFa?=
 =?utf-8?B?cTA4M3hpQVBkUFJ1Y2V6aGhEK2JiMnc0MVhpZThBU3JjTkU2bkJFUE1rWGlm?=
 =?utf-8?B?ZXZlZUF2TFdMN1h5U3BWR0VlUjV2SzJsUHhBWHUySENyUGE0blJFUjRacGlu?=
 =?utf-8?B?MmZDMEx2ZHMxUkxlTHY1VUE5U2NYMmUrdWZNRnBLNkp1NVppU0NuNXJYU2Jl?=
 =?utf-8?B?cEs5T2t5SHA3V1c3SlIrVzdyN0t5Rlo1Yk1XK1hnNDQ4MEtZU0c1cVNXdG16?=
 =?utf-8?B?Q2h3SjBTcXdjN3ZyR2pvMm9oemVQeEdxMmk0Y25jdm5Hc3lBazdLR0tRNVhH?=
 =?utf-8?B?akFQZFRsS0s0RThQMkoxM1VVOWl0dnE5eElhYnhIVGN2b3lCRStBdzJ5bEZX?=
 =?utf-8?B?Y3V0QmUwSXROZzdQMGMrUDYwbUVsTHV2aXF3bDVMZC9FUEY5Z0tCQy90bDNN?=
 =?utf-8?B?UVVPN0E0RmQydzk0QmhMcDhQakRIa3pWZURHU3NzNTZ2eFdaZEJRaTRkY0dX?=
 =?utf-8?B?VXQ3WTRVblIyMkh0UFFVNkt1MStVSjdrTTZSNytNMGQycnJpYW0yOUJNaTB5?=
 =?utf-8?B?VjFIeSswcER2dWRyY1ZMUlk1eUI0OTk0UVo5c3BwL3BkZVR1cEMxZmxKSXJJ?=
 =?utf-8?B?VzkwM21QWHIzQVVOWTVsemxybHJqRVFrU1ROOHlDdlI4dGFLZFBtaURZbGVR?=
 =?utf-8?B?U2FGbkpma25IT0x0SElGTXB4WEhjMTh1UGhBTlNkelpLblN4UWZEL1NVUlJ2?=
 =?utf-8?B?RU1yODBIdEI4ZEU2anNsQUJvd3N4NFFNZnVlTGUxRG5XNy9mWXoyNzFkblRq?=
 =?utf-8?B?SXZjbkVESUNITlptTWRsaWFmNW9BNWdQeU44RkxNekJ2NkVnalh3MEtVREQw?=
 =?utf-8?B?MjdUZlo2MS93NU8rUDFNbkUySDNmNWMvakhEZWdzMVNYUDd6TEg1aHZPT1lt?=
 =?utf-8?B?bHpqU0hFa2ltWnk1YWFla1dJTEFKNzRWSUpHTjArT3R3Q3I3ZXNNNmU1WE1q?=
 =?utf-8?B?cm5lRE96Qk5Xc3Vnd2o0NXFlY25ueVp6eUtCaElYUEhrcTNNQjZ5amxCKzVr?=
 =?utf-8?Q?i5wI2b?=
X-Forefront-Antispam-Report: 
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(36860700013)(82310400026)(921020);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2025 05:37:15.6767
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 04d948d2-5ab0-4f75-ba7b-08de259b5dda
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DS3PEPF000099DF.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR10MB7597
X-Spamd-Bar: ----
X-MailFrom: m-malladi@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BV5PYIKROGBY2IHO5777PMBE3IDDO5OA
X-Message-ID-Hash: BV5PYIKROGBY2IHO5777PMBE3IDDO5OA
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:57:04 +0000
CC: srk@ti.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [EXTERNAL] [PATCH net-next v2 0/7] net: ethernet: ti: am65-cpsw: add AF_XDP zero copy support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BV5PYIKROGBY2IHO5777PMBE3IDDO5OA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[ti.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[ti.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DATE_IN_PAST(1.00)[3609];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,ti.com,lunn.ch,davemloft.net,google.com,redhat.com,iogearbox.net,gmail.com,linaro.org,amd.com,fomichev.me];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[urldefense.com:url,ti.com:mid,ti.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,proofpoint.com:url];
	DKIM_TRACE(0.00)[ti.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.948];
	FROM_NEQ_ENVFROM(0.00)[m-malladi@ti.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	REDIRECTOR_URL(0.00)[urldefense.com,proofpoint.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D63C5410769
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgUm9nZXIsDQoNCk9uIDExLzEwLzI1IDAzOjA3LCBSb2dlciBRdWFkcm9zIHdyb3RlOg0KPiBU
aGlzIHNlcmllcyBhZGRzIEFGX1hEUCB6ZXJvIGNvcHB5IHN1cHBvcnQgdG8gYW02NS1jcHN3IGRy
aXZlci4gVGVzdHMgDQo+IHdlcmUgcGVyZm9ybWVkIG9uIEFNNjJ4LXNrIHdpdGggeGRwc29jayBh
cHBsaWNhdGlvbiBbMV0uIEEgY2xlYXIgDQo+IGltcHJvdmVtZW50IGlzIHNlZW4gaW4gNjQgYnl0
ZSBwYWNrZXRzIG9uIFRyYW5zbWl0ICh0eG9ubHkpIGFuZCByZWNlaXZlIA0KPiAocnhkcm9wKS4g
MTUwMCBieXRlIHRlc3Qgc2VlbXMgdG8NCj4gWmpRY21RUllGcGZwdEJhbm5lclN0YXJ0DQo+IFRo
aXMgbWVzc2FnZSB3YXMgc2VudCBmcm9tIG91dHNpZGUgb2YgVGV4YXMgSW5zdHJ1bWVudHMuDQo+
IERvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5b3UgcmVjb2du
aXplIHRoZSBzb3VyY2UgDQo+IG9mIHRoaXMgZW1haWwgYW5kIGtub3cgdGhlIGNvbnRlbnQgaXMg
c2FmZS4NCj4gUmVwb3J0wqBTdXNwaWNpb3VzDQo+IDxodHRwczovL3VzLXBoaXNoYWxhcm0tZXd0
LnByb29mcG9pbnQuY29tL0VXVC92MS9HM3ZLISANCj4gdTdkcVhSZlAxazA3S3lYT0YzTkRmOHZv
MG15X0FGYUg0dlBBUExWbktDc3FGV2pfYlhLTnNSbWhUSkJFODJScnJfdzczNmhST1YtdGdwakVH
YjZPN2NRQUNsS2pHOXg5aWw3M1pUNzAkPg0KPiBaalFjbVFSWUZwZnB0QmFubmVyRW5kDQo+IA0K
PiBUaGlzIHNlcmllcyBhZGRzIEFGX1hEUCB6ZXJvIGNvcHB5IHN1cHBvcnQgdG8gYW02NS1jcHN3
IGRyaXZlci4NCj4gDQo+IFRlc3RzIHdlcmUgcGVyZm9ybWVkIG9uIEFNNjJ4LXNrIHdpdGggeGRw
c29jayBhcHBsaWNhdGlvbiBbMV0uDQo+IA0KPiBBIGNsZWFyIGltcHJvdmVtZW50IGlzIHNlZW4g
aW4gNjQgYnl0ZSBwYWNrZXRzIG9uIFRyYW5zbWl0ICh0eG9ubHkpDQo+IGFuZCByZWNlaXZlIChy
eGRyb3ApLg0KPiAxNTAwIGJ5dGUgdGVzdCBzZWVtcyB0byBiZSBsaW1pdGVkIGJ5IGxpbmUgcmF0
ZSAoMUcgbGluaykgc28gbm8NCj4gaW1wcm92ZW1lbnQgc2VlbiB0aGVyZSBpbiBwYWNrZXQgcmF0
ZS4gQSB0ZXN0IG9uIGhpZ2hlciBzcGVlZCBsaW5rDQo+IChvciBQSFktbGVzcyBzZXR1cCkgbWln
aHQgYmUgd29ydGh3aWxlLg0KPiANCj4gVGhlcmUgaXMgc29tZSBpc3N1ZSBkdXJpbmcgbDJmd2Qg
d2l0aCA2NCBieXRlIHBhY2tldHMgYW5kIGJlbmNobWFyaw0KPiByZXN1bHRzIHNob3cgMC4gVGhp
cyBpc3N1ZSBuZWVkcyB0byBiZSBkZWJ1Z2dlZCBmdXJ0aGVyLg0KPiBBIDUxMiBieXRlIGwyZndk
IHRlc3QgcmVzdWx0IGhhcyBiZWVuIGFkZGVkIHRvIGNvbXBhcmUgaW5zdGVhZC4NCj4gDQo+IEFG
X1hEUCBwZXJmb3JtYW5jZSB1c2luZyA2NCBieXRlIHBhY2tldHMgaW4gS3Bwcy4NCj4gQmVuY2ht
YXJrOglYRFAtU0tCCQlYRFAtTmF0aXZlCVhEUC1OYXRpdmUoWmVyb0NvcHkpDQo+IHJ4ZHJvcAkJ
MzIyCQk0OTEJCTg0NQ0KPiB0eG9ubHkJCTM5MAkJMzk0CQk3MjMNCj4gbDJmd2QgCQkyMDUJCTI1
NwkJMA0KPiANCj4gQUZfWERQIHBlcmZvcm1hbmNlIHVzaW5nIDUxMiBieXRlIHBhY2tldHMgaW4g
S3Bwcy4NCj4gbDJmd2QJCTE0MAkJMTY3CQkyMzENCj4gDQo+IEFGX1hEUCBwZXJmb3JtYW5jZSB1
c2luZyAxNTAwIGJ5dGUgcGFja2V0cyBpbiBLcHBzLg0KPiBCZW5jaG1hcms6CVhEUC1TS0IJCVhE
UC1OYXRpdmUJWERQLU5hdGl2ZShaZXJvQ29weSkNCj4gcnhkcm9wCQk4MgkJODIJCTgyDQo+IHR4
b25seQkJODIJCTgyCQk4Mg0KPiBsMmZ3ZCAJCTgyCQk4MgkJODINCj4gDQo+IFsxXTpodHRwczov
L3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6Ly9naXRodWIuY29tL3hkcC1wcm9qZWN0L2JwZi1l
eGFtcGxlcy8gDQo+IHRyZWUvbWFzdGVyL0FGX1hEUC1leGFtcGxlX187ISFHM3ZLISANCj4gU1g0
SjgyTmZPbl9zZndpelNUWU8tOFczR1J1ZmZGSUh5Q25nTzFKMkNUNEFsZWExOHBJR2lCSTRsNVhL
RktWVWJ4RVNEZ2I0R2tDYiQgPGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL2dp
dGh1Yi5jb20veGRwLXByb2plY3QvYnBmLWV4YW1wbGVzL3RyZWUvbWFzdGVyL0FGX1hEUC1leGFt
cGxlX187ISFHM3ZLIVNYNEo4Mk5mT25fc2Z3aXpTVFlPLThXM0dSdWZmRklIeUNuZ08xSjJDVDRB
bGVhMThwSUdpQkk0bDVYS0ZLVlVieEVTRGdiNEdrQ2IkPg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
Um9nZXIgUXVhZHJvcyA8cm9nZXJxQGtlcm5lbC5vcmc+DQoNCkFmdGVyIGFwcGx5aW5nIHRoaXMg
c2VyaWVzIHBhdGNoZXMsIEkgdHJpZWQgYm9vdGluZyBhbTY0eHgtaHNldm0gaW4gDQpwcnVldGgg
ZHVhbC1lbWFjIG1vZGUgYnkgYXBwbHlpbmcgazMtYW02NDItZXZtLWljc3NnMS1kdWFsZW1hYy5k
dGJvIA0Kb3ZlcmxheSwgYW5kIEkgYW0gZ2V0dGluZyB0aGUgZm9sbG93aW5nIGtlcm5lbCBjcmFz
aDogDQpodHRwczovL2dpc3QuZ2l0aHViLmNvbS9NZWdoYW5hTWFsbGFkaVRJLzc4NGZkMjI2MmQ5
NWIxOWZlOTU3M2M1NTNjNGE2YTI0DQoNCkNhbiB5b3UgcGxlYXNlIHRha2UgYSBsb29rIGF0IHRo
aXMuDQoNCj4gLS0tDQo+IENoYW5nZXMgaW4gdjI6DQo+IC0gUHJldmVudCBjcmFzaCBvbiBzeXN0
ZW1zIHdpdGggMSBvZiAyIHBvcnRzIGRpc2FibGVkIGluIGRldmljZSB0cmVlLiBjaGVjaw0KPiAg
ICBmb3IgdmFsaWQgbmRldiBiZWZvcmUgcmVnaXN0ZXJpbmcvdW5yZWdpc3RlcmluZyBYRFAgUlhR
Lg0KPiAgICBSZXBvcnRlZC1ieTogTWVnaGFuYSBNYWxsYWRpIDxtLW1hbGxhZGlAdGkuY29tPg0K
PiAtIFJldGFpbiBwYWdlIHBvb2wgb24gWERQIHByb2dyYW0gZXhjaGFuZ2FlIHNvIHdlIGRvbid0
IGhhdmUgdG8gcmUtYWxsb2FjYXRlDQo+ICAgIG1lbW9yeS4NCj4gLSBGaXggY2xlYXJpbmcgb2Yg
aXJxX2Rpc2FibGVkIGZsYWcgaW4gYW02NV9jcHN3X251c3NfcnhfcG9sbCgpLg0KPiAtIExpbmsg
dG8gdjE6aHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L3IvMjAyNTA1MjAtYW02NS0gDQo+IGNwc3cteGRwLXpjLXYxLTAtNDU1NTgwMjRmNTY2QGtlcm5l
bC5vcmdfXzshIUczdkshIA0KPiBTWDRKODJOZk9uX3Nmd2l6U1RZTy04VzNHUnVmZkZJSHlDbmdP
MUoyQ1Q0QWxlYTE4cElHaUJJNGw1WEtGS1ZVYnhFU0RnQUVDUjlnJCA8aHR0cHM6Ly91cmxkZWZl
bnNlLmNvbS92My9fX2h0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTA1MjAtYW02NS1jcHN3
LXhkcC16Yy12MS0wLTQ1NTU4MDI0ZjU2NkBrZXJuZWwub3JnX187ISFHM3ZLIVNYNEo4Mk5mT25f
c2Z3aXpTVFlPLThXM0dSdWZmRklIeUNuZ08xSjJDVDRBbGVhMThwSUdpQkk0bDVYS0ZLVlVieEVT
RGdBRUNSOWckPg0KPiANCj4gLS0tDQo+IFJvZ2VyIFF1YWRyb3MgKDcpOg0KPiAgICAgICAgbmV0
OiBldGhlcm5ldDogdGk6IGFtNjUtY3BzdzogZml4IEJQRiBQcm9ncmFtIGNoYW5nZSBvbiBtdWx0
aS1wb3J0IENQU1cNCj4gICAgICAgIG5ldDogZXRoZXJuZXQ6IHRpOiBhbTY1LWNwc3c6IFJldGFp
biBwYWdlX3Bvb2wgb24gWERQIHByb2dyYW0gZXhjaGFuZ2UNCj4gICAgICAgIG5ldDogZXRoZXJu
ZXQ6IHRpOiBhbTY1LWNwc3c6IGFkZCBYU0sgcG9vbCBoZWxwZXJzDQo+ICAgICAgICBuZXQ6IGV0
aGVybmV0OiB0aTogYW02NS1jcHN3OiBBZGQgQUZfWERQIHplcm8gY29weSBmb3IgUlgNCj4gICAg
ICAgIG5ldDogZXRoZXJuZXQ6IHRpOiBhbTY1LWNwc3c6IEFkZCBBRl9YRFAgemVybyBjb3B5IGZv
ciBUWA0KPiAgICAgICAgbmV0OiBldGhlcm5ldDogdGk6IGFtNjUtY3BzdzogZW5hYmxlIHplcm8g
Y29weSBpbiBYRFAgZmVhdHVyZXMNCj4gICAgICAgIG5ldDogZXRoZXJuZXQ6IHRpOiBhbTY1LWNw
c3c6IEZpeCBjbGVhcmluZyBvZiBpcnFfZGlzYWJsZWQgZmxhZyBpbiByeF9wb2xsDQo+IA0KPiAg
IGRyaXZlcnMvbmV0L2V0aGVybmV0L3RpL01ha2VmaWxlICAgICAgICAgfCAgIDIgKy0NCj4gICBk
cml2ZXJzL25ldC9ldGhlcm5ldC90aS9hbTY1LWNwc3ctbnVzcy5jIHwgNTgzICsrKysrKysrKysr
KysrKysrKysrKysrKysrLS0tLS0NCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC90aS9hbTY1LWNw
c3ctbnVzcy5oIHwgIDM3ICstDQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkvYW02NS1jcHN3
LXhkcC5jICB8IDE1NSArKysrKysrKw0KPiAgIDQgZmlsZXMgY2hhbmdlZCwgNjkyIGluc2VydGlv
bnMoKyksIDg1IGRlbGV0aW9ucygtKQ0KPiAtLS0NCj4gYmFzZS1jb21taXQ6IGEwYzNhZWZiMDhj
ZDgxODY0YjE3YzIzYzI1YjM4OGRiYTkwYjlkYWQNCj4gY2hhbmdlLWlkOiAyMDI1MDIyNS1hbTY1
LWNwc3cteGRwLXpjLTJhZjllNGJlMTM1Ng0KPiANCj4gQmVzdCByZWdhcmRzLA0KPiAtLSANCj4g
Um9nZXIgUXVhZHJvcyA8cm9nZXJxQGtlcm5lbC5vcmc+DQo+IA0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
