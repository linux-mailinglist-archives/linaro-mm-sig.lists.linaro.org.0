Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMkmABll5mlmvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:40:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE30431C92
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:40:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6F829406A9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:40:39 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 34EED3F70C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2026 10:19:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=ndPdVVLn;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=LXrg2Hi8;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (lists.linaro.org: domain of aniket.randive@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=aniket.randive@oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63AA9iFZ2047763
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2026 10:19:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=6jAgrIXul/6oRSYYubPw70Q0si68WXVn+fa
	kGuy+ODE=; b=ndPdVVLnGPt32e2MEzl7sTuz9/zVb7Sk84BklOIbc/rtOnMHJEL
	6J+fQmw38SM2WVmQRhoUZxq1JPCnytnNgArI2MVnT+7H+9+tsq0JMpTHzF/xgKAd
	a6IH4gcMXW9TISx4eJ1JpoF5ESDjtT6gjEquabdsRmduxNHxtVD2uEzbJ34suXz+
	WqwbGrj4lFSE8uqFuyLx/qQcmXTS266MnkSJSXqfy9tCcrS367sBehXCLdq20vlc
	pGC7/r0GVnkNCxZoLcI5VUv4xZkN/l7EaEOGEsMf8cdLCmtyafGpMMA7qSNJr7Va
	QApP0LKWRTcmc5d/DwrpEJSBJgRAMzDg6jA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dey7781n6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2026 10:19:58 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2b0c96f5d9aso18160695ad.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2026 03:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775816398; x=1776421198; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6jAgrIXul/6oRSYYubPw70Q0si68WXVn+fakGuy+ODE=;
        b=LXrg2Hi8/vrxToUsxMy8KmY3lFdXJvPGNujHv6C7K/Zla6KAoTG1jjElJtoEoKWfjB
         H9ArQ2Qap7OBqSs84TnBzocUAaSaWbisvLpV84H9QjVknBoItxwqTTcmzVbaz3gpguLX
         XdkLNxzSSgKxQIQRqkL7FHb9FPPbR76zx9u//b48ke1m2EmT0rFeqrpPEkyC2WO3RMK3
         T2TboFz9/nRFV5WjBceVtFBlI7HdV5SZeWJkBfI6ngJgF0DSxtoYyxrnhfpiV2OqU0ji
         FcNB3KB+Ua04Quqz74nYC3E5+8pBLNSmfzh+qZTf/rBP8LRPMIRNFAZljG1XcFR+BFsh
         lAJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775816398; x=1776421198;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6jAgrIXul/6oRSYYubPw70Q0si68WXVn+fakGuy+ODE=;
        b=m1hjI7C48ppRoXpfdhDXZ6ftU/zhgMjE2+wrgVHDomM/D0Pyio0nr4x9vh2aHyQr4r
         xgYH8FR33m1Ubjs5+oGZO73S3/MLGuOOApWSlioH2qqrZxKu2DlE7TphM2YzAS5a2Pwq
         MI92SnxulfMsrEWPEqZxgLfg8soEf+vaYi3Ml3h/2z/JMFug1XIshWw3Reg5xeQF1BGR
         ya+ASELS0ARZepLGjBmew7tfn8M+ctOShaYd+R7ItxpxX512+4mW3TjB0x8IJ3PXcLiq
         oS2nq/rs3fwSdddhsC142X9Y/G28+Cq8EohOeAJ8dj3e6HprBE9k3VWfVYKabPqyCWxB
         8mdg==
X-Forwarded-Encrypted: i=1; AJvYcCUJmuXO8bi1njHlxEuhJbU18tfz/M7P/tMP0jux1ZKl/jcsLjBdY3/Fdpbl9ns1I6ukIJaf29wmpJ2MYWfh@lists.linaro.org
X-Gm-Message-State: AOJu0Yxh3W88PRLc9tDxN4mN77gOLGnFr2KqD34fJ64tTA2Ac1/FRc66
	nNr6QH0ET1iQBburmGT6jZ3XZQPnBxZDpr1sMzY4ZWyPHr4TGZ5i+coscuXcAfjZqwFJH1MWKz7
	xYh7DB1UcAgADLkd35MlepaR/nFT6RrY/7RRzJ5GaryGFU0RgdSZgH8l2UqSdefgOp1usHQ==
X-Gm-Gg: AeBDiev7KPXkLMq7FgpC2hc/Pza85CAuR3gVi5plENzARcEfYVHRHZm0U5CONcdEaZj
	Cd23sBahA6Lsb/H0BLFNaUQilwcSysnSN/y94amvfFfrEDVkGl4bHD62Hu2rnofLlHbDiW7O6ZE
	PJ+HTM+PiazuDI9t98NTXTUSFgSX7v7V0cqSCLqH69Xepa2F08iGJnqPgwmEg285+uFDMuWYSJE
	XrvREexBJ2kFiszfzJxcHV3Ok1ftJ3a1NnZBHD33E9SJdTOGzpPShN8EoRwQj4FcTaqgG965TtJ
	LLzbp9DJbFZkFAwNEMpShKN1NAiCeYejz6wkbeCwfr+hF0pYGaLIzDF0pb4d9M2+suzYCXq75j3
	1qsGw/kItGzOx0JSdiEEVEJS4PV8efiHQJJ1BiJ/Atuww6vobfpBWbjA3
X-Received: by 2002:a05:6a20:9389:b0:398:7855:1596 with SMTP id adf61e73a8af0-39fe3c64b7amr3091123637.10.1775816397576;
        Fri, 10 Apr 2026 03:19:57 -0700 (PDT)
X-Received: by 2002:a05:6a20:9389:b0:398:7855:1596 with SMTP id adf61e73a8af0-39fe3c64b7amr3091085637.10.1775816397075;
        Fri, 10 Apr 2026 03:19:57 -0700 (PDT)
Received: from hu-arandive-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c79219c618asm2024362a12.18.2026.04.10.03.19.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Apr 2026 03:19:56 -0700 (PDT)
From: Aniket Randive <aniket.randive@oss.qualcomm.com>
To: mukesh.savaliya@oss.qualcomm.com, viken.dadhaniya@oss.qualcomm.com,
        andi.shyti@kernel.org, sumit.semwal@linaro.org,
        christian.koenig@amd.com
Date: Fri, 10 Apr 2026 15:49:49 +0530
Message-Id: <20260410101949.2315058-1-aniket.randive@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: VBGkfFUT4tBtee8HlmG6FU97XgDivMKn
X-Proofpoint-GUID: VBGkfFUT4tBtee8HlmG6FU97XgDivMKn
X-Authority-Analysis: v=2.4 cv=VN/tWdPX c=1 sm=1 tr=0 ts=69d8cece cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=g-2Moo4YgOi5Nr3pVm0A:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDEwMDA5NSBTYWx0ZWRfX2ZGWsibmQpuK
 r3Yfrg8TzFkMzBUQQZoqaEAY6Lr0Ewk932ErClh7rbdXTJi8fVJysZH1BJ0nBPixP7RY+zl1GEg
 WKDReer2DIsJz0rvB+Qub1PoWUl9jJQvT91ud/1soemReoR/qb+6gahqcIn1oi5zfLrIW22Xr5G
 6MX8agV9P25R34fUWogSwJUpsl8ArbFfAo3zynLigWRVrUmuCyO2KrE0pB/EjA3OyRH26lu7sHb
 S0LFdLAJfBkavKEnKCXM5QB2HkBWxp71xr4PRnoTwEv1hNCK+1m+h5pcT35prInTpMOaC5jiGO2
 dcdnFE0E9nBEH5ZKO1VA2KXuESVFsDvba5x/26m5h0bLhy6/pOTvw0gcvFlBHJbWvFNQS0cpnKM
 5+dRnnX5Tm0mZ5cQ947oMprT0qajZ1sgc/ujGqs93fzSEdFyC3PfxC/3VgPzGMcT6BIwecQjTj7
 baEEGKYCQIWqQsvgm5A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-10_03,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015
 impostorscore=0 phishscore=0 adultscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604010000 definitions=main-2604100095
X-Spamd-Bar: --
X-MailFrom: aniket.randive@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QIU7FFXWYB4KJMUSDVQDSHOCSLTIG73O
X-Message-ID-Hash: QIU7FFXWYB4KJMUSDVQDSHOCSLTIG73O
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:39:04 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, naresh.maramaina@oss.qualcomm.com, aniket.randive@oss.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH V4] i2c: qcom-geni: Avoid extra TX DMA TRE for single read message in GPI mode
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QIU7FFXWYB4KJMUSDVQDSHOCSLTIG73O/>
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
	DATE_IN_PAST(1.00)[247];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,qualcomm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,oss.qualcomm.com:mid]
X-Rspamd-Queue-Id: 9CE30431C92
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

Changes in v4:
  - Added some more description in comment and changed the label name.
Changes in v3:
  - Added comment in the driver for better readability and changed the
    position of 'skip_dma' label to allow dma engine configuration.
Changes in v2:
  - Updated the commit message.

 drivers/i2c/busses/i2c-qcom-geni.c | 24 +++++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index a4acb78fafb6..a482a4c60744 100644
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
@@ -639,6 +639,16 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
 	gi2c_gpi_xfer = &gi2c->i2c_multi_desc_config;
 	msg_idx = gi2c_gpi_xfer->msg_idx_cnt;
 
+	/*
+	 * Skip TX DMA mapping for a read message (I2C_M_RD) to avoid
+	 * programming an extra TX DMA TRE that would cause an unintended
+	 * write cycle on the I2C bus before the actual read operation.
+	 */
+	if (op == I2C_WRITE && msgs[msg_idx].flags & I2C_M_RD) {
+		peripheral->multi_msg = true;
+		goto skip_tx_dma_map;
+	}
+
 	dma_buf = i2c_get_dma_safe_msg_buf(&msgs[msg_idx], 1);
 	if (!dma_buf) {
 		ret = -ENOMEM;
@@ -658,6 +668,7 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
 		goto out;
 	}
 
+skip_tx_dma_map:
 	if (gi2c->is_tx_multi_desc_xfer) {
 		flags = DMA_CTRL_ACK;
 
@@ -740,9 +751,12 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
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
