Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E84B55FD2A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jun 2022 12:32:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B2943F453
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jun 2022 10:32:27 +0000 (UTC)
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (mail-tyzapc01on2101.outbound.protection.outlook.com [40.107.117.101])
	by lists.linaro.org (Postfix) with ESMTPS id 263A53EBFA
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jun 2022 07:20:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kheZRaVu8vMPeT1sNqjU0UeRQ1FF4o9vKtQ0HLRq7ba6S3OkemU2CdadJL+a8hmafWgbUvretr/afoGLmvilwkZRrU3Q9EcWmiGUZA8bEzTjhcPOf59XRRVf/j/pO9hMBzBFT+QMECqdHBMqPYu+Knxahhv97KUyN/38ZmhTEph+3djVE3YLc0UKtiVnCD9FaFOaFmPdXzrIJ4MVE+zeaJbbdX7frQMvxguVk/andDJK30WX+nYa4jrKWSP12EehjzNY1DVwsnS/XeH3oz3IyIkfnaIfgjRBB+xoyKq2mkO1Eurm3UD187to9ssgzxR4+PD4UOFK9tN2EhjConj8ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YwN22oewKweV3idvZHZiYV4YvNEeET8yDZG38SZBr0E=;
 b=WT69FNgEeinxm71GotnfuSONJ0t1ZkQZ0oE9Dq7zr7dMOqFPGKAtRGS06TcDq20p1ojlftRtDe1ggCYvwU3W0R9Hg8+eqsp0SPVvlZb5HfrYoHCxilkM4mCEemSanBewdTk+YMZNdnn0Wm/F1u4ZWPm5eg3TgFtc/upiWqHA1mv7bdxDiD/k0dCiNn8tOpo9hccq811wTS3NT1x7trmrUs/uOsEWsTup6hnJrWQI3LQY8iRgWq/YSTgmVHEMIDjrcw6Rca2LN6hEFDEntd84iUQcFQpuL8O/4Yhk6AUXTqY8iMJQvtOLJsp+OezMCiOmD70UozTLPGcLSGuwTtpZGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo0.onmicrosoft.com;
 s=selector2-vivo0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YwN22oewKweV3idvZHZiYV4YvNEeET8yDZG38SZBr0E=;
 b=PgoBFbg6/K4c5CeNV4cmNcev8L66k4xBLdMJbjqR/TjgUkbmlokBQWcdk0MBGX2Fs6hwD6KhOZbrOF19VCqHtwTTtzN89pD3GdsvbREhg5Yv48Vvs7gil3bFmayx6kpGthh2lfT3nb7yGPGDoea69bBIaQpd7D3g4V8HliMYTlg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SG2PR06MB3367.apcprd06.prod.outlook.com (2603:1096:4:78::19) by
 PS2PR06MB3431.apcprd06.prod.outlook.com (2603:1096:300:69::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.12; Fri, 10 Jun 2022 07:20:37 +0000
Received: from SG2PR06MB3367.apcprd06.prod.outlook.com
 ([fe80::ccb7:f612:80b2:64d5]) by SG2PR06MB3367.apcprd06.prod.outlook.com
 ([fe80::ccb7:f612:80b2:64d5%4]) with mapi id 15.20.5314.019; Fri, 10 Jun 2022
 07:20:37 +0000
From: Wan Jiabing <wanjiabing@vivo.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org
Date: Fri, 10 Jun 2022 15:20:19 +0800
Message-Id: <20220610072019.3075023-1-wanjiabing@vivo.com>
X-Mailer: git-send-email 2.36.1
X-ClientProxiedBy: SG2PR01CA0117.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::21) To SG2PR06MB3367.apcprd06.prod.outlook.com
 (2603:1096:4:78::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5dba2b39-fe5f-46c5-2106-08da4ab1b728
X-MS-TrafficTypeDiagnostic: PS2PR06MB3431:EE_
X-Microsoft-Antispam-PRVS: 
	<PS2PR06MB34317612533E4797218FA13DABA69@PS2PR06MB3431.apcprd06.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ESDWfg+B0hs0zKr87KfGMbBdf13o5HImKmouzt4GCTzBqdOFDvxi7VunZN8H1ovzRDjd52cn7pk8vaSb17EN4AkpalrYlzwEunIIC+/aGc2IwzMhUqnjiVFQ9hU05mEuRYZgWdSEnAYC+1W18tD301hRZkof8vOyeXrs80KKLIJO3fhwtlixi+MvXe3IAhoLNKtYCVPwOJ4qVx22W9H5bj3q74dCrQsA5ceQ95xcDrYcpB5ENDMwNon9cckB3+yLwuDZhShN+M9ADSOq7WxPk8pCB78SOtwZPVY5qmqcldA2WDFjLR3P9LBPagqVUMJzanNp2LTYrvVc39sQL6Le0ka/RcpAOmAmt+uXwBPBF8MjvjvOD8p20ZL/S7scrL06IhjNsa/y5ODX6xV8lpK7pMSfnkEsaEkrKFb4hDGiyAkl+dnnYPxs6quFdp+3ih6Eb6KvcfVa9hIT7Y7VX/+7Bec4c+BML1V3CvRjAlAIDNrorW6zdl3RT4ddzmAKbL4tG7SRZesdZcHP/9B5mDrY4R1nmQOh9Jn3AuAyoBH5g7vv72iZgLCI/t7UQboaUG1Nt4Z4y0zKOLpFQiyL2Ansd97hL+gm+lOcUVku7VXa8X7EZT6IP4O0YUCjTTAL3rgPVHNNAQ2LFvs23IVg1qH8y6LHbg/bc5VWsuPNdvukIbrwH8kY7rjbU9MqopOHDAmhEULAi+kG8hAnQaPTM4Alog==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SG2PR06MB3367.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(26005)(52116002)(6506007)(8936002)(5660300002)(66476007)(8676002)(4326008)(66946007)(66556008)(107886003)(186003)(38350700002)(38100700002)(1076003)(36756003)(2616005)(6486002)(2906002)(316002)(83380400001)(6512007)(6666004)(86362001)(110136005)(508600001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?AT2fatIFB5wZxJ7JWfJLIfzrqSJTHFeLvzpiRpNQ3XinYXnRl6NpWbBE9ku2?=
 =?us-ascii?Q?O8r14B0He1g5ykWQm6g38HCWus6w1hKC6S3ZvibsK51TYbkjzrqBGKART6+r?=
 =?us-ascii?Q?8aj9qAuv+7684yopWRgcFkw1mFmPhuLDrzYpBspDsjIbtOhQZStQkNaB435H?=
 =?us-ascii?Q?/myRAXOZ3+bz6wfGAqSchvEN1wbdk1lzHhsjUKnvupofYPdi0Vam5nS8UFBf?=
 =?us-ascii?Q?FRsdq8sU0sjnnUS4DCCTX0rIkkDV2SHHbrjJU8dZslbXC4o2evEeYuZmvx1P?=
 =?us-ascii?Q?abA0qqK2rLd8SgViphDbxGlH2cIfGIZPO7Umw8ZcQmoigPVWsnZrzxQRcrlx?=
 =?us-ascii?Q?FWgfl6YQEqlFhds+QFXJwOc7+I3Oyifevv4E6iaOxTOLyBKf3TvatxLYDRXK?=
 =?us-ascii?Q?gP8YqTCqIBCMmKgx7nIxqn/JKlkKSd+eFFw3MxMtKQLopD95HlTthyEUiHdq?=
 =?us-ascii?Q?jVXnObYvmu3RNqJoEVwZAuf2vBQdi/z0hF0bNd8rMZ+L9ASaPBefM2XF40XR?=
 =?us-ascii?Q?DOH3JyZYmXKYVVqP5eCKTULnC5kc+Aphdp3l6M+6542hVbfw6ZxM253tRRJq?=
 =?us-ascii?Q?jz1osPm/qP7ThIhLq2hGKdGTFUUuQbrtONkVEbGMTdqiLmYU5z7Ck3/UQPtC?=
 =?us-ascii?Q?Gde5E1UvT2whTFf9pV4DORln5u1uih0Q5TJ0ABYVliJm1eyUnCdkBQtlyFFa?=
 =?us-ascii?Q?c4B1WQtffS1Zn+i6oKE5VbkUPbO5QHTqgb2gf2xoVznyhM1wxsKVC6rODVKD?=
 =?us-ascii?Q?YngZVf6JA14gl8q7vPF4k9B84tXfDGD2GKiRWA8amufBjVGQGScj5g8EhLdN?=
 =?us-ascii?Q?q3vTDM6kRGithOHPwIWuoyPK2s5GE9fhIDbzoQAxNa23GHhmSvWXqZNsXYgs?=
 =?us-ascii?Q?z8EOlLEwxGxl8AlpDBOSI9ESEjEYrAMqcknlS3pnc8rMSzLNfwd7OxaScw90?=
 =?us-ascii?Q?aynaB/JgNDhlcZmMJr7y6hy9hVqWAQ6b9GahyCCjO7zhxbVPsItZgEWbEXHD?=
 =?us-ascii?Q?NrS2i4fRgQapkIcmiGDzA4+J1awCyT9UjhZFsCGuoTcgKPezy/qGH+m8ICG6?=
 =?us-ascii?Q?q1F60HdvIvd3HZ9o3tFvFVF1iNZCRqfq95s1wYv4hq3lJSCEgbG2+M/CWpho?=
 =?us-ascii?Q?Jd6a/5Bj//iDGnN77tKgbYgX00BHOmGDvb3mjcABUd5MJRndvBilLY3evq7K?=
 =?us-ascii?Q?h/kNXiOoz0VoFmsYjvofz6cB6gn35WTXcsnIQJseDLeIig0KRzH94+FRVZG+?=
 =?us-ascii?Q?CiW0jImNecLLU5V8OUKGjpwEOd+ClN0kzUh2yQwsauCK9EZbIjf83f4twiUo?=
 =?us-ascii?Q?J1RpTJP9ETjxQ8wr+Og697DscPkSkEA6p702LMUpbMvjvc3YA6zLXCL6PXPG?=
 =?us-ascii?Q?5B44IYUAChBTygAT93LfzCBujMq3VddIAF7wSHgiH6yc+CUbQzfs0TqOd/8q?=
 =?us-ascii?Q?8b4Lh2kiGsq2Kwxvine3UEMGH4h1bjCi1dt8mg35tKD10RkUbn0TvROdebz3?=
 =?us-ascii?Q?xo2PCN9/4mmKbpOs8Wb3EFheXQc4VcG3PVs9L91EXcm5EM91ezG1fNGoIlCc?=
 =?us-ascii?Q?PNsrGfc3l5f+ly5jC/jnHQ9o+2K1qvkZQeFu4GlvtvgLdPJnUp27/QMUkuSK?=
 =?us-ascii?Q?pesEAn62mplFsxEKbWtgKSMmmj5v3cnofNjDQT4mG+95G74aAwDhl+R8uf7J?=
 =?us-ascii?Q?iFFJmo5cUv3E8hSbkLLNWIT32lOwNr1k3Sw9Iabt9dGZjhOwvHRHSBh1kEVC?=
 =?us-ascii?Q?+0dVq3Caxw=3D=3D?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dba2b39-fe5f-46c5-2106-08da4ab1b728
X-MS-Exchange-CrossTenant-AuthSource: SG2PR06MB3367.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2022 07:20:37.2467
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QC3fzNKa061qJOuH+AKva1+2naGMLqZQjDQhnFOX9d2/8bWpZSeHiIS6iAJSjnyIAdaFbpAkOWRc9ZeKnJ9nJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PS2PR06MB3431
X-MailFrom: wanjiabing@vivo.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4KOFRWYF6QSRCVZ5XMOV5SUZYEDBIORI
X-Message-ID-Hash: 4KOFRWYF6QSRCVZ5XMOV5SUZYEDBIORI
X-Mailman-Approved-At: Wed, 29 Jun 2022 10:32:20 +0000
CC: Wan Jiabing <wanjiabing@vivo.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: Don't use typeof in va_arg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4KOFRWYF6QSRCVZ5XMOV5SUZYEDBIORI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Fix following coccicheck warning:
./drivers/dma-buf/st-dma-fence-unwrap.c:75:39-45: ERROR: reference preceded by free on line 70

Use 'struct dma_fence *' instead of 'typeof(*fences)' to avoid this
warning and also fix other 'typeof(*fences)' to make them consistent.

Fixes: 0c5064fa8d5a ("dma-buf: cleanup dma_fence_unwrap selftest v2")
Signed-off-by: Wan Jiabing <wanjiabing@vivo.com>
---
 drivers/dma-buf/st-dma-fence-unwrap.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/st-dma-fence-unwrap.c b/drivers/dma-buf/st-dma-fence-unwrap.c
index 4105d5ea8dde..1137a6d90b32 100644
--- a/drivers/dma-buf/st-dma-fence-unwrap.c
+++ b/drivers/dma-buf/st-dma-fence-unwrap.c
@@ -56,7 +56,7 @@ static struct dma_fence *mock_array(unsigned int num_fences, ...)
 
 	va_start(valist, num_fences);
 	for (i = 0; i < num_fences; ++i)
-		fences[i] = va_arg(valist, typeof(*fences));
+		fences[i] = va_arg(valist, struct dma_fence *);
 	va_end(valist);
 
 	array = dma_fence_array_create(num_fences, fences,
@@ -72,7 +72,7 @@ static struct dma_fence *mock_array(unsigned int num_fences, ...)
 error_put:
 	va_start(valist, num_fences);
 	for (i = 0; i < num_fences; ++i)
-		dma_fence_put(va_arg(valist, typeof(*fences)));
+		dma_fence_put(va_arg(valist, struct dma_fence *));
 	va_end(valist);
 	return NULL;
 }
-- 
2.36.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
