Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBlSGh9k5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:36:31 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC47431953
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:36:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EA6933F783
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:36:29 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 189DD3F6F0
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Apr 2026 08:41:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=ej4FKVO2;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=cgikgt4x;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (lists.linaro.org: domain of aniket.randive@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=aniket.randive@oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6332PC4V1562153
	for <linaro-mm-sig@lists.linaro.org>; Fri, 3 Apr 2026 08:41:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=QmKfAmOnOoidKU2K7M065NqSIxZq6+lb/9v
	nAIyjv3o=; b=ej4FKVO2FH0oAp4MNdN5hb1b9k5gUhvwvlo86YCJVpzdmzRdxvR
	tVGpIhdjlHoSoeJQnQY+VGGu8Ul+8RQTGPYnGX6MaynkGvZFP2sZgBKU2uwphhzo
	s5MJt6+hP552oi9ARgCgfGY++KgDQVAKc2sgtxwtD7dK3hni3/1DQDOIcBi/+EN8
	o4uqXMR6qtpoDohrSaLpUpuJfRVVSgt2JgUrMWBNq9DQj/QABvcvWuwPi9pZ6Ju/
	hqfMW06cN+a7m2Zz8zYklHS6vFkvZypXv27+X3/vsSj9u3UDBLwD5taGuJgBncyK
	RLZsY9ex3S8ZCYn58Pvu9/UXYxA1DWpWDvA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d9um72s0p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Apr 2026 08:41:44 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-82c646e980bso951710b3a.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Apr 2026 01:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775205704; x=1775810504; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QmKfAmOnOoidKU2K7M065NqSIxZq6+lb/9vnAIyjv3o=;
        b=cgikgt4xxF96uOQFMw9/VHhsZjWXzSrM8AWeVvN+CdQc52hpBjtBXvRbdoup6iAMVB
         +wQGhet+/aZC8NRTERL4UVfdh+Dfm+6C1pCrrjoZIuLb7DwePM2nqpiBh86wm6qB+HAV
         MllP8h8zA8CfTN4mqc7TwqrK1axCxyTrNRnPNIBL3D3/wUK8wFE6HoEqBCiiJ7GBpz84
         pZLzPSBPLzqXpxFmPCwQeMB10uccmIDWcpstYw73tcyOfHwQ9HgQmDgL+E7bIh0qGFHv
         Rz4LDvQPRHISuKUmmz4OPTP9wNFT/hr9FLZdKOBjfyzzuVt6/dpt75Maa9RQRLGkW4tW
         8ujg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775205704; x=1775810504;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QmKfAmOnOoidKU2K7M065NqSIxZq6+lb/9vnAIyjv3o=;
        b=AwITgOprbB3BbUNhIwwrLlLAjIAO50lbVhq7DWCZzFl115gbJPN2B7o1qFTJSATBcx
         OjmFQ6keH5OG4sJA4GWwPQ1vhOlznLJ8nrlgJxoX/867vFE+snhreahU5DeSPu/V3inw
         i7ei2VY69XIxP8MP1n/y6cBJbSgzSbhDBtRDU77+sqnbS+wlTu2P/8Fj3Q3N9sfx89se
         Za1SfYi2hAPeQQFq0+TQYsDtD5YADz82d+8b2uXmVchwqsuGXAJAkP6APN0WRxGI1yeX
         F/AZJ4wr9DC6pnub0tPmmBtjzOgre3vE01Rrb7+Atjkn9ocqjhb/duTwZ/q4AJK30Xnk
         JsmA==
X-Forwarded-Encrypted: i=1; AJvYcCU0msHZq54sUyuH2Quh000paUO0vKF8Q8wcaljskug+mrZe9vWI9ieOvOfTLcpFc0UzKYD9UeP9l1FuHHPE@lists.linaro.org
X-Gm-Message-State: AOJu0YyvP+DsBU8BRFj+Xgec+TJ6PsFLs3y2B2V6yt4xhLJ47kX6u4NP
	AHalS3jCV23j2KzNeN7CbySzOBCuuCms0igkpUG1cJtxa7sTc5lMil+goc6UKIAMVLss/zeI3Ex
	R6htuNYxtudWWX9Eu/nC74R1eKD5Czc/Qn+ofsFwJEGFMM1Z1oWHTuhWjfDqTjgWCEk0NSg==
X-Gm-Gg: AeBDievASSonSVCMohfVvYLUUjhdOtB6GQVisy0JA525SMUnvgDO0AdgHUdPVYgcud+
	cH9w/BWnANxfXd+T/7LbXdzRXEGUHPVPmIqr/HHMwJTQY4Aytdgk8b/E7KpgTkFDsp3EDQ4Swi7
	ufW26DyCnoICIZK3HLfcAY89Ah1MdJb0MGadupK796/wHs0M5vhfzqY+wJ0CxMY3sbgUw1wg9nC
	aMQG2/CC6wXQavGlfwgEw62HbF0SygKZfnVec9oPgOFmDdaWmopnqkz0vPXw4Dc3xByx/HaOJ6j
	nLato8j05HV4uoDJIJYecRyIYrK2cJbp8ESRiB9yU0G/yHT0Y3CBPZPuo0TJV7obkkTEacqqwHv
	i9vR1dAUY1/ec1wTwWr2Kerh+4V0jt/CIH8U2JyI3inbVttGmn3xzCBY3
X-Received: by 2002:a05:6a00:2d10:b0:82c:9c47:fef9 with SMTP id d2e1a72fcca58-82d0da34535mr2228676b3a.2.1775205704170;
        Fri, 03 Apr 2026 01:41:44 -0700 (PDT)
X-Received: by 2002:a05:6a00:2d10:b0:82c:9c47:fef9 with SMTP id d2e1a72fcca58-82d0da34535mr2228649b3a.2.1775205703692;
        Fri, 03 Apr 2026 01:41:43 -0700 (PDT)
Received: from hu-arandive-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82cf9b2714dsm6757172b3a.1.2026.04.03.01.41.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Apr 2026 01:41:43 -0700 (PDT)
From: Aniket Randive <aniket.randive@oss.qualcomm.com>
To: mukesh.savaliya@oss.qualcomm.com, viken.dadhaniya@oss.qualcomm.com,
        andi.shyti@kernel.org, sumit.semwal@linaro.org,
        christian.koenig@amd.com
Date: Fri,  3 Apr 2026 14:11:35 +0530
Message-Id: <20260403084135.1300931-1-aniket.randive@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=U/WfzOru c=1 sm=1 tr=0 ts=69cf7d48 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=qPv6kJ6rrmvbaMxWJaQA:9 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: pwx3e0Lo89WimKAVhE3eEjqcDExcwSto
X-Proofpoint-ORIG-GUID: pwx3e0Lo89WimKAVhE3eEjqcDExcwSto
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDAzMDA3NiBTYWx0ZWRfX9QA0jNxk8ZaF
 v4tHUebRWMMgucJN89/tIlr83o1DLfQdxUihPlbSX/1TyX3wWglRljAq7gbdNN/BCV6YS4huXrv
 +7zw7f7DQQ5SZE7FCc9RlPhJdXsd5nSf+xot3llypKZenL5ZHSu9UZBT2V7Qds0yBzEl6sUde7a
 yx9FyWRSgR4eUd/1xWmikwtN63TiMYzkU1XELS/QZow1hkNq+NkLUFjHEiPYEiWuV5+H+eVkwbR
 MlUoSQ2grZd7sDGSChbrXoDJLADwZs1YbHNhsPwzpPWUuFvmLzyZtG2g+0uk7vPlsw50x6QX5Xh
 QOPBNCxKiMwPF6SySf1kFv5m+N5SkqNpbEdaEL8A8WXTWILPViYcunayE8MlZctcAk8Ya7qs/im
 V9FZc+GholcgzNtJuhJ2ksRQfpr33lnbC4WCqAohibvs71GQ7RqBxUFupb9JBtEfbGjuaTbIX1t
 8QqlH94JsQHDPEElcqQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-03_02,2026-04-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 priorityscore=1501 bulkscore=0 clxscore=1015
 phishscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2604030076
X-Spamd-Bar: --
X-MailFrom: aniket.randive@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YXJE6YU5FCDOB62CYPHXUXICBCDQIZCY
X-Message-ID-Hash: YXJE6YU5FCDOB62CYPHXUXICBCDQIZCY
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:49 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, naresh.maramaina@oss.qualcomm.com, aniket.randive@oss.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH V3] i2c: qcom-geni: Avoid extra TX DMA TRE for single read message in GPI mode
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YXJE6YU5FCDOB62CYPHXUXICBCDQIZCY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	DATE_IN_PAST(1.00)[416];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	GREYLIST(0.00)[pass,meta];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[aniket.randive@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,oss.qualcomm.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: EBC47431953
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In GPI mode, the I2C GENI driver programs an extra TX DMA transfer
descriptor (TRE) on the TX channel when handling a single read message.
This results in an unintended write phase being issued on the I2C bus,
even though a read transaction does not require any TX data.

For a single-byte read, the correct hardware sequence consists of the
CONFIG and GO commands followed by a single RX DMA TRE. Programming an
additional TX DMA TRE is redundant, causes unnecessary DMA buffer
mapping on the TX channel, and may lead to incorrect bus behavior.

Update the transfer logic to avoid programming a TX DMA TRE for single
read messages in GPI mode.

Co-developed-by: Maramaina Naresh <naresh.maramaina@oss.qualcomm.com>
Signed-off-by: Maramaina Naresh <naresh.maramaina@oss.qualcomm.com>
Signed-off-by: Aniket Randive <aniket.randive@oss.qualcomm.com>
---
Changes in v3:
  - Added comment in the driver for better readability and changed the
    position of 'skip_dma' label to allow dma engine configuration.

Changes in v2:
  - Updated the commit message.

 drivers/i2c/busses/i2c-qcom-geni.c | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index a4acb78fafb6..78b92db7c7fd 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -625,8 +625,8 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
 {
 	struct gpi_i2c_config *peripheral;
 	unsigned int flags;
-	void *dma_buf;
-	dma_addr_t addr;
+	void *dma_buf = NULL;
+	dma_addr_t addr = 0;
 	enum dma_data_direction map_dirn;
 	enum dma_transfer_direction dma_dirn;
 	struct dma_async_tx_descriptor *desc;
@@ -639,6 +639,12 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
 	gi2c_gpi_xfer = &gi2c->i2c_multi_desc_config;
 	msg_idx = gi2c_gpi_xfer->msg_idx_cnt;
 
+	/* Skip TX DMA map for I2C_WRITE operation to avoid unintended write cycle */
+	if (op == I2C_WRITE && msgs[msg_idx].flags & I2C_M_RD) {
+		peripheral->multi_msg = true;
+		goto skip_dma;
+	}
+
 	dma_buf = i2c_get_dma_safe_msg_buf(&msgs[msg_idx], 1);
 	if (!dma_buf) {
 		ret = -ENOMEM;
@@ -658,6 +664,7 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
 		goto out;
 	}
 
+skip_dma:
 	if (gi2c->is_tx_multi_desc_xfer) {
 		flags = DMA_CTRL_ACK;
 
@@ -740,9 +747,12 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
 	return 0;
 
 err_config:
-	dma_unmap_single(gi2c->se.dev->parent, addr,
-			 msgs[msg_idx].len, map_dirn);
-	i2c_put_dma_safe_msg_buf(dma_buf, &msgs[msg_idx], false);
+	/* Avoid DMA unmap as the write operation skipped DMA mapping */
+	if (dma_buf) {
+		dma_unmap_single(gi2c->se.dev->parent, addr,
+				 msgs[msg_idx].len, map_dirn);
+		i2c_put_dma_safe_msg_buf(dma_buf, &msgs[msg_idx], false);
+	}
 
 out:
 	gi2c->err = ret;
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
