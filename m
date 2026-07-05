Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id utEHHzFwVmpG5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:21:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F34BF7575AA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:21:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=iLvetTQb;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E8353F821
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:21:52 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id C76494015A
	for <linaro-mm-sig@lists.linaro.org>; Sun,  5 Jul 2026 13:57:50 +0000 (UTC)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 664KXBmR3768698
	for <linaro-mm-sig@lists.linaro.org>; Sun, 5 Jul 2026 13:57:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=cx6T4Swtw2rzqvcjubzMgz9kj6YnISYvg3z
	E4tt4Nsk=; b=iLvetTQbJBGIRKQBK/HWeTVaWLuOFF6CPVg/Ea3qbP/0w1atT8h
	OfsRhTkzjJtyODEVjV7Ely5Ksc38gKi/ZcqC1bahNPwiv1gBjKWEkico1Z7McXkT
	uZmq82UV0wGRvKSQJIRaOfKGjgBIJ7gmotoxgs4F2mFcXeRkSCGZo77JW89e5mQG
	7FPQqLoyrd7rNRAIxq9vF4Fb6URRulmeH2bzJnqGDgHWUTj3kx+oeC+1He9Yj5OP
	dW5hRsuhVWYiyiJ2VrQP/Rd5aoPR+R3PAt4jRg3F5s3eOjsacDg+lWX9zeCF/KDs
	iDpNVwp1f++L3xRmbbDgN5UVvq878faJpoQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f6ubgjmju-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Sun, 05 Jul 2026 13:57:49 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2cc6dd43737so19479085ad.2
        for <linaro-mm-sig@lists.linaro.org>; Sun, 05 Jul 2026 06:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783259869; x=1783864669; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cx6T4Swtw2rzqvcjubzMgz9kj6YnISYvg3zE4tt4Nsk=;
        b=jkfumNz6W5edaPf6g9pPzWm07ZxVzcPto+i9yN3ncU/8fAHsNlIMW2n03QHPNf73/M
         gcYwGLxvbhzG1ghA+btcfiqMtqO7DN2t+K7oFOJ9BvDeZp7xafcGCKwQsnUvRj/TEOWC
         wgsOHuX35f8J19F9tpYfFP2X9JGZT3KliDtgrRND4wd9jmi++ngkN8MnTkb4Hsua8SeB
         Ac0IDdscRPZOA9OZs87Yy+Y3SjKfaHsrwopmlI0vVhCaclnDXDBQ4KbBNI96Dqb0Hw3S
         CGz+tDk0NJZTK8Z8yJ7312eYHYiTXg1sTeKUJ+Dw7wIKgtGP9200KMN56pEkGyKX7js/
         OeNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783259869; x=1783864669;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cx6T4Swtw2rzqvcjubzMgz9kj6YnISYvg3zE4tt4Nsk=;
        b=j4vwMtE1VD7QJ5qzgVr409ciPRDSqVJ40+I1RcgG34yiHB3BuggS1W9P60VPw0Bke2
         ++qR+QLYnSh+4DiQ8aZTCtr47kAcoTcg+lrjidJzMPJjSlqMMyILdRbv3+NJ4K06rjYe
         2ccSC4MqfTSbqcQiX8SypMNKX4XqVZi8zicfWkUfukux0FvhsWnDmu6zP3u8nlmr9Z6u
         kJBut8vMRkCI2kKXa7cZRjHsXtoC/+MD+xvSVJGN84/JGf9ZABjNIf3YQHAoOxPPbFOQ
         EXsPfwn4FkgJ1k2FtxGQTq52HMMy/Bn0iFLd5XBEV/JVUahCZBoNkvoiCkCZkD6gDclE
         hCpg==
X-Forwarded-Encrypted: i=1; AHgh+RrBnG65T+Lw3Oo8Z7jqUmj8iKIzJq/ioeDqF32H+DW/Twx2UAN+M7ZjVkFgWb21way7YHO6Mh+evANEix+6@lists.linaro.org
X-Gm-Message-State: AOJu0Yy80PPfnySiogb95aGKOvyUhGFCZ4UiIthtWkyaRgyF75tR5GJm
	SuNoy25VyYzcXuezv1MRHyCQnloRLV9F8PAYDsFDwiSoYgVv+VTXaOf9mWtZl1NDb7/iXoLHgmY
	pd7cwLqbfPFVFD7Qdxr1/LEfl3Hhk3sY7rMbqN7Zvzwup3VKYk7WSkxMckN20arcpFBtk/tNCbc
	QCNQ==
X-Gm-Gg: AfdE7cnrgT+CjfNadXHwXM7ntLib5BfXdtAH8KOgKiZaASqy1HGjftEK9kobWTbOH4a
	5/iWjNay6SGnNYYHqwwyIAojjIb+HuZTGXfWyE3Eh73yTuUc55/7ygU44s9OMSPSBnOgW/iBPGH
	fFNItyQNVRuQ7rr9EwTyo0j5qcCJQmlC+qhciYDufiqmNEezRi5LsfTr1cCicEzQ0EV5SXkbIby
	oLW4FeBsdlpjY/+phYXpv906cAEcJQh4PSHsHzGm0qkR3AfVQ3xSXXhlbrYZ+PFug1ew3Vc+o2y
	LbxEBNfgmHBRqY/SbRAByWVwOv8MSmGdG2sSbD84DOVm99jZosPa4sQSfsSUUIstxJ2Zo2F77O2
	uN/PRLwG0wJunthCJBrHTL62IU/6sR1YYHOx2jbF/RTrapg==
X-Received: by 2002:a17:902:e948:b0:2c0:b5c1:8e22 with SMTP id d9443c01a7336-2cbb7502856mr65740845ad.12.1783259868695;
        Sun, 05 Jul 2026 06:57:48 -0700 (PDT)
X-Received: by 2002:a17:902:e948:b0:2c0:b5c1:8e22 with SMTP id d9443c01a7336-2cbb7502856mr65740605ad.12.1783259868255;
        Sun, 05 Jul 2026 06:57:48 -0700 (PDT)
Received: from hu-arandive-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b3c7ef188sm40891603c88.2.2026.07.05.06.57.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 06:57:47 -0700 (PDT)
From: Aniket Randive <aniket.randive@oss.qualcomm.com>
To: mukesh.savaliya@oss.qualcomm.com, viken.dadhaniya@oss.qualcomm.com,
        andi.shyti@kernel.org, sumit.semwal@linaro.org,
        christian.koenig@amd.com
Date: Sun,  5 Jul 2026 19:27:39 +0530
Message-Id: <20260705135739.4038826-1-aniket.randive@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA1MDE0NyBTYWx0ZWRfXy1+GmpwRzFvp
 xGSE9kb4oZ7f0oGhPBpFGzyoOVo5zsvm7gbkyQXFERpuejpIIiW9THHRdgUZwAGDspV7xgUlFzb
 B/ZEG2krSqrWadepnSyjlLArvNLGTCk=
X-Proofpoint-ORIG-GUID: YX8tn-2_VsPP9u3s9rEIWzCni51Zmq5_
X-Proofpoint-GUID: YX8tn-2_VsPP9u3s9rEIWzCni51Zmq5_
X-Authority-Analysis: v=2.4 cv=FJwrAeos c=1 sm=1 tr=0 ts=6a4a62dd cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=oMrrxSgkesIj4bXReV0A:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA1MDE0NyBTYWx0ZWRfXxu2bfqy1vQZG
 9KFJdiDOY1L9k98iYbg8FPCyB/Z4qHg+jXxvPDqsvxlic/JgBpw7ixO19WjZKNp/uyUkk0bEqpg
 up9McFkytvZGWvSiVg5mUT3/wnPTIsWpBaqj2K3cKe7os15oklORdRv8xOr7iLVGxkR8rBk5v85
 uNQSNlNCXfwNnGF0cOubXChfJw61wdeKZE36wrkBcQxOJoUPBrk+ic0kOqV1POJhTmjeY2ERPBq
 KBOUtYeW45nr1lKJbJ8HedWmAruj51gW+cABkBxIUb5oAx2xksHLJPxhfW4kS2CLsUCWxlWwwo0
 pY+QHej1vckXaNNDTBD9JUV1leTd5gjLoXfAt1uejV0eSqumKXlJ7nSCrjp74nugg2B8Ub1acyf
 vEDQmotFzDV0RksCFTbsGK/OCaOv7XbzPLQoO5dH2eS1FgyVX//AhkgI7QCU9z91t+ui+OR1D8B
 xe9MpX3rUnHM+/YmNZA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-04_03,2026-07-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607050147
X-Spamd-Bar: --
X-MailFrom: aniket.randive@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 33PA5KS6BALLPNA7SKCBROLU4GOLQKNU
X-Message-ID-Hash: 33PA5KS6BALLPNA7SKCBROLU4GOLQKNU
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:17:05 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, naresh.maramaina@oss.qualcomm.com, aniket.randive@oss.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] i2c: qcom-geni: Add dynamic transfer timeout based on transfer length and frequency
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/33PA5KS6BALLPNA7SKCBROLU4GOLQKNU/>
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
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[219];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER(0.00)[aniket.randive@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mukesh.savaliya@oss.qualcomm.com,m:viken.dadhaniya@oss.qualcomm.com,m:andi.shyti@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:linux-i2c@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:naresh.maramaina@oss.qualcomm.com,m:aniket.randive@oss.qualcomm.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[aniket.randive@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,qualcomm.com:email,oss.qualcomm.com:from_mime,oss.qualcomm.com:mid,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F34BF7575AA

The driver uses a static XFER_TIMEOUT of HZ (1 second) for all transfers
regardless of message length or bus frequency, causing unnecessary
delays on error paths.

Compute the timeout dynamically from message length and bus frequency
with a 10x safety margin over the theoretical wire time and a 300ms
floor. For GPI multi-descriptor transfers, use the maximum message
length across all queued messages as the per-completion timeout.

Signed-off-by: Aniket Randive <aniket.randive@oss.qualcomm.com>
---

Changes in v2: 
 - Remove accidental defconfig change.

 drivers/i2c/busses/i2c-qcom-geni.c | 37 +++++++++++++++++++++++-------
 1 file changed, 29 insertions(+), 8 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index 96dbf04138be..43ae2121f01c 100644
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
@@ -471,7 +484,7 @@ static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 	}
 
 	cur = gi2c->cur;
-	time_left = wait_for_completion_timeout(&gi2c->done, XFER_TIMEOUT);
+	time_left = wait_for_completion_timeout(&gi2c->done, geni_i2c_xfer_timeout(gi2c, len));
 	if (!time_left)
 		geni_i2c_abort_xfer(gi2c);
 
@@ -513,7 +526,7 @@ static int geni_i2c_tx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 		writel_relaxed(1, se->base + SE_GENI_TX_WATERMARK_REG);
 
 	cur = gi2c->cur;
-	time_left = wait_for_completion_timeout(&gi2c->done, XFER_TIMEOUT);
+	time_left = wait_for_completion_timeout(&gi2c->done, geni_i2c_xfer_timeout(gi2c, len));
 	if (!time_left)
 		geni_i2c_abort_xfer(gi2c);
 
@@ -591,7 +604,7 @@ static void geni_i2c_gpi_multi_desc_unmap(struct geni_i2c_dev *gi2c, struct i2c_
  * geni_i2c_gpi_multi_xfer_timeout_handler() - Handles multi message transfer timeout
  * @dev: Pointer to the corresponding dev node
  * @multi_xfer: Pointer to the geni_i2c_gpi_multi_desc_xfer
- * @transfer_timeout_msecs: Timeout value in milliseconds
+ * @transfer_timeout_msecs: Per-message completion timeout in jiffies
  * @transfer_comp: Completion object of the transfer
  *
  * This function waits for the completion of each processed transfer messages
@@ -601,7 +614,7 @@ static void geni_i2c_gpi_multi_desc_unmap(struct geni_i2c_dev *gi2c, struct i2c_
  */
 static int geni_i2c_gpi_multi_xfer_timeout_handler(struct device *dev,
 						   struct geni_i2c_gpi_multi_desc_xfer *multi_xfer,
-						   u32 transfer_timeout_msecs,
+						   unsigned long timeout_jiffies,
 						   struct completion *transfer_comp)
 {
 	int i;
@@ -612,7 +625,7 @@ static int geni_i2c_gpi_multi_xfer_timeout_handler(struct device *dev,
 
 		if (multi_xfer->msg_idx_cnt != multi_xfer->irq_cnt) {
 			time_left = wait_for_completion_timeout(transfer_comp,
-								transfer_timeout_msecs);
+								timeout_jiffies);
 			if (!time_left) {
 				dev_err(dev, "%s: Transfer timeout\n", __func__);
 				return -ETIMEDOUT;
@@ -736,8 +749,15 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
 		dma_async_issue_pending(gi2c->tx_c);
 
 		if ((msg_idx == (gi2c->num_msgs - 1)) || flags & DMA_PREP_INTERRUPT) {
+			size_t max_len = 0;
+			int j;
+
+			for (j = 0; j < gi2c->num_msgs; j++)
+				max_len = max_t(size_t, max_len, msgs[j].len);
+
 			ret = geni_i2c_gpi_multi_xfer_timeout_handler(gi2c->se.dev, gi2c_gpi_xfer,
-								      XFER_TIMEOUT, &gi2c->done);
+								      geni_i2c_xfer_timeout(
+								      gi2c, max_len), &gi2c->done);
 			if (ret) {
 				dev_err(gi2c->se.dev,
 					"I2C multi write msg transfer timeout: %d\n",
@@ -852,7 +872,8 @@ static int geni_i2c_gpi_xfer(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[], i
 
 		if (!gi2c->is_tx_multi_desc_xfer) {
 			dma_async_issue_pending(gi2c->tx_c);
-			time_left = wait_for_completion_timeout(&gi2c->done, XFER_TIMEOUT);
+			time_left = wait_for_completion_timeout(&gi2c->done, geni_i2c_xfer_timeout(
+								gi2c, msgs[i].len));
 			if (!time_left) {
 				dev_err(gi2c->se.dev, "%s:I2C timeout\n", __func__);
 				gi2c->err = -ETIMEDOUT;
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
