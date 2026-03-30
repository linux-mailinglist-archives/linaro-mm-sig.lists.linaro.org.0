Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2LXGFHZj5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:33:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DF809431703
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:33:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ED713402D3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:33:40 +0000 (UTC)
Received: from mx07-00376f01.pphosted.com (mx07-00376f01.pphosted.com [185.132.180.163])
	by lists.linaro.org (Postfix) with ESMTPS id 4D2B5402D3
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Mar 2026 07:57:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=imgtec.com header.s=dk201812 header.b=qcRyE5kF;
	dmarc=pass (policy=none) header.from=imgtec.com;
	spf=pass (lists.linaro.org: domain of Alessio.Belle@imgtec.com designates 185.132.180.163 as permitted sender) smtp.mailfrom=Alessio.Belle@imgtec.com
Received: from pps.filterd (m0168889.ppops.net [127.0.0.1])
	by mx07-00376f01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62U5HJTm174202;
	Mon, 30 Mar 2026 08:57:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=dk201812; bh=/
	8FiZRrrQ/O+Rf5kOsCDAWuTUsDDkKsfFbvZz4NC9po=; b=qcRyE5kF9iQ1avMmt
	nH1fDHUusK7FSJ5LO/93IJHb2M2LeuFB67un+nJ0ETmVdeqChRl8nDHoqXEJ5LbX
	N+8mxjSCtIrn1ow2RAfUMTtueZty7ifFO1BfIgYo/5PTFdIsDTqmN/eITA73araw
	2i8WWJhuhu/gsWuVEIRITS9IsSbpR+uaM1CV5pGud22S261NyGo72nlAxoMZvqKS
	sEd7hpKRkmhjyLxJz3zzcv4lzOl7qk+tii8XL1SIpyezmDywLAdLRjXCE3seOzX/
	CDXgkjlPh6dnlAU2A3dtgr47KnB60XFN9VSA37IkNA24wZaKuXHudjIKZcbnh+6Z
	dF9LQ==
Received: from hhmail01.hh.imgtec.org (83-244-153-141.cust-83.exponential-e.net [83.244.153.141])
	by mx07-00376f01.pphosted.com (PPS) with ESMTPS id 4d67xusfkv-6
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Mar 2026 08:57:02 +0100 (BST)
Received: from NP-A-BELLE.kl.imgtec.org (172.25.6.106) by
 HHMAIL01.hh.imgtec.org (10.100.10.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 08:57:00 +0100
From: Alessio Belle <alessio.belle@imgtec.com>
Date: Mon, 30 Mar 2026 08:56:41 +0100
MIME-Version: 1.0
Message-ID: <20260330-job-submission-fixes-cleanup-v1-6-7de8c09cef8c@imgtec.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774857418; l=1816;
 i=alessio.belle@imgtec.com; s=20251208; h=from:subject:message-id;
 bh=Jud123WWRsFViT++lGJXkizulPVbeyW2ltbMqISSRbY=;
 b=Us8Uqg2bcIei5LQeqV5+A3+PeVxiODs7azGrw4HFJvCPdodnoBN9XaRjosJv9U3EBmzjuJWrE
 wMTYRH4ofcNDWIcj5jOmJfWGTAyXXhqmoQ8Y11jl8NSM3fRo8OlmIy1
X-Developer-Key: i=alessio.belle@imgtec.com; a=ed25519;
 pk=2Vtuk+GKBRjwMqIHpKk+Gx6zl7cgtq0joszcOc0zF4g=
X-Originating-IP: [172.25.6.106]
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzMwMDA2MSBTYWx0ZWRfX3LbZ7G18Zoin
 YFA4KSKSmaBVaJMwkomSPR16kvSZcBU9TKLTl9KWzSE03/iHGkLDlvN6y2YSgz+jlzZD4u8mB2T
 lOMD8YdBoKCfnwQ0PiNYXuMKm2gXRrnPRTTskFkxfTDQg5t54fqcHYKSXu9YX+iDzTVDqka3kqS
 saWPiWuYWvVZzzyxiHj25XPlZaiWTo6XeS3LpSDtR/Kx2I+VJdecJ8hCn6AL8p44OTBfjZVqwTJ
 93Ue1u+sL6A3rD6UJ6raAPIkdNaMF6JFd9dhpGYP+vzVlhztK/B+s8uSZ34EZeyouUI6I8163xt
 MQbOr2U30RYP5v7E6KNFvdo1ISjs5gK42ZnhuizRnmkjmJ/3VDtmJ4+pJlPP+/AZlQcu+ip8rq7
 JU5SypaLRZEs02emRGnilz7WkpDMqOXC/Pmig1n6MLqzd1fQ3LOkjlnfUIpNuwdFjkLgiXd31kA
 r7YRCbf/OePJozP631w==
X-Authority-Analysis: v=2.4 cv=QO9lhwLL c=1 sm=1 tr=0 ts=69ca2cce cx=c_pps
 a=AKOq//PuzOIrVTIF9yBwbA==:117 a=AKOq//PuzOIrVTIF9yBwbA==:17
 a=txNhvCuK94MA:10 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=kQ-hrUj2-E3RCbRHssb7:22 a=7RYWX5rxfSByPNLylY2M:22
 a=r_1tXGB3AAAA:8 a=qN8rWf0lohQvQRdMElYA:9 a=QEXdDO2ut3YA:10
 a=t8nPyN_e6usw4ciXM-Pk:22
X-Proofpoint-GUID: tYoNvPJFFQmVQXx88G-m8Pt_uuTJnAhj
X-Proofpoint-ORIG-GUID: tYoNvPJFFQmVQXx88G-m8Pt_uuTJnAhj
X-Spamd-Bar: ---
X-MailFrom: Alessio.Belle@imgtec.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GSZJLCRE4HRI7N4IWPUW2HDB3O34O4LQ
X-Message-ID-Hash: GSZJLCRE4HRI7N4IWPUW2HDB3O34O4LQ
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:25 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Alessio Belle <alessio.belle@imgtec.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 6/8] drm/imagination: Move repeated job fence check to its own function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GSZJLCRE4HRI7N4IWPUW2HDB3O34O4LQ/>
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
	FROM_NEQ_ENVFROM(0.00)[alessio.belle@imgtec.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[imgtec.com:-];
	HAS_XOIP(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.967];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,imgtec.com:mid,imgtec.com:email]
X-Rspamd-Queue-Id: DF809431703
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This should make the code slightly clearer.

Signed-off-by: Alessio Belle <alessio.belle@imgtec.com>
---
 drivers/gpu/drm/imagination/pvr_queue.c | 25 ++++++++++++++++++++-----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/imagination/pvr_queue.c b/drivers/gpu/drm/imagination/pvr_queue.c
index df0a110ed96f..4a49d954562e 100644
--- a/drivers/gpu/drm/imagination/pvr_queue.c
+++ b/drivers/gpu/drm/imagination/pvr_queue.c
@@ -177,6 +177,24 @@ static const struct dma_fence_ops pvr_queue_job_fence_ops = {
 	.release = pvr_queue_fence_release,
 };
 
+/**
+ * pvr_queue_fence_is_ufo_backed() - Check if a dma_fence is backed by a UFO.
+ * @f: The dma_fence to check.
+ *
+ * Return:
+ * * true if the dma_fence is backed by a UFO, or
+ * * false otherwise.
+ */
+static inline bool
+pvr_queue_fence_is_ufo_backed(struct dma_fence *f)
+{
+	/*
+	 * Currently the only dma_fence backed by a UFO object is the job fence,
+	 * e.g. pvr_job::done_fence, wrapped by a pvr_queue_fence object.
+	 */
+	return f && f->ops == &pvr_queue_job_fence_ops;
+}
+
 /**
  * to_pvr_queue_job_fence() - Return a pvr_queue_fence object if the fence is
  * already backed by a UFO.
@@ -194,7 +212,7 @@ to_pvr_queue_job_fence(struct dma_fence *f)
 	if (sched_fence)
 		f = sched_fence->parent;
 
-	if (f && f->ops == &pvr_queue_job_fence_ops)
+	if (pvr_queue_fence_is_ufo_backed(f))
 		return container_of(f, struct pvr_queue_fence, base);
 
 	return NULL;
@@ -915,10 +933,7 @@ bool pvr_queue_fence_is_native(struct dma_fence *f)
 	    sched_fence->sched->ops == &pvr_queue_sched_ops)
 		return true;
 
-	if (f && f->ops == &pvr_queue_job_fence_ops)
-		return true;
-
-	return false;
+	return pvr_queue_fence_is_ufo_backed(f);
 }
 
 /**

-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
