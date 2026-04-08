Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MNCEMlk5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:39:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC03431AF4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:39:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DC2E8404B4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:39:19 +0000 (UTC)
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012047.outbound.protection.outlook.com [40.107.200.47])
	by lists.linaro.org (Postfix) with ESMTPS id BD01B3F768
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2026 10:07:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=hkDTTvs0;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Pierre-eric.Pelloux-prayer@amd.com designates 40.107.200.47 as permitted sender) smtp.mailfrom=Pierre-eric.Pelloux-prayer@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=evXnz6OtruBl5pJj/ECM8KLmRJ5DYjp2COhCqkivoIEOrMvSa7npe149XcpKGB1fqwkOb94z45QrhJ8emrkhliCX9dYzJLIVJIMuKb3lZ+wi85IJ7WmFJZtHxsWOxRa4FzwwiFRDP4H7Qk0Ff1JGK+PGSNPZCg0Imc9XfdHFah1t+viGcATN/9xH+1eAXpq8Tq+m6CFoTZ9U17lTfJLREm8TFY6ZnjrFiFp8TIWS6i7h8grUrxo4aeG4N8E9/EWCeTWQol0/XKFFoGEWv1g62wcvvFIFgWn8IUyOpHQJADu4paX6IuAFnQPH/AUs+2xwJbARQ2KHJahi4qCQxwm6Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9U43/arQtkQq2ldwXFqvC3Jwdig4eZ+ndkT0p4LuTxE=;
 b=RRH9nVPE16rgEZQ/NuiYpVZLZRvpmWQIttxQu8XuEqKeGKRz/c4rSpWe09Nqp5GTHOQU5dfzRjnOSR6oQAw6rOgg4flNXCrR3XYmEqm8mpAa2RU/tnS43Hfd8XLS+QwpY/Hxm9+2GIdfccgXzwGD1dikpafvMCgPb+SW4b4yPGrCnVbKUvDpimw232UzsLyv4osWTG8cT3Ufv6bF4j12Uygk9O2UX4njTSQ+YLgRl2QwvZ9Y4HXFQd9YsdXzm0THj+kqJtYqZdfEyJJx4ABTvlWBR+nED70PoCD/ZmHuOwy5m1iNkMHTVFiNiGCK+Pg1tH13gBStlZC1GodATz0ynw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=gmail.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9U43/arQtkQq2ldwXFqvC3Jwdig4eZ+ndkT0p4LuTxE=;
 b=hkDTTvs000ON+5tdD6ya1SfHR/QGGnfTxDpsnTV0xXlInss6L4pmsMeE1LF+O6K7FVuCO2A0Oz2ngZCWijgeASVJtnAWic+Mil0g0JcsGQ8bwK7qZgs/rjZYuLoRrUtuqJjw+ykhBvj01vczDNNKS1ozA6iJa3JRnrt5a2F6N2E=
Received: from DM6PR11CA0066.namprd11.prod.outlook.com (2603:10b6:5:14c::43)
 by IA1PR12MB6460.namprd12.prod.outlook.com (2603:10b6:208:3a8::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.21; Wed, 8 Apr
 2026 10:07:22 +0000
Received: from CY4PEPF0000EDD0.namprd03.prod.outlook.com
 (2603:10b6:5:14c:cafe::a2) by DM6PR11CA0066.outlook.office365.com
 (2603:10b6:5:14c::43) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9769.33 via Frontend Transport; Wed,
 8 Apr 2026 10:07:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 CY4PEPF0000EDD0.mail.protection.outlook.com (10.167.241.196) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.17 via Frontend Transport; Wed, 8 Apr 2026 10:07:22 +0000
Received: from FRAPPELLOUX01-WSLPUB.amd.com (10.180.168.240) by
 satlexmb07.amd.com (10.181.42.216) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 8 Apr 2026 05:07:20 -0500
From: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
	<sumit.semwal@linaro.org>
Date: Wed, 8 Apr 2026 12:03:16 +0200
Message-ID: <20260408100327.1372-5-pierre-eric.pelloux-prayer@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260408100327.1372-1-pierre-eric.pelloux-prayer@amd.com>
References: <20260408100327.1372-1-pierre-eric.pelloux-prayer@amd.com>
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb07.amd.com (10.181.42.216) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000EDD0:EE_|IA1PR12MB6460:EE_
X-MS-Office365-Filtering-Correlation-Id: ee365a65-3325-42d2-f36a-08de9556a04f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700016|376014|1800799024|82310400026|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	V6dbIoBKoo3ldil9lbhw7H2TWbWD5mdWZ7c91XRNXUGWECIAlV/G0VnXvj0bzqLLN5+t8PZ8QoVEpQ2Tdfbxd3GbybEXrGp0EN7GRbjXBbvG26CONlIEyjqXabfQPB0UUtvdP+t6VqD3CVfFQWJDQiTSMn2rC8wWqueytzXErad6msi6w3KXJw0YaCASJmdbd7OQwjH1R5OOuzdU7E+xNqw9QNvuzKv8oia55ITqCGj+LtK9GXgjPRY6k1KDnttx7rmtHFDs8b8sHLCYiPKj0bVM897NXRJPPb7oXQFE/B41WXodpauQApC3Zc8zwyxK6OjC56aOmdyk4Aj6K9OkMTNRTpp8vVE5Ob9nsnzes5oeE+tSyHEhK/gGQ27+3rFflwNrwJZGyCPZcdVfVAuRbli3THZVmNjfzqv59hGC89Q8nuS6lE3AZss0o66A9O22b3aH2O3O6TkDduoaQ/bGOFF4Ja2RFAsxqm4HL6MWaioeH+gYLFd0uGK9PU1UNJUdlAHbgtKebBjhPnPkQrjYBs+9R36NCmbxgtzXR3tym3jC3KCtZfzi4qb43lgcRbeBBIG0PgGWg5C+e+8jOR+kOJnMTNwqobNvxZNqLbj96yXIs8ulN6DgK9WpImYVBZLVzUQ+gP8D6SjePRplWJil/bLHcAiIt6VOeiB6A3gz6X+PqhVAe3j8Fyaa3BjXC8XYWqpRzZBaftIVHdMQvwLGhOpopijnbdy928SKpS6MkbsMWsP6YoH7oGTfeB9rrTf6JB9XK7aYD/0GKAIrOZho/A==
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb07.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700016)(376014)(1800799024)(82310400026)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	lawBUQDFr62KEBk4SU5HJfe+Mhu4vZGTcpXpWNOwKQD1MaLRr18lTEbG58oF/7bhO1E5UBvcHfi/fOx4yauySmVHEu8hCLo8KsO6RdJGtt4/zPX7fgwGictFgG4lQ6310tRw48Xi+a4U/KMQLILkkkmYPjYe6fQ0B3HuucDT11S85n5YY7qYvtuHzBzboJtLHVHlM8CA9cKFGGe1JXwlD8YlKerFaIDi8CxD9DUiZG0PZm95luEvdLH0EdBzy6h4V7FUeprY6ro+jbg2hZtS9YsqVfOtoE8zH1oCpmOBAo2e8oGyaBULITf9sGmRxb2sCmalqEcg9nBt92phteEgiUe9X8v5dDiVjSb4+5lAByCSLq8kZarrJC6HEgu9cA2Z9Kp0s0EkRgLzaiQCC2JNYMMheQEpDhvseKE1MM17saV/7Ogu+O8czSlVGEnDyCEH
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 10:07:22.1670
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ee365a65-3325-42d2-f36a-08de9556a04f
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	CY4PEPF0000EDD0.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6460
X-Spamd-Bar: ----
X-MailFrom: Pierre-eric.Pelloux-prayer@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Z6GTUQCZYWHL67E26DBXBPP2ZWQXIVDA
X-Message-ID-Hash: Z6GTUQCZYWHL67E26DBXBPP2ZWQXIVDA
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:38:54 +0000
CC: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 5/8] drm/amdgpu: get rid of amdgpu_ttm_clear_buffer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z6GTUQCZYWHL67E26DBXBPP2ZWQXIVDA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	DATE_IN_PAST(1.00)[295];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_XOIP(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[pierre-eric.pelloux-prayer@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.289];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:mid,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: DFC03431AF4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SXQncyBkb2luZyB0aGUgc2FtZSB0aGluZyBhcyBhbWRncHVfZmlsbF9idWZmZXIoc3JjX2RhdGE9
MCksIHNvIGRyb3AgaXQuDQoNClRoZSBvbmx5IGNhdmVhdCBpcyB0aGF0IGFtZGdwdV9yZXNfY2xl
YXJlZCgpIHJldHVybiB2YWx1ZSBpcyBvbmx5IHZhbGlkDQpyaWdodCBhZnRlciBhbGxvY2F0aW9u
Lg0KDQotLS0NCnYyOiBpbnRyb2R1Y2UgbmV3ICJib29sIGNvbnNpZGVyX2NsZWFyX3N0YXR1cyIg
YXJnDQp2NjogZG9udCBwYXNzIGEgTlVMTCByZXN2IHdoZW4gY2FsbGluZyBhbWRncHVfZmlsbF9i
dWZmZXIgZnJvbQ0KICAgIGFtZGdwdV9ib19jcmVhdGUNCi0tLQ0KDQpTaWduZWQtb2ZmLWJ5OiBQ
aWVycmUtRXJpYyBQZWxsb3V4LVByYXllciA8cGllcnJlLWVyaWMucGVsbG91eC1wcmF5ZXJAYW1k
LmNvbT4NClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMg
fCAxNiArKy0tDQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jICAgIHwg
ODggKysrKystLS0tLS0tLS0tLS0tLS0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV90dG0uaCAgICB8ICA2ICstDQogMyBmaWxlcyBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCsp
LCA3OCBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9v
YmplY3QuYw0KaW5kZXggNjZjMjBkZDQ2ZDEyLi5iZGVjYTgwY2Q3N2QgMTAwNjQ0DQotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMNCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYw0KQEAgLTcxNywxMyArNzE3LDE3IEBA
IGludCBhbWRncHVfYm9fY3JlYXRlKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LA0KIAkgICAg
Ym8tPnRiby5yZXNvdXJjZS0+bWVtX3R5cGUgPT0gVFRNX1BMX1ZSQU0pIHsNCiAJCXN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlOw0KIA0KLQkJciA9IGFtZGdwdV90dG1fY2xlYXJfYnVmZmVyKGJvLCBi
by0+dGJvLmJhc2UucmVzdiwgJmZlbmNlKTsNCisJCXIgPSBhbWRncHVfZmlsbF9idWZmZXIoYW1k
Z3B1X3R0bV9uZXh0X2NsZWFyX2VudGl0eShhZGV2KSwNCisJCQkJICAgICAgIGJvLCAwLCBiby0+
dGJvLmJhc2UucmVzdiwgJmZlbmNlLA0KKwkJCQkgICAgICAgdHJ1ZSwgQU1ER1BVX0tFUk5FTF9K
T0JfSURfVFRNX0NMRUFSX0JVRkZFUik7DQogCQlpZiAodW5saWtlbHkocikpDQogCQkJZ290byBm
YWlsX3VucmVzZXJ2ZTsNCiANCi0JCWRtYV9yZXN2X2FkZF9mZW5jZShiby0+dGJvLmJhc2UucmVz
diwgZmVuY2UsDQotCQkJCSAgIERNQV9SRVNWX1VTQUdFX0tFUk5FTCk7DQotCQlkbWFfZmVuY2Vf
cHV0KGZlbmNlKTsNCisJCWlmIChmZW5jZSkgew0KKwkJCWRtYV9yZXN2X2FkZF9mZW5jZShiby0+
dGJvLmJhc2UucmVzdiwgZmVuY2UsDQorCQkJCQkgICBETUFfUkVTVl9VU0FHRV9LRVJORUwpOw0K
KwkJCWRtYV9mZW5jZV9wdXQoZmVuY2UpOw0KKwkJfQ0KIAl9DQogCWlmICghYnAtPnJlc3YpDQog
CQlhbWRncHVfYm9fdW5yZXNlcnZlKGJvKTsNCkBAIC0xMzI2LDggKzEzMzAsOCBAQCB2b2lkIGFt
ZGdwdV9ib19yZWxlYXNlX25vdGlmeShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvKQ0KIAkJ
Z290byBvdXQ7DQogDQogCXIgPSBhbWRncHVfZmlsbF9idWZmZXIoYW1kZ3B1X3R0bV9uZXh0X2Ns
ZWFyX2VudGl0eShhZGV2KSwNCi0JCQkgICAgICAgYWJvLCAwLCAmYm8tPmJhc2UuX3Jlc3YsDQot
CQkJICAgICAgICZmZW5jZSwgQU1ER1BVX0tFUk5FTF9KT0JfSURfQ0xFQVJfT05fUkVMRUFTRSk7
DQorCQkJICAgICAgIGFibywgMCwgJmJvLT5iYXNlLl9yZXN2LCAmZmVuY2UsDQorCQkJICAgICAg
IGZhbHNlLCBBTURHUFVfS0VSTkVMX0pPQl9JRF9DTEVBUl9PTl9SRUxFQVNFKTsNCiAJaWYgKFdB
Uk5fT04ocikpDQogCQlnb3RvIG91dDsNCiANCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfdHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfdHRtLmMNCmluZGV4IDdiOTJmMjQwZWVhNy4uN2FmMTE2MjMyNjNkIDEwMDY0NA0KLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jDQorKysgYi9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMNCkBAIC00MTgsNyArNDE4LDcgQEAgc3RhdGlj
IGludCBhbWRncHVfbW92ZV9ibGl0KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sDQogCSAg
ICAoYWJvLT5mbGFncyAmIEFNREdQVV9HRU1fQ1JFQVRFX1ZSQU1fV0lQRV9PTl9SRUxFQVNFKSkg
ew0KIAkJc3RydWN0IGRtYV9mZW5jZSAqd2lwZV9mZW5jZSA9IE5VTEw7DQogCQlyID0gYW1kZ3B1
X2ZpbGxfYnVmZmVyKGVudGl0eSwgYWJvLCAwLCBOVUxMLCAmd2lwZV9mZW5jZSwNCi0JCQkJICAg
ICAgIEFNREdQVV9LRVJORUxfSk9CX0lEX01PVkVfQkxJVCk7DQorCQkJCSAgICAgICBmYWxzZSwg
QU1ER1BVX0tFUk5FTF9KT0JfSURfTU9WRV9CTElUKTsNCiAJCWlmIChyKSB7DQogCQkJZ290byBl
cnJvcjsNCiAJCX0gZWxzZSBpZiAod2lwZV9mZW5jZSkgew0KQEAgLTI1NzMsNzYgKzI1NzMsMjUg
QEAgc3RhdGljIGludCBhbWRncHVfdHRtX2ZpbGxfbWVtKHN0cnVjdCBhbWRncHVfZGV2aWNlICph
ZGV2LA0KIH0NCiANCiAvKioNCi0gKiBhbWRncHVfdHRtX2NsZWFyX2J1ZmZlciAtIGNsZWFyIG1l
bW9yeSBidWZmZXJzDQotICogQGJvOiBhbWRncHUgYnVmZmVyIG9iamVjdA0KLSAqIEByZXN2OiBy
ZXNlcnZhdGlvbiBvYmplY3QNCi0gKiBAZmVuY2U6IGRtYV9mZW5jZSBhc3NvY2lhdGVkIHdpdGgg
dGhlIG9wZXJhdGlvbg0KKyAqIGFtZGdwdV9maWxsX2J1ZmZlciAtIGZpbGwgYSBidWZmZXIgd2l0
aCBhIGdpdmVuIHZhbHVlDQorICogQGVudGl0eTogZW50aXR5IHRvIHVzZQ0KKyAqIEBibzogdGhl
IGJvIHRvIGZpbGwNCisgKiBAc3JjX2RhdGE6IHRoZSB2YWx1ZSB0byBzZXQNCisgKiBAcmVzdjog
ZmVuY2VzIGNvbnRhaW5lZCBpbiB0aGlzIHJlc2VydmF0aW9uIHdpbGwgYmUgdXNlZCBhcyBkZXBl
bmRlbmNpZXMuDQorICogQG91dF9mZW5jZTogdGhlIGZlbmNlIGZyb20gdGhlIGxhc3QgY2xlYXIg
d2lsbCBiZSBzdG9yZWQgaGVyZS4gSXQgbWlnaHQgYmUNCisgKiAgICAgICAgICAgICBOVUxMIGlm
IG5vIGpvYiB3YXMgcnVuLg0KKyAqIEBkZXBlbmRlbmN5OiBvcHRpb25hbCBpbnB1dCBkZXBlbmRl
bmN5IGZlbmNlLg0KKyAqIEBjb25zaWRlcl9jbGVhcl9zdGF0dXM6IHRydWUgaWYgcmVnaW9uIHJl
cG9ydGVkIGFzIGNsZWFyZWQgYnkgYW1kZ3B1X3Jlc19jbGVhcmVkKCkNCisgKiAgICAgICAgICAg
ICAgICAgICAgICAgICBhcmUgc2tpcHBlZC4NCisgKiBAa19qb2JfaWQ6IHRyYWNlIGlkDQogICoN
Ci0gKiBDbGVhciB0aGUgbWVtb3J5IGJ1ZmZlciByZXNvdXJjZS4NCi0gKg0KLSAqIFJldHVybnM6
DQotICogMCBmb3Igc3VjY2VzcyBvciBhIG5lZ2F0aXZlIGVycm9yIGNvZGUgb24gZmFpbHVyZS4N
CiAgKi8NCi1pbnQgYW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIoc3RydWN0IGFtZGdwdV9ibyAqYm8s
DQotCQkJICAgIHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwNCi0JCQkgICAgc3RydWN0IGRtYV9mZW5j
ZSAqKmZlbmNlKQ0KLXsNCi0Jc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYgPSBhbWRncHVfdHRt
X2FkZXYoYm8tPnRiby5iZGV2KTsNCi0Jc3RydWN0IGFtZGdwdV90dG1fYnVmZmVyX2VudGl0eSAq
ZW50aXR5Ow0KLQlzdHJ1Y3QgYW1kZ3B1X3Jlc19jdXJzb3IgY3Vyc29yOw0KLQl1NjQgYWRkcjsN
Ci0JaW50IHIgPSAwOw0KLQ0KLQlpZiAoIWFkZXYtPm1tYW4uYnVmZmVyX2Z1bmNzX2VuYWJsZWQp
DQotCQlyZXR1cm4gLUVJTlZBTDsNCi0NCi0JaWYgKCFmZW5jZSkNCi0JCXJldHVybiAtRUlOVkFM
Ow0KLQllbnRpdHkgPSAmYWRldi0+bW1hbi5jbGVhcl9lbnRpdGllc1swXTsNCi0JKmZlbmNlID0g
ZG1hX2ZlbmNlX2dldF9zdHViKCk7DQotDQotCWFtZGdwdV9yZXNfZmlyc3QoYm8tPnRiby5yZXNv
dXJjZSwgMCwgYW1kZ3B1X2JvX3NpemUoYm8pLCAmY3Vyc29yKTsNCi0NCi0JbXV0ZXhfbG9jaygm
ZW50aXR5LT5sb2NrKTsNCi0Jd2hpbGUgKGN1cnNvci5yZW1haW5pbmcpIHsNCi0JCXN0cnVjdCBk
bWFfZmVuY2UgKm5leHQgPSBOVUxMOw0KLQkJdTY0IHNpemU7DQotDQotCQlpZiAoYW1kZ3B1X3Jl
c19jbGVhcmVkKCZjdXJzb3IpKSB7DQotCQkJYW1kZ3B1X3Jlc19uZXh0KCZjdXJzb3IsIGN1cnNv
ci5zaXplKTsNCi0JCQljb250aW51ZTsNCi0JCX0NCi0NCi0JCS8qIE5ldmVyIGNsZWFyIG1vcmUg
dGhhbiAyNTZNaUIgYXQgb25jZSB0byBhdm9pZCB0aW1lb3V0cyAqLw0KLQkJc2l6ZSA9IG1pbihj
dXJzb3Iuc2l6ZSwgMjU2VUxMIDw8IDIwKTsNCi0NCi0JCXIgPSBhbWRncHVfdHRtX21hcF9idWZm
ZXIoZW50aXR5LCAmYm8tPnRibywgYm8tPnRiby5yZXNvdXJjZSwgJmN1cnNvciwNCi0JCQkJCSAg
MCwgZmFsc2UsICZzaXplLCAmYWRkcik7DQotCQlpZiAocikNCi0JCQlnb3RvIGVycjsNCi0NCi0J
CXIgPSBhbWRncHVfdHRtX2ZpbGxfbWVtKGFkZXYsIGVudGl0eSwgMCwgYWRkciwgc2l6ZSwgcmVz
diwNCi0JCQkJCSZuZXh0LCB0cnVlLA0KLQkJCQkJQU1ER1BVX0tFUk5FTF9KT0JfSURfVFRNX0NM
RUFSX0JVRkZFUik7DQotCQlpZiAocikNCi0JCQlnb3RvIGVycjsNCi0NCi0JCWRtYV9mZW5jZV9w
dXQoKmZlbmNlKTsNCi0JCSpmZW5jZSA9IG5leHQ7DQotDQotCQlhbWRncHVfcmVzX25leHQoJmN1
cnNvciwgc2l6ZSk7DQotCX0NCi1lcnI6DQotCW11dGV4X3VubG9jaygmZW50aXR5LT5sb2NrKTsN
Ci0NCi0JcmV0dXJuIHI7DQotfQ0KLQ0KIGludCBhbWRncHVfZmlsbF9idWZmZXIoc3RydWN0IGFt
ZGdwdV90dG1fYnVmZmVyX2VudGl0eSAqZW50aXR5LA0KIAkJICAgICAgIHN0cnVjdCBhbWRncHVf
Ym8gKmJvLA0KIAkJICAgICAgIHVpbnQzMl90IHNyY19kYXRhLA0KIAkJICAgICAgIHN0cnVjdCBk
bWFfcmVzdiAqcmVzdiwNCi0JCSAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqZiwNCisJCSAgICAg
ICBzdHJ1Y3QgZG1hX2ZlbmNlICoqb3V0X2ZlbmNlLA0KKwkJICAgICAgIGJvb2wgY29uc2lkZXJf
Y2xlYXJfc3RhdHVzLA0KIAkJICAgICAgIHU2NCBrX2pvYl9pZCkNCiB7DQogCXN0cnVjdCBhbWRn
cHVfZGV2aWNlICphZGV2ID0gYW1kZ3B1X3R0bV9hZGV2KGJvLT50Ym8uYmRldik7DQpAQCAtMjY2
MCw2ICsyNjA5LDExIEBAIGludCBhbWRncHVfZmlsbF9idWZmZXIoc3RydWN0IGFtZGdwdV90dG1f
YnVmZmVyX2VudGl0eSAqZW50aXR5LA0KIAkJc3RydWN0IGRtYV9mZW5jZSAqbmV4dDsNCiAJCXVp
bnQ2NF90IGN1cl9zaXplLCB0bzsNCiANCisJCWlmIChjb25zaWRlcl9jbGVhcl9zdGF0dXMgJiYg
YW1kZ3B1X3Jlc19jbGVhcmVkKCZkc3QpKSB7DQorCQkJYW1kZ3B1X3Jlc19uZXh0KCZkc3QsIGRz
dC5zaXplKTsNCisJCQljb250aW51ZTsNCisJCX0NCisNCiAJCS8qIE5ldmVyIGZpbGwgbW9yZSB0
aGFuIDI1Nk1pQiBhdCBvbmNlIHRvIGF2b2lkIHRpbWVvdXRzICovDQogCQljdXJfc2l6ZSA9IG1p
bihkc3Quc2l6ZSwgMjU2VUxMIDw8IDIwKTsNCiANCkBAIC0yNjgxLDkgKzI2MzUsNyBAQCBpbnQg
YW1kZ3B1X2ZpbGxfYnVmZmVyKHN0cnVjdCBhbWRncHVfdHRtX2J1ZmZlcl9lbnRpdHkgKmVudGl0
eSwNCiAJfQ0KIGVycm9yOg0KIAltdXRleF91bmxvY2soJmVudGl0eS0+bG9jayk7DQotCWlmIChm
KQ0KLQkJKmYgPSBkbWFfZmVuY2VfZ2V0KGZlbmNlKTsNCi0JZG1hX2ZlbmNlX3B1dChmZW5jZSk7
DQorCSpvdXRfZmVuY2UgPSBmZW5jZTsNCiAJcmV0dXJuIHI7DQogfQ0KIA0KZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uaA0KaW5kZXggYTYyNDkyNTI5NDhiLi40MzZhM2UwOWEx
NzggMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmgN
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uaA0KQEAgLTE4Nywx
NCArMTg3LDEyIEBAIGludCBhbWRncHVfY29weV9idWZmZXIoc3RydWN0IGFtZGdwdV9kZXZpY2Ug
KmFkZXYsDQogCQkgICAgICAgc3RydWN0IGRtYV9yZXN2ICpyZXN2LA0KIAkJICAgICAgIHN0cnVj
dCBkbWFfZmVuY2UgKipmZW5jZSwNCiAJCSAgICAgICBib29sIHZtX25lZWRzX2ZsdXNoLCB1aW50
MzJfdCBjb3B5X2ZsYWdzKTsNCi1pbnQgYW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIoc3RydWN0IGFt
ZGdwdV9ibyAqYm8sDQotCQkJICAgIHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwNCi0JCQkgICAgc3Ry
dWN0IGRtYV9mZW5jZSAqKmZlbmNlKTsNCiBpbnQgYW1kZ3B1X2ZpbGxfYnVmZmVyKHN0cnVjdCBh
bWRncHVfdHRtX2J1ZmZlcl9lbnRpdHkgKmVudGl0eSwNCiAJCSAgICAgICBzdHJ1Y3QgYW1kZ3B1
X2JvICpibywNCiAJCSAgICAgICB1aW50MzJfdCBzcmNfZGF0YSwNCiAJCSAgICAgICBzdHJ1Y3Qg
ZG1hX3Jlc3YgKnJlc3YsDQotCQkgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqKmYsDQorCQkgICAg
ICAgc3RydWN0IGRtYV9mZW5jZSAqKm91dF9mZW5jZSwNCisJCSAgICAgICBib29sIGNvbnNpZGVy
X2NsZWFyX3N0YXR1cywNCiAJCSAgICAgICB1NjQga19qb2JfaWQpOw0KIHN0cnVjdCBhbWRncHVf
dHRtX2J1ZmZlcl9lbnRpdHkgKmFtZGdwdV90dG1fbmV4dF9jbGVhcl9lbnRpdHkoc3RydWN0IGFt
ZGdwdV9kZXZpY2UgKmFkZXYpOw0KIA0KLS0gDQoyLjQzLjANCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
