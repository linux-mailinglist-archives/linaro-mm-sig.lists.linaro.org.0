Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0H1iHQf/4GkSoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:23:51 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EE751410A0B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:23:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A305D4095A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:23:49 +0000 (UTC)
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010051.outbound.protection.outlook.com [52.101.193.51])
	by lists.linaro.org (Postfix) with ESMTPS id 43AD23F69B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 09:35:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=selector1 header.b=ULC7janN;
	spf=pass (lists.linaro.org: domain of m-malladi@ti.com designates 52.101.193.51 as permitted sender) smtp.mailfrom=m-malladi@ti.com;
	dmarc=pass (policy=quarantine) header.from=ti.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zi6qcXddJ1EaQz5ymIInzhQONmAQz/JrJiNWMzKYQApuieh64yMxV5nYmPvELqMMyB3t9tZ80rase+TZEeI6AG3Qz4n/dc5VhvKEsYt50ECB8cbqo3A9csSY3Auc15TWqCpbVEw2pBjSh/02Adr+ENo08liKj6zQuprzB2xfcikSKp15S35zgi+yobfhafokgBrNEjwEcDdKSXE4qPv07vgYieZPdUQsGS5cW6NMJfk49vyRi+QaMwOVQa7vhvQslSz6xrdB42k5dHdZS8yMrGo8P31UftQ/Aao+9HjevatJv5qPsB5U9yjxDDSFRBfz7cqUFl+NTPDQKV1apkyM3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nq/tT0C9o139rb4x5+u6Yyb8ElgXlto4CN0DEnQmnUQ=;
 b=EvmeH2d0KvKg4OfAxbRaEvrwvwXIjHhtK3eOiTeH5ZMuTxhDYmPWSLXGb7MelV70DmNdcAs8xdvMnxeuK4pHcy7/5LgNubMFIjqSrGItsEuXoWMDdhPWo6q6AnC58ufo7KzFfX+miZ2PLBxgyFCkOO1AIlOt5rupjbwR2KensvtJlRTXTlHydsncmRn9FXYlLXKH318tkSLXYVEe3A71jXOHmwB/ghGGyhXDfobxoNyVnefdfGnSxBrH1YSWhOOe0aaEZuzzfwfIVGNX0mhs+aAfwJ4cj/RHCwhbQypehVg0iLSkbhrRjACk/8aKXtyUL397MH4bmdtZxDJ30UOvSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=lists.linaro.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nq/tT0C9o139rb4x5+u6Yyb8ElgXlto4CN0DEnQmnUQ=;
 b=ULC7janNoV7IZJ7sKvleQ5dLUzGSK7Ut4vQ5eJ+oxUp8uD/ss3CbDioQRI0I9J4Bbnxt9Oyyn66ujNTIls0/21r5WvZBjaUAD+Y8sekUvosSKib2OGTZTduYYq/HTZlw9XLUPUuLFXq61sjUpeyL9uHDAcHD9TUTKbWIFnV+AFk=
Received: from SA1P222CA0089.NAMP222.PROD.OUTLOOK.COM (2603:10b6:806:35e::19)
 by CH0PR10MB4876.namprd10.prod.outlook.com (2603:10b6:610:c9::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Thu, 20 Nov
 2025 09:35:51 +0000
Received: from SN1PEPF0002636C.namprd02.prod.outlook.com
 (2603:10b6:806:35e:cafe::c) by SA1P222CA0089.outlook.office365.com
 (2603:10b6:806:35e::19) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9343.11 via Frontend Transport; Thu,
 20 Nov 2025 09:35:51 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 SN1PEPF0002636C.mail.protection.outlook.com (10.167.241.137) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9343.9 via Frontend Transport; Thu, 20 Nov 2025 09:35:50 +0000
Received: from DFLE202.ent.ti.com (10.64.6.60) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 20 Nov
 2025 03:35:44 -0600
Received: from DFLE201.ent.ti.com (10.64.6.59) by DFLE202.ent.ti.com
 (10.64.6.60) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 20 Nov
 2025 03:35:44 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE201.ent.ti.com
 (10.64.6.59) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 20 Nov 2025 03:35:44 -0600
Received: from [10.24.69.13] (meghana-pc.dhcp.ti.com [10.24.69.13] (may be forged))
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5AK9Zc513447476;
	Thu, 20 Nov 2025 03:35:39 -0600
Message-ID: <a35a9e6e-860e-46e0-b124-37fc80c5e48d@ti.com>
Date: Thu, 20 Nov 2025 15:05:38 +0530
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
X-MS-TrafficTypeDiagnostic: SN1PEPF0002636C:EE_|CH0PR10MB4876:EE_
X-MS-Office365-Filtering-Correlation-Id: 31cd6ce8-faff-4c20-1fdd-08de28183123
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|82310400026|376014|7416014|36860700013|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bzVMSFA3MXBjSkEzdVFOaGE2anZEZVRxZnJXTjhLSXdTU3JIdkpVT1BuRHFk?=
 =?utf-8?B?M1F3QTdMZnhJSi91SnFkaXNnMzVJT3NKS0dNR1RWWWhtRGZheTQ2K0c0VTZI?=
 =?utf-8?B?Uy85Q200Z09uSkVWQXNjN1R2RTh0UUdrbVRVSmh3eDdybVJkVU1YWFA0VjZJ?=
 =?utf-8?B?MnFkaDVuNmtzaGVVWFZQem05ejVwM2l6T3Qzamx3ODZQRy9pejZnSmtpWHl4?=
 =?utf-8?B?YTN4QURRVkxIb04xNloxT3lXbGtXT2J3aFdwMzZMSjRZaUUrU1lzUzRpeFJD?=
 =?utf-8?B?b0FHMUtLc0pBcFRlSjdaUU4vYjVoYjFxQVNxYzZvZmRqOUJiTkdvQlA4dy9p?=
 =?utf-8?B?SXJxMllNVEgxVjc4K0F4QjZEaHRuZU9OOVB4Nk52Qm5jb3ZDOGVNZFFVUDNn?=
 =?utf-8?B?bktkR3llbk1DTDhFNnVLV0M1d2dmTFhxazFWOHhjTTlCZ3h2SWp6cWFRczJH?=
 =?utf-8?B?M0RiYVBqOTZGeDQxMHQ0ZkIwTzZIMUVFZ2RXSTVSbGNCWVhIaFhzTTkwSDhX?=
 =?utf-8?B?dFQyejY1SnpieEpJcWdHdURYS3VwdkNzVTMxbFNwUU5MNDZLaTZDYnQ2VFhv?=
 =?utf-8?B?RUI4UVhSRm9BZU92Z09GM3lDeE5LT2tWODhwc1dQaWR2dk5ydHhVbUdkbTFh?=
 =?utf-8?B?M09jZmNOek5WUkRLdDBycDAwSDhmSlRvZ3ZZTUhzS21laGtRRzNSNzlTaFZT?=
 =?utf-8?B?cGNwZzhraGZ1QUNrU1U3SFQrSU1sbkx5Q0EvT2dDNmt5ZGFUaUErRjR0Zjlh?=
 =?utf-8?B?d3Ztc0VOU1cySUtFUXZKclpESEViUlpHemhQUXJHRnVTVzJZWENyM09oNktY?=
 =?utf-8?B?dG5XTURLQzRpUzNMMk1Pa2lHTlJjQysrRWtaWkJYU1RmVjdXNHZ2S25mVEJy?=
 =?utf-8?B?dlNKakFxckhPREd4UTB3UTFsNWFOT3hzQnpPeVlKbitIZis3akNzTVE3K2NK?=
 =?utf-8?B?MjZnaUJsU2t0OXFHUGNBdEQxM0hvejJpKzc2dDhFNTBHa3FCQUVZN2h1aEhE?=
 =?utf-8?B?UVp4SjUyYk1ZVndoTklSMW92MEV2cVlyNU9lSkhFUGcyYWlkL0RtQWRqdnFw?=
 =?utf-8?B?czN6QzdDWG82TEkrdzAxd2QzRGpiRDh3VkNZT3NHMmVkb2JKb2pnbUY2Z2ZD?=
 =?utf-8?B?dlFpN0h4S3VzQjBHZFBMSGp0OCt2U0t1REhPNG1JOG9aeHBYdG8wNEJWVU9U?=
 =?utf-8?B?b1JDY3F3Uk5ydWlaRVZLUjlnazZYdlVWOUlFdXduNVBxc1BNVDRzWEVXOU9v?=
 =?utf-8?B?L0tDWEY2Y211d0RoQlI3L2s3VVhnQ3EvYVNTZFBaOXdieXExcUNScC9uMGpX?=
 =?utf-8?B?ZUZBVGVDeGZYdEhNSElNb2VLWTlnWWZuTDlFaFZ2aDBlcTRHUEZwdHdZR0Mv?=
 =?utf-8?B?S1Jzd3lYZ2NWRE1WbW96c2tuZnp0ZHlxakUwNm9ndGI0NDN1NUFHOG9lUy8v?=
 =?utf-8?B?Vk14bVpFOU5ZZ2VwSlhCTXNaNC9ycHpKN0dza1pET1hZMEJ4d2JvUm5QdHNZ?=
 =?utf-8?B?cHRVbzh2bXdWbW8ydU16aUJ6aTU2TXhtZmdUditGMTBJcTRtUGhjcUI0bzJI?=
 =?utf-8?B?R0krczRsZlN3R0RLdHdIcWYwclIxTStyN3BQWU9LbG5ZeHFYYXVNME9lRE1D?=
 =?utf-8?B?Z3RCNmFnb3lsck94MnZZczZrdHVvV0l2MVBZUWJ4YXBTRSsxSlV2RkNnSkNG?=
 =?utf-8?B?anpDeVRoOFRMQnBmOUFNbDZHZkFKM3lHeTF6ZHFpWkRyOWI5bkgwdmRtdFdG?=
 =?utf-8?B?SkUvM0xBU1RBZVlHV3RUaVFTVnplYUxQMHF5WDdVb3o3MUt4TXZHZFFFV3Iz?=
 =?utf-8?B?YzNoWlJvWkpUSHlQRk5oQ0pLNkUvZExReDJSU1djNTZSajcvTUlRMXg2Zk4v?=
 =?utf-8?B?VmxvcEFiMzNyYTdiK2xqWUwrSGI3RUhNcmpwdjhFbkh2R21odkU3V0V0ZWhL?=
 =?utf-8?B?WFhTRGhJS1JNWlNWOGdJM0pldmRrNDNZdkNscTF1MDhXOFBrS1V3aWNhdlVW?=
 =?utf-8?B?aFlOSU9qeDlJREVpTnBXbTRTRkRLVm9aRG9CZFhYM3phbkZKMG9yUGpsQnRl?=
 =?utf-8?Q?+7O1AC?=
X-Forefront-Antispam-Report: 
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(376014)(7416014)(36860700013)(921020);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 09:35:50.1434
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 31cd6ce8-faff-4c20-1fdd-08de28183123
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	SN1PEPF0002636C.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB4876
X-Spamd-Bar: ----
X-MailFrom: m-malladi@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PFXXUVJRJZ3GRJ5QLSXLCYVOUWIAJNMR
X-Message-ID-Hash: PFXXUVJRJZ3GRJ5QLSXLCYVOUWIAJNMR
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:01:03 +0000
CC: srk@ti.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [EXTERNAL] [PATCH net-next v2 0/7] net: ethernet: ti: am65-cpsw: add AF_XDP zero copy support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PFXXUVJRJZ3GRJ5QLSXLCYVOUWIAJNMR/>
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
	DATE_IN_PAST(1.00)[3533];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[urldefense.com:url,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,proofpoint.com:url,ti.com:mid,ti.com:email];
	DKIM_TRACE(0.00)[ti.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.947];
	FROM_NEQ_ENVFROM(0.00)[m-malladi@ti.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	REDIRECTOR_URL(0.00)[urldefense.com,proofpoint.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EE751410A0B
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
Um9nZXIgUXVhZHJvcyA8cm9nZXJxQGtlcm5lbC5vcmc+DQo+IC0tLQ0KDQpUaGlzIHNlcmllcyBj
YXVzZXMgbmZzIGJvb3QgZmFpbHVyZSBmb3IgYW02Mmx4eC1ldm06DQpodHRwczovL2dpc3QuZ2l0
aHViLmNvbS9NZWdoYW5hTWFsbGFkaVRJL2RkYTIzMmViZTZjMjQ1NTRlOTMzMDg1NTEzY2U4YjMz
DQoNCkR1ZSB0byBkZXNjcmlwdG9yIGxlYWthZ2UgZHVyaW5nIFJ4IHRlYXJkb3duLiBJIGhhdmUg
ZmFjZWQgc2ltaWxhciANCnByb2JsZW0gaW4gSUNTU0cgYW5kIGEgZml4IHNpbWlsYXIgdG8gdGhp
cyBpcyBuZWVkZWQgZm9yIENQU1cgYXMgd2VsbC4gDQpQbGVhc2UgaW5jb3Jwb3JhdGUgdGhpcyBm
aXggYXMgd2VsbCBpbiB5b3VyIHYzOiANCmh0dHBzOi8vZ2lzdC5naXRodWIuY29tL01lZ2hhbmFN
YWxsYWRpVEkvYzU0NjdlMmE1YzlkNGViZGM1ZTcxZTM3MjBiNjUyNGQNCg0KPiBDaGFuZ2VzIGlu
IHYyOg0KPiAtIFByZXZlbnQgY3Jhc2ggb24gc3lzdGVtcyB3aXRoIDEgb2YgMiBwb3J0cyBkaXNh
YmxlZCBpbiBkZXZpY2UgdHJlZS4gY2hlY2sNCj4gICAgZm9yIHZhbGlkIG5kZXYgYmVmb3JlIHJl
Z2lzdGVyaW5nL3VucmVnaXN0ZXJpbmcgWERQIFJYUS4NCj4gICAgUmVwb3J0ZWQtYnk6IE1lZ2hh
bmEgTWFsbGFkaSA8bS1tYWxsYWRpQHRpLmNvbT4NCj4gLSBSZXRhaW4gcGFnZSBwb29sIG9uIFhE
UCBwcm9ncmFtIGV4Y2hhbmdhZSBzbyB3ZSBkb24ndCBoYXZlIHRvIHJlLWFsbG9hY2F0ZQ0KPiAg
ICBtZW1vcnkuDQo+IC0gRml4IGNsZWFyaW5nIG9mIGlycV9kaXNhYmxlZCBmbGFnIGluIGFtNjVf
Y3Bzd19udXNzX3J4X3BvbGwoKS4NCj4gLSBMaW5rIHRvIHYxOmh0dHBzOi8vdXJsZGVmZW5zZS5j
b20vdjMvX19odHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwNTIwLWFtNjUtIA0KPiBjcHN3
LXhkcC16Yy12MS0wLTQ1NTU4MDI0ZjU2NkBrZXJuZWwub3JnX187ISFHM3ZLISANCj4gU1g0Sjgy
TmZPbl9zZndpelNUWU8tOFczR1J1ZmZGSUh5Q25nTzFKMkNUNEFsZWExOHBJR2lCSTRsNVhLRktW
VWJ4RVNEZ0FFQ1I5ZyQgPGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL2xvcmUu
a2VybmVsLm9yZy9yLzIwMjUwNTIwLWFtNjUtY3Bzdy14ZHAtemMtdjEtMC00NTU1ODAyNGY1NjZA
a2VybmVsLm9yZ19fOyEhRzN2SyFTWDRKODJOZk9uX3Nmd2l6U1RZTy04VzNHUnVmZkZJSHlDbmdP
MUoyQ1Q0QWxlYTE4cElHaUJJNGw1WEtGS1ZVYnhFU0RnQUVDUjlnJD4NCj4gDQo+IC0tLQ0KPiBS
b2dlciBRdWFkcm9zICg3KToNCj4gICAgICAgIG5ldDogZXRoZXJuZXQ6IHRpOiBhbTY1LWNwc3c6
IGZpeCBCUEYgUHJvZ3JhbSBjaGFuZ2Ugb24gbXVsdGktcG9ydCBDUFNXDQo+ICAgICAgICBuZXQ6
IGV0aGVybmV0OiB0aTogYW02NS1jcHN3OiBSZXRhaW4gcGFnZV9wb29sIG9uIFhEUCBwcm9ncmFt
IGV4Y2hhbmdlDQo+ICAgICAgICBuZXQ6IGV0aGVybmV0OiB0aTogYW02NS1jcHN3OiBhZGQgWFNL
IHBvb2wgaGVscGVycw0KPiAgICAgICAgbmV0OiBldGhlcm5ldDogdGk6IGFtNjUtY3BzdzogQWRk
IEFGX1hEUCB6ZXJvIGNvcHkgZm9yIFJYDQo+ICAgICAgICBuZXQ6IGV0aGVybmV0OiB0aTogYW02
NS1jcHN3OiBBZGQgQUZfWERQIHplcm8gY29weSBmb3IgVFgNCj4gICAgICAgIG5ldDogZXRoZXJu
ZXQ6IHRpOiBhbTY1LWNwc3c6IGVuYWJsZSB6ZXJvIGNvcHkgaW4gWERQIGZlYXR1cmVzDQo+ICAg
ICAgICBuZXQ6IGV0aGVybmV0OiB0aTogYW02NS1jcHN3OiBGaXggY2xlYXJpbmcgb2YgaXJxX2Rp
c2FibGVkIGZsYWcgaW4gcnhfcG9sbA0KPiANCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC90aS9N
YWtlZmlsZSAgICAgICAgIHwgICAyICstDQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkvYW02
NS1jcHN3LW51c3MuYyB8IDU4MyArKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tDQo+ICAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkvYW02NS1jcHN3LW51c3MuaCB8ICAzNyArLQ0KPiAgIGRy
aXZlcnMvbmV0L2V0aGVybmV0L3RpL2FtNjUtY3Bzdy14ZHAuYyAgfCAxNTUgKysrKysrKysNCj4g
ICA0IGZpbGVzIGNoYW5nZWQsIDY5MiBpbnNlcnRpb25zKCspLCA4NSBkZWxldGlvbnMoLSkNCj4g
LS0tDQo+IGJhc2UtY29tbWl0OiBhMGMzYWVmYjA4Y2Q4MTg2NGIxN2MyM2MyNWIzODhkYmE5MGI5
ZGFkDQo+IGNoYW5nZS1pZDogMjAyNTAyMjUtYW02NS1jcHN3LXhkcC16Yy0yYWY5ZTRiZTEzNTYN
Cj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gLS0gDQo+IFJvZ2VyIFF1YWRyb3MgPHJvZ2VycUBrZXJu
ZWwub3JnPg0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
