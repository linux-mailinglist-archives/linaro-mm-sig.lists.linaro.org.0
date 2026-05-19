Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CInGLeHDGo1iwUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 17:54:31 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C92CC581CC1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 17:54:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 511EE40963
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 15:54:29 +0000 (UTC)
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010011.outbound.protection.outlook.com [52.101.61.11])
	by lists.linaro.org (Postfix) with ESMTPS id 8BC2A3F829
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 15:54:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=KwHGkTQz;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of lizhi.hou@amd.com designates 52.101.61.11 as permitted sender) smtp.mailfrom=lizhi.hou@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xx9Q39dOSMW9aA+lqI/Z/hehTJ2YVR14MlP5BFM0cfvIjCREmDwwd6jNpc7W4voHMzVyfE1gUr/bQiPCIL/9UWT4A554EIgm4Hf/WQKJFrkDnKwTaoSK9zBH+Voh1XjUCGlqBbMr12YFFQrkqrw+ttbKWudz5guC8kF8BQhtR8i2l2Oels1r4csN4dPPG31hTWzAU2rDS/w2sO52u4P/BVkc7Lj3MFOazB+M0HiQ1u8rFeM9rlLiKoWVMX9H8BQeVrmhIjFor8hmt11boXu0TTSEAGlGqqncfCZMpRXzB8AYjBKN2M9fyxKtaeq01QcVpPlbwxAFplyVNgmQH95L+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UIrj++g2kfnbfhGo7Mp+4Y8PdnDkPcKwL04nGUMjCXo=;
 b=Y4lfdKxijekDadeu26hN/YDbLVfo/INDMvCxp24XIkJ91TQxMjn8Gjoo8V9PAi0SgavGQGVGmpb5YtAq3SXmhx92IMs5w40Pc9iQ/nmgcsEzXHG7JvSqP0YhUmuC8RZQ0MI3HJTbh+QyljijZk+p2FFwnAJ09uSZoTdIdcq2y77eOuLQMSWHF9pRv0KrZ66mLlgowDq4ppTw4jLm8kjLpeBynz66Mp7ZQFcDS6sbqsbQ1bog17yXgQEpEIR1WLlcOVmehMhPmROU6ECtlzZ5cr1VFxyTFpexY8zdarfiiC2LtxMfaPpShjqfK4EtF2OMYYAIN//EN84JVqhMjG5SwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UIrj++g2kfnbfhGo7Mp+4Y8PdnDkPcKwL04nGUMjCXo=;
 b=KwHGkTQz14eEUAftHbWDzX48J1C3bu6qbs1KCG7jWm4uEVhZZHrOvYHBtur/UwoYob03K/RFlWJsCCTZFiMg//dkB4q0FmOtvBHz+K5va/jtQ10U9Qbf+tzS1iSocBpoDqyOnbUgHmIhkHe1m4lvc8nQmAaf0iazmDzLUG71Wvk=
Received: from BN9PR03CA0312.namprd03.prod.outlook.com (2603:10b6:408:112::17)
 by LV5PR12MB9777.namprd12.prod.outlook.com (2603:10b6:408:2b7::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Tue, 19 May
 2026 15:54:10 +0000
Received: from BN3PEPF0000B074.namprd04.prod.outlook.com
 (2603:10b6:408:112:cafe::9) by BN9PR03CA0312.outlook.office365.com
 (2603:10b6:408:112::17) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.25.24 via Frontend Transport; Tue, 19
 May 2026 15:54:10 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 BN3PEPF0000B074.mail.protection.outlook.com (10.167.243.119) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.48.11 via Frontend Transport; Tue, 19 May 2026 15:54:10 +0000
Received: from Satlexmb09.amd.com (10.181.42.218) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Tue, 19 May
 2026 10:54:10 -0500
Received: from satlexmb07.amd.com (10.181.42.216) by satlexmb09.amd.com
 (10.181.42.218) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Tue, 19 May
 2026 08:54:09 -0700
Received: from [172.19.71.207] (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server id 15.2.2562.41 via Frontend
 Transport; Tue, 19 May 2026 10:54:09 -0500
Message-ID: <a8fb9f0b-0cad-e4ea-c778-b87338ce8bf5@amd.com>
Date: Tue, 19 May 2026 08:54:08 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
	<ogabbay@kernel.org>, <quic_jhugo@quicinc.com>, <mario.limonciello@amd.com>,
	<karol.wachowski@linux.intel.com>
References: <20260518155706.937461-1-lizhi.hou@amd.com>
 <a83bfea0-7d3a-40cb-a437-5be09d59660b@amd.com>
From: Lizhi Hou <lizhi.hou@amd.com>
In-Reply-To: <a83bfea0-7d3a-40cb-a437-5be09d59660b@amd.com>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN3PEPF0000B074:EE_|LV5PR12MB9777:EE_
X-MS-Office365-Filtering-Correlation-Id: c008501a-7e9d-46f8-bc0b-08deb5beddd4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|376014|36860700016|1800799024|4143699003|56012099003|18002099003|11063799006|22082099003;
X-Microsoft-Antispam-Message-Info: 
	kUY0jo0Vg7UTzI2WxM5LibGLWzAsCVetKTqjR+MktL/NklGEIuceRoYxxzY2iyAY4tUN69qeJS4h6dnRW6jut1tfazv5YgjiY0quiSCqoEPeEMJzyrXIEz9ORgiTcBIhHpiUeOXoueXyK6x7T3yK3TvrP7zwJXlRRnfygIt34YbQ7+uNKrGoUwg4mQZSeRCfLhRLbLP+IpYWji75HD2AN5BLjd5oISjEPg4cBEQl+ie73M0nRwX7bHB/Im/w7BKWnN12xfCqg+JnkW5qDTnnRlgugyJB2YLdEFIDkGjatkape4A6A5LFeZguAm5qAQB6xJhvqv4JMHpbWHiOA7UyoM2j+8hHLUZJ7cMHn4NTV2mpfQIlzROynHJ6mTb/n/rDFG6RBTruHBnkRzFna9aAQG8oDG4j036ax6mSyy/rZHJB3MEN3nVFdENkEz09csH2C0vfYz/Sq/5Zvgxiq4fn9abLIE33Ej+HZRauY8x7BnlD6bYhyF6FkkghyAxI+f+EU9d4GmE18QfKthfs4bwC+m8g3Gb55UjOP49JBX62MszM+ykUvwtVRVbn71FYCurQkfK4HCBBT4JeHJn2ly75h8dQgJHvdx6AOeMapV0ZhFzO3WdTXwbKy+x5i4huf4wKfuFj8+zjnEHU638zfHdGZ2AY4pjt/TCbB4TcXo+DiOAYRNJ4q7hNPZIqB8hX8w9samigvNObvCdJZnDLPk2UOXRSnSYHg6v7VvGCoKZF5Dg=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb07.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700016)(1800799024)(4143699003)(56012099003)(18002099003)(11063799006)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	snNAx22568PvRCXBRIXyT35N46+mZC67GZW7DnyWSG2ZGsBAsG+vgQEz8BtfFbBBcdN99qs9UwVSUZagSd6Nzg6nmrnpVt7b+Nz5uGMnpy9DgjKsoB8Et+J1L3Scs94I/2LNZNuwc2Cvjbqo8ef2F6mBtybGj2RFzWi4DQ2NWmORHc7KxU4y2I8cH19kSH6B4FQy7EXnhyzXYlph+fZKorYjWJcloexcogj5i0FwfaUwbXk3Or6IoNg6AITezSau8nIs/PrFHIs0Jyh069iItCZYYc9IjZGICcFQg9zXBGhNtxyu6+HlYmYYWU6uXwZsJrlJGwSL7DdclzlNqs24JaVBD2+sPRUid04N126/iHOAYO3QYO88wLbT2G/y/X0ZkNGyR+ctKAqqh5cZF0u3y89pQQ+cYv0/XkuYc9NQOG3KjSGhjl0RjlkGV1jOlRch
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2026 15:54:10.2882
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c008501a-7e9d-46f8-bc0b-08deb5beddd4
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	BN3PEPF0000B074.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV5PR12MB9777
X-Spamd-Bar: ---
Message-ID-Hash: SE2U4UYHFF4VLT45BUFW2YNC2UUYHQ2T
X-Message-ID-Hash: SE2U4UYHFF4VLT45BUFW2YNC2UUYHQ2T
X-MailFrom: lizhi.hou@amd.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, simona@ffwll.ch, max.zhen@amd.com, sonal.santan@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V2] accel/amdxdna: Remove mmap and export support for ubuf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SE2U4UYHFF4VLT45BUFW2YNC2UUYHQ2T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
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
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,linaro.org:email];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lizhi.hou@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[amd.com:-]
X-Rspamd-Queue-Id: C92CC581CC1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

QXBwbGllZCB0byBkcm0tbWlzYy1maXhlcw0KDQpPbiA1LzE4LzI2IDIzOjQyLCBDaHJpc3RpYW4g
S8O2bmlnIHdyb3RlOg0KPiBPbiA1LzE4LzI2IDE3OjU3LCBMaXpoaSBIb3Ugd3JvdGU6DQo+PiBV
YnVmIHBhZ2VzIHNob3VsZCBub3QgYmUgbW1hcGVkIG9yIGV4cG9ydGVkLiBSZW1vdmUgdGhlIHVi
dWYgbW1hcCBjYWxsYmFjaw0KPj4gYW5kIHJldHVybiAtRU9QTk9UU1VQUCB3aGVuIGV4cG9ydGlu
ZyB1YnVmIG9iamVjdHMuDQo+Pg0KPj4gdWJ1ZiB2bWFwIGlzIGFsc28gcmVtb3ZlZCBmb3IgdGhl
cmUgaXMgbm90IGEgcmVhbCB1c2UgY2FzZSB5ZXQuDQo+Pg0KPj4gRml4ZXM6IGJkNzJkNGFjZGEx
MCAoImFjY2VsL2FtZHhkbmE6IFN1cHBvcnQgdXNlciBzcGFjZSBhbGxvY2F0ZWQgYnVmZmVyIikN
Cj4+IENjOiBDaHJpc3RpYW4gS29lbmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+PiBT
aWduZWQtb2ZmLWJ5OiBMaXpoaSBIb3UgPGxpemhpLmhvdUBhbWQuY29tPg0KPiBSZXZpZXdlZC1i
eTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPg0KPj4gLS0t
DQo+PiB2MjoNCj4+ICAgIFJlbW92ZSBkZWFkIGNvZGUgYW1keGRuYV91YnVmX3ZtX29wcyBzdHJ1
Y3R1cmUgYW5kIGFtZHhkbmFfdWJ1Zl92bV9mYXVsdA0KPj4gICAgZnVuY3Rpb24uDQo+PiAgICBS
ZW5hbWUgTm9uLWV4cG9ydGFibGUgYnVmZmVyIGZsYWcgZnJvbSAncHJpJyB0byAncHJpdmF0ZV9i
dWZmZXInDQo+Pg0KPj4gICBkcml2ZXJzL2FjY2VsL2FtZHhkbmEvYW1keGRuYV9nZW0uYyAgfCAg
OSArKysrLQ0KPj4gICBkcml2ZXJzL2FjY2VsL2FtZHhkbmEvYW1keGRuYV9nZW0uaCAgfCAgMiAr
Kw0KPj4gICBkcml2ZXJzL2FjY2VsL2FtZHhkbmEvYW1keGRuYV91YnVmLmMgfCA1MCAtLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+PiAgIDMgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9u
cygrKSwgNTEgZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvYWNjZWwv
YW1keGRuYS9hbWR4ZG5hX2dlbS5jIGIvZHJpdmVycy9hY2NlbC9hbWR4ZG5hL2FtZHhkbmFfZ2Vt
LmMNCj4+IGluZGV4IDMxOWQyMDY0ZmFmYS4uNmI5YjU1NmRlNTU1IDEwMDY0NA0KPj4gLS0tIGEv
ZHJpdmVycy9hY2NlbC9hbWR4ZG5hL2FtZHhkbmFfZ2VtLmMNCj4+ICsrKyBiL2RyaXZlcnMvYWNj
ZWwvYW1keGRuYS9hbWR4ZG5hX2dlbS5jDQo+PiBAQCAtNDkyLDYgKzQ5Miw5IEBAIHN0YXRpYyBz
dHJ1Y3QgZG1hX2J1ZiAqYW1keGRuYV9nZW1fcHJpbWVfZXhwb3J0KHN0cnVjdCBkcm1fZ2VtX29i
amVjdCAqZ29iaiwgaW50DQo+PiAgIAlzdHJ1Y3QgYW1keGRuYV9nZW1fb2JqICphYm8gPSB0b194
ZG5hX29iaihnb2JqKTsNCj4+ICAgCURFRklORV9ETUFfQlVGX0VYUE9SVF9JTkZPKGV4cF9pbmZv
KTsNCj4+ICAgDQo+PiArCWlmIChhYm8tPnByaXZhdGVfYnVmZmVyKQ0KPj4gKwkJcmV0dXJuIEVS
Ul9QVFIoLUVPUE5PVFNVUFApOw0KPj4gKw0KPj4gICAJaWYgKGFiby0+ZG1hX2J1Zikgew0KPj4g
ICAJCWdldF9kbWFfYnVmKGFiby0+ZG1hX2J1Zik7DQo+PiAgIAkJcmV0dXJuIGFiby0+ZG1hX2J1
ZjsNCj4+IEBAIC03MTYsNiArNzE5LDcgQEAgYW1keGRuYV9nZW1fY3JlYXRlX3VidWZfb2JqZWN0
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHN0cnVjdCBhbWR4ZG5hX2RybV9jcmVhdGUNCj4+ICAg
ew0KPj4gICAJc3RydWN0IGFtZHhkbmFfZGV2ICp4ZG5hID0gdG9feGRuYV9kZXYoZGV2KTsNCj4+
ICAgCXN0cnVjdCBhbWR4ZG5hX2RybV92YV90YmwgdmFfdGJsOw0KPj4gKwlzdHJ1Y3QgYW1keGRu
YV9nZW1fb2JqICphYm87DQo+PiAgIAlzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmdvYmo7DQo+PiAg
IAlzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZjsNCj4+ICAgDQo+PiBAQCAtNzQyLDcgKzc0NiwxMCBA
QCBhbWR4ZG5hX2dlbV9jcmVhdGVfdWJ1Zl9vYmplY3Qoc3RydWN0IGRybV9kZXZpY2UgKmRldiwg
c3RydWN0IGFtZHhkbmFfZHJtX2NyZWF0ZQ0KPj4gICANCj4+ICAgCWRtYV9idWZfcHV0KGRtYV9i
dWYpOw0KPj4gICANCj4+IC0JcmV0dXJuIHRvX3hkbmFfb2JqKGdvYmopOw0KPj4gKwlhYm8gPSB0
b194ZG5hX29iaihnb2JqKTsNCj4+ICsJYWJvLT5wcml2YXRlX2J1ZmZlciA9IHRydWU7DQo+PiAr
DQo+PiArCXJldHVybiBhYm87DQo+PiAgIH0NCj4+ICAgDQo+PiAgIHN0YXRpYyBzdHJ1Y3QgYW1k
eGRuYV9nZW1fb2JqICoNCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2FjY2VsL2FtZHhkbmEvYW1k
eGRuYV9nZW0uaCBiL2RyaXZlcnMvYWNjZWwvYW1keGRuYS9hbWR4ZG5hX2dlbS5oDQo+PiBpbmRl
eCA0ZmM0OGExMTg5ZDIuLjk1NzMwNWNjYjQ4NSAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvYWNj
ZWwvYW1keGRuYS9hbWR4ZG5hX2dlbS5oDQo+PiArKysgYi9kcml2ZXJzL2FjY2VsL2FtZHhkbmEv
YW1keGRuYV9nZW0uaA0KPj4gQEAgLTU0LDYgKzU0LDggQEAgc3RydWN0IGFtZHhkbmFfZ2VtX29i
aiB7DQo+PiAgIA0KPj4gICAJLyogVHJ1ZSwgaWYgQk8gaXMgbWFuYWdlZCBieSBYUlQsIG5vdCBh
cHBsaWNhdGlvbiAqLw0KPj4gICAJYm9vbAkJCQlpbnRlcm5hbDsNCj4+ICsJLyogVHJ1ZSwgaWYg
Qk8gaXMgbm90IGV4cG9ydGFibGUgKi8NCj4+ICsJYm9vbAkJCQlwcml2YXRlX2J1ZmZlcjsNCj4+
ICAgfTsNCj4+ICAgDQo+PiAgICNkZWZpbmUgdG9fZ29iaihvYmopICAgICgmKG9iaiktPmJhc2Uu
YmFzZSkNCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2FjY2VsL2FtZHhkbmEvYW1keGRuYV91YnVm
LmMgYi9kcml2ZXJzL2FjY2VsL2FtZHhkbmEvYW1keGRuYV91YnVmLmMNCj4+IGluZGV4IDM3Njky
MTBjNTVjYy4uYmI2MGZiODA0NjdlIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9hY2NlbC9hbWR4
ZG5hL2FtZHhkbmFfdWJ1Zi5jDQo+PiArKysgYi9kcml2ZXJzL2FjY2VsL2FtZHhkbmEvYW1keGRu
YV91YnVmLmMNCj4+IEBAIC02OSw2MCArNjksMTAgQEAgc3RhdGljIHZvaWQgYW1keGRuYV91YnVm
X3JlbGVhc2Uoc3RydWN0IGRtYV9idWYgKmRidWYpDQo+PiAgIAlrZnJlZSh1YnVmKTsNCj4+ICAg
fQ0KPj4gICANCj4+IC1zdGF0aWMgdm1fZmF1bHRfdCBhbWR4ZG5hX3VidWZfdm1fZmF1bHQoc3Ry
dWN0IHZtX2ZhdWx0ICp2bWYpDQo+PiAtew0KPj4gLQlzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZt
YSA9IHZtZi0+dm1hOw0KPj4gLQlzdHJ1Y3QgYW1keGRuYV91YnVmX3ByaXYgKnVidWY7DQo+PiAt
CXVuc2lnbmVkIGxvbmcgcGZuOw0KPj4gLQlwZ29mZl90IHBnb2ZmOw0KPj4gLQ0KPj4gLQl1YnVm
ID0gdm1hLT52bV9wcml2YXRlX2RhdGE7DQo+PiAtCXBnb2ZmID0gKHZtZi0+YWRkcmVzcyAtIHZt
YS0+dm1fc3RhcnQpID4+IFBBR0VfU0hJRlQ7DQo+PiAtDQo+PiAtCXBmbiA9IHBhZ2VfdG9fcGZu
KHVidWYtPnBhZ2VzW3Bnb2ZmXSk7DQo+PiAtCXJldHVybiB2bWZfaW5zZXJ0X3Bmbih2bWEsIHZt
Zi0+YWRkcmVzcywgcGZuKTsNCj4+IC19DQo+PiAtDQo+PiAtc3RhdGljIGNvbnN0IHN0cnVjdCB2
bV9vcGVyYXRpb25zX3N0cnVjdCBhbWR4ZG5hX3VidWZfdm1fb3BzID0gew0KPj4gLQkuZmF1bHQg
PSBhbWR4ZG5hX3VidWZfdm1fZmF1bHQsDQo+PiAtfTsNCj4+IC0NCj4+IC1zdGF0aWMgaW50IGFt
ZHhkbmFfdWJ1Zl9tbWFwKHN0cnVjdCBkbWFfYnVmICpkYnVmLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1
Y3QgKnZtYSkNCj4+IC17DQo+PiAtCXN0cnVjdCBhbWR4ZG5hX3VidWZfcHJpdiAqdWJ1ZiA9IGRi
dWYtPnByaXY7DQo+PiAtDQo+PiAtCXZtYS0+dm1fb3BzID0gJmFtZHhkbmFfdWJ1Zl92bV9vcHM7
DQo+PiAtCXZtYS0+dm1fcHJpdmF0ZV9kYXRhID0gdWJ1ZjsNCj4+IC0Jdm1fZmxhZ3Nfc2V0KHZt
YSwgVk1fUEZOTUFQIHwgVk1fRE9OVEVYUEFORCB8IFZNX0RPTlREVU1QKTsNCj4+IC0NCj4+IC0J
cmV0dXJuIDA7DQo+PiAtfQ0KPj4gLQ0KPj4gLXN0YXRpYyBpbnQgYW1keGRuYV91YnVmX3ZtYXAo
c3RydWN0IGRtYV9idWYgKmRidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4+IC17DQo+PiAt
CXN0cnVjdCBhbWR4ZG5hX3VidWZfcHJpdiAqdWJ1ZiA9IGRidWYtPnByaXY7DQo+PiAtCXZvaWQg
Kmt2YTsNCj4+IC0NCj4+IC0Ja3ZhID0gdm1hcCh1YnVmLT5wYWdlcywgdWJ1Zi0+bnJfcGFnZXMs
IFZNX01BUCwgUEFHRV9LRVJORUwpOw0KPj4gLQlpZiAoIWt2YSkNCj4+IC0JCXJldHVybiAtRUlO
VkFMOw0KPj4gLQ0KPj4gLQlpb3N5c19tYXBfc2V0X3ZhZGRyKG1hcCwga3ZhKTsNCj4+IC0JcmV0
dXJuIDA7DQo+PiAtfQ0KPj4gLQ0KPj4gLXN0YXRpYyB2b2lkIGFtZHhkbmFfdWJ1Zl92dW5tYXAo
c3RydWN0IGRtYV9idWYgKmRidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4+IC17DQo+PiAt
CXZ1bm1hcChtYXAtPnZhZGRyKTsNCj4+IC19DQo+PiAtDQo+PiAgIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgZG1hX2J1Zl9vcHMgYW1keGRuYV91YnVmX2RtYWJ1Zl9vcHMgPSB7DQo+PiAgIAkubWFwX2Rt
YV9idWYgPSBhbWR4ZG5hX3VidWZfbWFwLA0KPj4gICAJLnVubWFwX2RtYV9idWYgPSBhbWR4ZG5h
X3VidWZfdW5tYXAsDQo+PiAgIAkucmVsZWFzZSA9IGFtZHhkbmFfdWJ1Zl9yZWxlYXNlLA0KPj4g
LQkubW1hcCA9IGFtZHhkbmFfdWJ1Zl9tbWFwLA0KPj4gLQkudm1hcCA9IGFtZHhkbmFfdWJ1Zl92
bWFwLA0KPj4gLQkudnVubWFwID0gYW1keGRuYV91YnVmX3Z1bm1hcCwNCj4+ICAgfTsNCj4+ICAg
DQo+PiAgIHN0YXRpYyBpbnQgcmVhZG9ubHlfdmFfZW50cnkoc3RydWN0IGFtZHhkbmFfZHJtX3Zh
X2VudHJ5ICp2YV9lbnQpDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
