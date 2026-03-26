Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JHQGLhi5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:30:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 015174314C2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:30:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 17258402D3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:30:31 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 27F693F786
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Mar 2026 04:31:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=hKKR2OBd;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=UayD2dgy;
	spf=pass (lists.linaro.org: domain of aniket.randive@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=aniket.randive@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62Q0e3Dv779755
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Mar 2026 04:31:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=jJRKMt5STVkyb1Y7d1ZgMO
	1sueYs1DgBavRo6QS64AI=; b=hKKR2OBdmKOqiTdbZ33hIuMhZ7JhUlOiO93CcH
	DiZtkKn4ZzwolbcR/CwQhTILnreUv0fRddHGSqh7q0cmXbE/A7mxKhFV+R1ogc80
	lhHH8vDCGt17uqM3QSpcv6tfZtbD+MICx7s++bLr/jcSBgS1AnRDFwtNXLG+6ayz
	hRWyuph9K6ZJv/lP6CNm2H2/ExRSupTSt7/cu0Tzu76LkaQFFCyPBepQ2M3/WvIc
	J9xuBcB+qkvEhxejPXgEff/oU7iMB3As+oCu9W/mvN0R5oXzMczXpQY23wX84u+o
	IHBEI8tJUF7r/+BXEfR4A/GWj8EKWFS9KP2gol5WElMqucsg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d4cvp3ns5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Mar 2026 04:31:58 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-82a77f807e4so1364088b3a.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Mar 2026 21:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774499518; x=1775104318; darn=lists.linaro.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jJRKMt5STVkyb1Y7d1ZgMO1sueYs1DgBavRo6QS64AI=;
        b=UayD2dgy5G+1K+Ig3ISJ24Os5qoz5WRXxIBu1fcYBnU0kBFxdCefBygsbY6ihxh7a7
         9AEMdzWT0cyJrPRqrTglIL2onWMJsTBZzlPL/eeAhVgNoSFlQyjl2dzUHovl4HEDslI5
         OGHGk0f9kw/dVOk4fKa1Qeg1/tZhY7KHzBVVdFdsyw7L6rRUGsnBNS/GR+rI/jaaktsI
         /4e+nQyYvTOsQUyAe/UBgM6D9+Xqh3UHB14Am9rwIqR9sCpgr8W7FjuG6aZAA1PjFw6/
         4dhl5Xj18i31DVGcLqBTcavfkbKiprr0PXzbiEpC3yWXYC1d8fFt9I18ZPjQr3BCBndb
         kGXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774499518; x=1775104318;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jJRKMt5STVkyb1Y7d1ZgMO1sueYs1DgBavRo6QS64AI=;
        b=ZnhV7/Hg4TD/AMCqcpXWh1517wIt8BPJPr4raXSNN4bQP4MswDGhD4dSYW3tIsIqhh
         I8MTVJbWBwaNCGZYrz+jcb7svBrzu84CKNOuTDwnasvTNDE7XTMQ3FL0nvUqlVSYyNMW
         2w6KowICZFar6McihNDrNVPf3UGHGTyIXw7BINLhFs0iujnRA4j3g0AOwSRD7XeasOlP
         zxShl28HKh2QzFDbX0YuyTgu/2PTykJ0zlhk4XZLlvQmdulDhgwKxeNuK52FOsFZZy8X
         4nBGhAyO7nf3FriefjBGYnQcStO6WbmLAMOcacBVrjrM6pDShChxbZB9x6pkfa36EDXg
         l9NQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnTxpUk+M4InYyhFAgNkBiP0FmDFDe83mJrDPQc0dJpjxJQl0v77tgwBAjFHhrFYYC0yANan7/D6wbP6hG@lists.linaro.org
X-Gm-Message-State: AOJu0Yz/aeWS+Jfu/IN2NX5Mx+Ql/Pwpy9vvuZqDJx4sF3O6HnhDYBIB
	SPF8j7O90wHCvFpPT6R82M1bYF8p78XX5k88G096ii2nVWEvM4lwA/FY5T6ra5mwV1fFSD6/BKK
	PmjQSmEqP2OGAJEeOmfylO5t9DjDqBWmtB8YacSjnlyNidrLjM0ewkafcuLKDDtBN8hBxxA==
X-Gm-Gg: ATEYQzyO0mTpcViTTDYGGWF41yPxo+smwrm9yXPJbTLVnQLLNHkys7QUOOczrf3B5Ra
	91XGZYV0q2EnkR/zwOLcoP3wj5DEtK5u4jCxN3KZsU6qUKj7kiYtjMPbCwaQR4xcJwQyD7S920G
	FJqQhLG09hKTHgdw/EM5pRuH7eIstNuNBcibhEHIjbAlsE7VEQwG5tcKEgQZP3/qNYpQ72fSQL4
	AQkOpVKxNw1T9xBlMr/o2WoOBQPRZztB0bMWN+eIc2GgHGTP5R6IM3Riu/yTWlbbEgxDDJ/BHB1
	O5w938HGfHOjq4KwADZgzKg2v1eJIdve5PMP6sqrMMC4jjKsa+LOXj2bI9Sl5WpzyFzxoyC7I4D
	Tfr9Sj82tTIerQf2qAx6eOSPdxkL+4Rk9Yl7O1jm3WsR2ps0sO8QzmTah
X-Received: by 2002:a05:6a00:4b0a:b0:829:809e:8981 with SMTP id d2e1a72fcca58-82c6e0e616dmr6256930b3a.31.1774499517608;
        Wed, 25 Mar 2026 21:31:57 -0700 (PDT)
X-Received: by 2002:a05:6a00:4b0a:b0:829:809e:8981 with SMTP id d2e1a72fcca58-82c6e0e616dmr6256897b3a.31.1774499517105;
        Wed, 25 Mar 2026 21:31:57 -0700 (PDT)
Received: from hu-arandive-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82c7d22c8e8sm1177396b3a.24.2026.03.25.21.31.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2026 21:31:56 -0700 (PDT)
From: Aniket Randive <aniket.randive@oss.qualcomm.com>
Date: Thu, 26 Mar 2026 10:01:48 +0530
MIME-Version: 1.0
Message-Id: <20260326-skip_extra_dma_tre-v1-1-deef018895dc@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIALO2xGkC/yWM0QqDMAwAf0XyvIKNOLb9yhiltqnLxpwkVQTx3
 +3m4x3craAkTAq3agWhmZW/QwF7qiA8/dCT4VgYsMZz3WBr9M2joyWLd/HjXRYyvgkJMV1svHZ
 QwlEo8fKf3mG28DicTt2LQv7dYNt26Um64XoAAAA=
X-Change-ID: 20260325-skip_extra_dma_tre-a3cf22f81d9b
To: Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774499512; l=2657;
 i=aniket.randive@oss.qualcomm.com; s=20260325; h=from:subject:message-id;
 bh=NpFXvrYh3Fb7+pGlr/Z61Pb78xmA51Vjq3Rxx3qOVtg=;
 b=F4oCSfY3o5eliC5a/9PowUrf5FxpGtSwz/W4vzzQWSTjf14iwuzX8WrayFTCnK9XM9yo9kEL2
 Iw5BwmRKNyMAZKpj1OK+i5GLjGWoi4vXfVo03bhtCg3FGxQGx7hFxXK
X-Developer-Key: i=aniket.randive@oss.qualcomm.com; a=ed25519;
 pk=4o37X1ZqGbCO/T2SR8kq/HnWvq0yb1RUlFuNukovbQk=
X-Proofpoint-ORIG-GUID: 6cT1odl45FV2GmPGn8leVzKcb0gU7bKk
X-Proofpoint-GUID: 6cT1odl45FV2GmPGn8leVzKcb0gU7bKk
X-Authority-Analysis: v=2.4 cv=Q73fIo2a c=1 sm=1 tr=0 ts=69c4b6be cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=QTaY6CSZEmO6sGPGzGoA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI2MDAzMiBTYWx0ZWRfX2mKTIq7h7o2X
 Adq+kZm10PcZK1Oh6VoCwId043dif1e8dk6iL+EMNnaDvWcriR2Rwnm8lcZFZOdPm7Pvwj4iypV
 7BiHL6qWW/Li50AzkY8iB15+vUPwJzAYU5ThanOKptJgNmJ5tDHxZC6z022N4Leo/LEBZC2nzdZ
 SVnyv6qZ9pq6m2l0R8fbsvc4r1e+TLge/lHLXSHQ/Pbg2jVDusJl72zqNDoa8vxA+KJZNdCQryq
 zkVLziNNWc6xXvS+ED8boaM9ckNZdJyzQ8BvuEeRmNVXPBbEHlYKD1a34n0WXkQVYgID+xPWL15
 XdLYbeyj5LJdzM4SiO7Zu1PCs8PuJ5UJsVcY4nZk4DEO7SiPI9EvAFsY+60bWG544fzgi1x8ZSh
 uc+MeS4nABMo2GjxUWk863IfkjSiiqWs4AZ/Pr9pRF16sf/v9BXOsA5hiC2qoaMAq789GhNOxwJ
 ZoaScJs0XNs0ZTPsZkw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-26_01,2026-03-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 clxscore=1011 priorityscore=1501 impostorscore=0
 malwarescore=0 bulkscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603260032
X-Spamd-Bar: ----
X-MailFrom: aniket.randive@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DGENIWJKH6WCSRN2CCBQIGK7R7OR7SAR
X-Message-ID-Hash: DGENIWJKH6WCSRN2CCBQIGK7R7OR7SAR
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:29:47 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maramaina Naresh <naresh.maramaina@oss.qualcomm.com>, Aniket Randive <aniket.randive@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v1] i2c: qcom-geni: Skip extra TX DMA TRE for single read message in GPI mode
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DGENIWJKH6WCSRN2CCBQIGK7R7OR7SAR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[612];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[aniket.randive@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,qualcomm.com:email]
X-Rspamd-Queue-Id: 015174314C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In GPI mode, the I2C GENI driver incorrectly generates an extra TX DMA
TRE on the TX channel during single read message transfer. This results
in an unnecessary write operation on the I2C bus, which is not required.

Update the logic to avoid generating the extra TX DMA TRE for single
read message, ensuring correct behavior and preventing redundant
transfers.

Co-developed-by: Maramaina Naresh <naresh.maramaina@oss.qualcomm.com>
Signed-off-by: Maramaina Naresh <naresh.maramaina@oss.qualcomm.com>
Signed-off-by: Aniket Randive <aniket.randive@oss.qualcomm.com>
---
 drivers/i2c/busses/i2c-qcom-geni.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index a4acb78fafb6..2706309bbebb 100644
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
@@ -639,6 +639,11 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
 	gi2c_gpi_xfer = &gi2c->i2c_multi_desc_config;
 	msg_idx = gi2c_gpi_xfer->msg_idx_cnt;
 
+	if (op == I2C_WRITE && msgs[msg_idx].flags & I2C_M_RD) {
+		peripheral->multi_msg = true;
+		goto skip_dma;
+	}
+
 	dma_buf = i2c_get_dma_safe_msg_buf(&msgs[msg_idx], 1);
 	if (!dma_buf) {
 		ret = -ENOMEM;
@@ -668,6 +673,7 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
 		flags = DMA_PREP_INTERRUPT | DMA_CTRL_ACK;
 	}
 
+skip_dma:
 	/* set the length as message for rx txn */
 	peripheral->rx_len = msgs[msg_idx].len;
 	peripheral->op = op;
@@ -740,9 +746,11 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
 	return 0;
 
 err_config:
-	dma_unmap_single(gi2c->se.dev->parent, addr,
-			 msgs[msg_idx].len, map_dirn);
-	i2c_put_dma_safe_msg_buf(dma_buf, &msgs[msg_idx], false);
+	if (op == I2C_WRITE && (msgs[msg_idx].flags & I2C_M_RD)) {
+		dma_unmap_single(gi2c->se.dev->parent, addr,
+				 msgs[msg_idx].len, map_dirn);
+		i2c_put_dma_safe_msg_buf(dma_buf, &msgs[msg_idx], false);
+	}
 
 out:
 	gi2c->err = ret;

---
base-commit: 785f0eb2f85decbe7c1ef9ae922931f0194ffc2e
change-id: 20260325-skip_extra_dma_tre-a3cf22f81d9b

Best regards,
--  
Aniket Randive <aniket.randive@oss.qualcomm.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
