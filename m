Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nVv2JIVxVmqd5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:27:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 076CF757685
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:27:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=W18p0KLO;
	dkim=fail ("body hash did not verify") header.d=oss.qualcomm.com header.s=google header.b=dYJrK0f4;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1C89D404D4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:27:32 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 2AAB8404BE
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2026 06:00:17 +0000 (UTC)
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66960Fa9749620
	for <linaro-mm-sig@lists.linaro.org>; Thu, 9 Jul 2026 06:00:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=KVejRE01iSJ9Cu8Vv9/R1+qSCrCIqHbYQPC
	pZLTjswY=; b=W18p0KLOMqGgiuhbsBZ44PvbjZxW6wgKHH4ebgV7ChQ5lzGfKw4
	jKV9zTj/d3hG+ns1/8t6yRA9n1rNkjzW4Xmeb+mKP8WU7IMj1z6nSiQ0qV8cSg6d
	75ZsBmvDJfqz/zoSbxbH/SV+arwQcmJfIY8GRqcbkbFuQk4zGkMluvFFbCRpOkcj
	9oAUklE8k3iJbJKkkvJpxUFMfm8sB8cCXVdHbOmrvj80LV/XmMNFAQ4yxJ31IiNH
	U+YcFj/r6Q/1otLfYS1CoNYbx66HWYu6M4u9qvHPJSBp+HjPluJ+M9DTp8xPAcmt
	19aIauhynvKLn79unjY0DeyJB55v5YA6+bA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f9wwfshk2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Jul 2026 06:00:08 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2c7f385887bso29258805ad.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Jul 2026 23:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783576808; x=1784181608; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=KVejRE01iSJ9Cu8Vv9/R1+qSCrCIqHbYQPCpZLTjswY=;
        b=dYJrK0f42GwT5WbpA3VV7txnBGyuWWtkKgfbs8sJCsIvhGZ61DjOiV3wfOi9PmXcEL
         TGanenOkfiSsXJknAkGUIjqeIrNROf2KMl04iyjcpcCmdVuCIYEaSIDCHtXpBZYKnWTJ
         PvaHjLBfPq+hopA67W/mwawWv9U57pGWwVIM2a9JITZY8bw1FiJa+elO6JSYwb/37S1i
         RzKMBRRfDPiIMjYoYrEeouR/TNjrErXn1rLYt7amwlxNjHHsUFkJP4dMnkoVDJAPdeCk
         ygK9F0QAlbEpAtjnEx2UJHAZyOBPx0ebn+fbRN5fRdKcrq0YLV0hNxe4wZkjtyXnPR3/
         eSlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783576808; x=1784181608;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KVejRE01iSJ9Cu8Vv9/R1+qSCrCIqHbYQPCpZLTjswY=;
        b=o6NU2jO9I2S2WL4xYSwEoo9W1iDTpYknJsNvUcvzFdnnynwaqiFO/0FPu0oxcaySDa
         gLSTLpkD9Qe5xSxU1WT7FGum1uJTr1yBJzAaMKeA4CSbXENBVEGenK5sLIWrFYk1Z4p5
         o2HgPysrlAECmEa3r02uTNgAyrtZBnEiGXPO2Pu3LXOnt0uVRsVsU0lUGMcZsDKYZ7um
         GY/cp4r1if4obMDzaZDdOm0Mv74rJR4Z2t1JAAJoxfQCfoGplRvp1Flwd7MsAWmwysWH
         J2glGte6EshYZQTAsgJXf9MwJTnMvm0ashW78rSM5HoFdDZ/NMlDbiTF51MqRKNfkb2a
         V32w==
X-Forwarded-Encrypted: i=1; AHgh+RqlbButI3pteYXNzse/kNhCJVeF09qRbyzpeXdzac/BKOgtBO87tM8CgNA+xzm0CavCSFvbKk2Wm2+S+Jm+@lists.linaro.org
X-Gm-Message-State: AOJu0YzfHUjrv2WwnHxl3KjAp+QHsjPSoy8n49Wv8xoBA/7VQMyWKA//
	KLGbpC4r7RY/QRMfPdrqyze7AUT6vFTkzbGqbWVXhTkoL7Lg2KKMnoXugYEHfMNmDot+1l2+ldF
	DTtI1R3xgYmXNewBKz6zOOeaML/mGvFDwDaKI18YmAk4Pnl94urLFkoeH/DDnQZK9mZQvnA==
X-Gm-Gg: AfdE7clBhaZvXgeiOlawYpaH9R9M7XEF0E5NZByWVDg/mXFmaS0/8NsVkwiQK6k+7eO
	E1pd0ERJCEWW4Jh1TU2HutY8wywEQoBS8fbfG8aLfmax+i8YvXsUj+sXGToDXG2BvMl3V328q7a
	4dyYV0+76WPRPptgC6qVgzdEQZpkyhPPDdWMKM9BfdFmXntby7O/pjQWlVi+7fqQHlOd2XRlT0d
	bzkboOHYgZ/6uJruaEBhUby7+bh4pW4OtcPXDJejvRgBUM8ZcDZ4MBwOhsiaz+SX87Hul676k0r
	lRxDmk7VYdBLn8+gMxlOtbWlESXSWN7mmdNxoHHQxwn4nN7Ehw6hxgBHGW1voBL0Wl8EYxX3kpP
	966rN9fpzzTNCcHYfXMRXsvOGuRgqeuORr5iAaRaLrcDCZA==
X-Received: by 2002:a17:903:22ca:b0:2cc:777f:d67d with SMTP id d9443c01a7336-2ccea42ca48mr61321615ad.30.1783576807323;
        Wed, 08 Jul 2026 23:00:07 -0700 (PDT)
X-Received: by 2002:a17:903:22ca:b0:2cc:777f:d67d with SMTP id d9443c01a7336-2ccea42ca48mr61320405ad.30.1783576806265;
        Wed, 08 Jul 2026 23:00:06 -0700 (PDT)
Received: from hu-arandive-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9d5c361sm37864555ad.80.2026.07.08.23.00.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 23:00:05 -0700 (PDT)
From: Aniket Randive <aniket.randive@oss.qualcomm.com>
To: mukesh.savaliya@oss.qualcomm.com, viken.dadhaniya@oss.qualcomm.com,
        andi.shyti@kernel.org, sumit.semwal@linaro.org,
        christian.koenig@amd.com
Date: Thu,  9 Jul 2026 11:29:58 +0530
Message-Id: <20260709055958.4089039-1-aniket.randive@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA5MDA1NCBTYWx0ZWRfX1uKghHUNghip
 RBCrdr+DPSyaW2lzIGPrdRMSuP5pcKMU4QyaNmJ002eJJDl9qPBA7RVrFTNqVOb1hl/+Ca0maUa
 OZE5Ta4Z8mBMD12+DN8XCmNJ4l4Y9ch7C+SRTococbEtK/OjQeoAQeLzaz3PtZZDVy1NE8UlBKA
 jIAJBqLdzejHma3xs5aVZB20wL9vOx/qF4Xnho6S/k/l1BbtYq5yfGgaOWOVKEt4dtFQ4Y3gYNb
 2S4pCgTIFb0iWmDeqs0a3ohFXHdS3I/byHpShNvi5HSX2ORwXiURdXwcnnE9ihVRN8bOZ8eijva
 9ncTODRrH4nHbWcn4aSc4yT6P2Nl9gsZVnUp4EdvrIu/dfwIeOpwSf78jNmeDsrL13t0S6IGkXX
 7ewaWM0QMW1fr803M7EjbPXCS1YIsZl8c6yWhc+jrURckDVD3HvhVfAD2bg8o/fhSmgXpBuL5pC
 i05u4Oumccck0CwatPQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA5MDA1NCBTYWx0ZWRfX9tuzYwY7fagP
 yHM4Fae38mytdtPUCupdI/aWpOOzuU+1jOqEy/qN3a+sdKaMCV13p0N8BVQcxrCM/HX+GfeMWUq
 PsgJgZ6ObgDRFF8eOyiYSf75qs1+Rhg=
X-Proofpoint-ORIG-GUID: JTFxBNiC6JMlZ-rhkPwbmlH9JpO6Lfje
X-Proofpoint-GUID: JTFxBNiC6JMlZ-rhkPwbmlH9JpO6Lfje
X-Authority-Analysis: v=2.4 cv=Krh9H2WN c=1 sm=1 tr=0 ts=6a4f38ea cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=ThEsosvJOpkTSRB3RXoA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-08_05,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607090054
X-Spamd-Bar: --
X-MailFrom: aniket.randive@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FGIG3KQMAXM7NRFEJ5IJQIPURXRLEMP7
X-Message-ID-Hash: FGIG3KQMAXM7NRFEJ5IJQIPURXRLEMP7
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:19:49 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, naresh.maramaina@oss.qualcomm.com, aniket.randive@oss.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] i2c: qcom-geni: Add dynamic transfer timeout based on transfer length and frequency
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FGIG3KQMAXM7NRFEJ5IJQIPURXRLEMP7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[131];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	URIBL_MULTI_FAIL(0.00)[linaro.org:server fail,qualcomm.com:server fail,oss.qualcomm.com:server fail,lists.linaro.org:server fail];
	FORGED_SENDER(0.00)[aniket.randive@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS(0.00)[m:mukesh.savaliya@oss.qualcomm.com,m:viken.dadhaniya@oss.qualcomm.com,m:andi.shyti@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:linux-i2c@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:naresh.maramaina@oss.qualcomm.com,m:aniket.randive@oss.qualcomm.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[aniket.randive@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-,oss.qualcomm.com:-];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,oss.qualcomm.com:from_mime,oss.qualcomm.com:mid,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 076CF757685

The driver uses a static XFER_TIMEOUT of HZ (1 second) for all transfers
regardless of message length or bus frequency, causing unnecessary
delays on error paths.

Compute the timeout dynamically from message length and bus frequency
with a 10x safety margin over the theoretical wire time and a 300ms
floor. For GPI multi-descriptor transfers, use the maximum message
length across all queued messages as the per-completion timeout.

Signed-off-by: Aniket Randive <aniket.randive@oss.qualcomm.com>
---
 drivers/i2c/busses/i2c-qcom-geni.c | 45 +++++++++++++++++++++++-------
 1 file changed, 35 insertions(+), 10 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index 96dbf04138be..d43db77b3678 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -74,9 +74,12 @@ enum geni_i2c_err_code {
 #define PACKING_BYTES_PW	4
 
 #define ABORT_TIMEOUT		HZ
-#define XFER_TIMEOUT		HZ
 #define RST_TIMEOUT		HZ
 
+/* 9 bits per byte (8 data + 1 ACK), 10x safety margin, 300ms floor */
+#define I2C_TIMEOUT_SAFETY_COEFFICIENT	10
+#define I2C_TIMEOUT_MIN_USEC		300000
+
 struct geni_i2c_desc {
 	bool no_dma_support;
 	unsigned int tx_fifo_depth;
@@ -204,6 +207,16 @@ static int geni_i2c_clk_map_idx(struct geni_i2c_dev *gi2c)
 	return -EINVAL;
 }
 
+static unsigned long geni_i2c_xfer_timeout(struct geni_i2c_dev *gi2c, size_t len)
+{
+	size_t bit_cnt = len * 9;
+	size_t bit_usec = (bit_cnt * USEC_PER_SEC) / gi2c->clk_freq_out;
+	size_t xfer_max_usec = (bit_usec * I2C_TIMEOUT_SAFETY_COEFFICIENT) +
+			       I2C_TIMEOUT_MIN_USEC;
+
+	return usecs_to_jiffies(xfer_max_usec);
+}
+
 static int qcom_geni_i2c_conf(struct geni_se *se, unsigned long freq)
 {
 	struct geni_i2c_dev *gi2c = dev_get_drvdata(se->dev);
@@ -445,7 +458,7 @@ static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 				u32 m_param)
 {
 	dma_addr_t rx_dma = 0;
-	unsigned long time_left;
+	unsigned long time_left, timeout;
 	void *dma_buf;
 	struct geni_se *se = &gi2c->se;
 	size_t len = msg->len;
@@ -470,8 +483,9 @@ static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 		gi2c->dma_buf = dma_buf;
 	}
 
+	timeout = geni_i2c_xfer_timeout(gi2c, len);
 	cur = gi2c->cur;
-	time_left = wait_for_completion_timeout(&gi2c->done, XFER_TIMEOUT);
+	time_left = wait_for_completion_timeout(&gi2c->done, timeout);
 	if (!time_left)
 		geni_i2c_abort_xfer(gi2c);
 
@@ -484,7 +498,7 @@ static int geni_i2c_tx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 				u32 m_param)
 {
 	dma_addr_t tx_dma = 0;
-	unsigned long time_left;
+	unsigned long time_left, timeout;
 	void *dma_buf;
 	struct geni_se *se = &gi2c->se;
 	size_t len = msg->len;
@@ -512,8 +526,9 @@ static int geni_i2c_tx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 	if (!dma_buf) /* Get FIFO IRQ */
 		writel_relaxed(1, se->base + SE_GENI_TX_WATERMARK_REG);
 
+	timeout = geni_i2c_xfer_timeout(gi2c, len);
 	cur = gi2c->cur;
-	time_left = wait_for_completion_timeout(&gi2c->done, XFER_TIMEOUT);
+	time_left = wait_for_completion_timeout(&gi2c->done, timeout);
 	if (!time_left)
 		geni_i2c_abort_xfer(gi2c);
 
@@ -591,7 +606,7 @@ static void geni_i2c_gpi_multi_desc_unmap(struct geni_i2c_dev *gi2c, struct i2c_
  * geni_i2c_gpi_multi_xfer_timeout_handler() - Handles multi message transfer timeout
  * @dev: Pointer to the corresponding dev node
  * @multi_xfer: Pointer to the geni_i2c_gpi_multi_desc_xfer
- * @transfer_timeout_msecs: Timeout value in milliseconds
+ * @transfer_timeout_msecs: Per-message completion timeout in jiffies
  * @transfer_comp: Completion object of the transfer
  *
  * This function waits for the completion of each processed transfer messages
@@ -601,7 +616,7 @@ static void geni_i2c_gpi_multi_desc_unmap(struct geni_i2c_dev *gi2c, struct i2c_
  */
 static int geni_i2c_gpi_multi_xfer_timeout_handler(struct device *dev,
 						   struct geni_i2c_gpi_multi_desc_xfer *multi_xfer,
-						   u32 transfer_timeout_msecs,
+						   unsigned long timeout_jiffies,
 						   struct completion *transfer_comp)
 {
 	int i;
@@ -612,7 +627,7 @@ static int geni_i2c_gpi_multi_xfer_timeout_handler(struct device *dev,
 
 		if (multi_xfer->msg_idx_cnt != multi_xfer->irq_cnt) {
 			time_left = wait_for_completion_timeout(transfer_comp,
-								transfer_timeout_msecs);
+								timeout_jiffies);
 			if (!time_left) {
 				dev_err(dev, "%s: Transfer timeout\n", __func__);
 				return -ETIMEDOUT;
@@ -736,8 +751,16 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
 		dma_async_issue_pending(gi2c->tx_c);
 
 		if ((msg_idx == (gi2c->num_msgs - 1)) || flags & DMA_PREP_INTERRUPT) {
+			unsigned long timeout;
+			size_t max_len = 0;
+			int j;
+
+			for (j = 0; j < gi2c->num_msgs; j++)
+				max_len = max_t(size_t, max_len, msgs[j].len);
+
+			timeout = geni_i2c_xfer_timeout(gi2c, max_len);
 			ret = geni_i2c_gpi_multi_xfer_timeout_handler(gi2c->se.dev, gi2c_gpi_xfer,
-								      XFER_TIMEOUT, &gi2c->done);
+								      timeout, &gi2c->done);
 			if (ret) {
 				dev_err(gi2c->se.dev,
 					"I2C multi write msg transfer timeout: %d\n",
@@ -851,8 +874,10 @@ static int geni_i2c_gpi_xfer(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[], i
 		}
 
 		if (!gi2c->is_tx_multi_desc_xfer) {
+			unsigned long timeout = geni_i2c_xfer_timeout(gi2c, msgs[i].len);
+
 			dma_async_issue_pending(gi2c->tx_c);
-			time_left = wait_for_completion_timeout(&gi2c->done, XFER_TIMEOUT);
+			time_left = wait_for_completion_timeout(&gi2c->done, timeout);
 			if (!time_left) {
 				dev_err(gi2c->se.dev, "%s:I2C timeout\n", __func__);
 				gi2c->err = -ETIMEDOUT;
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
