Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E8045604396
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:43:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 05A413F1BB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:43:30 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-sn1anam02on2081.outbound.protection.outlook.com [40.107.96.81])
	by lists.linaro.org (Postfix) with ESMTPS id 9C3343F4B5
	for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Sep 2022 17:10:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ql2fpg+6JcEvAXY1UNhN28m3MDCmymHjeBsHNizPEuplZPMqURX2wTqeaTpB5xNteoJhA6AEIw7mkwlX2SvjZNwxhHdVF65m2zZdG47KTye9ukf5aWrmkNxzpjmoJgAyOYKzTMyFVAFFTS2dqT+g5Yv1sMLsA6kZEMrerbXgthRqtm//oWrsz5o7rldS6hyYW5GvMGsUzABaSxV4Em/sxZ+lg/yadP8y6ZCCjM4QL3+MT4manIfE0dLUGh5YfXPm5ZrfpI7ujTB95rxkGyzAKtFpWAJg1SIh7/iNmLO1XKjrsQtHGEm0TCyEZRgaXwMmqDyCZpc87qaiZl+F40ZYvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jN5zHMAS5qCzEG2s2Awu4a0yhtajsUBmQZQF9De4neE=;
 b=A3b5EUNqXa6hPQT4CPBOv/iGGN5R1LklnKa/A5EGzcCJrnIc5tbV7SlIGwETmuwW/VsSVzC9wuwpgt6rfAPiZouGEaKKwOe0JBw03ggCgI10ucKRYd4hrJOncW3IihRZWTKuJ7Rag1uOauXV8yl5OVNKlDDvbKPlbKD06zLi1X7Ivd8i8YNk5WmplBpfuqEeSe2BB06SQ4kTaOFxODTRMADtZS1lCchuqOlJ1FQzAuP8KqydZcHuMYf67jYouGrSNyc0FpXQCA5tokWyD4TBROItqLQx76utvlRHX9/2wWfihogopMcb1gENg+BBnObdtGJyrRPjKVtHQnH64r7ZUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=linaro.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jN5zHMAS5qCzEG2s2Awu4a0yhtajsUBmQZQF9De4neE=;
 b=lJzzi9ieVaBaRod5bpG6wtJB3AhAzHMQE84ceKscdvP4k013E4zaq503oKsiIsJDwJYwnRAJdsSXg8RlFevBv5wK3FKxglca6mZdDSrDxQALsQBQ1Shlk6ymC1SM7kQbWNvjiEDbFjBi5D5XOZ5cso9ujvLoXI8HQjNIqqbRQXU=
Received: from BN0PR02CA0009.namprd02.prod.outlook.com (2603:10b6:408:e4::14)
 by SN7PR12MB7372.namprd12.prod.outlook.com (2603:10b6:806:29b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.18; Fri, 9 Sep
 2022 17:10:56 +0000
Received: from BN8NAM11FT104.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:e4:cafe::e1) by BN0PR02CA0009.outlook.office365.com
 (2603:10b6:408:e4::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.12 via Frontend
 Transport; Fri, 9 Sep 2022 17:10:56 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 BN8NAM11FT104.mail.protection.outlook.com (10.13.177.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5612.13 via Frontend Transport; Fri, 9 Sep 2022 17:10:56 +0000
Received: from amd.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Fri, 9 Sep
 2022 12:10:51 -0500
From: Arvind Yadav <Arvind.Yadav@amd.com>
To: <Christian.Koenig@amd.com>, <andrey.grodzovsky@amd.com>,
	<shashank.sharma@amd.com>, <amaranath.somalapuram@amd.com>,
	<Arunpravin.PaneerSelvam@amd.com>, <sumit.semwal@linaro.org>,
	<gustavo@padovan.org>, <airlied@linux.ie>, <daniel@ffwll.ch>,
	<linux-media@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
	<linaro-mm-sig@lists.linaro.org>, <linux-kernel@vger.kernel.org>
Date: Fri, 9 Sep 2022 22:38:45 +0530
Message-ID: <20220909170845.4946-7-Arvind.Yadav@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220909170845.4946-1-Arvind.Yadav@amd.com>
References: <20220909170845.4946-1-Arvind.Yadav@amd.com>
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB04.amd.com (10.181.40.145) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT104:EE_|SN7PR12MB7372:EE_
X-MS-Office365-Filtering-Correlation-Id: 6bf1b7dd-d50a-4efb-cc07-08da92864267
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JDgxQvs09GAUpOeuKuLIIyvZ95+8K4Jq1kPcW9eYHVZgwhF6V0TU2XW9QmzhXln88KQeqXS/ovbQi1tqrokA0F7dLHwUQIi1/HoSGSHP8uLI+pqyKSx1JyXKu5xjGNVxYumVshILjEnulScuBeDkvyltrIVIX17c+Z8opbCr6+WV/OQBG5F0w2nT9m6YAEL+ZydwNOxIYeXo8TP6IMT2lGoAQsnGaCiYY47sQzH6dDuCSy+iwQ+RvPNattv7kGToW75iYdjUdFs8avlIMIQVzyWd5qHGW13CeHHE0owp06GrB/pyJQYbivQmDy6XucwuYiEZfbdSChavAOd5BnEC0j8NYG76PiLB++tJFV4HtxExgVkj5lpwm2Yymu0ktAg6YCBNhQ1QgEOU3LDk7qsnBzARDffazOIzqPf7D4QlydO1/ow7gdaApp8e+aFiEx7ZJRKAENBfhXhjJGtRfLm9SGdsSd+eZINLoj+8rLYz4VJoYD+bltCkjkJkkS9Ak9iyvsfv70xul0Jjf1s7EOlrVjscRgj4yGaVNTts4KNl6BuQCl69IR2efv8RMBqjetrhbQy1yGLNH3ym5iOa0Cts39RaRogPI8A/nQbAnylE6qJhvmFll8YzoyY+xQs+N6O+erFXFREv4FDxtx12cuTVhloFyAJ2foT6XgcO3Dn/iWEduUIyZzi3napWGKbDYlZ65aIbK27eXdQcfE0JUdcN0TzpCCwhvhKby0XTYkC/5wVvZYPyjU0ZtNJs66IkkE+Gd0M3mC/Pd7bxSrudOUo1Fz75u19rQxFaJylE3Rz4lKJxLBnzUhnNnYdf174lJcFezGpKqIqIzh0TJiOgDgNQjvDRMPrkUGRePJS/Uk1t1oQ=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230016)(4636009)(346002)(376002)(396003)(136003)(39860400002)(40470700004)(36840700001)(46966006)(7696005)(316002)(36860700001)(356005)(8676002)(336012)(921005)(70586007)(70206006)(4326008)(2616005)(82740400003)(1076003)(81166007)(41300700001)(426003)(16526019)(186003)(47076005)(6666004)(110136005)(26005)(40460700003)(83380400001)(86362001)(8936002)(2906002)(5660300002)(478600001)(36756003)(82310400005)(40480700001)(83996005)(36900700001)(2101003);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2022 17:10:56.3093
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bf1b7dd-d50a-4efb-cc07-08da92864267
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	BN8NAM11FT104.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7372
X-MailFrom: Arvind.Yadav@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6FWNYEPJSAPNIQNTDECEX6LROZCPRF4X
X-Message-ID-Hash: 6FWNYEPJSAPNIQNTDECEX6LROZCPRF4X
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:38:20 +0000
CC: Arvind Yadav <Arvind.Yadav@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 6/6] dma-buf: Check status of enable-signaling bit on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6FWNYEPJSAPNIQNTDECEX6LROZCPRF4X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RmVuY2Ugc2lnbmFsaW5nIG11c3QgYmUgZW5hYmxlZCB0byBtYWtlIHN1cmUgdGhhdA0KdGhlIGRt
YV9mZW5jZV9pc19zaWduYWxlZCgpIGZ1bmN0aW9uIGV2ZXIgcmV0dXJucyB0cnVlLg0KU2luY2Ug
ZHJpdmVycyBhbmQgaW1wbGVtZW50YXRpb25zIHNvbWV0aW1lcyBtZXNzIHRoaXMgdXAsDQp0aGlz
IGVuc3VyZXPCoGNvcnJlY3QgYmVoYXZpb3VyIHdoZW4gREVCVUdfV1dfTVVURVhfU0xPV1BBVEgN
CmlzIHVzZWQgZHVyaW5nIGRlYnVnZ2luZy4NClRoaXMgc2hvdWxkIG1ha2UgYW55IGltcGxlbWVu
dGF0aW9uIGJ1Z3MgcmVzdWx0aW5nIGluIG5vdA0Kc2lnbmFsZWQgZmVuY2VzIG11Y2ggbW9yZSBv
YnZpb3VzLg0KDQpTaWduZWQtb2ZmLWJ5OiBBcnZpbmQgWWFkYXYgPEFydmluZC5ZYWRhdkBhbWQu
Y29tPg0KLS0tDQoNCkNoYW5nZXMgaW4gdjEsdjIgOg0KMS0gQWRkcmVzc2luZyBDaHJpc3RpYW4n
cyBjb21tZW50IHRvIHJlcGxhY2UNCkNPTkZJR19ERUJVR19XV19NVVRFWF9TTE9XUEFUSCBpbnN0
ZWFkIG9mIENPTkZJR19ERUJVR19GUy4NCjItIEFzIHBlciBDaHJpc3RpYW4ncyBjb21tZW50IG1v
dmluZyB0aGlzIHBhdGNoIGF0IGxhc3Qgc28NClRoZSB2ZXJzaW9uIG9mIHRoaXMgcGF0Y2ggaXMg
YWxzbyBjaGFuZ2VkIGFuZCBwcmV2aW91c2x5DQppdCB3YXMgW1BBVENIIDEvNF0NCg0KLS0tDQog
aW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCB8IDUgKysrKysNCiAxIGZpbGUgY2hhbmdlZCwgNSBp
bnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIGIv
aW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KaW5kZXggNzc1Y2RjMGI0ZjI0Li5iYTFkZGMxNGM1
ZDQgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQorKysgYi9pbmNsdWRl
L2xpbnV4L2RtYS1mZW5jZS5oDQpAQCAtNDI4LDYgKzQyOCwxMSBAQCBkbWFfZmVuY2VfaXNfc2ln
bmFsZWRfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KIHN0YXRpYyBpbmxpbmUgYm9v
bA0KIGRtYV9mZW5jZV9pc19zaWduYWxlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCiB7DQor
I2lmZGVmIENPTkZJR19ERUJVR19XV19NVVRFWF9TTE9XUEFUSA0KKwlpZiAoIXRlc3RfYml0KERN
QV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULCAmZmVuY2UtPmZsYWdzKSkNCisJCXJldHVy
biBmYWxzZTsNCisjZW5kaWYNCisNCiAJaWYgKHRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05B
TEVEX0JJVCwgJmZlbmNlLT5mbGFncykpDQogCQlyZXR1cm4gdHJ1ZTsNCiANCi0tIA0KMi4yNS4x
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
