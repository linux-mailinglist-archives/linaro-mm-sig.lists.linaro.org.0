Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F2797604387
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:41:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 068BD3F48D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:41:22 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2076.outbound.protection.outlook.com [40.107.92.76])
	by lists.linaro.org (Postfix) with ESMTPS id D75413F4B5
	for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Sep 2022 17:09:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nWEtDherlqw7+2ZICmXlKkdcWkwnDoXlI3QMkyUG2koyyD8FLdt2ooVyIsyDUhAyizeRzJIerTbSHIMs/Yrk7A9p1cRnZHbzOQfGAbhbMwxEU6D4pE5aWgJRWoVv/ujtpgeZfG6sV55SpguHfCV0t8LlfkphKUxjGsfsrCaokDbagWmtpS1JMonADSDgkeVT4NORCdPLSbT6AmcjRfgDxxGvCdVOXp8E59gbWqHn5+0WadBtqRedvc16ct+Teij+ErYT3H/jd/b1wQ5xoPTJGhSSDrELIm2iJPqhG7HixC8tH2XRMS7vm5EFFgy7CELDiTeOd3npUNp0MSHBa9U4cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CqCq7BFen/lvI44nWJu+9M2Vdr4wby/jQzVN6M00s8E=;
 b=YFekF5DU++920t5Sj61K0f/bHXZbFiNYVu0C+EXDaFP3s0MANqGmZlQ+4qnS8IYSKL0kzxYHvcBJi4QN5zWkqT/Z8LYuvrm6VhccsBJhAqnIybPI6F/X/sy+Ir9xptHAuxrQpJgS9BFGHnop6rnCGgSHBwVsUmMP4UIF8T2VeFmOhUr01vgzrC4zNIA8rFLXcjbsdEnAn04kbcx7a+/scnIHEi9TvC7gMpnkCJTQpsQBO6mI0dqDrNcH2WX2NfNjXfZTtZuLM4GNiBajtl8faYBXt7L5WzQFiPWoW+oq1dSB485LgKIqOYewqMmcdKk3bAH5xApuQn7NfHgI59Y8NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=linaro.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CqCq7BFen/lvI44nWJu+9M2Vdr4wby/jQzVN6M00s8E=;
 b=XwXxFXLACItt8bKd1i4nOTX8Es1i27+UR009K+9bkqNhEsouP+aNXHo6XamRH/Zy5Qsl2nWgekOdNQn9+ns7UhXqZwh8vn59kOiatS9IeQQAnyQvCn/M1jFpQBjaCvKkJ25du3rTZ9rhNOgEIjIwT4HwrQikRNT9X3VoWeU02PE=
Received: from MW4PR04CA0063.namprd04.prod.outlook.com (2603:10b6:303:6b::8)
 by MN0PR12MB6003.namprd12.prod.outlook.com (2603:10b6:208:37f::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.16; Fri, 9 Sep
 2022 17:09:58 +0000
Received: from CO1NAM11FT090.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:6b:cafe::e7) by MW4PR04CA0063.outlook.office365.com
 (2603:10b6:303:6b::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.21 via Frontend
 Transport; Fri, 9 Sep 2022 17:09:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 CO1NAM11FT090.mail.protection.outlook.com (10.13.175.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5612.13 via Frontend Transport; Fri, 9 Sep 2022 17:09:57 +0000
Received: from amd.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Fri, 9 Sep
 2022 12:09:52 -0500
From: Arvind Yadav <Arvind.Yadav@amd.com>
To: <Christian.Koenig@amd.com>, <andrey.grodzovsky@amd.com>,
	<shashank.sharma@amd.com>, <amaranath.somalapuram@amd.com>,
	<Arunpravin.PaneerSelvam@amd.com>, <sumit.semwal@linaro.org>,
	<gustavo@padovan.org>, <airlied@linux.ie>, <daniel@ffwll.ch>,
	<linux-media@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
	<linaro-mm-sig@lists.linaro.org>, <linux-kernel@vger.kernel.org>
Date: Fri, 9 Sep 2022 22:38:39 +0530
Message-ID: <20220909170845.4946-1-Arvind.Yadav@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB04.amd.com (10.181.40.145) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT090:EE_|MN0PR12MB6003:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c1cc80b-be04-49e7-a8f5-08da92861f39
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JN2+BLvHKQOshxvq0qDI2h2yve45rEGk0n6cQuPgwFwJOl5Lz8m+K8Gcvg8FZuMB0Z4FhEgnNKexJ1ajpBo/cKGYTFHLAjNBzYJucF9PDVzs1GUvLpCxju05yL6pcYsTIdAA5du/QkwQ77sy/b+wGmUs7qW4hZN1p69iqnD/9tBdrYma74LO0aRNdKsZMdb1qJCi2SuBcdBosUh25nR0vxDXBXQFWEA47m2bCKNP0hkETkFVGzz4OXd3uFN9d64Z0AaurlVN4cNqsFr1BxMcUNQ/uBLba56ui7VWVlbBXW+UeSUjHN3aL04iPU2OVYWT2X0BVEFM/lEi+sSdYw0FOwVB7I+4txyWpWkGvvBayaHKRouQUPqf3fBVXmjWIjH4OaISPHjZcUKhD2lMC55qjnWxp57ho8zyWZSMeApqBeZDr68v3jOegfIoUXnixRbmE3ZhDJRhDbvyzJ3q3kRxAcjV8w0MGfoYO7k0A7B4gr5cfxFytqMW49RjJy46DjboK9Kq7SxAzwb/2ACCZb8hWgbydlxV/H8CgNVksCJRRcrl6b1E27AIZCMHuEsprUe//TfSQT2EJ9kh/bSPlEHEQ+WPBPN/JujuV9Ecu4yYQZsuRm75epyMaS4an17B9TAdgNmRJF04T/e7z+JoHW1R0Z6Jwdrsv9lbEQeca3veTuDeTpRxs1GaRSnjWH/14bcsN3AcrGpY8DG8QiYUDd1bOQmbof3FXDL1UdXmBW3Wf7A6spOpXUszzYSYDcPWBxjVI424wr6TlkbEbOuArc+9Kt8SP50ICF5uic3P+ncnDl4VrTQi4WKSXYm1JyTVzPXw9QhYKEcLEwebANovBGFe4SFuFnpvafFTg8Tdt0TrWUE=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230016)(4636009)(136003)(396003)(346002)(376002)(39860400002)(40470700004)(46966006)(36840700001)(8936002)(40460700003)(40480700001)(81166007)(5660300002)(478600001)(2906002)(356005)(82740400003)(7696005)(41300700001)(36860700001)(316002)(82310400005)(6666004)(83380400001)(8676002)(16526019)(70206006)(4326008)(110136005)(47076005)(921005)(70586007)(1076003)(426003)(4743002)(336012)(2616005)(186003)(26005)(36756003)(86362001)(2101003)(36900700001)(83996005);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2022 17:09:57.1617
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c1cc80b-be04-49e7-a8f5-08da92861f39
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	CO1NAM11FT090.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6003
X-MailFrom: Arvind.Yadav@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MPLMLFTBWL2XBWRFRI6KVUMD7AI4D57S
X-Message-ID-Hash: MPLMLFTBWL2XBWRFRI6KVUMD7AI4D57S
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:38:17 +0000
CC: Arvind Yadav <Arvind.Yadav@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 0/6] dma-buf: Check status of enable-signaling bit on debug 
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MPLMLFTBWL2XBWRFRI6KVUMD7AI4D57S/>
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
YnZpb3VzLg0KDQoNCkFydmluZCBZYWRhdiAoNik6DQogIFtQQVRDSCB2MyAxLzZdIGRtYS1idWY6
IFJlbW92ZSB0aGUgc2lnbmFsZWQgYml0IHN0YXR1cyBjaGVjaw0KICBbUEFUQ0ggdjMgMi82XSBk
bWEtYnVmOiBzZXQgc2lnbmFsaW5nIGJpdCBmb3IgdGhlIHN0dWIgZmVuY2UNCiAgW1BBVENIIHYz
IDMvNl0gZG1hLWJ1ZjogRW5hYmxlIHNpZ25hbGluZyBvbiBmZW5jZSBmb3Igc2VsZnRlc3RzDQog
IFtQQVRDSCB2MyA0LzZdIGRybS9hbWRncHU6IEVuYWJsZSBzaWduYWxpbmcgb24gZmVuY2UuDQog
IFtQQVRDSCB2MyA1LzZdIGRybS9zY2hlZDogVXNlIHBhcmVudCBmZW5jZSBpbnN0ZWFkIG9mIGZp
bmlzaGVkDQogIFtQQVRDSCB2MyA2LzZdIGRtYS1idWY6IENoZWNrIHN0YXR1cyBvZiBlbmFibGUt
c2lnbmFsaW5nIGJpdCBvbiBkZWJ1Zw0KDQogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jICAg
ICAgICAgICAgIHwgIDcgKysrKy0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UtY2hh
aW4uYyAgICB8ICA0ICsrKysNCiBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLXVud3JhcC5j
ICAgfCAyMiArKysrKysrKysrKysrKysrKysrKysrDQogZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1m
ZW5jZS5jICAgICAgICAgIHwgMTYgKysrKysrKysrKysrKysrKw0KIGRyaXZlcnMvZG1hLWJ1Zi9z
dC1kbWEtcmVzdi5jICAgICAgICAgICB8IDEwICsrKysrKysrKysNCiBkcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfY3R4LmMgfCAgMiArKw0KIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVs
ZXIvc2NoZWRfbWFpbi5jICB8ICA0ICsrLS0NCiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oICAg
ICAgICAgICAgICAgfCAgNSArKysrKw0KIDggZmlsZXMgY2hhbmdlZCwgNjUgaW5zZXJ0aW9ucygr
KSwgNSBkZWxldGlvbnMoLSkNCg0KLS0gDQoyLjI1LjENCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
