Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHlgC8H44GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:57:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CE35140FFBF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:57:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DAB03404B2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:57:03 +0000 (UTC)
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazhn15010019.outbound.protection.outlook.com [52.102.146.19])
	by lists.linaro.org (Postfix) with ESMTPS id 176E93F713
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Nov 2025 06:42:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=selector1 header.b=mmZJ2Aqh;
	dmarc=pass (policy=quarantine) header.from=ti.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of m-malladi@ti.com designates 52.102.146.19 as permitted sender) smtp.mailfrom=m-malladi@ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RgUqongUnsDUJVckLYdaQMSWh0V5dQsb7fsw3XKg1PDdirsav44pKZ56c22zbA8I7vaLkHvLKKoaMQCCvOhj+CGds7gdbkOH92jE/U0EKwfpd1GvpTKnpoFCSZhEmFFlOiJ1s8tPexJDolPvxeKsplVKORl7BQl5p0mx1hpPJPJuJyjcv1ICS1DO+tjbXEbcfLJ15TPRgq5TMtvWBBeEisS2cNtps9trzrJCM7xibN3ivVPbiGN4kyRFtSxXz74AAjzCfNxMQTMvWSwEJNlZ3BykrGEmQ76pOChRi5I4hCGHjnWL27PNTUIeab4LWYtv3mHOVeapsubaa1efbajMKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G6+9KPfEJ5h+OEIBame0A/5A0RWvWSnYqew22Xfcc/w=;
 b=B8HX07GtNjm3toJVmMCVJBVCwLYDp0RLACaaItsJSs3MuNIWuO7JFk/m2BonPBAGMlktZBHJikP06xNb+kSdy7cSMuVoMWdASfxGebUANRcLuWpZIoSeoCI8eT6ZycuxUc84UVx7G9voSFgrxqp+YmWRw4N+KvW95i9tDd7QecadLSZSJTl9wKQ3KxmwGxIDO4S56XpOiLt6gE4U1w2k0l0uLE2xwGDJdY3kvwrYXsSIyu4f90zMTx6WiNGFJ/l8oKNacUMoTHl3UJpN7VRke7wEXYG3psQN8yZvbSynwiRS9VdesEMxUYhAa0xrArDVI30V/mqzn6v0hjQNpoOkcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G6+9KPfEJ5h+OEIBame0A/5A0RWvWSnYqew22Xfcc/w=;
 b=mmZJ2AqhkC75CdWKwaXBR+vJIXZWJFUxHmbsYUQVdnCvK43bViOSztfm0iAL5PK6QMxtttizoVGBkIbdp4dGzRWX5e2Raia2P8odwZULq04Mku6vJRvMwyVtlqUAItCLueYLnIvVgfsbPTTpyvalhuTw3oRDzUDadiXeFgct54k=
Received: from BN0PR03CA0015.namprd03.prod.outlook.com (2603:10b6:408:e6::20)
 by CY5PR10MB5939.namprd10.prod.outlook.com (2603:10b6:930:e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Wed, 5 Nov
 2025 06:42:20 +0000
Received: from BN2PEPF000044AB.namprd04.prod.outlook.com
 (2603:10b6:408:e6:cafe::52) by BN0PR03CA0015.outlook.office365.com
 (2603:10b6:408:e6::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9298.8 via Frontend Transport; Wed, 5
 Nov 2025 06:42:20 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 BN2PEPF000044AB.mail.protection.outlook.com (10.167.243.106) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9298.6 via Frontend Transport; Wed, 5 Nov 2025 06:42:17 +0000
Received: from DFLE202.ent.ti.com (10.64.6.60) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 5 Nov
 2025 00:42:14 -0600
Received: from DFLE204.ent.ti.com (10.64.6.62) by DFLE202.ent.ti.com
 (10.64.6.60) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 5 Nov
 2025 00:42:14 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE204.ent.ti.com
 (10.64.6.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 5 Nov 2025 00:42:14 -0600
Received: from [10.24.69.13] (meghana-pc.dhcp.ti.com [10.24.69.13] (may be forged))
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5A56g7JC3271680;
	Wed, 5 Nov 2025 00:42:07 -0600
Message-ID: <7fcb1434-2ff1-408c-934b-9b87cee926c8@ti.com>
Date: Wed, 5 Nov 2025 12:12:06 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20251023093927.1878411-1-m-malladi@ti.com>
 <20251023093927.1878411-3-m-malladi@ti.com>
 <05efdc9a-8704-476e-8179-1a9fc0ada749@redhat.com>
 <ba1b48dc-b544-4c4b-be8a-d39b104cda21@ti.com>
 <c792f4da-3385-4c14-a625-e31b09675c32@ti.com>
 <20251104154828.7aa20642@kernel.org>
Content-Language: en-US
From: Meghana Malladi <m-malladi@ti.com>
In-Reply-To: <20251104154828.7aa20642@kernel.org>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN2PEPF000044AB:EE_|CY5PR10MB5939:EE_
X-MS-Office365-Filtering-Correlation-Id: 001f4920-7315-47c4-f26e-08de1c3676d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|36860700013|7416014|376014|1800799024|34020700016|12100799066;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?a1RsTGZSQ0tUc211MUdJWGhNWUkyNFc2ekp5MG05MEcvQlBRSFUvdHR1VnFi?=
 =?utf-8?B?Yzk3NFJHM2NpTVpiVDJmOVdpM1RKaGZ2K29YZUlhdVlWdElDK2FpVEQ0N1pw?=
 =?utf-8?B?Q0tseGdsalF4VDlBS2VUSFdjR2wyUjcwWkZKOHBMbDNVYzdwUHFGdE1mY2hS?=
 =?utf-8?B?UThmbytvK3FqRys4RE9NVmFVSDNVZWdubDUvZlJFYVZvWFcxTFVsbHducS9l?=
 =?utf-8?B?NTV3ZXp6RXpGemQ1Z08rODQ2VFNzMU1kMmtTNTlEYmljZDBHTDFBMXYxaDk0?=
 =?utf-8?B?MzBjM1laaXhPVmtJeVBjbkhWZEh0YUFWWGNGcUxoUlpybFRiaEJRdklIN1Fr?=
 =?utf-8?B?L1ROUUJjUGVHb3E1QmRxb1phRy9yYzJtRUxtaER3T2NDTFpocW1mMENHdHh2?=
 =?utf-8?B?QmtxaXcxY2dkRHM1QWNGZTJKSUdLSjluMXYyZEhnTlZXNWZVMFQ1QlR2NlZJ?=
 =?utf-8?B?bnptZjc1ZE5ZUjZFaGYwanpvNENIVFhTUTBlMnY4bkx4OTdpeDQrdE5vVjNF?=
 =?utf-8?B?cUEvSWw5T0VDTGcxMU1XWEhQd1EwMDJRbzFaRk1sallLWGtQbXIxcHVXUXRC?=
 =?utf-8?B?WnAwTitOWStpT2NlZjMxVUtKYWhTbjRkY0Z2ZG5DdmZmc2hweVgxSzFUeVNj?=
 =?utf-8?B?a2lCc1l1UDlFTUJ6MmxiU0JSYjdQdWFSNHNaY292eDBQOWpLcEk2Vzh5dm91?=
 =?utf-8?B?R2hPeVVEZTBCUUt2MTJWSmkzb2p6djIzRlBsU2VEQWk0LzJYNC9od3p1anpC?=
 =?utf-8?B?NCtyM0Y0bGFQZEEwVldyMkJsZjlHZ0JLN2JjQ0s4L0pPQ0NmZ1JpY2w4T1NI?=
 =?utf-8?B?ZFNyWndoMUlzRW1zN1c2VEpRazZvVzlQY3RUYnY2VmVneXM3TUljampiNHJD?=
 =?utf-8?B?OXoxeFdJSTBhbzhpZFc4YmlHWEllVnZGVmtUVE1QRkpIUGpkOTg5b1NXcTh5?=
 =?utf-8?B?MjNpQ0FTSDlnZFl5aXdUa2Z4R050NzlMeDd4eDV6UkQrUDJNRW53OElSck84?=
 =?utf-8?B?Ry9YUEVRVEkwZnhCd1c4YkdZd0lVYWF2YVY4SVBoZXJFazk0bDJUTmRXYW9o?=
 =?utf-8?B?ZlZkQ0pHSmJXaGtEQXkzWjlDS2hNTzBmU0FEb2tUQTBuTnhxaXBQK0JWVEpK?=
 =?utf-8?B?UzdYQk1POFRiaDNOeUJONFBzNTU2d0tVQzNOeFNSRGZmU3lNL0FqQm5uSG4v?=
 =?utf-8?B?di9hYlpJWlFtVWZoczhML1h6eDlYMEkzbTB3bkhuVWlSY2cvd1psN0ZaWDlv?=
 =?utf-8?B?cHozSmJMeDFJY1M4d3FucU56dm9QSk1xSG4wV0dINE52enF2b0lybEIyQ1lQ?=
 =?utf-8?B?aGVjbHJXLzE3L0hXRGVHRGM4ZzJ2WFB2ajVvUUxHTXVobXpsOTJpUlVqa0RV?=
 =?utf-8?B?aVdTaFpHNVlnbHJnZmpzMEoxVGIzVzZ5WEJmaDBKcDN2R2E1VnFLQlBRaW9h?=
 =?utf-8?B?Z3JoVG9rS3lXRDAzVGNWU3FpSkVvakJ0c2pUaDRucDliWGhkWjBiL1c4Ui9a?=
 =?utf-8?B?ZFdROWQ3WWw5bkZZbDNza1lWNk9OSzhzdy8ycmxlc1pYRWR2d2poc0U2Vk01?=
 =?utf-8?B?M3AvemZmQUJwU0tYTlJhMmZ4NzRUMHRTbnluRHZlY0FORmd1RUl1Z09YVTZP?=
 =?utf-8?B?aXBrUWE3dVFiaVpyb0lzbDZ1VURjb1FKMVZYcjNBQmh0Q084aU9XY2h1MUdz?=
 =?utf-8?B?WWMwSXVySGxoNGFWSkEzVU9wNDZMOXo4S3Q3R0loTkRKdndacEZ5cVlQUGVK?=
 =?utf-8?B?dmpYVjQ3TVF2VXg1dTZId0pEaVoxMEYxclNnN1Ywc2UwVy9Cd2Zock43OG16?=
 =?utf-8?B?RmcxdWtUVXEzRDJTcHBEMU5iWUlpR1J1UDdjUDJINGdRbTZzTElBQ0tBdlA1?=
 =?utf-8?B?b2k4Y29yRGNQdnJQWEF4a2lyM2dpd215SVE5VGgwK0s3cWJBbHJxclkyTDFa?=
 =?utf-8?B?SWhheUdBUDh0MTV6WWFWeVA2UFl5TlhRdXRsN0xYaW85djFPM1lyalg0Y2pN?=
 =?utf-8?B?aGVCWnJlVXVSN0dOeTlqbndUeEFjVFcwQi94Smp2U1BpSTlsRGZqT3R0b1Az?=
 =?utf-8?B?S0psUlh0dHZiM1FJYTZuZnNaN01HSnZyWnk5bnRJNlNEZm1ZcjVXanlLMEhr?=
 =?utf-8?Q?l0t4=3D?=
X-Forefront-Antispam-Report: 
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(36860700013)(7416014)(376014)(1800799024)(34020700016)(12100799066);DIR:OUT;SFP:1501;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 06:42:17.9367
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 001f4920-7315-47c4-f26e-08de1c3676d3
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	BN2PEPF000044AB.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR10MB5939
X-Spamd-Bar: ---
X-MailFrom: m-malladi@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 65TT7XDO6DAEXBVMSY3J6VKT2Z274ZQM
X-Message-ID-Hash: 65TT7XDO6DAEXBVMSY3J6VKT2Z274ZQM
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:52:41 +0000
CC: Paolo Abeni <pabeni@redhat.com>, horms@kernel.org, namcao@linutronix.de, vadim.fedorenko@linux.dev, jacob.e.keller@intel.com, christian.koenig@amd.com, sumit.semwal@linaro.org, sdf@fomichev.me, john.fastabend@gmail.com, hawk@kernel.org, daniel@iogearbox.net, ast@kernel.org, edumazet@google.com, davem@davemloft.net, andrew+netdev@lunn.ch, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, srk@ti.com, Vignesh Raghavendra <vigneshr@ti.com>, Roger Quadros <rogerq@kernel.org>, danishanwar@ti.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [EXTERNAL] Re: [PATCH net-next v4 2/6] net: ti: icssg-prueth: Add XSK pool helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/65TT7XDO6DAEXBVMSY3J6VKT2Z274ZQM/>
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
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DATE_IN_PAST(1.00)[3896];
	R_DKIM_REJECT(1.00)[ti.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ti.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns];
	DKIM_TRACE(0.00)[ti.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.671];
	FROM_NEQ_ENVFROM(0.00)[m-malladi@ti.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,kernel.org,linutronix.de,linux.dev,intel.com,amd.com,linaro.org,fomichev.me,gmail.com,iogearbox.net,google.com,davemloft.net,lunn.ch,lists.linaro.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,ti.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CE35140FFBF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgSmFrdWIsDQoNCk9uIDExLzUvMjUgMDU6MTgsIEpha3ViIEtpY2luc2tpIHdyb3RlOg0KPiBP
biBUdWUsIDQgTm92IDIwMjUgMTQ6MjM6MjQgKzA1MzAgTWVnaGFuYSBNYWxsYWRpIHdyb3RlOg0K
Pj4+IEkgdHJpZWQgaG9ub3JpbmcgSmFrdWIncyBjb21tZW50IHRvIGF2b2lkIGZyZWVpbmcgdGhl
IHJ4IG1lbW9yeSB3aGVyZXZlcg0KPj4+IG5lY2Vzc2FyeS4NCj4+Pg0KPj4+ICJJbiBjYXNlIG9m
IGljc3NnIGRyaXZlciwgZnJlZWluZyB0aGUgcnggbWVtb3J5IGlzIG5lY2Vzc2FyeSBhcyB0aGUN
Cj4+PiByeCBkZXNjcmlwdG9yIG1lbW9yeSBpcyBvd25lZCBieSB0aGUgY3BwaSBkbWEgY29udHJv
bGxlciBhbmQgY2FuIGJlDQo+Pj4gbWFwcGVkIHRvIGEgc2luZ2xlIG1lbW9yeSBtb2RlbCAocGFn
ZXMveGRwIGJ1ZmZlcnMpIGF0IGEgZ2l2ZW4gdGltZS4NCj4+PiBJbiBvcmRlciB0byByZW1hcCBp
dCwgdGhlIG1lbW9yeSBuZWVkcyB0byBiZSBmcmVlZCBhbmQgcmVhbGxvY2F0ZWQuIg0KPj4NCj4+
IEp1c3QgdG8gbWFrZSBzdXJlIHdlIGFyZSBvbiB0aGUgc2FtZSBwYWdlLCBkb2VzIHRoZSBhYm92
ZSBleHBsYW5hdGlvbg0KPj4gbWFrZSBzZW5zZSB0byB5b3Ugb3IgZG8geW91IHdhbnQgbWUgdG8g
bWFrZSBhbnkgY2hhbmdlcyBpbiB0aGlzIHNlcmllcw0KPj4gZm9yIHY1ID8NCj4gDQo+IE5vLiBC
YXNlZCBvbiB5b3VyIHJlcGx5IGJlbG93IHlvdSBzZWVtIHRvIHVuZGVyc3RhbmQgd2hhdCBpcyBi
ZWluZw0KPiBhc2tlZCwgc28geW91J3JlIGV4cGVjdGVkIHRvIGRvIGl0Lg0KPiANCg0KWWVzLCB0
aGlzIHNlcmllcyBjdXJyZW50bHkgaW1wbGVtZW50cyB3aGF0ZXZlciBQYW9sbyBtZW50aW9uZWQg
YmVsb3cuDQoNCj4+Pj4gSSB0aGluayB5b3Ugc2hvdWxkOg0KPj4+PiAtIHN0b3AgdGhlIEgvVyBm
cm9tIHByb2Nlc3NpbmcgaW5jb21pbmcgcGFja2V0cywNCj4+Pj4gLSBzcG9vbCBhbGwgdGhlIHBl
bmRpbmcgcGFja2V0cw0KPj4+PiAtIGF0dGFjaC9kZXRhY2ggdGhlIHhza19wb29sDQo+Pj4+IC0g
cmVmaWxsIHRoZSByaW5nDQo+Pj4+IC0gcmUtZW5hYmxlIHRoZSBIL1cNCj4+Pg0KPj4+IEN1cnJl
bnQgaW1wbGVtZW50YXRpb24gZm9sbG93cyB0aGUgc2FtZSBzZXF1ZW5jZToNCj4+PiAxLiBEb2Vz
IGEgY2hhbm5lbCB0ZWFyZG93biAtPiBzdG9wIGluY29taW5nIHRyYWZmaWMNCj4+PiAyLiBmcmVl
IHRoZSByeCBkZXNjcmlwdG9ycyBmcm9tIGZyZWUgcXVldWUgYW5kIGNvbXBsZXRpb24gcXVldWUg
LT4gc3Bvb2wNCj4+PiBhbGwgcGVuZGluZyBwYWNrZXRzL2Rlc2NyaXB0b3JzDQo+Pj4gMy4gYXR0
YWNoL2RldGFjaCB0aGUgeHNrIHBvb2wNCj4+PiA0LiBhbGxvY2F0ZSByeCBkZXNjcmlwdG9ycyBh
bmQgZmlsbCB0aGUgZnJlZXEgYWZ0ZXIgbWFwcGluZyB0aGVtIHRvIHRoZQ0KPj4+IGNvcnJlY3Qg
bWVtb3J5IGJ1ZmZlcnMgLT4gcmVmaWxsIHRoZSByaW5nDQo+Pj4gNS4gcmVzdGFydCB0aGUgTkFQ
SSAtIHJlLWVuYWJsZSB0aGUgSC9XIHRvIHJlY3YgdGhlIHRyYWZmaWMNCj4+Pg0KDQpTb3JyeSBm
b3IgdGhlIGNvbmZ1c2lvbi4gV2hhdGV2ZXIgSSBtZW50aW9uZWQgYmVsb3cgbWlnaHQgaGF2ZSBn
aXZlbiBhbiANCmltcHJlc3Npb24gdGhhdCB0aGVyZSB3YXMgYWRkaXRpb25hbCByZXF1aXJlZCB3
b3JrOyB0aGF0IHdhc27igJl0IG15IA0KaW50ZW50aW9uLiBXaGF0IEkgZGVzY3JpYmVkIGlzIG9u
bHkgYSBwb3NzaWJsZSBkZXNpZ24gZW5oYW5jZW1lbnQgYW5kIA0Kbm90IG1hbmRhdG9yeS4gVGhl
IGN1cnJlbnQgcGF0Y2ggc2VyaWVzIGlzIGNvbXBsZXRlIGFuZCBkb2VzIG5vdCBoYXZlIA0KZ2Fw
cyBpbiBpdHMgZGVzaWduLg0KDQo+Pj4gSSBhbSBzdGlsbCB3b3JraW5nIG9uIHNraXBwaW5nIDIg
YW5kIDQgc3RlcHMgYnV0IHRoaXMgd2lsbCBiZSBhIGxvbmcNCj4+PiBzaG90LiBOZWVkIHRvIG1h
a2Ugc3VyZSBhbGwgY29ybmVyIGNhc2VzIGFyZSBnZXR0aW5nIGNvdmVyZWQuIElmIHRoaXMNCj4+
PiBhcHByb2FjaCBsb29rcyBkb2FibGUgd2l0aG91dCBjYXVzaW5nIGFueSByZWdyZXNzaW9ucyBJ
IG1pZ2h0IHBvc3QgaXQgYXMNCj4+PiBhIGZvbGxvd3VwIHBhdGNoIGxhdGVyIGluIHRoZSBmdXR1
cmUuDQoNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
