Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7078E60C34E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 07:34:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8779E3EA23
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 05:34:14 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam07on2052.outbound.protection.outlook.com [40.107.212.52])
	by lists.linaro.org (Postfix) with ESMTPS id 7AC5C3EBFD
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Sep 2022 17:24:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=guho5G/NH6Uu9NUxWGjhkF77HE9kSSuZnRLp6eRk7MxRSjvqQl0Yhw0ci7kmX1BZcS62AG+oWMxR4h78EU9Fdz0W9AGfgVQomT4RtteryyRYE/iPK78K/3to7iRtQvgT4loIxuyUS2FdX7ZU2o9XMxRlkhme7hGE6q8eWq/cogFRuWfupjV23gWCb8dwQg10gpA8ozKbnmqW/8BWX8yopFcgZdRnrIx6n16j2NuaTDY95Tifa7yZvCiPQIzfnCuxUYiOkJGzmAwJkgJFcP7O7KzvYIe+dZYIevYYGh8tcG/3e2Y5wOVmgf1oLzMYjNfvaTzNkLOaaHZEV0tIZcZHmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZxjL6udLV/T1l2yE4VhuGlIkYVYM5IUzlKBuY7TuvR0=;
 b=ci7l0hkU8RRgQ+lX1l3zWKlAZixQSJn2Xzy3b7Y5wHbXQu8TaYIzEDGCmqh1yNWQjd1pbyU5M8KzmR89uiQ8vpk0xI2KGrCZlumPtUsXa6lCDGu+OkfQ7M0+nHkx0AULa2tY5yXn0MM6aZvhtAQJIUJ5FXdjuONgEAw2uoUQIGYPm8QZOq/U7lD358Gcc8bVi0/5rNG0jY0ayzBY0Yl1eDEqffRROHsxpAEMnHGz61m8SuF6ldlPiKMD8l6hJdCsyhKg3MB/e9v1HH5+agaB6jhAY/u84Bx1mFbuSsckKb1v8ecsM2ZW6KnyTry1ek+Uuu3WHEMyvl7/Xp463Y4+3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=linaro.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZxjL6udLV/T1l2yE4VhuGlIkYVYM5IUzlKBuY7TuvR0=;
 b=5KpjGn737RF8cH5DLQLUBGS9Ii9dHKm4vO5JQ7gMHom+9bYOisSpuQMjqJcbWFwpXPZt/W23z3gU+C3WKId+fw2u+1JLcUjDL0SwaYbmJplWt903rNwjsk+N9G8v+GEEa/pL+K13XhOzBQT7Exb4Z+RGTWJ0BhWrpsQtIRUIceU=
Received: from MW4P223CA0029.NAMP223.PROD.OUTLOOK.COM (2603:10b6:303:80::34)
 by PH0PR12MB5450.namprd12.prod.outlook.com (2603:10b6:510:e8::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.26; Tue, 27 Sep
 2022 17:24:56 +0000
Received: from CO1NAM11FT039.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:80:cafe::61) by MW4P223CA0029.outlook.office365.com
 (2603:10b6:303:80::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.19 via Frontend
 Transport; Tue, 27 Sep 2022 17:24:56 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 CO1NAM11FT039.mail.protection.outlook.com (10.13.174.110) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5654.14 via Frontend Transport; Tue, 27 Sep 2022 17:24:56 +0000
Received: from amd.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Tue, 27 Sep
 2022 12:24:51 -0500
From: Arvind Yadav <Arvind.Yadav@amd.com>
To: <Christian.Koenig@amd.com>, <andrey.grodzovsky@amd.com>,
	<shashank.sharma@amd.com>, <amaranath.somalapuram@amd.com>,
	<Arunpravin.PaneerSelvam@amd.com>, <sumit.semwal@linaro.org>,
	<gustavo@padovan.org>, <airlied@linux.ie>, <daniel@ffwll.ch>,
	<linux-media@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
	<linaro-mm-sig@lists.linaro.org>, <linux-kernel@vger.kernel.org>
Date: Tue, 27 Sep 2022 22:54:09 +0530
Message-ID: <20220927172409.484061-4-Arvind.Yadav@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927172409.484061-1-Arvind.Yadav@amd.com>
References: <20220927172409.484061-1-Arvind.Yadav@amd.com>
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB04.amd.com (10.181.40.145) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT039:EE_|PH0PR12MB5450:EE_
X-MS-Office365-Filtering-Correlation-Id: 4bf6b998-fc9d-4ad3-f00d-08daa0ad3272
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	y50vJD8GGXWyhmE+X+CQ/XcTz3zF4YmHs1Imndn0Z3CiRyuRiQ/UUx78fZvi6HinR2exwG3H8EAQmCLH3RNI5q9e5swuTMXx1qGwYjO+Y1kxHrcbkQ/Gx7Kpis7WeH4yBNDMaZT3iREvdK7BgcMuc+xjiy9CAo/9L13Ps26UKJTq88oJpB4x4q5zniqfO6N8UO7EkQxnzbVgc+ZT8YYqnBxjcaySCa+zVC3enCQWXGlXeFRezrKsWZAPPG+A4vh2kZlKm/cysgUQbXwyD8/Fd16QqiwoBGxta+cC1/i2K1GCop4Q1O1iM1csC+xF1vnhGgrJWO97V0o2REmSmqSkHSMafs9GUWAWSQisFO4vMrgY20svql2lmSNPqL+FsTZN8GCvtXZWE0Kio5SM7aZNPDBy5p71ZDQCe9xH7KdT2vlPL94vb7n/9qqHcpNlCCdtazFarvQ+RqsYG8+ybhWTh/v7SXalfC3Pk2Hhjb6KHeEKAdmCk5t6m3hhZaE1BwKaxyWks0Mw5btnyyNVJBWb9u5OxmWh8e79yRf2moZA2oxIxWbfsECKZMK81hmwMgQfjwWhwTbOLiP5yeLY59+czrWBGogzs91wYOAY4i37OazSUqnFaDw1qoh3Z2QIAxlEv9EeaEFEnubyxy/dxvZBzNFFRq+YHEYsmClC2ZFfzvIfGClPi1ZzyQgVk+/HNJQw1R71JKJ2j/LSPAH1S8iz8GOUe2xy2YfjdBHUPhz5rs5lfsUXqrA6iILSeqWujQpaB55IXrUy7ZK1zCWGw7vYAhu5UdAo4y18rGs78sAal4uq2IZcxQmxh6TkztrQvKqDxOmTHBmoyy2+dMDRrbHfEIh7GEF+X03cOcrFOiWantAbJQKLdlN5Am32P1e89/cO
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(396003)(39860400002)(136003)(451199015)(36840700001)(40470700004)(46966006)(2906002)(16526019)(186003)(1076003)(47076005)(83380400001)(356005)(86362001)(81166007)(82310400005)(2616005)(36756003)(40480700001)(921005)(82740400003)(4326008)(426003)(36860700001)(336012)(40460700003)(110136005)(478600001)(70586007)(8676002)(70206006)(316002)(26005)(5660300002)(41300700001)(6666004)(7696005)(8936002)(36900700001)(2101003)(83996005);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2022 17:24:56.0651
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bf6b998-fc9d-4ad3-f00d-08daa0ad3272
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	CO1NAM11FT039.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB5450
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ----
X-Rspamd-Queue-Id: 7AC5C3EBFD
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	HAS_XOIP(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.212.52:from]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=5KpjGn73;
	spf=pass (lists.linaro.org: domain of Arvind.Yadav@amd.com designates 40.107.212.52 as permitted sender) smtp.mailfrom=Arvind.Yadav@amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
X-MailFrom: Arvind.Yadav@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EF6T2NST5I5YLKQVJN4Y2B7OSLRT4SJJ
X-Message-ID-Hash: EF6T2NST5I5YLKQVJN4Y2B7OSLRT4SJJ
X-Mailman-Approved-At: Tue, 25 Oct 2022 05:31:26 +0000
CC: Arvind Yadav <Arvind.Yadav@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/3] dma-buf: Check status of enable-signaling bit on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EF6T2NST5I5YLKQVJN4Y2B7OSLRT4SJJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RmVuY2Ugc2lnbmFsaW5nIG11c3QgYmUgZW5hYmxlZCB0byBtYWtlIHN1cmUgdGhhdA0KdGhlIGRt
YV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQoKSBmdW5jdGlvbiBldmVyIHJldHVybnMgdHJ1ZS4N
ClNpbmNlIGRyaXZlcnMgYW5kIGltcGxlbWVudGF0aW9ucyBzb21ldGltZXMgbWVzcyB0aGlzIHVw
LA0KdGhpcyBlbnN1cmVzwqBjb3JyZWN0IGJlaGF2aW91ciB3aGVuIERNQUJVRl9ERUJVR19FTkFC
TEVfU0lHTkFMSU5HDQppcyB1c2VkIGR1cmluZyBkZWJ1Z2dpbmcuDQpUaGlzIHNob3VsZCBtYWtl
IGFueSBpbXBsZW1lbnRhdGlvbiBidWdzIHJlc3VsdGluZyBpbiBub3QNCnNpZ25hbGVkIGZlbmNl
cyBtdWNoIG1vcmUgb2J2aW91cy4NCg0KU2lnbmVkLW9mZi1ieTogQXJ2aW5kIFlhZGF2IDxBcnZp
bmQuWWFkYXZAYW1kLmNvbT4NCi0tLQ0KIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggfCA1ICsr
KysrDQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9saW51eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCmluZGV4
IDc3NWNkYzBiNGYyNC4uNTE1NmRjNmJlMGE2IDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UuaA0KKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KQEAgLTM5OCw2ICsz
OTgsMTEgQEAgdm9pZCBkbWFfZmVuY2VfZW5hYmxlX3N3X3NpZ25hbGluZyhzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSk7DQogc3RhdGljIGlubGluZSBib29sDQogZG1hX2ZlbmNlX2lzX3NpZ25hbGVk
X2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCiB7DQorI2lmZGVmIENPTkZJR19ETUFC
VUZfREVCVUdfRU5BQkxFX1NJR05BTElORw0KKwlpZiAoIXRlc3RfYml0KERNQV9GRU5DRV9GTEFH
X0VOQUJMRV9TSUdOQUxfQklULCAmZmVuY2UtPmZsYWdzKSkNCisJCXJldHVybiBmYWxzZTsNCisj
ZW5kaWYNCisNCiAJaWYgKHRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwgJmZl
bmNlLT5mbGFncykpDQogCQlyZXR1cm4gdHJ1ZTsNCiANCi0tIA0KMi4yNS4xDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
