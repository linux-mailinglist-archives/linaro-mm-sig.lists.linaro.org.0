Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 562366043A7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:46:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 662B73F1C3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:46:17 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2079.outbound.protection.outlook.com [40.107.92.79])
	by lists.linaro.org (Postfix) with ESMTPS id 61FA43F460
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Sep 2022 16:44:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ovmhpcu9H5VcTGkFJhJEulhh6h6yL5Zd7AvB6YwiA1xmgg+73+hlTSh/C80AwikoARK/uSRGl8BT83GjFodg59yRgU6XxWhH7YhjN9tMbqN141QM7aE26Bb0jUPr/TBo3k3f3MIu4b8VhY31AjZeXYzv6RFBPIwlT1Sv6M9ZI0GtwcPly7Kl2xKVn9yTI5qFMKU/hocYUmUBa4Lb9DiyV9j26OEVchJ/19HTXTdHKtYvW72ivpUCk3mOvl+7tu7ZL5gCBb4LUjiC7d7+I+dqKKRWpwq/jMVatT8Rw693t2NzCQ+YTJuDC5LfxESMzsjOmAl3ccG14ZsNSrreCSIIXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0SMLmMuoxRFSN9eYTijAz6hgC9Hn3OYF/sB4od3MYxg=;
 b=dlMHCUq/CuemHVbyAR+P3HUjkl6fURXjmytj0pgQfL8DBCQsT6gFAgtt6y1IBdemjt0WwfqTtdkdtViHYwVPD8bsQyo2ea4KDC3LXhWJjakHViDa3cYM2JY/QCW7LoHF3SoCzxcyxNsczJGMgN4dIE6uO8AgSgoXQ6LCmDDW0XKUHzCmPvzTOiJC71+CjMDPNEJ6WoXc7gHyXbFtgu3BHjhpTqdG4/pEGfTcAdnHntoh3HidCRzRbv6oCNBxD5YIcqGiKKWPHZVEjVrtwzX2F+ztR/A8pFOwJ43HoQjsRtG+PDt/0NvFTyv+G+M0qnhR1mwgGKcxkvUa/A2uFtpzfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=linaro.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0SMLmMuoxRFSN9eYTijAz6hgC9Hn3OYF/sB4od3MYxg=;
 b=ZOlkMg2cyFg+U3/TzPunjgXVfVf7hC+4W/5cRcf7z1YYja1y5G2nF+9Ign/NcMkumaz2DazenGQqMmQSKJI6girSTBai+aedlqVWmuq5wDuadkRTuY1wAtmEnIJb0GUO38z+sH+LlOhU4gRMWZ3N5SK/a2MA3ZliBActXMOBYOc=
Received: from BN0PR04CA0093.namprd04.prod.outlook.com (2603:10b6:408:ec::8)
 by SA1PR12MB6680.namprd12.prod.outlook.com (2603:10b6:806:253::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.12; Wed, 14 Sep
 2022 16:44:23 +0000
Received: from BN8NAM11FT108.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:ec:cafe::8c) by BN0PR04CA0093.outlook.office365.com
 (2603:10b6:408:ec::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.14 via Frontend
 Transport; Wed, 14 Sep 2022 16:44:23 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 BN8NAM11FT108.mail.protection.outlook.com (10.13.176.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5632.12 via Frontend Transport; Wed, 14 Sep 2022 16:44:22 +0000
Received: from amd.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Wed, 14 Sep
 2022 11:44:18 -0500
From: Arvind Yadav <Arvind.Yadav@amd.com>
To: <Christian.Koenig@amd.com>, <andrey.grodzovsky@amd.com>,
	<shashank.sharma@amd.com>, <amaranath.somalapuram@amd.com>,
	<Arunpravin.PaneerSelvam@amd.com>, <sumit.semwal@linaro.org>,
	<gustavo@padovan.org>, <airlied@linux.ie>, <daniel@ffwll.ch>,
	<linux-media@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
	<linaro-mm-sig@lists.linaro.org>, <linux-kernel@vger.kernel.org>
Date: Wed, 14 Sep 2022 22:13:15 +0530
Message-ID: <20220914164321.2156-1-Arvind.Yadav@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB03.amd.com (10.181.40.144) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT108:EE_|SA1PR12MB6680:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a1955de-c799-416d-9fae-08da967060bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qRStMn06f0uygl2808BqkOEKdBac+fhswf4LgA8x0Q/9rBkTN16WJPh1eUuIdRMU+fGBiZZzd0rkO6jygv92r4RxerdE4REM3LIw0obopSwSTtA+FwXrcbVHukQolu8SZALDwcsGdP1IktkwTWlOgf4qGvoSLfuzTljJ7YQs3ZjjGE2Oxv6uc39f+5/vuuzVEQF7I/x1q6iGEzuRD7OjPQSsdozlDuJx9KA0kOGw8Da2eSuXFWECuYvjUvAs1x3bpLSf6TgCoTS10ZrxIDzIfphUjzMR70ZEAqVSDcYL/obNNac31bUOhC/sGBgtae+3u0S7No5x7yCXi7K4O/m0zSkeqUVXX9mfy4KthAs3zjD1dbfehljHCVgMCV2dwphK5Tj5JfUVXX8C0EVUwFiiQ2ZrXF+UDUR6VKaKUMEpe1y1fMpHSxivmH+h84WTx6aNxrq9pBpDcEuynDl7q1oo2FJ7W9qOTjjD//DKI7TCyn7bTIinpFE0CCsGiJkozzOSY9HAaCQO2wSGf7RWmh6BPaqaDDIxo9ftLbBrUj4EibuNgsr1uMLCi9+rGOKKe/tp8r8A0Pw/8mNQTCODg/uQPs4fCdIlQoWLHR/OEIIF99rl5s32C7z+Z8UDj2sYAqdOWc9aWvGX4hAzp4rz3uI/xwhgbqfEwY/0XHvcn6P1sWYxwbQTidSUoPprIRdI6XUNZCGm8nytNR4+zLamWGPg97UN7emLyycuxlLsA629YxL2tvf2d4cHo6A1YFWqd/3gPhE37gbbBDuxAbBfUlAjsJUbIyW5WU6rTUgqm4HZ7EIOTUrFE+kcMQIf9j27TCy4Oz6oRB5/ldAzMF9po6Oa4+00JEEzGAEANPj3ceV1gFA=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230022)(4636009)(396003)(346002)(376002)(39860400002)(136003)(451199015)(36840700001)(46966006)(40470700004)(36860700001)(336012)(41300700001)(186003)(47076005)(83380400001)(36756003)(8936002)(26005)(4326008)(478600001)(316002)(70586007)(110136005)(81166007)(70206006)(82310400005)(356005)(8676002)(5660300002)(426003)(6666004)(2906002)(2616005)(86362001)(1076003)(7696005)(40460700003)(40480700001)(82740400003)(921005)(16526019)(36900700001)(83996005)(2101003);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 16:44:22.9239
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a1955de-c799-416d-9fae-08da967060bf
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	BN8NAM11FT108.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB6680
X-MailFrom: Arvind.Yadav@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZMLPFW2B2VWEXPDZ4NQ6RYYNZ6B3TIF3
X-Message-ID-Hash: ZMLPFW2B2VWEXPDZ4NQ6RYYNZ6B3TIF3
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:46:01 +0000
CC: Arvind Yadav <Arvind.Yadav@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 0/6] dma-buf: Check status of enable-signaling bit on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZMLPFW2B2VWEXPDZ4NQ6RYYNZ6B3TIF3/>
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
YnZpb3VzLg0KDQpBcnZpbmQgWWFkYXYgKDYpOg0KICBbUEFUQ0ggdjQgMS82XSBkbWEtYnVmOiBS
ZW1vdmUgdGhlIHNpZ25hbGVkIGJpdCBzdGF0dXMgY2hlY2sNCiAgW1BBVENIIHY0IDIvNl0gZG1h
LWJ1Zjogc2V0IHNpZ25hbGluZyBiaXQgZm9yIHRoZSBzdHViIGZlbmNlDQogIFtQQVRDSCB2NCAz
LzZdIGRtYS1idWY6IEVuYWJsZSBzaWduYWxpbmcgb24gZmVuY2UgZm9yIHNlbGZ0ZXN0cw0KICBb
UEFUQ0ggdjQgNC82XSBkbWEtYnVmOiBkbWFfZmVuY2Vfd2FpdCBtdXN0IGVuYWJsZSBzaWduYWxp
bmcNCiAgW1BBVENIIHY0IDUvNl0gZHJtL3NjaGVkOiBVc2UgcGFyZW50IGZlbmNlIGluc3RlYWQg
b2YgZmluaXNoZWQNCiAgW1BBVENIIHY0IDYvNl0gZG1hLWJ1ZjogQ2hlY2sgc3RhdHVzIG9mIGVu
YWJsZS1zaWduYWxpbmcgYml0IG9uIGRlYnVnDQoNCiBkcml2ZXJzL2RtYS1idWYvS2NvbmZpZyAg
ICAgICAgICAgICAgICB8ICA3ICsrKysrKysNCiBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMg
ICAgICAgICAgICB8IDE2ICsrKysrKysrKystLS0tLS0NCiBkcml2ZXJzL2RtYS1idWYvc3QtZG1h
LWZlbmNlLWNoYWluLmMgICB8ICA0ICsrKysNCiBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNl
LXVud3JhcC5jICB8IDIyICsrKysrKysrKysrKysrKysrKysrKysNCiBkcml2ZXJzL2RtYS1idWYv
c3QtZG1hLWZlbmNlLmMgICAgICAgICB8IDE2ICsrKysrKysrKysrKysrKysNCiBkcml2ZXJzL2Rt
YS1idWYvc3QtZG1hLXJlc3YuYyAgICAgICAgICB8IDEwICsrKysrKysrKysNCiBkcml2ZXJzL2dw
dS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyB8ICA0ICsrLS0NCiBpbmNsdWRlL2xpbnV4L2Rt
YS1mZW5jZS5oICAgICAgICAgICAgICB8ICA1ICsrKysrDQogOCBmaWxlcyBjaGFuZ2VkLCA3NiBp
bnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KDQotLSANCjIuMjUuMQ0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
