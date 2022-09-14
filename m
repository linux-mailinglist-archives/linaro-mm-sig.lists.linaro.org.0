Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B66B46043AF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:46:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BDD0F3ED3D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:46:57 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam07on2050.outbound.protection.outlook.com [40.107.212.50])
	by lists.linaro.org (Postfix) with ESMTPS id D32DE3F460
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Sep 2022 16:44:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xy5uQsNhf2fgkX2EK4nUqhSMOBUKXviGkybVHHSd8pLD5ReMcl9mLZsl3dPW/O83GwAdkDK8UTYNCoj7pckw5s3ULRI8fRt8RGjPmLKA7DS7KYoSIEBWVsamf07/jJtbrcG0ANnqFPc3Ujpy6bmEzZheMzhGpKK5Z1ZbfulTGvhfd8TVB/q3SCNTMiqxLHsp9kknNZnBzl9JA87+lzb/YGl6w5ey9iW5GSfleswM5hPkxeQV0ldElvGbbdI+EsOnTPLezsI49TLFK7mKUMhiTNTzkmmTmgbcr6Tki21Z5XxRfKMQBKchh/BtewHp0ed2QmKvIPRtYYehxTCvNLsa6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EHKQo3CbRkA/356+OZefIRvz4ZXAuBE+hL6lilRuDE4=;
 b=I5Vbup2Uuf9rFsAB3Y5xu8zImvQbcA9/H6Jk2hHoPx7VWhs6DdyYzkev5GihJADsBFW33tXtIPYCXruBAK5eB+8MdKt6fbEl6cJmDGhAAS8NdsKQ2mB7i4dbHDbebOLT22SUdV68vlKFSikinWomX8Z+BPSXTkmzv8K/fVhpOIpznfu2zAZFgKbqu8+YBnVI0b4wxpvorAlEW+em8JTXUJHDjIpU3uBcYCFWa5FLFrFPnI2HMNyrmmunZ5fmekRO8PTR7CkGiZHYXbV/Al6r8JFH3L0yMFobMwRgmQZoJzTntmt2gOYLEDAuIXnCCTAEfeZNVsVBZeaPFKVaea4uqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=linaro.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EHKQo3CbRkA/356+OZefIRvz4ZXAuBE+hL6lilRuDE4=;
 b=LSSS96hhKQSV3AhNHtxdv9LDHkP2gJP+xkf7DemcGHMdj1jVGK6NF34xLpMXjxJVBA6CsBS+xDAvt9zMlz1q/B4tcuGoLnuGMVrNEjBiKXDF2dTTX6ws0DQg+4xj8yrtI+HjcFOqaJCxjM9kI8V3YiLwasGLhsdfJSD3+MT+ZwQ=
Received: from BN0PR08CA0030.namprd08.prod.outlook.com (2603:10b6:408:142::9)
 by MW4PR12MB7013.namprd12.prod.outlook.com (2603:10b6:303:218::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.14; Wed, 14 Sep
 2022 16:44:57 +0000
Received: from BN8NAM11FT073.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:142:cafe::4a) by BN0PR08CA0030.outlook.office365.com
 (2603:10b6:408:142::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.14 via Frontend
 Transport; Wed, 14 Sep 2022 16:44:56 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 BN8NAM11FT073.mail.protection.outlook.com (10.13.177.231) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5632.12 via Frontend Transport; Wed, 14 Sep 2022 16:44:56 +0000
Received: from amd.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Wed, 14 Sep
 2022 11:44:52 -0500
From: Arvind Yadav <Arvind.Yadav@amd.com>
To: <Christian.Koenig@amd.com>, <andrey.grodzovsky@amd.com>,
	<shashank.sharma@amd.com>, <amaranath.somalapuram@amd.com>,
	<Arunpravin.PaneerSelvam@amd.com>, <sumit.semwal@linaro.org>,
	<gustavo@padovan.org>, <airlied@linux.ie>, <daniel@ffwll.ch>,
	<linux-media@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
	<linaro-mm-sig@lists.linaro.org>, <linux-kernel@vger.kernel.org>
Date: Wed, 14 Sep 2022 22:13:17 +0530
Message-ID: <20220914164321.2156-3-Arvind.Yadav@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220914164321.2156-1-Arvind.Yadav@amd.com>
References: <20220914164321.2156-1-Arvind.Yadav@amd.com>
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB03.amd.com (10.181.40.144) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT073:EE_|MW4PR12MB7013:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c6c9833-ff8a-4ebe-57a3-08da967074ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	iPa48RNuGwLMybk1SNRLkEicIjC766KkT2LDIljdi3+FVr0kRRPerOtvb66ZvySqq9PztYYRS1qFZhh+jXDhQ59Nvdjl+Mzg7gw9PYxvj2ze/TGqgzBXLNfAWSKO7gJXfHGHvN1pxOfU/CgsnfHcrLdOUqYvkyRgE6IvzaFLD4GdC3ZnmsgzJi+0KDwyd1rGpYnaKaYhrleEcG4ZQfEivDJVqeyxgLt+whXz2g2hJQ0BMbkdgezpWjTXbmQTRSmsn4/g8UtQgH/XW/B/mI8I0gF3UOLff1Kr0az9YY4HxrRcd6TskHywd5Ic8GiCcg+X8Jgc6CCHmNdZYRCfsu7dKZvcEKyyu9yjC7+evWU7lAinXSwgr7hPh0JRjYFhbbNEjrQo7eJBWNPbwbv//2CJtkPrONtR4SEOuajWXG2ViB7X0WeImmGDInOwGAJmr3RrrzjxHE3lVB1jgyPF1HSRTQVUMOfw9Fm4r/FcY7TKwGAZZl28k4tuNF0gw5SRvtD0oiakAn2chF3B6wlkEkhK0ttGZDCmKBTkqsD064NfF9dIpSV7ZJ8XDQy7HOjdY1V2+ALFZN8Jy1/sKs3ReItoLjJUhqDoXhVslMRftv15KuZRJrMhni4d3H3fc2ymIgbEIaaXp7FL2EMLqquna6mY/f85DLWatLWMP+tvXAsa7B27RDii59+usIpHuKLuxhsWjl5I6X+RyjqRJTHiP5CDnrYhu7CXMxw1URbnyW0UOvRfcEwyU8xPkpUbNtLJ7I4sipd+kpJc4lX5dlCOoZgqKPQqEUIXiJoUS58fN00l2NIB/+AKkBxru9qvBTlckem90Kbolfzfeu18mgI6Tivx/n3JGw7cVvZyVE+2DQUB4kuBWfG0TOs0ztpRqrCQ8XPD
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230022)(4636009)(136003)(346002)(396003)(39860400002)(376002)(451199015)(40470700004)(36840700001)(46966006)(47076005)(82740400003)(81166007)(36756003)(356005)(426003)(921005)(336012)(316002)(2616005)(40480700001)(82310400005)(1076003)(6666004)(2906002)(8676002)(40460700003)(110136005)(66574015)(70206006)(186003)(7696005)(83380400001)(26005)(478600001)(86362001)(54906003)(41300700001)(70586007)(16526019)(5660300002)(4326008)(36860700001)(8936002)(83996005)(36900700001)(2101003);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 16:44:56.4438
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c6c9833-ff8a-4ebe-57a3-08da967074ba
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	BN8NAM11FT073.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7013
X-MailFrom: Arvind.Yadav@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6KT2OF7P3B3SGWF535XMA6YBSQAC35IG
X-Message-ID-Hash: 6KT2OF7P3B3SGWF535XMA6YBSQAC35IG
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:46:01 +0000
CC: Arvind Yadav <Arvind.Yadav@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 2/6] dma-buf: set signaling bit for the stub fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6KT2OF7P3B3SGWF535XMA6YBSQAC35IG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVyZSdzIHNldHRpbmcgc29mdHdhcmUgc2lnbmFsaW5nIGJpdCBmb3IgdGhlIHN0dWIgZmVuY2UN
CndoaWNoIGlzIGFsd2F5cyBzaWduYWxlZC4gSWYgdGhpcyBmZW5jZSBzaWduYWxpbmcgYml0IGlz
DQpub3Qgc2V0IHRoZW4gdGhlIEFNRCBHUFUgc2NoZWR1bGVyIHdpbGwgY2F1c2UgYSBHUFUgcmVz
ZXQNCmR1ZSB0byBhIEdQVSBzY2hlZHVsZXIgY2xlYW51cCBhY3Rpdml0eSB0aW1lb3V0Lg0KDQpT
aWduZWQtb2ZmLWJ5OiBBcnZpbmQgWWFkYXYgPEFydmluZC5ZYWRhdkBhbWQuY29tPg0KUmV2aWV3
ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0tLQ0K
DQpDaGFuZ2VzIGluIHYxIDoNCjEtIEFkZHJlc3NpbmcgQ2hyaXN0aWFuJ3MgY29tbWVudCB0byBy
ZW1vdmUgdW5uZWNlc3NhcnkgY2FsbGJhY2suDQoyLSBSZXBsYWNpbmcgQ09ORklHX0RFQlVHX1dX
X01VVEVYX1NMT1dQQVRIIGluc3RlYWQgb2YgQ09ORklHX0RFQlVHX0ZTLg0KMy0gVGhlIHZlcnNp
b24gb2YgdGhpcyBwYXRjaCBpcyBhbHNvIGNoYW5nZWQgYW5kIHByZXZpb3VzbHkNCml0IHdhcyBb
UEFUQ0ggMy80XQ0KDQpDaGFuZ2VzIGluIHYyIDoNCjEgLSBwZXJ2aW91c2x5IHVzaW5nICBfX2Rt
YV9mZW5jZV9lbmFibGVfc2lnbmFsaW5nKCkgZm9yIGVuYWJsZQ0Kc2lnbmFsaW5nLg0KMiAtICNp
ZmRlZiBDT05GSUdfREVCVUdfV1dfTVVURVhfU0xPV1BBVEggIHJlbW92ZWQNCg0KQ2hhbmdlcyBp
biB2MyA6DQoxIC0gRW5hYmxlIFNpZ25hbGluZyBiaXQgZm9yIGRtYV9mZW5jZV9hbGxvY2F0ZV9w
cml2YXRlX3N0dWIuDQoNCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDggKysr
KysrKysNCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMN
CmluZGV4IDY0Yzk5NzM5YWQyMy4uNjQ1YzE1OGI3ZTAxIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCkBA
IC0xMzYsNiArMTM2LDEwIEBAIHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZV9nZXRfc3R1Yih2
b2lkKQ0KIAkJCSAgICAgICAmZG1hX2ZlbmNlX3N0dWJfb3BzLA0KIAkJCSAgICAgICAmZG1hX2Zl
bmNlX3N0dWJfbG9jaywNCiAJCQkgICAgICAgMCwgMCk7DQorDQorCQlzZXRfYml0KERNQV9GRU5D
RV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULA0KKwkJCSZkbWFfZmVuY2Vfc3R1Yi5mbGFncyk7DQor
DQogCQlkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZCgmZG1hX2ZlbmNlX3N0dWIpOw0KIAl9DQogCXNw
aW5fdW5sb2NrKCZkbWFfZmVuY2Vfc3R1Yl9sb2NrKTsNCkBAIC0xNjEsNiArMTY1LDEwIEBAIHN0
cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZV9hbGxvY2F0ZV9wcml2YXRlX3N0dWIodm9pZCkNCiAJ
CSAgICAgICAmZG1hX2ZlbmNlX3N0dWJfb3BzLA0KIAkJICAgICAgICZkbWFfZmVuY2Vfc3R1Yl9s
b2NrLA0KIAkJICAgICAgIDAsIDApOw0KKw0KKwlzZXRfYml0KERNQV9GRU5DRV9GTEFHX0VOQUJM
RV9TSUdOQUxfQklULA0KKwkJJmRtYV9mZW5jZV9zdHViLmZsYWdzKTsNCisNCiAJZG1hX2ZlbmNl
X3NpZ25hbChmZW5jZSk7DQogDQogCXJldHVybiBmZW5jZTsNCi0tIA0KMi4yNS4xDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
