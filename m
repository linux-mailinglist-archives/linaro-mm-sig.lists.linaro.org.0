Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7936043C4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:48:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ACA293EE91
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:48:28 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2071.outbound.protection.outlook.com [40.107.95.71])
	by lists.linaro.org (Postfix) with ESMTPS id 6D97D3F460
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Sep 2022 16:45:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c2pBOfYEE0K6PXJ6wVX3ER8qVuitEz/loWAAHyXaNOLRtn7YU/ZxU/rTWXkdVmdtrXKNuIqFsVl7oUnFtTdoERosBszVWlXIFdBt4JJiNpGwicrA6eZPVg/noSqwBRN+Cw3tupU9S8nz6f1kxMuF28JC1TGgoGwEjymwj4BYYceNPz9tVTA3IjyiYVNmwxgUs9c6t/qrBZtJJ4QaCsjZ3Mh10psYlsa8Oryn/Ls2K4QYIrN+OkQv8ASzQ9gZX+9ZC4xAvl4WDwLITJKNZ4r2zVkj6GrJ5+U/BkO0sNYgHp6FYjHKaGp9YcwkjYrxev2wUJjMROH7Dknm2DSlK0SBWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dw9IR5MMDiZdAPbhcsufZeUb0iTvdlY6ZZ/KqPzOlIs=;
 b=lDQ0K8yuVgbfoz5aS/PWxrlFYsKBiS1Q4noftYn0USajq2dhl5q/wN2Yc9ZBz1nn1pQO/upTTtXbwwBO4JtlTYIgweihBz4AQqB8GSrTQzArDFfjQ1xAnIuZYA/gQUpRcTUGva7dSXJjlElenBPpjoBDZGW3vYCuocnzt8txCfj2civSwPh8MjxBGFlkLhYiDSvi3HMoQZYaM156aOdR45OKwOAnAlpZlknZqQjUf0QPk/RIBqgxvcrC1MzBXo4EFFkLSO3ubhFgBzH4v4gK7qwobv1VzL6NI3LqqPVI7ynjHXvy9+0ckvfgqeicV1i/UPygU/3kOT3KLHBquk4lUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=linaro.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dw9IR5MMDiZdAPbhcsufZeUb0iTvdlY6ZZ/KqPzOlIs=;
 b=PF8vn4ZMQopZKbG2fVNW1A9BFKkSoccK2ZiFEYqj9A95Ve6ogOB4zZM0ZMO1h+8RN9lBSIoTA/MepU1uLOUUG9Itj2O9WIk/QyttShdw9Iml6hnZs6n5akhSRMDHKX9/KdFMa01UUdDmEjF+QNMwF4wF50LMdAxg/owDf1pKGns=
Received: from BN9PR03CA0158.namprd03.prod.outlook.com (2603:10b6:408:f4::13)
 by SA1PR12MB7341.namprd12.prod.outlook.com (2603:10b6:806:2ba::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.14; Wed, 14 Sep
 2022 16:45:24 +0000
Received: from BN8NAM11FT072.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:f4:cafe::8e) by BN9PR03CA0158.outlook.office365.com
 (2603:10b6:408:f4::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.12 via Frontend
 Transport; Wed, 14 Sep 2022 16:45:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 BN8NAM11FT072.mail.protection.outlook.com (10.13.176.165) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5632.12 via Frontend Transport; Wed, 14 Sep 2022 16:45:24 +0000
Received: from amd.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Wed, 14 Sep
 2022 11:45:19 -0500
From: Arvind Yadav <Arvind.Yadav@amd.com>
To: <Christian.Koenig@amd.com>, <andrey.grodzovsky@amd.com>,
	<shashank.sharma@amd.com>, <amaranath.somalapuram@amd.com>,
	<Arunpravin.PaneerSelvam@amd.com>, <sumit.semwal@linaro.org>,
	<gustavo@padovan.org>, <airlied@linux.ie>, <daniel@ffwll.ch>,
	<linux-media@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
	<linaro-mm-sig@lists.linaro.org>, <linux-kernel@vger.kernel.org>
Date: Wed, 14 Sep 2022 22:13:21 +0530
Message-ID: <20220914164321.2156-7-Arvind.Yadav@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220914164321.2156-1-Arvind.Yadav@amd.com>
References: <20220914164321.2156-1-Arvind.Yadav@amd.com>
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB03.amd.com (10.181.40.144) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT072:EE_|SA1PR12MB7341:EE_
X-MS-Office365-Filtering-Correlation-Id: 77829df5-388c-4f70-88aa-08da96708531
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hhmhOhzONlaYYao0J3YtV8GewMIF9Mdhq8XX6Cb6bHlgsbYYQP1aA8qtmSICiL8zhwfyEayx6rKZyeq71aNi5GgWzY2T6aJfFGPcBkHADs/C/XJOqJPd4cBMp54wDeHF18LjA0kLfmeit4ACpKADWQ1joEXKH/a/t5GdZHTGbViI9V95pBY9T81AngKQmNv5hLzopYHKj4JOA8ZoeeDHs8X5ijJbFE6J7qfjX7eIwqDK5wG/tkBc9cmXoNn88J+/bkhnf6ot/KOJDqylhvfa4CHc2tW3zfLkPvYV7rLiGROZuue1s7oKHJWCHwyFZYD4DDivB7mwxz8ba7lxrlo5Upa/D7CVC6bGHoVbDMUoiXAKY3IHj4h+PdtDaOFhlEkXV9pKejUCDrO0hFoW7+YcXr4ARc6ttf9dEkjhF4LMdteFUbu1qJAw3ZCEGQRaGQqTnhnDngqxPBty03q4ITAa+jj0yaoElWVQV+0Iv3XUxoiPqZTtwRmqmJ9In7jR9VskqEHNp74+kGIijgyjk3QQ25r/5qio8nyiGDDYcDcrfiBs1immy8od3dlKYtE/8va8tEpjkhcGJ3rMiXndUuC/vXVmxF8gmysAztHGercNtDajswwDfz++5tHgqudhw952OadujVZmYQnSvLoP+gTFBb6c6tdpfnRIs2/hcgvlAGEq2rYYvcunp9rcb0nDaJKmf3iu3WJMUM+S+K7dtxfwE6SZf259y5WwGFJRjigaOwmiNU4VcgdOq7iNFk5cvNfphzfQkAfD0bTGGkXNZb4zPhUjfp1XqDlv5fiEPwfmGdtNigKVzdeOE5xsP+LpFrgT6x0nw4X7y12diujEfKqnMGYxQlzgbMnETR5ZyHsiD2g=
X-Forefront-Antispam-Report: 
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230022)(4636009)(376002)(136003)(39860400002)(346002)(396003)(451199015)(40470700004)(36840700001)(46966006)(41300700001)(82310400005)(356005)(70206006)(86362001)(8676002)(81166007)(4326008)(7696005)(6666004)(47076005)(40460700003)(316002)(40480700001)(186003)(70586007)(426003)(110136005)(2906002)(16526019)(336012)(5660300002)(36860700001)(26005)(921005)(1076003)(82740400003)(8936002)(83380400001)(478600001)(2616005)(36756003)(2101003)(36900700001)(83996005);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 16:45:24.0841
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 77829df5-388c-4f70-88aa-08da96708531
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	BN8NAM11FT072.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB7341
X-MailFrom: Arvind.Yadav@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GLKXSTKINXHCSPP3I5MZ6OLJWOXGPYGL
X-Message-ID-Hash: GLKXSTKINXHCSPP3I5MZ6OLJWOXGPYGL
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:46:04 +0000
CC: Arvind Yadav <Arvind.Yadav@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 6/6] dma-buf: Check status of enable-signaling bit on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GLKXSTKINXHCSPP3I5MZ6OLJWOXGPYGL/>
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
IGVuc3VyZXPCoGNvcnJlY3QgYmVoYXZpb3VyIHdoZW4gRE1BQlVGX0RFQlVHX0VOQUJMRV9TSUdO
QUxJTkcNCmlzIHVzZWQgZHVyaW5nIGRlYnVnZ2luZy4NClRoaXMgc2hvdWxkIG1ha2UgYW55IGlt
cGxlbWVudGF0aW9uIGJ1Z3MgcmVzdWx0aW5nIGluIG5vdA0Kc2lnbmFsZWQgZmVuY2VzIG11Y2gg
bW9yZSBvYnZpb3VzLg0KDQpTaWduZWQtb2ZmLWJ5OiBBcnZpbmQgWWFkYXYgPEFydmluZC5ZYWRh
dkBhbWQuY29tPg0KLS0tDQoNCkNoYW5nZXMgaW4gdjEsdjIgOg0KMS0gQWRkcmVzc2luZyBDaHJp
c3RpYW4ncyBjb21tZW50IHRvIHJlcGxhY2UNCkNPTkZJR19ERUJVR19XV19NVVRFWF9TTE9XUEFU
SCBpbnN0ZWFkIG9mIENPTkZJR19ERUJVR19GUy4NCjItIEFzIHBlciBDaHJpc3RpYW4ncyBjb21t
ZW50IG1vdmluZyB0aGlzIHBhdGNoIGF0IGxhc3Qgc28NClRoZSB2ZXJzaW9uIG9mIHRoaXMgcGF0
Y2ggaXMgYWxzbyBjaGFuZ2VkIGFuZCBwcmV2aW91c2x5DQppdCB3YXMgW1BBVENIIDEvNF0NCg0K
Q2hhbmdlcyBpbiB2MzogDQoxIC0gQWRkaW5nIG5ldyBjb25maWcgRE1BQlVGX0RFQlVHX0VOQUJM
RV9TSUdOQUxJTkcuDQoyIC0gUmVwbGFjZSBDT05GSUdfREVCVUdfV1dfTVVURVhfU0xPV1BBVEgg
dG8gbmV3DQpDT05GSUdfRE1BQlVGX0RFQlVHX0VOQUJMRV9TSUdOQUxJTkcuDQoNCi0tLQ0KIGRy
aXZlcnMvZG1hLWJ1Zi9LY29uZmlnICAgfCA3ICsrKysrKysNCiBpbmNsdWRlL2xpbnV4L2RtYS1m
ZW5jZS5oIHwgNSArKysrKw0KIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQ0KDQpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL0tjb25maWcgYi9kcml2ZXJzL2RtYS1idWYvS2Nv
bmZpZw0KaW5kZXggZTRkYzUzYTM2NDI4Li5jOTkxZTZhNTE1MTAgMTAwNjQ0DQotLS0gYS9kcml2
ZXJzL2RtYS1idWYvS2NvbmZpZw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL0tjb25maWcNCkBAIC02
NSw2ICs2NSwxMyBAQCBjb25maWcgRE1BQlVGX1NFTEZURVNUUw0KIAlkZWZhdWx0IG4NCiAJZGVw
ZW5kcyBvbiBETUFfU0hBUkVEX0JVRkZFUg0KIA0KK2NvbmZpZyBETUFCVUZfREVCVUdfRU5BQkxF
X1NJR05BTElORw0KKwlib29sICJETUEgRmVuY2UgZW5hYmxlIHNpZ25hbGluZyBkZWJ1ZyBjaGVj
a3MiDQorCWRlZmF1bHQgbg0KKwlkZXBlbmRzIG9uIERNQV9TSEFSRURfQlVGRkVSDQorCWhlbHAN
CisJICBUaGlzIG9wdGlvbiBlbmFibGVzIGFkZGl0aW9uYWwgY2hlY2tzIGZvciBzb2Z0d2FyZSBz
aWduYWxpbmcgb2YgZmVuY2UuDQorDQogbWVudWNvbmZpZyBETUFCVUZfSEVBUFMNCiAJYm9vbCAi
RE1BLUJVRiBVc2VybGFuZCBNZW1vcnkgSGVhcHMiDQogCXNlbGVjdCBETUFfU0hBUkVEX0JVRkZF
Ug0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS5oDQppbmRleCA3NzVjZGMwYjRmMjQuLjAxZTFmYTRkM2NlYyAxMDA2NDQNCi0t
LSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZl
bmNlLmgNCkBAIC00MjgsNiArNDI4LDExIEBAIGRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQo
c3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQogc3RhdGljIGlubGluZSBib29sDQogZG1hX2ZlbmNl
X2lzX3NpZ25hbGVkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KIHsNCisjaWZkZWYgQ09ORklH
X0RNQUJVRl9ERUJVR19FTkFCTEVfU0lHTkFMSU5HDQorCWlmICghdGVzdF9iaXQoRE1BX0ZFTkNF
X0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQ0KKwkJcmV0dXJuIGZhbHNl
Ow0KKyNlbmRpZg0KKw0KIAlpZiAodGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklU
LCAmZmVuY2UtPmZsYWdzKSkNCiAJCXJldHVybiB0cnVlOw0KIA0KLS0gDQoyLjI1LjENCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
