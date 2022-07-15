Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD4158E7E6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 09:37:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 556E33F1BD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 07:36:59 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2073.outbound.protection.outlook.com [40.107.21.73])
	by lists.linaro.org (Postfix) with ESMTPS id 0EFFB3F2E6
	for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Jul 2022 13:28:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DS4jlxWk0CfrNfRjB36l6s/yTGs0S7O7uaTNrpKf3vppJPT6mPRJndbKMRaq9ofu3ilnTNwZ+qUgpVmHXlkaynVlQWloaI/6iFETBuTr/jFxyqVvdGEHzKzM2IryacaA9bbVjHQAVQRNA4PQbNcBARImtv1tYJDPvOI2CIrxTUmcSEMZ/Xu0AuVkkZTNMTQZCx5pT3iSNiQL8brUGPbRt4E2P8bDcYi6VrVyaEmg92eyqV9cbPYPgm8mOPS9W8eR8gaLnvfOxhbSmzcoOJNNLJuc6hxj6OtN4NhNyaHoSBpny3ctJX5lqQYEITUB/jDO7hbwvdHQzJXwwDYYNKbKqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DQnHQRE4XcKwhuLaI/t0iiaa21iKoxzvGgzXnm+iB8Y=;
 b=AT2uMxLIuUuH550G3Pc8NyPdLcFL+tREuskTrATNEZKg6SugOKUSfGJA8T5MO+0A+5U+h7L530pBQB65csWSerDYofx5AdX4Y8wW65qgOp0J6dKkegXeGxsiP0XqGY5SP1qvKH8q/ze0GJG0JUAmJbWFnqdqCo+X5N6aWSQ/Wqt2A7FaPY4Pu5IFczJaXnLPyf+KzZL1AH/rOVqtClGcmhdp7IXhX3DRVk0/CiCYVbnBPKMVAQF4Fi96riy7byIOIKiR+QEAoAPUosPFU9j2iCG8L067LPtvzfGy5T5CWxhlRSrl+EXeu1H2j6eQuFoEqv6APdVX8qjGmzf3/yPkCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 151.1.184.193) smtp.rcpttodomain=lists.linaro.org smtp.mailfrom=asem.it;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=asem.it;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DQnHQRE4XcKwhuLaI/t0iiaa21iKoxzvGgzXnm+iB8Y=;
 b=UJ19b53VjmskKOWDLzdklnKM9EaCoUxYw7+55GWbkIQcE/hpwwrVyEmO8j6nMAUbydPjaZyLw/gVBKDpMLSLwfwXU6yL6hB/v3O9fprFimTYsADzvMsYeYXp6vYCCv3enHzgezMSPVx+iCj6tIMd9TcKLPTXFnin/5BZ5hTByMg=
Received: from DB6PR0202CA0032.eurprd02.prod.outlook.com (2603:10a6:4:a5::18)
 by AM6PR0102MB3574.eurprd01.prod.exchangelabs.com (2603:10a6:209:21::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.17; Fri, 15 Jul
 2022 13:28:22 +0000
Received: from DB5EUR01FT080.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:4:a5:cafe::40) by DB6PR0202CA0032.outlook.office365.com
 (2603:10a6:4:a5::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.19 via Frontend
 Transport; Fri, 15 Jul 2022 13:28:22 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 151.1.184.193) smtp.mailfrom=asem.it; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=asem.it;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 asem.it discourages use of 151.1.184.193 as permitted sender)
Received: from asas054.asem.intra (151.1.184.193) by
 DB5EUR01FT080.mail.protection.outlook.com (10.152.5.234) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5438.12 via Frontend Transport; Fri, 15 Jul 2022 13:28:21 +0000
Received: from flavio-x.asem.intra ([172.16.17.64]) by asas054.asem.intra with Microsoft SMTPSVC(10.0.14393.0);
	 Fri, 15 Jul 2022 15:28:21 +0200
From: Flavio Suligoi <f.suligoi@asem.it>
To: Oleksij Rempel <linux@rempel-privat.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Fri, 15 Jul 2022 15:28:16 +0200
Message-Id: <20220715132816.592657-1-f.suligoi@asem.it>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-OriginalArrivalTime: 15 Jul 2022 13:28:21.0281 (UTC) FILETIME=[C08DA910:01D8984E]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0b5417b8-cc6e-4ed3-b4de-08da6665e372
X-MS-TrafficTypeDiagnostic: AM6PR0102MB3574:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	STZfIlfzHW+ldTnghKhJ3t8OC3ynE1a40tdHpiyo9giR7eiYXA/xsdmOj9KLORy4poWpLi3B/hIIbdT8n5NmPDBPQgAGOBWWyvnD6NTw9Gfj3dQE3lpIp5FtN5ZXz8R8WoFcdylMqPdj4AXcyL7nFwskKxf1urChWtgBTKEE9m0Ifnxw9Nv6zvm2QfeXHVf69rzYC+e6ExKQq+LCJzB4X0y7isn1r+vXS+65IQBVManr5nutQRNYLhTCIqokSf/qFb2+ORuM2RMchPNkaYMq4nd2cM17dujEuoSY1d0fEdIkpXVXdMF5hmMxXvMtcAUf9Lep9HlYh9V7hvLRcJrVluv7dZQGJ2ytOZBDYy+UcQe9tdGM8rWyqLs+qbqnHP2bLyP/LX0cNv413jVT3mExGRAaUMbojPv0KT5f/1/97gWHdWMX7q/spzfFJlOl7Rln77E3X6IT1a6NpXBNQV5PPsqFARFlM5HsKPHFdfBeTW55pymZLPabrrPiMi7D6goL/kOiTGPjaIWJdlk2L8XPC0hCnoj0Fz5A0yPP2OAayQK5mMrJy2lHGc3AjtLuUmlDFTHvbPn91zkV5gbQ2fCrH3FpJk7T01NIDD5cTTOE8iL/QQfeUn8yuqOgJaK8+4NPF9L2AZNFyE1MQYoCY3dtRy1GVvJ3XS83CKBOPvT/171vp5TMsSr4520eLf1nClgV/71NUuYpF2wt8tddJQIIwDMZm7sKrJKdHMSAmID3ByXCZctMHl4sgJohvzhYaMA8ucSWih6wA944gNmWn3PMszHK8Ck/P/kCdvB4BMLCk+kpPEyz7lq8u8D8sYh0b0aA
X-Forefront-Antispam-Report: 
	CIP:151.1.184.193;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:asas054.asem.intra;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230016)(346002)(39850400004)(396003)(376002)(136003)(36840700001)(46966006)(107886003)(2616005)(186003)(47076005)(6666004)(336012)(36756003)(110136005)(41300700001)(1076003)(40480700001)(26005)(316002)(83380400001)(4744005)(36860700001)(70586007)(478600001)(5660300002)(356005)(82310400005)(8676002)(81166007)(82740400003)(4326008)(2906002)(86362001)(8936002)(70206006)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: asem.it
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2022 13:28:21.8772
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b5417b8-cc6e-4ed3-b4de-08da6665e372
X-MS-Exchange-CrossTenant-Id: d0a766c6-7992-4344-a4a2-a467a7bb1ed2
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d0a766c6-7992-4344-a4a2-a467a7bb1ed2;Ip=[151.1.184.193];Helo=[asas054.asem.intra]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5EUR01FT080.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0102MB3574
X-MailFrom: f.suligoi@asem.it
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SL4U76OUQS7BP3RK2UEQZJSDNS5HNAWL
X-Message-ID-Hash: SL4U76OUQS7BP3RK2UEQZJSDNS5HNAWL
X-Mailman-Approved-At: Wed, 10 Aug 2022 07:36:56 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Flavio Suligoi <f.suligoi@asem.it>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v1] 2c: imx: fix typo in comment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SL4U76OUQS7BP3RK2UEQZJSDNS5HNAWL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

to provid --> to provide

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
---
 drivers/i2c/busses/i2c-imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index e9e2db68b9fb..78fb1a4274a6 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -66,7 +66,7 @@
 
 /* IMX I2C registers:
  * the I2C register offset is different between SoCs,
- * to provid support for all these chips, split the
+ * to provide support for all these chips, split the
  * register offset into a fixed base address and a
  * variable shift value, then the full register offset
  * will be calculated by
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
