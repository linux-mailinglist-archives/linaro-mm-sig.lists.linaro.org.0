Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id a9meMnEvTWomwQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 07 Jul 2026 18:55:13 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC6071E083
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 07 Jul 2026 18:55:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=wEuLrrNL;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 486833F757
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Jul 2026 16:55:12 +0000 (UTC)
Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazon11010039.outbound.protection.outlook.com [52.101.85.39])
	by lists.linaro.org (Postfix) with ESMTPS id F15123F757
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Jul 2026 16:55:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sp3VWBiH9T4l0Vd8g2dM0PDPTAe1ikR1zGdYMIoygBDU8iK1+UdJRuOQFMgAuYTBpC1cX7IyPPsjXGT+HSTebL609U/UURTADkN6umnGya4ofmZxPncSkdfidGP6ogQpceVwqm+0J4V1O/PFFAv85b6TfPML8qdhxdKTpyycLjzc6vaI1VNHBOjg5F3geAoUAGvnDM3OtS3/kLywT1BOk2BJvWhizz1UFMRZrAtQuk3A/EEFGNIGvsaIWQsQ1MIsPeQvlSQjYHESQSP1l2bn1wbTzvCHHBPBmt9QTVaa5eXyeyD8ZrNRr+8Zbnb0SGDLQ3KPvSDQdwl/umR4HZmqdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zrsmoaFiWgfi3sqRcH4SzCXCQl1bYZoTRTy0NKeE9d4=;
 b=h2o0a1xg6n6hDbcSvQPPcOQjwXg0WBUhXkwyAxICXDFJ6iCDOnEy3tEFBR5NGuJiT5NTfCXba87/Le/8Ube1rPl6PubvrrCEWcuXn2wKmIisJTZUFjJ1E3nwX0tAXvcY8Hd6+pRlDCXs1c73thzuH7TBfQp1x9yKBm75ifASYOhKRv0SaJJs3F/2LqgaLbgNS6wSW6JnkXb3H2UasJ+F57IlbZ3WKrfLn/hFSAPZO8fOCR5q9PB1YWjSqrSJDmxOIIV2PzcUnNMSA+3KOncVo64ve1EkUhSescEwnHCdPjIhp4MA/zWxQy4CZ5uNZhA+tG2/huN+MIuBBLsc/xRu9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=gmail.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zrsmoaFiWgfi3sqRcH4SzCXCQl1bYZoTRTy0NKeE9d4=;
 b=wEuLrrNLA5IbritNRxMNyb7k7/2a45qI0Sy7V9uDJWil0+DtvwNLJCd7xfelCZms8WqkjFDBtj15VlEFVqm6UCy9Elble/0fxrHz/5GIDXOs+/6X7/AS3I8lSMTzi4BIcV+fR36kukamkkwA3ZO0n4Cb25lvL15v2ZvJlezwYOQ=
Received: from SJ0PR03CA0162.namprd03.prod.outlook.com (2603:10b6:a03:338::17)
 by BY5PR12MB4242.namprd12.prod.outlook.com (2603:10b6:a03:203::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.14; Tue, 7 Jul
 2026 16:54:59 +0000
Received: from CO1PEPF00012E82.namprd03.prod.outlook.com
 (2603:10b6:a03:338:cafe::16) by SJ0PR03CA0162.outlook.office365.com
 (2603:10b6:a03:338::17) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.181.8 via Frontend Transport; Tue, 7
 Jul 2026 16:54:59 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 CO1PEPF00012E82.mail.protection.outlook.com (10.167.249.57) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Tue, 7 Jul 2026 16:54:58 +0000
Received: from Satlexmb09.amd.com (10.181.42.218) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Tue, 7 Jul
 2026 11:54:57 -0500
Received: from satlexmb08.amd.com (10.181.42.217) by satlexmb09.amd.com
 (10.181.42.218) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Tue, 7 Jul
 2026 09:54:57 -0700
Received: from [172.19.71.207] (10.180.168.240) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server id 15.2.2562.41 via Frontend
 Transport; Tue, 7 Jul 2026 11:54:56 -0500
Message-ID: <8dcdd7f2-dd66-d875-4551-7a35cf495520@amd.com>
Date: Tue, 7 Jul 2026 09:54:56 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
	<sumit.semwal@linaro.org>, <linux-media@vger.kernel.org>,
	<dri-devel@lists.freedesktop.org>, <linaro-mm-sig@lists.linaro.org>,
	<Max.Zhen@amd.com>, <Mario.Limonciello@amd.com>, <airlied@gmail.com>,
	<karol.wachowski@linux.intel.com>
References: <20260630080112.1117341-1-christian.koenig@amd.com>
From: Lizhi Hou <lizhi.hou@amd.com>
In-Reply-To: <20260630080112.1117341-1-christian.koenig@amd.com>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF00012E82:EE_|BY5PR12MB4242:EE_
X-MS-Office365-Filtering-Correlation-Id: 01097a04-5a55-4109-943e-08dedc487ad1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|23010399003|36860700016|1800799024|82310400026|376014|22082099003|18002099003|11063799006|56012099006|6133799003;
X-Microsoft-Antispam-Message-Info: 
	iC7bqjh8HXXD44OekFX4EClZhSHY2fkivkE4/K3utqdwPSLpbdYCYnA/pD/SZcPmzhYw8b7VLvtPCv/u+YFvJt+FBu9pZEL/fuOogPPyPUGn66tNNxxGm+p9MC0ZgrDkSvUq4dm1loZCaidXJkprWBlSBXzZ30qVJ2lCoCn3WaH4ENBnhJ9j2HeNQeOkpn98gKQc/9+XIb06YPFLLVKoFhzbn7bvmqSaGhx2bEVthNeS7TSHinKinjQrxBcwcIFAGI+JJe9G+Js55GL3Bo0eujysblFKdjT/tEWveW3FHNAHeMFT3UdlQcEMioXLhzt7frvnHz2Wu7Hupj+d3Orn0Bg/tshqxWiX6K9//z65EX+Hq6tFrdwmcq055hxVCJYkyGtXN1pHdc6Fz4g8ejL1BUhhalCEyQYhvcP5WPBF1h5+vyXhNo1DO+8puTYOmaKUacAGruV/W0tHrtWrEU37b02Idb6b7hT05cIOXdB9ETi2tFs3Wz+3SG/3v8XRT4oGYuYjn6w2pzoTl5/hcT8jLWSYMFcORozDbsXtIw21LU+CAFccW7GdRwFR49aJvaDgI2+FWHxIS8C+zaRF+y0YaW1CnK8+KGQbffcMsUkyCt5NWo/ocp0/8yEPOJT3DvrQDZS/6eaF0B9x2JpfvqAkBj7oIPqkwq0l3F0E6ZnE9uWuQKkzLXytNzjnFlmazjQdBwz1RXiV7zcwE8J4sVtHdw==
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb07.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(23010399003)(36860700016)(1800799024)(82310400026)(376014)(22082099003)(18002099003)(11063799006)(56012099006)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	XbPmcbT1vnszd+2rjN76v2vylkgF8iMGX7pCbadarYU5dnHUQVRIXjHbYYZwwlDvwh/blXw6Z3tzaLD2RuA1WrAwtj9zVhl2sIEs9DZRxQ5NqoQT3RvnIRy+zLE+Zsa5eP5HrpHmNiIbohT8OAIz541VGsF2abjp8uR3dey+MwQlwDN1poWe6rbIqVYWELQpyWKmnaKV91pbbcaJ8Ge8D7B5alsuTRF4HDC4fo3EKxrs1H7KhEpoiD2FGT2f89nUCCPpQ7t31K1Tr+bQf7ekb16tPlOv0xwQygMK7ZVXFVfMfq2K29B2gZyv2+kOvVULJ7J9b7ELTN2i8XQ17Jemtl7EHOswgYGuyrxEFyV2YVpqeS7BVKGM/aiMtsl1yZRlz2Di2bWVKUgCKdxGxnCCwRJxx5mXBRvSkCUIbjvUPuwFjwyOWR49mYpGhO3/ktIo
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2026 16:54:58.8676
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 01097a04-5a55-4109-943e-08dedc487ad1
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	CO1PEPF00012E82.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4242
X-Spamd-Bar: -----
Message-ID-Hash: SYULYSGLQD4R5UKDZ64O2ZLMCKXOB73L
X-Message-ID-Hash: SYULYSGLQD4R5UKDZ64O2ZLMCKXOB73L
X-MailFrom: lizhi.hou@amd.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: explicitely forbid exposing pages from get_user_pages()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SYULYSGLQD4R5UKDZ64O2ZLMCKXOB73L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ckoenig.leichtzumerken@gmail.com,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:Max.Zhen@amd.com,m:Mario.Limonciello@amd.com,m:airlied@gmail.com,m:karol.wachowski@linux.intel.com,m:christian.koenig@amd.com,m:ckoenigleichtzumerken@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,amd.com,linux.intel.com];
	FORGED_SENDER(0.00)[lizhi.hou@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:from_mime,amd.com:email,amd.com:mid,linaro.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lizhi.hou@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3DC6071E083

DQpPbiA2LzMwLzI2IDAxOjAxLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBXZSByZWNlbnRs
eSBoYWQgYW5vdGhlciBpbmNpZGVudCB3aGVyZSB0d28gZHJpdmVycyBwdXQgcGFnZXMgdGhleSBn
b3QgZnJvbQ0KPiBnZXRfdXNlcl9wYWdlcygpIGludG8gYSBETUEtYnVmIGFuZCBjYXVzZSBxdWl0
ZSBhIG51bWJlciBvZiBwcm9ibGVtcy4NCj4NCj4gRXhwbGljaXRlbHkgZG9jdW1lbnQgdGhhdCB0
aGlzIGlzIG5vdCBzb21ldGhpbmcgZXhwb3J0ZXJzIGNhbiBkby4NCj4NCj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiAtLS0NCj4g
ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgOCArKysrKysrKw0KPiAgIDEgZmlsZSBjaGFu
Z2VkLCA4IGluc2VydGlvbnMoKykNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+IGluZGV4IDcxZjM3NTQ0YTVj
Ni4uYWE1YWY0ZjQzOWMyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5j
DQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gQEAgLTY4NSw2ICs2ODUsMTQg
QEAgc3RhdGljIHN0cnVjdCBmaWxlICpkbWFfYnVmX2dldGZpbGUoc2l6ZV90IHNpemUsIGludCBm
bGFncykNCj4gICAgKg0KPiAgICAqIEZvciB0aGUgZGV0YWlsZWQgc2VtYW50aWNzIGV4cG9ydGVy
cyBhcmUgZXhwZWN0ZWQgdG8gaW1wbGVtZW50IHNlZQ0KPiAgICAqICZkbWFfYnVmX29wcy4NCj4g
KyAqDQo+ICsgKiBJdCBpcyBleHBsaWNpdGVseSBmb3JiaWRkZW4gZm9yIGV4cG9ydGVycyB0byBl
eHBvc2UgYnVmZmVycyB0aGV5IGRvbid0ICJvd24iDQo+ICsgKiBhcyBETUEtYnVmLiBUaGlzIGlu
Y2x1ZGVzIHBhZ2VzIGFjcXVpcmVkIGJ5IGdldF91c2VyX3BhZ2VzKCkgb3Igb3RoZXIgaW1wb3J0
DQo+ICsgKiBtZWNoYW5pc20uIE5vdCBmb2xsb3dpbmcgdGhpcyBydWxlIGNhbiBjcmVhdGUgbnVt
ZXJvdXMgc2VjdXJpdHkgcHJvYmxlbXMuDQo+ICsgKg0KPiArICogSXQgaXMgYWxzbyBzdHJvbmds
eSBkaXNjb3VyYWdlZCB0byBleHBvc2UgdGhlIHNhbWUgYmFja2luZyBzdG9yZSB0aHJvdWdoDQo+
ICsgKiBtdWx0aXBsZSBETUEtYnVmcyBhdCB0aGUgc2FtZSB0aW1lLiBUaGlzIGV2ZW50dWFsbHkg
Y3JlYXRlcyBhbGlhc2luZyBhbmQNCj4gKyAqIGNhY2hlIGNvaGVyZW5jeSBwcm9ibGVtcyB3aGlj
aCBhcmUgZXh0cmVtZWx5IGhhcmQgdG8gZGVidWcgYW5kIGZpeC4NCj4gICAgKi8NClJldmlld2Vk
LWJ5OiBMaXpoaSBIb3UgPGxpemhpLmhvdUBhbWQuY29tPg0KPiAgIA0KPiAgIC8qKg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
