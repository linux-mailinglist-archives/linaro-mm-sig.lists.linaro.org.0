Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 87PnOLhwVmpk5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:24:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADE37575F4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:24:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=qIt4bUPg;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A1C040A4C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:24:07 +0000 (UTC)
Received: from DM5PR21CU001.outbound.protection.outlook.com (mail-centralusazon11011023.outbound.protection.outlook.com [52.101.62.23])
	by lists.linaro.org (Postfix) with ESMTPS id A9DB13F962
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Jul 2026 15:41:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PCc+mBATuUDs5hYV5E9/OQhxbX2v9TRPGQUMwhcw2WlFqOxM0NBT6BoNNxMwAfkhvlQbrTLIbqSMpDGfg9vkWfKTLrTAWLocJ5lwgDoIwzCm0sWWCecTSt+tkfX+OfFPrG/C6Jr8imgM/S44NgXrupgKLrA86/MoVOg5FaF2ec3MQs0DHhN5yBYPdBPE0m06f7bn1xAKjwVb6UMIuidZax+254rMEWW6tpVvZLp3YqQaDl10UQKEHWuVaC/TJf/z+/yEaX+1MINp19jihtclZImPcc8qc9mK8JIPMG2q+yP+slSl1tLxNlbWtZ5FgvBHuqyxsNTSNpzUc12o3jmE2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NLX6MDwdA+kobNNZmcQooNfVtQmTIPTY44/xXQBOPI8=;
 b=o7FBh9LtQLKkfrQ+3IpKKArG7rvqDcSpfu2a4WSSdpditXxkRB3xX+e2xhFU5wqVhu9hTUJdbja5rOmT9IU+tal3nNzMfxK5esb4Aj8uYj8kTqCk/AAcc/yEodLzGwLDEC8384cQRMV9VYSmcAU/VN19L806pjOBbKAz4lDZojBmVYioH8BHQwW6RfW74R18IyiLPJ3Is4SCS/RLGOclILBBabzVK849V6ijIbLSCL4JzksZLydvmdIDpfCy7QpEQGaHegtgwELUyiKZF5GP5mvcwzXymkt7+s/lvS/8TBFFkdILPtW0+6K1aYMO2s2ayCgve+5yqo5TligpMjEPIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=gmail.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NLX6MDwdA+kobNNZmcQooNfVtQmTIPTY44/xXQBOPI8=;
 b=qIt4bUPgBNUlvV6vFmBkLQ21BklDmBh+ME6XXLxXTN/r6QAJCnjRxXaUrAI2rqvxFCltYC965Fs04CH+li1cBfhedM0kBtJg9fJxHEJY3Zl325oiyqFlENNo8a5l2FVxELzW/mr/IclOkoCyKjQHjCJn9ziAQcCIEBr2AiEFL5Y=
Received: from SJ0PR13CA0233.namprd13.prod.outlook.com (2603:10b6:a03:2c1::28)
 by CH3PR12MB8996.namprd12.prod.outlook.com (2603:10b6:610:170::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Tue, 7 Jul
 2026 15:41:02 +0000
Received: from SJ1PEPF00001CE2.namprd05.prod.outlook.com
 (2603:10b6:a03:2c1:cafe::48) by SJ0PR13CA0233.outlook.office365.com
 (2603:10b6:a03:2c1::28) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.202.9 via Frontend Transport; Tue, 7
 Jul 2026 15:41:01 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb08.amd.com; pr=C
Received: from satlexmb08.amd.com (165.204.84.17) by
 SJ1PEPF00001CE2.mail.protection.outlook.com (10.167.242.10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Tue, 7 Jul 2026 15:41:01 +0000
Received: from satlexmb07.amd.com (10.181.42.216) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Tue, 7 Jul
 2026 10:41:01 -0500
Received: from [172.19.70.117] (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server id 15.2.2562.41 via Frontend
 Transport; Tue, 7 Jul 2026 10:41:00 -0500
Message-ID: <87e4fe2b-e1df-48a3-8ffc-8e08c4b785a5@amd.com>
Date: Tue, 7 Jul 2026 08:41:00 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
	<sumit.semwal@linaro.org>, <linux-media@vger.kernel.org>,
	<dri-devel@lists.freedesktop.org>, <linaro-mm-sig@lists.linaro.org>,
	<lizhi.hou@amd.com>, <Mario.Limonciello@amd.com>, <airlied@gmail.com>,
	<karol.wachowski@linux.intel.com>
References: <20260630080112.1117341-1-christian.koenig@amd.com>
Content-Language: en-US
From: Max Zhen <max.zhen@amd.com>
In-Reply-To: <20260630080112.1117341-1-christian.koenig@amd.com>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CE2:EE_|CH3PR12MB8996:EE_
X-MS-Office365-Filtering-Correlation-Id: 3fe14c8b-3833-4ef1-eb71-08dedc3e2616
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|23010399003|82310400026|1800799024|36860700016|6133799003|56012099006|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	pDgybSGLdqpTPhSJIA6pOb25cFXnLrM8TYrP6uYWmSKmILR/y5q15TEKTGP4rICSkLGOra8CnUzTyn+6xWd2bgb0DoZbuHkuKGs3T4lPg493DFxovWss4M0Fn58w/G1nj8+C67+7VuBm4dQwSnVchHMm57zaF9l8jEopBkBvKWrHY5+Yk6x+u5Ogj32puvGPexsRYS7ujoJJIxvWsFgn/IONI882xV3paFQ76LIEOEaih+DZdpN++rSr0RcL0FH8roLTfOtuPnF/IMKEd+8d3fgQmFYDHPakcgkFqdjRPcso3xf2Rktd9vJ0RSRL7zuuUhuSVsuguuZsvW8zTVcREymeKnbvHaSR4phUw0QaltrEtKU/eV1FrqnX3DMDDsldA+R34b5X4UmKWSzL4emDca7ZqrzOE24mXHvLSkhuehchZ0gL+wK86FSux+QKAcQNRDGhkdZGA+3fTsA0xyeEn7OdUd7i8wRZ8aJkVxoD0FgxhyINUULI2kXy3dzpIGRC5axKZkaY7An0/o/5PaB1oaLSh8eQzeTF2RdGa9IjZpzJ5E8ZyjaD11ttZnIvHZ2q0p7L0xZJBB/U7BUuXae0wA+hBTZOknF+DeLcz+npVIMUeTVCdyBpg+/Hl+hbg4zf47r7GwhMilxlMkgatBcjdsONebbbAHHUk7xljHD6aVgbZMcFIpVG28PTk8IfcPYi5koDFXsu/fCWxUb45byVHw==
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb08.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(23010399003)(82310400026)(1800799024)(36860700016)(6133799003)(56012099006)(11063799006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	IfCLzLSxvJV3+8IPGQqGF15fQsDYegcEjaF2w7kMD60x+AF85FPkXi6ih3PRzFSY22iXoyU5mggqwt3NipM71bvOW+Sf6lbvJTuK5eunImUsRXP5AIJwBIH6vRBvglyw4CerFxsg0jubmPABzGvyeYg8MiKiW/ItqgsmWJQXuB88O4vZ9HGxkBtJN09vxYrCIsInOo7+3tLLMlH0fPCLHSFxZPdn8f9ZU9Xetd9NBu79yf7baMbVjD5zSdgEoBmeJLMDd0urswApDYxRH91TCEbD4Hc9xDFovld5R8rCnshOOmLC9gI/ww3GX2q9KAKXfYdAy4/nrDXPnPjqF4e5VNAfIjpssYcKMes3WgcnDwPwpP030eKT9H8Jh32T5qRtgsZYqZV9tUXvwuijt05Wy37Ck4hC4J3wYZ3LaxDmX/CNzn/fezxmFtGbK9Do1b8S
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2026 15:41:01.7657
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fe14c8b-3833-4ef1-eb71-08dedc3e2616
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb08.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	SJ1PEPF00001CE2.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8996
X-Spamd-Bar: -----
X-MailFrom: Max.Zhen@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3HMPODCIBMSUVDFXFCJA665SVFROJQJH
X-Message-ID-Hash: 3HMPODCIBMSUVDFXFCJA665SVFROJQJH
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:18:32 +0000
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: explicitely forbid exposing pages from get_user_pages()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3HMPODCIBMSUVDFXFCJA665SVFROJQJH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [5.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DATE_IN_PAST(1.00)[169];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ckoenig.leichtzumerken@gmail.com,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:lizhi.hou@amd.com,m:Mario.Limonciello@amd.com,m:airlied@gmail.com,m:karol.wachowski@linux.intel.com,m:christian.koenig@amd.com,m:ckoenigleichtzumerken@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,amd.com,linux.intel.com];
	FORGED_SENDER(0.00)[max.zhen@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:from_mime,amd.com:email,amd.com:mid,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[max.zhen@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7ADE37575F4

DQoNCk9uIDYvMzAvMjAyNiBUdWUgMDE6MDEsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+IFdl
IHJlY2VudGx5IGhhZCBhbm90aGVyIGluY2lkZW50IHdoZXJlIHR3byBkcml2ZXJzIHB1dCBwYWdl
cyB0aGV5IGdvdCBmcm9tDQo+IGdldF91c2VyX3BhZ2VzKCkgaW50byBhIERNQS1idWYgYW5kIGNh
dXNlIHF1aXRlIGEgbnVtYmVyIG9mIHByb2JsZW1zLg0KPiANCj4gRXhwbGljaXRlbHkgZG9jdW1l
bnQgdGhhdCB0aGlzIGlzIG5vdCBzb21ldGhpbmcgZXhwb3J0ZXJzIGNhbiBkby4NCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4N
ClJldmlld2VkLWJ5OiBNYXggWmhlbiA8bWF4LnpoZW5AYW1kLmNvbT4NCj4gLS0tDQo+ICAgZHJp
dmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDggKysrKysrKysNCj4gICAxIGZpbGUgY2hhbmdlZCwg
OCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gaW5kZXggNzFmMzc1NDRhNWM2Li5h
YTVhZjRmNDM5YzIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4g
KysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiBAQCAtNjg1LDYgKzY4NSwxNCBAQCBz
dGF0aWMgc3RydWN0IGZpbGUgKmRtYV9idWZfZ2V0ZmlsZShzaXplX3Qgc2l6ZSwgaW50IGZsYWdz
KQ0KPiAgICAqDQo+ICAgICogRm9yIHRoZSBkZXRhaWxlZCBzZW1hbnRpY3MgZXhwb3J0ZXJzIGFy
ZSBleHBlY3RlZCB0byBpbXBsZW1lbnQgc2VlDQo+ICAgICogJmRtYV9idWZfb3BzLg0KPiArICoN
Cj4gKyAqIEl0IGlzIGV4cGxpY2l0ZWx5IGZvcmJpZGRlbiBmb3IgZXhwb3J0ZXJzIHRvIGV4cG9z
ZSBidWZmZXJzIHRoZXkgZG9uJ3QgIm93biINCj4gKyAqIGFzIERNQS1idWYuIFRoaXMgaW5jbHVk
ZXMgcGFnZXMgYWNxdWlyZWQgYnkgZ2V0X3VzZXJfcGFnZXMoKSBvciBvdGhlciBpbXBvcnQNCj4g
KyAqIG1lY2hhbmlzbS4gTm90IGZvbGxvd2luZyB0aGlzIHJ1bGUgY2FuIGNyZWF0ZSBudW1lcm91
cyBzZWN1cml0eSBwcm9ibGVtcy4NCj4gKyAqDQo+ICsgKiBJdCBpcyBhbHNvIHN0cm9uZ2x5IGRp
c2NvdXJhZ2VkIHRvIGV4cG9zZSB0aGUgc2FtZSBiYWNraW5nIHN0b3JlIHRocm91Z2gNCj4gKyAq
IG11bHRpcGxlIERNQS1idWZzIGF0IHRoZSBzYW1lIHRpbWUuIFRoaXMgZXZlbnR1YWxseSBjcmVh
dGVzIGFsaWFzaW5nIGFuZA0KPiArICogY2FjaGUgY29oZXJlbmN5IHByb2JsZW1zIHdoaWNoIGFy
ZSBleHRyZW1lbHkgaGFyZCB0byBkZWJ1ZyBhbmQgZml4Lg0KPiAgICAqLw0KPiAgIA0KPiAgIC8q
Kg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
