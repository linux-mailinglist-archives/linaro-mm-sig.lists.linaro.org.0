Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KeuFtNj5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:35:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CD44B43183E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:35:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 78C663F7D9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:35:13 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 4D41F3F828
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Apr 2026 10:14:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=EcQjUpHd;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=kfVG9ZZA;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (lists.linaro.org: domain of aniket.randive@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=aniket.randive@oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 631A2ILW1579367
	for <linaro-mm-sig@lists.linaro.org>; Wed, 1 Apr 2026 10:14:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=EnaTxDzY/SHS22gfoLDFYPunIIYegtMK3o1
	Q5/kWemM=; b=EcQjUpHdFbEXKNQ/vGfUKZ1KOJKi+aE+2oC3k1CVSMeewo+2ORy
	20/hBfCvCAR0AsJf1BRHeHHeyU/6Q9FkUxS48BKl3Gs4WWFNeQDrUxbWyLeOjTjm
	w3GNLs5dSUtyNn66o4BOGO32CjS47lJQMZhphely4uU79bVwKxqy773iaqCSNrbv
	oIw1OVk5qLJlYrj29TXp9TvseLr5eAZvZYHpadqwpDeWOhM90dzssrl/BOxgrMbw
	8RLFkyR+p/KOuPkU29cD+zUzT891yXFOMeHS1iY56enkVPWOHJ8MpnHrbUgeNPaJ
	lZ7XG9Cgj7puJExfi8mPEhT8nibUZDvbeIQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d8mr2u05w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Apr 2026 10:14:03 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2b2497cc190so5852765ad.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Apr 2026 03:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775038443; x=1775643243; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EnaTxDzY/SHS22gfoLDFYPunIIYegtMK3o1Q5/kWemM=;
        b=kfVG9ZZA7BpkjABIx403D4g6fDWEcGv/0wQi4B1TFa2bImMKvoK9e4KkiTZ/mQFbDO
         djACpsQ4DJyBDjb4y5xkBVR7kJV+EQLDLxA3rmhLROv7jAFl3ePs3x9ANa0s97MPGp1G
         xgDtV1Ht4qJKoIyqhPShonMQL2W0C1p6HOaGWXHaojzWhPSNi2Ch70M9DVyd/kzcMYkZ
         TtDdj6OnPNsiEpS7sXsvGeLY+7xkzdxqdw38hC2z0yKhuFmuffvW1vNgYypgl1txZUV9
         h2ABCRdOOVGwwSAoomt493YcLQY9OCQdRLTTZ0Gg53qPYr2yBRRefrwZn2aZIwTOP/6I
         13YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775038443; x=1775643243;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EnaTxDzY/SHS22gfoLDFYPunIIYegtMK3o1Q5/kWemM=;
        b=ikUWRg+fEPpGI1NSnSO2ef0wH1y35XQjfE1a1rgypkgnlZ70dX1NSzESZKIEnhYq0R
         5iZdNRBasvRKpGNp3g3tSguxw5KpEYpw08zi+a9zRXT2oT3lEusk2aA7Zo0HC8cRUg61
         oeOokReRL9DhHRMDxH9q96xuN+f5ng0l7ifyylAeNRDqxP0en73HwoqjWF+0GsqkLv6g
         5bMY5EXtx+wcMbuSsJFE0LLFSqktRBF4jCUBWjvsym230/JQwlq0i07cdyxTrti0NY/K
         DJjB6Xwc009RFKQREsFrgeQTfVtLG+K12s9fyNjRjBWednQfX5qQGxf8XWAqGPE9VNwB
         iQCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsSK+NovIuTn7OYEvXUNB4sWQXy69AXFUd5LPmUbh55Jbw6D9xHbggSN1SkupuUiNO0DRNaAcNtu/6XPty@lists.linaro.org
X-Gm-Message-State: AOJu0YxTH6DN5EkNfjPbMQ7PKhFdSvLjl/Yde5kWIU/KEZ70YJnRroHX
	kbNp7K0pm9fmgiP/ttV7yqq8paSKigSSR716ruz66C6GjyNRsLI6PWOOmbCj8ChGxiVG77SK1fT
	67VPEWOf7m5yPoCkDxjclLNhtkkwqQN1TGSAQlAti5zEfeowKR+KEDZKvNqUpcu5FqyiTUg==
X-Gm-Gg: ATEYQzzZcm/aNU+ug05BPEt2jAjWIjwuJOcdYUxph4lYL5PR/FNkdMS2CGT44dX+ztn
	BOu97KfbNW0eqsruMNqbT87SVmgZwVPfEZznnvHfestnTdgRrfVKHT16D9C7iuazRywLGoaEoNR
	Xrp83u31GXvUnX2VntK6nvYT6tZiQrAzoB+CTWHB+l/7sAk6WWVBy/pbEisUVWk9A0g1GrBXkzM
	jTOHC1YVsa5LNSrxVsW3fbVnXD7+iFZ3Dy51gAFcAa8QsiPPJlJL4++AZ5uMLC5UvSC0m6eWJDo
	NCzw/cbwbvkp/nwsFEz6pctYTBqBWLVCIbIGXhANbori4sJC7vexQ1HdXRA+tTpgrvN0U0IOR56
	BCAiYr68bvt9Jbs9CaQkl1P/9w4sZdnOnFPiTt5fsx8SHn7ekypThhha3
X-Received: by 2002:a17:903:1b6b:b0:2ae:5346:d4e6 with SMTP id d9443c01a7336-2b25efabff3mr60943255ad.28.1775038442653;
        Wed, 01 Apr 2026 03:14:02 -0700 (PDT)
X-Received: by 2002:a17:903:1b6b:b0:2ae:5346:d4e6 with SMTP id d9443c01a7336-2b25efabff3mr60942995ad.28.1775038442085;
        Wed, 01 Apr 2026 03:14:02 -0700 (PDT)
Received: from hu-arandive-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b2427c5f5bsm148503885ad.82.2026.04.01.03.13.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2026 03:14:01 -0700 (PDT)
From: Aniket Randive <aniket.randive@oss.qualcomm.com>
To: mukesh.savaliya@oss.qualcomm.com, viken.dadhaniya@oss.qualcomm.com,
        andi.shyti@kernel.org, sumit.semwal@linaro.org,
        christian.koenig@amd.com
Date: Wed,  1 Apr 2026 15:43:52 +0530
Message-Id: <20260401101352.4065798-1-aniket.randive@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=B+O0EetM c=1 sm=1 tr=0 ts=69ccefeb cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=qPv6kJ6rrmvbaMxWJaQA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: c9IOzfCco5xcUTUY_0ATs2J2elQ0pd4n
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDAxMDA5MiBTYWx0ZWRfXwVJr1PiysPwW
 WzOwc47wARe4bXLSpS1KVc/rgJPN4C48/wpKrfz4x2r5adRCCASKdDgqEVA3/v87Oy+LBC4Ghoe
 tFIeCbHPKodlInbIfMnWMF3YX5ZWxh6bPJETEmWzfyiKPvkG8yp4RRdsXTUg5XpRS/yt2wq855l
 +8kBQZHehU5XMqYrc0a/iiq7FfMw/a7P/QH9UWJoraaksEqYNWHFwd/VjZcXLFFykPCRmyJL++w
 6Ohf0HytAhQovE4eulIV6/Yac3Bmgy6XvSB4OfIhZmg75EH5FMX/9KPQTkXvF3T5wFX7+fbIFuZ
 xX/2JycDM3jAkt7pI3UxF+7B1FS4KhfSz1fZiptVeBCWq4N9rpLuGUq4QPz5YD0AxqweUjpf6eL
 A0jhnKd1gEAM4j4o2WET8hS6vZ7ih4bgCK0KzyfgRmt3KAEnzyNAl/87f95Bjthpw+Idr2zZEi5
 n1rHsFVtwxsFeV9FAmw==
X-Proofpoint-GUID: c9IOzfCco5xcUTUY_0ATs2J2elQ0pd4n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-01_03,2026-04-01_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 spamscore=0 clxscore=1015 suspectscore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2604010092
X-Spamd-Bar: --
X-MailFrom: aniket.randive@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EJGAVFFLNCFRX6CIYQ73QVMKI5DB3MHW
X-Message-ID-Hash: EJGAVFFLNCFRX6CIYQ73QVMKI5DB3MHW
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:38 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, naresh.maramaina@oss.qualcomm.com, aniket.randive@oss.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH V2] i2c: qcom-geni: Avoid extra TX DMA TRE for single read message in GPI mode
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EJGAVFFLNCFRX6CIYQ73QVMKI5DB3MHW/>
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
	DATE_IN_PAST(1.00)[463];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,qualcomm.com:email,linaro.org:email,oss.qualcomm.com:mid]
X-Rspamd-Queue-Id: CD44B43183E
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

Changes in v2:
  - Updated the commit message.

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
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
