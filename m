Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IQgG4Nj5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:33:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F77431738
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:33:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A30DA3F7D9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:33:53 +0000 (UTC)
Received: from mx07-00376f01.pphosted.com (mx07-00376f01.pphosted.com [185.132.180.163])
	by lists.linaro.org (Postfix) with ESMTPS id 267B94043D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Mar 2026 07:57:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=imgtec.com header.s=dk201812 header.b=PrqUUOvV;
	dmarc=pass (policy=none) header.from=imgtec.com;
	spf=pass (lists.linaro.org: domain of Alessio.Belle@imgtec.com designates 185.132.180.163 as permitted sender) smtp.mailfrom=Alessio.Belle@imgtec.com
Received: from pps.filterd (m0168889.ppops.net [127.0.0.1])
	by mx07-00376f01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62U5HJTl174202;
	Mon, 30 Mar 2026 08:57:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=dk201812; bh=h
	1sJSKMVxHc+3A5Iix0o1+ziE+itBfbRCmdfz7cB1kA=; b=PrqUUOvV3hsZliwYr
	vN/yhwxwhqrGs8+PPrBEduFaad90XiZYNylnl17+H/AjPkugo4E4zZCdZd8cTfzq
	dh+Z0+bsVd4yi6i7sZP3G3F4R2IWjmSTiFRjdtMp/FblUR85TObD+pVHigqm9GSy
	Sgpfjf30jT4e4SUu7OveahIsXwuJ3mF/jSv98dQnG/DxBbLQa4Th2VEoyVYIB8mG
	qbOkNLKd+LfYy9Hrm2iQKL+Zr1I4s1ZSNjeoLJuntp54TaR3sVRoDTRPNE7j/NkW
	CRZFxU2C9QnQHL59faIFNeBOyAK6UwZjTTwyg1btpRDx6lQua/rPn0Rq2LHfTXvH
	K2V+g==
Received: from hhmail01.hh.imgtec.org (83-244-153-141.cust-83.exponential-e.net [83.244.153.141])
	by mx07-00376f01.pphosted.com (PPS) with ESMTPS id 4d67xusfkv-5
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Mar 2026 08:57:01 +0100 (BST)
Received: from NP-A-BELLE.kl.imgtec.org (172.25.6.106) by
 HHMAIL01.hh.imgtec.org (10.100.10.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 08:57:00 +0100
From: Alessio Belle <alessio.belle@imgtec.com>
Date: Mon, 30 Mar 2026 08:56:40 +0100
MIME-Version: 1.0
Message-ID: <20260330-job-submission-fixes-cleanup-v1-5-7de8c09cef8c@imgtec.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774857418; l=2991;
 i=alessio.belle@imgtec.com; s=20251208; h=from:subject:message-id;
 bh=kdk/oC7sY4R+WxO1hIAkVwVRZkcXYFspZAuC3d55vOM=;
 b=VcUZVMk6a20FtQkGaKtDTkfhbKCkark8UL0R3e7epwd5wdGvTjTfFpUu/X9fKqe1ICbId9ZcD
 JxDHfv19+5ZBakvox4JkQUqONnn51vxpRPU3GD2pxqmUIxpHrXic5Qz
X-Developer-Key: i=alessio.belle@imgtec.com; a=ed25519;
 pk=2Vtuk+GKBRjwMqIHpKk+Gx6zl7cgtq0joszcOc0zF4g=
X-Originating-IP: [172.25.6.106]
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzMwMDA2MSBTYWx0ZWRfX032EfnSrGDqD
 AlQDA/W4dMKGIx2nMc3+glLUEFq8TwM789XPIu1ULwjgsZ2wRg8hq7f1WuRJsEq+MjRCdv/xHit
 DKHEnUOY5TD6uqiiUIFnZ2ECdGcDGeTAN6EdLKVDMlqEnyIEPIdCV2uyTDxOhon3Ia+gfr6/9l2
 RruBWI+2b65Wz5SKopHaflnWSEIMunxtSrRsXrLH0GO7MIWoHTK/lzYxzxJ87juUV6g7UQ4Fh0V
 6pgY86SoqIQjct3V6IEXjFfQVXDaE52GXLlF/O8hnOplR91mzUGg6KfLhQNi7oN6Rrs440Tq17Z
 IiA8fLB4RLA3kCwg5mdQcoMZNDS/PRY9YEWKNM0Th4YFYRgA4M2lQcFhxc0ChBpqN6yAESVDM78
 8cprBawsD4z8N+YnQxCOeYAW1a0S4aUY0QDx6Spo7tVYdailY4dovmJNEaVmZwt23HoIMGoQ9BS
 cPF9cHYdAAxTZTYQBsA==
X-Authority-Analysis: v=2.4 cv=QO9lhwLL c=1 sm=1 tr=0 ts=69ca2ccd cx=c_pps
 a=AKOq//PuzOIrVTIF9yBwbA==:117 a=AKOq//PuzOIrVTIF9yBwbA==:17
 a=txNhvCuK94MA:10 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=kQ-hrUj2-E3RCbRHssb7:22 a=7RYWX5rxfSByPNLylY2M:22
 a=r_1tXGB3AAAA:8 a=t4At8a9FtDHClisqYPoA:9 a=QEXdDO2ut3YA:10
 a=t8nPyN_e6usw4ciXM-Pk:22
X-Proofpoint-GUID: abByBp9JlzIzgcVJF8B4tV6QyzPaiTP2
X-Proofpoint-ORIG-GUID: abByBp9JlzIzgcVJF8B4tV6QyzPaiTP2
X-Spamd-Bar: ----
X-MailFrom: Alessio.Belle@imgtec.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WQAEVGOET6NL4A5YUH7SYTP6I74BKK6Z
X-Message-ID-Hash: WQAEVGOET6NL4A5YUH7SYTP6I74BKK6Z
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:27 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Alessio Belle <alessio.belle@imgtec.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 5/8] drm/imagination: Rename fence returned by pvr_queue_job_arm()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WQAEVGOET6NL4A5YUH7SYTP6I74BKK6Z/>
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
	NEURAL_HAM(-0.00)[-0.968];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,imgtec.com:mid,imgtec.com:email]
X-Rspamd-Queue-Id: E7F77431738
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Rename from done_fence to finished_fence, both because the function
returns a drm_sched_fence's finished fence, and to avoid confusion with
the job fence, which is called the same but has a different purpose.

Signed-off-by: Alessio Belle <alessio.belle@imgtec.com>
---
 drivers/gpu/drm/imagination/pvr_job.c  | 8 ++++----
 drivers/gpu/drm/imagination/pvr_sync.c | 4 ++--
 drivers/gpu/drm/imagination/pvr_sync.h | 2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/imagination/pvr_job.c b/drivers/gpu/drm/imagination/pvr_job.c
index 0c2f511a6178..dd9f5df01e08 100644
--- a/drivers/gpu/drm/imagination/pvr_job.c
+++ b/drivers/gpu/drm/imagination/pvr_job.c
@@ -326,7 +326,7 @@ prepare_job_syncs(struct pvr_file *pvr_file,
 		  struct pvr_job_data *job_data,
 		  struct xarray *signal_array)
 {
-	struct dma_fence *done_fence;
+	struct dma_fence *finished_fence;
 	int err = pvr_sync_signal_array_collect_ops(signal_array,
 						    from_pvr_file(pvr_file),
 						    job_data->sync_op_count,
@@ -359,13 +359,13 @@ prepare_job_syncs(struct pvr_file *pvr_file,
 			return err;
 	}
 
-	/* We need to arm the job to get the job done fence. */
-	done_fence = pvr_queue_job_arm(job_data->job);
+	/* We need to arm the job to get the job finished fence. */
+	finished_fence = pvr_queue_job_arm(job_data->job);
 
 	err = pvr_sync_signal_array_update_fences(signal_array,
 						  job_data->sync_op_count,
 						  job_data->sync_ops,
-						  done_fence);
+						  finished_fence);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/imagination/pvr_sync.c b/drivers/gpu/drm/imagination/pvr_sync.c
index 757a18b1ab8f..936f840a5221 100644
--- a/drivers/gpu/drm/imagination/pvr_sync.c
+++ b/drivers/gpu/drm/imagination/pvr_sync.c
@@ -160,7 +160,7 @@ int
 pvr_sync_signal_array_update_fences(struct xarray *array,
 				    u32 sync_op_count,
 				    const struct drm_pvr_sync_op *sync_ops,
-				    struct dma_fence *done_fence)
+				    struct dma_fence *finished_fence)
 {
 	for (u32 i = 0; i < sync_op_count; i++) {
 		struct dma_fence *old_fence;
@@ -175,7 +175,7 @@ pvr_sync_signal_array_update_fences(struct xarray *array,
 			return -EINVAL;
 
 		old_fence = sig_sync->fence;
-		sig_sync->fence = dma_fence_get(done_fence);
+		sig_sync->fence = dma_fence_get(finished_fence);
 		dma_fence_put(old_fence);
 
 		if (WARN_ON(!sig_sync->fence))
diff --git a/drivers/gpu/drm/imagination/pvr_sync.h b/drivers/gpu/drm/imagination/pvr_sync.h
index db6ccfda104a..48501ad27794 100644
--- a/drivers/gpu/drm/imagination/pvr_sync.h
+++ b/drivers/gpu/drm/imagination/pvr_sync.h
@@ -70,7 +70,7 @@ int
 pvr_sync_signal_array_update_fences(struct xarray *array,
 				    u32 sync_op_count,
 				    const struct drm_pvr_sync_op *sync_ops,
-				    struct dma_fence *done_fence);
+				    struct dma_fence *finished_fence);
 
 void
 pvr_sync_signal_array_push_fences(struct xarray *array);

-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
