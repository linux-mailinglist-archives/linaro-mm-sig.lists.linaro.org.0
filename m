Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B351857B2C1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 10:21:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8AF74047A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 08:21:40 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2041.outbound.protection.outlook.com [40.107.237.41])
	by lists.linaro.org (Postfix) with ESMTPS id D95CC3EE9F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jun 2022 06:03:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ldUfPkZKCAyeU/6Dg+VS+21dh2LkrOQlgOP1GLHa041n1la8mPYLNxorhnr31niSZSq6/8T8T1GcG7aBim+/SzkGRFyqI3X2n+FhZ2R7RtNoP4vXP+SJ0ExcFuPvScT6x6SbRgYwSTt897xXOKPWkCnXpf/jLO5Tg0SE3Djkm+4YtX6E5iF4nY2p1SgMOfVDznLXxknDRtosLi5luan2irx7Mm5BAHeFIkbOV/Vtn5fJ70weW3cpLUhvj/QwWASnuazJ7cffIDHPQz3B5ALVFTU0NAXWjfbpmNlMVgmih443rFpXLlVQ2iAoXvfvFcpuX5lVcB+xKnx8cGkQZ+USGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WZ+TcqCFNllt9qXQfWvqmWXpPxrDwf0BuFxNn4y5tQw=;
 b=g603jFTNZl7w5H+lv/VPywe61AEx2zoM3I0+gFDXn7NvRj63EBKN8bJ0ho+o9nlghLSrJf2gG9RIneWsm6KkDLbiB93ReKwjQv71inxdUGDiC8Cd9/NQM0ai7+8oULU0d0PawiON6DK51gvbHIGbTlJSmwx4OBCLq35FmoIQUNk7wlhd5kZXQkO/hnmsFLwX9dFFNGWRVSmoOBeAWz+Gbp1KIpuvtdMYtJqGMPz5NJrYBZ1FrrHdtpuN6bXvOZMto52Qg9/9is90vrwmFoV4vspu9E5I/771ZJSdKtlLU8VFzIcMuYrSeWQjhrtFI3t6TV04pKIG/8rOhMK7ai/h+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WZ+TcqCFNllt9qXQfWvqmWXpPxrDwf0BuFxNn4y5tQw=;
 b=Q70vYaCghWBW2kc7R0pSvGyPJmw1fSHvW2fJSlLjymgQ4xI1AJNvjrLFnaSpFv3HRdsq3voBiQUfu1VafCU2VV5F17tKQMXAV8MiO+pjTgwtA3XIYdgyrX0prv58ia31WQ5o4myHV6uT8urqcf5En1a4SrQW/kZ3uGKT/Z4xqlk=
Received: from DM6PR02CA0120.namprd02.prod.outlook.com (2603:10b6:5:1b4::22)
 by BN6PR12MB1459.namprd12.prod.outlook.com (2603:10b6:405:e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.16; Wed, 29 Jun
 2022 06:03:22 +0000
Received: from DM6NAM11FT044.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:1b4:cafe::3e) by DM6PR02CA0120.outlook.office365.com
 (2603:10b6:5:1b4::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.16 via Frontend
 Transport; Wed, 29 Jun 2022 06:03:21 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 DM6NAM11FT044.mail.protection.outlook.com (10.13.173.185) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5373.15 via Frontend Transport; Wed, 29 Jun 2022 06:02:49 +0000
Received: from SATLEXMB05.amd.com (10.181.40.146) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Wed, 29 Jun
 2022 01:02:48 -0500
Received: from SATLEXMB04.amd.com (10.181.40.145) by SATLEXMB05.amd.com
 (10.181.40.146) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Wed, 29 Jun
 2022 01:02:41 -0500
Received: from dev-desktop.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Wed, 29 Jun 2022 01:02:37 -0500
From: jie1zhan <jesse.zhang@amd.com>
To: <broonie@kernel.org>, <alsa-devel@alsa-project.org>
Date: Wed, 29 Jun 2022 14:02:36 +0800
Message-ID: <20220629060236.3283445-1-jesse.zhang@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9f8096e2-bdd3-4ebc-fc22-08da59951234
X-MS-TrafficTypeDiagnostic: BN6PR12MB1459:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	VxO6VteLK1W0be7er/A6cSemlLxgh6NjatnY574S0N7+NXZQcBTohgxgieiI9uHwiQygOYEIXpL3tv0QYjNhhuCgs8O+ZSazBtlsUU1kDnWtwx1t6pB4u7vI1j02U0bZmZJ+TQG98WSvL8DMqOqDNEi81Axe42Xn6PSO9zcJf2CACjfG+iGJ1nLabtmViP/TjjFo9MMDb6Yp47uNYl6SFlxcpI/JCKLhTh1iTnDyOFXoAJnZ8GY+g/qpZJHCrdlvZeMy1Lj7fSs7tUumFYGSC/fZfKBCHZhrLQsn7NgEBrdaytUW5EZSRP0W0hMDKT8KM7ifD7/ZLIjynI8uCWBIEJpi/ZOCEYqKOn2o2baqWE3FRU6EjOF/VhPzTyZ5gumwPRuKRGnseEi3WBpDXWOKVxb2508TITcqGazUXx8na1Hi6ItLhtZZkXQYuNgma03UhqB+6jFB8reLt7d0uWLTmLV7IKjuu37knxbMsclly+K9RJxn0jLQIUgvKJHve89QN8+L5R9Ir6wKq5Z5z+DpwF14t+REinVkUGA6BcCeaeZq9j66ym0vVoP7/7tCS0CwLmrlTFaH0We7KW9Us0ULtQrevs23yXLd+0BUzF2+3MArZQCgIYrY8nV3owDOFjrmk8QWe8ZR4qE3djM0McuqZu4qw6pthr5X8pAIkdfJnZjKk1zmkpCCL4eejXD7jNByUZxdM9lHzXVdjocnjg4AVqpdQgQwYr1FzHoFOTrlNC4Fbx/yP1M9bvsPlkdaJiOGM65i6Sdt8BWlawheoi6mJ59nUP7uXr6fA+oj0F9bPvF3hTzi9Dz42N4E1f8ifhMO3UY1m45gUfLOYdtaaNJ9pGn8hVrGaStxlxyNCwvGbFnCwVt6l9BpUif0We2fZykEA8K4awp1x6g2gWpleIyRfgvyuBI12vJDdTKxdsjC4Jo=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230016)(4636009)(396003)(39860400002)(376002)(136003)(346002)(46966006)(36840700001)(40470700004)(426003)(82310400005)(186003)(336012)(66574015)(83380400001)(36860700001)(47076005)(81166007)(82740400003)(41300700001)(8936002)(356005)(40480700001)(40460700003)(7696005)(4326008)(26005)(5660300002)(8676002)(478600001)(2906002)(70206006)(4744005)(1076003)(70586007)(2616005)(54906003)(86362001)(7416002)(110136005)(36756003)(316002)(43062005)(36900700001)(414714003)(473944003);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2022 06:02:49.7142
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f8096e2-bdd3-4ebc-fc22-08da59951234
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DM6NAM11FT044.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR12MB1459
X-MailFrom: Jesse.Zhang@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NULNW7WTO6CATSCEZ2AEU4AQ226N2LAE
X-Message-ID-Hash: NULNW7WTO6CATSCEZ2AEU4AQ226N2LAE
X-Mailman-Approved-At: Wed, 20 Jul 2022 08:21:38 +0000
CC: Vijendar.Mukunda@amd.com, Basavaraj.Hiregoudar@amd.com, Sunil-kumar.Dommati@amd.com, ajitkumar.pandey@amd.com, jie1zhan <jesse.zhang@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Nirmoy Das <nirmoy.das@linux.intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v1] Fix: SYNCOBJ TIMELINE Test failed.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NULNW7WTO6CATSCEZ2AEU4AQ226N2LAE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

IFRoZSBpc3N1ZSBjYXVzZSBieSB0aGUgY29tbWl0IDoNCg0KNzIxMjU1YjUyNyhkcm0vc3luY29i
ajogZmxhdHRlbiBkbWFfZmVuY2VfY2hhaW5zIG9uIHRyYW5zZmVyKS4NCg0KQmVjYXVzZSBpdCB1
c2UgdGhlIHBvaW50IG9mIGRtYV9mZW5jZSBpbmNvcnJlY3RseQ0KDQpDb3JyZWN0IHRoZSBwb2lu
dCBvZiBkbWFfZmVuY2UgYnkgZmVuY2UgYXJyYXkNCg0KU2lnbmVkLW9mZi1ieTogamllMXpoYW4g
PGplc3NlLnpoYW5nQGFtZC5jb20+DQoNClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNClJldmlld2VkLWJ5OiBOaXJtb3kgRGFzIDxuaXJt
b3kuZGFzQGxpbnV4LmludGVsLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29i
ai5jIHwgMiArLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMgYi9kcml2ZXJz
L2dwdS9kcm0vZHJtX3N5bmNvYmouYw0KaW5kZXggN2U0OGRjZDFiZWU0Li5kNWRiODE4ZjFjNzYg
MTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYw0KKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2RybV9zeW5jb2JqLmMNCkBAIC04ODcsNyArODg3LDcgQEAgc3RhdGljIGludCBk
cm1fc3luY29ial9mbGF0dGVuX2NoYWluKHN0cnVjdCBkbWFfZmVuY2UgKipmKQ0KIAkJZ290byBm
cmVlX2ZlbmNlczsNCiANCiAJZG1hX2ZlbmNlX3B1dCgqZik7DQotCSpmID0gJmFycmF5LT5iYXNl
Ow0KKwkqZiA9IGFycmF5LT5mZW5jZXNbMF07DQogCXJldHVybiAwOw0KIA0KIGZyZWVfZmVuY2Vz
Og0KLS0gDQoyLjI1LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
