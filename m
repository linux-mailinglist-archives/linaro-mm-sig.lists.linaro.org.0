Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wbqnFY9xVmqh5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:27:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B7B757691
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:27:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=lzUTMwVw;
	dkim=fail ("body hash did not verify") header.d=oss.qualcomm.com header.s=google header.b=J4M+3ml0;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E422E40A4C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:27:41 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 287DD40AD5
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2026 06:05:32 +0000 (UTC)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6695xxOL710968
	for <linaro-mm-sig@lists.linaro.org>; Thu, 9 Jul 2026 06:05:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=vm7lobBZrOzogeeSZu3t/lsBp/vgw265Z0F
	DOOPQOsk=; b=lzUTMwVwpM86ZbjFJ9yCK7tGFt6FK7njTFZy06AIu0A6AYI9hGR
	lhNajr4rP78OuO3SpD55+gFBUvS2408/pmhljHLiC7sqjaytBTA74ROSLUhNqDyB
	Jf5S5pBTLECW8ENBlct1qxjygssWjgmheodnUWZZb3fucUBFh5d46QROQlObPcwS
	HfXTENoPHBrh3PCY7iW8UEBPD0jRk41WkrgDEdntpaBiLcTmhJk3YxjiHp++AE1E
	J/gCjsspFQAOTPXYRxPMHfbrUB9Bjt88/YpBlJOFKE+TM6wUiFLBqEDcC9wV9Ugp
	mcR2GRT5NLlpKbTeygY+d3BiAMsJVAGwrdQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fa55vg6wq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Jul 2026 06:05:30 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2cc8bde6318so11521365ad.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Jul 2026 23:05:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783577130; x=1784181930; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=vm7lobBZrOzogeeSZu3t/lsBp/vgw265Z0FDOOPQOsk=;
        b=J4M+3ml0CFxQsaZfsUrRYqhRubgz0M/E41ADm6Ak0M5Y13JI6fVPkhFkF0Ob2ovI2B
         f9CGUDsmcN4l1hkegxfTgIdfgZ9na1BF+iGQx7jHuXA/V2ftKBop+a5xYa2BIabBuxl9
         hTLJLYBQLdCsFqWZMWKMK/H9ATHc/3p7FVgjL9HsYGAZDGHrQFvKEzL+Yw81f9uKkC73
         Pzz+7vnRW211q+vc3r2u0l9TRqRRxe3eeE7NASJwbqsyapaQ+4Xv8UXPeviASIBFRiTG
         lwlOmjFLcN8gpYEApJ+MhCDUkptM/ZQwXHKMM8D/yJQy0o0gBLpna0ul3FTGegnd8Iwl
         TAJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783577130; x=1784181930;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vm7lobBZrOzogeeSZu3t/lsBp/vgw265Z0FDOOPQOsk=;
        b=T/iAGDzYj7PJk+PaUlfxkRY2xun4HpGQheuHu9jxRc81ihceTfScu/wSVCeZlud5p1
         ZI8Xgw7nb3T4wOwTGxaPbo8PMJgnqFUf+3njX8FyAhWFTeT7tm7X3M7zNlgYKQLEh/Gm
         c0UZa5ya/+NhfIxbWjJXMCqVabKBeGywH18lWgBLcOVEZBrzCyaoi+YFOVNOAlhHRCGT
         9+4BgakXHmXWl2KtaA3HeWNDpXmegIkQEF8kYKQcRnEgziAboNnDvp3jJKC4IGM7ij2P
         ZQtyXu6peA01mdeZRgSUDjSN5/FFdXjgBojugFSrW+e5m1Z6C804doPzhmPeqBlGx1Hu
         L2/w==
X-Forwarded-Encrypted: i=1; AHgh+RptcQ1artBqbqIh5r6vUByH7rlzuHcpns7hJUyg/2kNcMehHGhE5frsMMb7r4VDDMMwf13p2mAMezHIWyqo@lists.linaro.org
X-Gm-Message-State: AOJu0YyL5Oc/8elUBqBGn1yrZM10uS/evKVLrzNaIuG7Y+Zvi9eMMVqA
	S/RvXXRbJTgi+nwIjdV4o/iuVG3o8MG+I4OESvMUgKUrGBxLPzXSXLnUapPjjZ3FmXh0koV4d1g
	r+1rzuH0gVPtBNCQoiq0N055K5/cTTuL1rTPrzTwvDUBzyKiogeHz6KGYygNP0S64404i4w==
X-Gm-Gg: AfdE7cmocyyx619Xpn0VhGF6/MKUMrZMhSm+Bcpik2QPKMDNEhc2zaXMmBTV5lWwAZk
	YmgndkqB+se3BT8GeRPoNJv11mBjl36QvYtKHemlGqSQA4bjOr7k3hcvChXMAENFzVmzDf0+tFo
	seR98pjjNS5SZrmlo7vhqdXwDXT1IshcqoY45uPgtXuqimPxRoAJE7RjGTeVgbDLEnHZFCgSww4
	EaBoZO+EOz9U4wJmlqujqXH1Cxhxdrk/Z1f8odWimbN3DWcrY4TrTsS+BeBsSX5zzliD4LErod3
	PiQtxPFjdeVVWQFSrIDoilAEKiKD4lN0Z3xvQ0t+E7NChLazzCwvXloNWz9P3C84Qzp+JAfs8ZM
	r6gnQ/9JzjkrWnrUixrQCOJioDuqxtAIHoaobqNIfRsWH/Q==
X-Received: by 2002:a17:902:d2cb:b0:2c2:bd7f:ccd4 with SMTP id d9443c01a7336-2ccea3e1fdfmr65120395ad.21.1783577130171;
        Wed, 08 Jul 2026 23:05:30 -0700 (PDT)
X-Received: by 2002:a17:902:d2cb:b0:2c2:bd7f:ccd4 with SMTP id d9443c01a7336-2ccea3e1fdfmr65120005ad.21.1783577129651;
        Wed, 08 Jul 2026 23:05:29 -0700 (PDT)
Received: from hu-arandive-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9d1f030sm38128135ad.51.2026.07.08.23.05.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 23:05:29 -0700 (PDT)
From: Aniket Randive <aniket.randive@oss.qualcomm.com>
To: mukesh.savaliya@oss.qualcomm.com, viken.dadhaniya@oss.qualcomm.com,
        andi.shyti@kernel.org, sumit.semwal@linaro.org,
        christian.koenig@amd.com
Date: Thu,  9 Jul 2026 11:35:21 +0530
Message-Id: <20260709060521.4091523-1-aniket.randive@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA5MDA1NCBTYWx0ZWRfX48IibFKHorqv
 F4X+NE3wDNh2WhbMZLBZRe91mJCoU6TL62o6XuNxmDV5kOaxt3GsfVLshK0WxrP+qQRzkr7qJfr
 pAAO7miBMwvy4P8kbTWqYOGJTCKe7cabwFd9SlkKWf3zGAKKY9oSo0+GR/XpIPgV70wriL8shae
 wEtCZ5asb5DOrjL7PKYBWJwAPV/QLrRJPIsQdQEHyz9BBzmCioFQ5/CW0TTe/O91rPsSObOY0qW
 s3v+O3rhMxHpKC+2/ro62Y4708mU392ZzwrVZighsNs1CTDfjTWNT9R5KakwixRmfdmEWLcBIIq
 hwB0P4x9AAPI5xhrPBpCzv7udtqnOH1GMwVWiCMcEr1bad/5pQdNss9HlVNBgHimuZbbeIP0JGz
 H0ZIVVGFDM58BKxnjskDIact7RTVsWQa/U417Ak7l9SOgYJXSbQSiNxyMFD0uW8yS3y5Z28npYw
 jeQ5rsX6qQmjs6GzYaA==
X-Authority-Analysis: v=2.4 cv=KfDidwYD c=1 sm=1 tr=0 ts=6a4f3a2a cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=ThEsosvJOpkTSRB3RXoA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA5MDA1NCBTYWx0ZWRfX3X++zUHMplwP
 Xe/5Lv+K6kXOrrJ1dt1ktDA/wW2ejFymhyD3D9bGk1Mk3XNM9bqxsgBgzAaHTFqr3x/3fyNSnJc
 WmLEReB4BwoBZdBYDLBHOpglNunw49s=
X-Proofpoint-ORIG-GUID: EBe3JVsPAh3IKoZPZ4SVR1l8jMLReBPJ
X-Proofpoint-GUID: EBe3JVsPAh3IKoZPZ4SVR1l8jMLReBPJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-09_01,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 adultscore=0 clxscore=1015 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607090054
X-Spamd-Bar: --
X-MailFrom: aniket.randive@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EBGEPWN3XWYUYPZTYV5J5EBKVINPN4TC
X-Message-ID-Hash: EBGEPWN3XWYUYPZTYV5J5EBKVINPN4TC
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:19:50 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, naresh.maramaina@oss.qualcomm.com, aniket.randive@oss.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3] i2c: qcom-geni: Add dynamic transfer timeout based on transfer length and frequency
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EBGEPWN3XWYUYPZTYV5J5EBKVINPN4TC/>
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
	URIBL_MULTI_FAIL(0.00)[oss.qualcomm.com:server fail,linaro.org:server fail,lists.linaro.org:server fail,qualcomm.com:server fail];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:from_mime,oss.qualcomm.com:mid,linaro.org:email,qualcomm.com:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C6B7B757691

The driver uses a static XFER_TIMEOUT of HZ (1 second) for all transfers
regardless of message length or bus frequency, causing unnecessary
delays on error paths.

Compute the timeout dynamically from message length and bus frequency
with a 10x safety margin over the theoretical wire time and a 300ms
floor. For GPI multi-descriptor transfers, use the maximum message
length across all queued messages as the per-completion timeout.

Signed-off-by: Aniket Randive <aniket.randive@oss.qualcomm.com>
---

Changes in v3:
 - Added the extra variable to handle timeout value.

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
