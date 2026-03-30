Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OESlOGxj5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:33:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AE55E4316D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:33:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C43E940517
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:33:31 +0000 (UTC)
Received: from mx07-00376f01.pphosted.com (mx07-00376f01.pphosted.com [185.132.180.163])
	by lists.linaro.org (Postfix) with ESMTPS id 5127F402FF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Mar 2026 07:57:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=imgtec.com header.s=dk201812 header.b=Jc8mdmrR;
	dmarc=pass (policy=none) header.from=imgtec.com;
	spf=pass (lists.linaro.org: domain of Alessio.Belle@imgtec.com designates 185.132.180.163 as permitted sender) smtp.mailfrom=Alessio.Belle@imgtec.com
Received: from pps.filterd (m0168889.ppops.net [127.0.0.1])
	by mx07-00376f01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62U5HJTk174202;
	Mon, 30 Mar 2026 08:57:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=dk201812; bh=W
	Ss4R+WJLlaRlbUhl44LAW/kP57HIL0JMAq4hjBcz4I=; b=Jc8mdmrRwGmCRzZUu
	CIyvDl7b0ayy5gUk3vZsghlDn3DfsBO/hrbVmiJc6XlFiW+5mZb/Cr4IOrUoVTDs
	5xoZ19mi3IbD3thYMc8ShQBdGnQ6t6szkV0I/sArLsXxBHqYJf7jTDne6cDUdjV/
	4b3XN7O+7ZsK8bsfT7ZlmN/7FdLkaJdEd55SdQBbNaOBQYje8IB8rXD445c1iT44
	MFh9YQcbxUWxS8+ZS280tlrIGrICnwSC411DJGgTxZaRupP/ljaabxejY3USaWz8
	JktqsJEWry3kKRpO/+4D2ajTP+AjT5pJK3CuhWLrr1g+4eP6A6U+TXmuz/Mbyw1P
	WJu5Q==
Received: from hhmail01.hh.imgtec.org (83-244-153-141.cust-83.exponential-e.net [83.244.153.141])
	by mx07-00376f01.pphosted.com (PPS) with ESMTPS id 4d67xusfkv-4
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Mar 2026 08:57:01 +0100 (BST)
Received: from NP-A-BELLE.kl.imgtec.org (172.25.6.106) by
 HHMAIL01.hh.imgtec.org (10.100.10.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 08:56:59 +0100
From: Alessio Belle <alessio.belle@imgtec.com>
Date: Mon, 30 Mar 2026 08:56:38 +0100
MIME-Version: 1.0
Message-ID: <20260330-job-submission-fixes-cleanup-v1-3-7de8c09cef8c@imgtec.com>
References: <20260330-job-submission-fixes-cleanup-v1-0-7de8c09cef8c@imgtec.com>
In-Reply-To: <20260330-job-submission-fixes-cleanup-v1-0-7de8c09cef8c@imgtec.com>
To: Frank Binns <frank.binns@imgtec.com>,
        Matt Coster
	<matt.coster@imgtec.com>,
        Brajesh Gupta <brajesh.gupta@imgtec.com>,
        "Alexandru Dadu" <alexandru.dadu@imgtec.com>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
        Boris Brezillon
	<boris.brezillon@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774857418; l=1762;
 i=alessio.belle@imgtec.com; s=20251208; h=from:subject:message-id;
 bh=1ruZS5mWr1hpnoKHvH8FYZr7dg1gu8aYTEEk7UMdO64=;
 b=Hr15ss6AMBUbiy+fmwm5/Y3mpSmrLZJ8SOZMNz5jrX5xTuhQHJgJc6D+iMsZ4YpGmy5qWog6s
 kwh7wmusx9DAjxsMfMBrg5HWjTQPLi6ArKu3CeLK7ZeBw31shpK4bih
X-Developer-Key: i=alessio.belle@imgtec.com; a=ed25519;
 pk=2Vtuk+GKBRjwMqIHpKk+Gx6zl7cgtq0joszcOc0zF4g=
X-Originating-IP: [172.25.6.106]
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzMwMDA2MSBTYWx0ZWRfX3NNUR7xCuwGU
 nvZp334Sq2koxY8z6tHxyR8FVAHb7MMfQTWLLxfrbzJXLuD3duLp3Fx/62GxDQ57bI1bkB6Qh4T
 KY8tjyPGvPvTnKnq8rqh4s4+wKI286pQlUbqCyT3ph9jSy8JNhUnddYAI9EVtIZOV3jLTDX5ZZm
 p5d5Unp+sD0F+M5LrI7m7tYaoruTrQWQMUuCbHe6tphqPyeMbSXTCEk3cHnLCbak1ESy7jk0Y0y
 FUHO11npqYdGGGN/uMPCHsNNHvQVNx6jY4v5At5CTLeFtFBChWXk8LHWcyIvDbMI0oEi8ujmfj4
 zKS8zvD5fyHEoo677mgnld8+7KQ90/FWJJo0QKEGIsmf2iEsMEOUjEc121TJ0cTIPAXqEYdvdvC
 WSITs4vo1dD83qkSWWRU60ejQHDLIUGKSa5SGOJrxRt/9Hp1eoh6L8w1mtTejHkfhYUPUbIPpjC
 okVE356rlu/swrH7wxQ==
X-Authority-Analysis: v=2.4 cv=QO9lhwLL c=1 sm=1 tr=0 ts=69ca2ccd cx=c_pps
 a=AKOq//PuzOIrVTIF9yBwbA==:117 a=AKOq//PuzOIrVTIF9yBwbA==:17
 a=txNhvCuK94MA:10 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=kQ-hrUj2-E3RCbRHssb7:22 a=7RYWX5rxfSByPNLylY2M:22
 a=r_1tXGB3AAAA:8 a=_Y7jKtEYzl7tsisHUWkA:9 a=QEXdDO2ut3YA:10
 a=t8nPyN_e6usw4ciXM-Pk:22
X-Proofpoint-GUID: MoVJ07EmUFPgzr_k86aZsHFyRHmJytHT
X-Proofpoint-ORIG-GUID: MoVJ07EmUFPgzr_k86aZsHFyRHmJytHT
X-Spamd-Bar: ---
X-MailFrom: Alessio.Belle@imgtec.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FV2K7UANFUDH4ISJ46BPKI5C4N2S7SJ5
X-Message-ID-Hash: FV2K7UANFUDH4ISJ46BPKI5C4N2S7SJ5
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:25 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Alessio Belle <alessio.belle@imgtec.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/8] drm/imagination: Skip check on paired job fence during job submission
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FV2K7UANFUDH4ISJ46BPKI5C4N2S7SJ5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[513];
	R_DKIM_REJECT(1.00)[imgtec.com:s=dk201812];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[imgtec.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[imgtec.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alessio.belle@imgtec.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[imgtec.com:-];
	HAS_XOIP(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.967];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: AE55E4316D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

While submitting a paired fragment job, there is no need to manually
look for, and skip, the paired job fence, as the existing logic to
resolve dependencies to pvr_queue_fence objects will have failed to
resolve it already and continued with the next one.

Point this out where the fence is actually accessed and drop the related
check.

Signed-off-by: Alessio Belle <alessio.belle@imgtec.com>
---
 drivers/gpu/drm/imagination/pvr_queue.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/imagination/pvr_queue.c b/drivers/gpu/drm/imagination/pvr_queue.c
index f1e54e6d940d..527eae1309d8 100644
--- a/drivers/gpu/drm/imagination/pvr_queue.c
+++ b/drivers/gpu/drm/imagination/pvr_queue.c
@@ -646,10 +646,6 @@ static void pvr_queue_submit_job_to_cccb(struct pvr_job *job)
 		if (!jfence)
 			continue;
 
-		/* This fence will be placed last, as partial render fence. */
-		if (is_paired_job_fence(fence, job))
-			continue;
-
 		if (dma_fence_is_signaled(&jfence->base))
 			continue;
 
@@ -664,8 +660,13 @@ static void pvr_queue_submit_job_to_cccb(struct pvr_job *job)
 		}
 	}
 
-	/* Partial render fence goes last. */
 	if (job->type == DRM_PVR_JOB_TYPE_FRAGMENT && job->paired_job) {
+		/*
+		 * The loop above will only process dependencies backed by a UFO i.e. with
+		 * a valid parent fence assigned, but the paired job dependency won't have
+		 * one until both jobs have been submitted. Access the parent fence directly
+		 * here instead, submitting it last as partial render fence.
+		 */
 		jfence = to_pvr_queue_job_fence(job->paired_job->done_fence);
 		if (!WARN_ON(!jfence)) {
 			pvr_fw_object_get_fw_addr(jfence->queue->timeline_ufo.fw_obj,

-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
