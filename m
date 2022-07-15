Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF0C58E7E9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 09:37:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E596D47963
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 07:37:18 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2080.outbound.protection.outlook.com [40.107.21.80])
	by lists.linaro.org (Postfix) with ESMTPS id 25EBA47ECE
	for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Jul 2022 13:42:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J23HOWd0oiWoj0+hTb6U6Jll5g9Teg0fnRAQrKFYtXPJj3pqWlmf5Wj6STNFjgqoLzvbVAhme/VTSB3XxYUUcpiRvonfQlzMEUn+saG8Z14JnlvMAQHJzfNe1LaQfjQi214kQru7Yvl/rZiG2sdOBBE0oec0ajhQNWnJn+ygX3tGgm97rRpCSjsELRi5x/DS/LG8WEEKtkJw15jCOnNwFMP0YvAUxltuJd4GPz87CKS0wUJxxxkkRvUNuzoTD6fEr+KC7L/u6Pgveh64o4RvACnFH7cSn2jvMOXFeLWCT48BXpgmmQiEyEx3h0lS7roBlfT4+RiI8znBQ58R60xzGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UT2YZNebZE7imDte3csX8Nk4Y2yyjUGK22Jn3XMMi9Q=;
 b=oEFgZuGqte5+pxF2ZgwRufPyNxaHtUI4WPB6vPMKrbax6Nw+t2FfkI4U+RFGAJ5s+JYd18vKD2flqbwhoW+lGha2xzqtpr6B0URvO6cUnBYfShUNKWkPBdk1JtNUt1R2HZU7NuxBpUnsCcQy0SagvnaCH5TAkz4rdaCCsMdyTZjgwOHGvuhwUNII43MxRq8lN2OLn9DI2QrSMr7N1Y35r9fKGC3ckNfRlynX1FQsdMex2lKsaktThtMtaZmqy9VJ0f9HzE11uFbBrWOOJz0Vnf/Fz9dpRPyMVStRzWqHaLDLJIhOa+mv+7cs9Bl3iZsVikAEQkH0PzaysV7XFl0nng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 151.1.184.193) smtp.rcpttodomain=lists.linaro.org smtp.mailfrom=asem.it;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=asem.it;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=asem.it; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UT2YZNebZE7imDte3csX8Nk4Y2yyjUGK22Jn3XMMi9Q=;
 b=oq6JqUTSBRc+EqEKbxhriIxcc1chJVvbqIdaTRULaZnXYx38M4T/g3UJadNxSwMquP8dV5bv6iLqWHtks3EF7RiSatg0qy4s2gN+3Z0L9AJJqCcb9Jj2m8GwXQSgyR1GjtV3CJrunupFnEXLDN0unjD2LznoudezUde4P7uvMi4=
Received: from FR3P281CA0096.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:a1::8) by
 HE1PR0101MB2283.eurprd01.prod.exchangelabs.com (2603:10a6:3:1e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.15; Fri, 15 Jul
 2022 13:42:20 +0000
Received: from VE1EUR01FT069.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:d10:a1:cafe::c3) by FR3P281CA0096.outlook.office365.com
 (2603:10a6:d10:a1::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.10 via Frontend
 Transport; Fri, 15 Jul 2022 13:42:20 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 151.1.184.193) smtp.mailfrom=asem.it; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=asem.it;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 asem.it discourages use of 151.1.184.193 as permitted sender)
Received: from asas054.asem.intra (151.1.184.193) by
 VE1EUR01FT069.mail.protection.outlook.com (10.152.3.57) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5438.12 via Frontend Transport; Fri, 15 Jul 2022 13:42:20 +0000
Received: from flavio-x.asem.intra ([172.16.17.64]) by asas054.asem.intra with Microsoft SMTPSVC(10.0.14393.0);
	 Fri, 15 Jul 2022 15:42:19 +0200
From: Flavio Suligoi <f.suligoi@asem.it>
To: Oleksij Rempel <linux@rempel-privat.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Fri, 15 Jul 2022 15:42:18 +0200
Message-Id: <20220715134218.595269-1-f.suligoi@asem.it>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-OriginalArrivalTime: 15 Jul 2022 13:42:19.0798 (UTC) FILETIME=[B4593360:01D89850]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b6b900a4-8424-40fb-0dcf-08da6667d735
X-MS-TrafficTypeDiagnostic: HE1PR0101MB2283:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	19Fjb8QiKduiQ6hZycz9X44gF0YRjmv5oCVTHCjYwohVLul8qMYJ/EMTHwkGX7TMVwCwrvMqwjHJIlqXVAnTBOTArBGl0RQeGzZ5K4RhzYRnIzu88QTAzXUZEb7XCJnnGIxF2GAV6fUUSw1nvBL+gE6raTjcfdxbSVo9VNV7YEb1kioAgkRYyfaOS3QgSXUg9XEC9Pt7jOFM9cVak4v/zOdMAJzvO/nESmOxHjXebCh+21e2pCcX874Qwna2XV4IBy8wfPduYqisjqLlzPhkXPpUVEOmo1bbizgE22Q195xNXKEE5Q1+eQOUd7KlITeBBEuhyb3MiYe6Mn+SXBOuV1+BYZSdVB0zlMOH7t0te+H180DDXMooigQm4tHZasAMiYsbfKGcqpYpmu1+WZj3W+De4OYQbgzW/cMYYjEGx8RVeRG0p8oSVy1+KGiVYLkrO1RikzPb6FsYeDc6oqqVx1s61m8jCIhNSVw/XDsKJoVRtWfcADc92a3wPUJ8eVluwcU/wmQ5CdEL2khay/SCM6tscfFlKdDXs2yu95yryHmi+c3iQNO187gSjKuWx5uKiszJ5MR2LzZ/rHcsy+/7r6N7OkI9uPp9TcY41EN0S2zNcyEwN6DXV9QNMjwps94mJNLyK76nwZ7akPuxYHv2kx7YZlP7Kyp6Ce/IjpMZshcOkWkRyeOoy6ZqVvFwaf2Quc1D3XAurgOUxKSwAZTAKrwa8I1xFgKTIUHBLAUxOqcUiGyvg0MkGCPhED6ySv/IL7mRfMwGzX06N5PdSevGPRbtSv/uglvoPPKtQMTKluhhkEtabmtN6xOCLbFuWHAn
X-Forefront-Antispam-Report: 
	CIP:151.1.184.193;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:asas054.asem.intra;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230016)(396003)(376002)(346002)(39850400004)(136003)(46966006)(36840700001)(83380400001)(107886003)(47076005)(336012)(1076003)(40480700001)(186003)(41300700001)(26005)(36756003)(2616005)(4744005)(36860700001)(82310400005)(2906002)(478600001)(356005)(5660300002)(81166007)(110136005)(316002)(86362001)(70206006)(82740400003)(8936002)(4326008)(70586007)(8676002)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: asem.it
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2022 13:42:20.3461
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b6b900a4-8424-40fb-0dcf-08da6667d735
X-MS-Exchange-CrossTenant-Id: d0a766c6-7992-4344-a4a2-a467a7bb1ed2
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d0a766c6-7992-4344-a4a2-a467a7bb1ed2;Ip=[151.1.184.193];Helo=[asas054.asem.intra]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR01FT069.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0101MB2283
X-MailFrom: f.suligoi@asem.it
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QAZAUIQE3BBAWEMHHSRN652T3JZYOPCC
X-Message-ID-Hash: QAZAUIQE3BBAWEMHHSRN652T3JZYOPCC
X-Mailman-Approved-At: Wed, 10 Aug 2022 07:37:16 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Flavio Suligoi <f.suligoi@asem.it>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] i2c: imx: fix typo in comment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QAZAUIQE3BBAWEMHHSRN652T3JZYOPCC/>
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
v2:
 - fix typo in subject

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
