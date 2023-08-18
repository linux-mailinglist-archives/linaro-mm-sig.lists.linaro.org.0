Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 498F279A92C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:57:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 37E663F003
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:57:02 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
	by lists.linaro.org (Postfix) with ESMTPS id A2A993EE23
	for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Aug 2023 12:45:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of yuehaibing@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=yuehaibing@huawei.com;
	dmarc=pass (policy=quarantine) header.from=huawei.com
Received: from canpemm500007.china.huawei.com (unknown [172.30.72.55])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4RS1jL2fWMztRsl;
	Fri, 18 Aug 2023 20:42:14 +0800 (CST)
Received: from localhost (10.174.179.215) by canpemm500007.china.huawei.com
 (7.192.104.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Fri, 18 Aug
 2023 20:45:53 +0800
From: Yue Haibing <yuehaibing@huawei.com>
To: <luben.tuikov@amd.com>, <airlied@gmail.com>, <daniel@ffwll.ch>,
	<sumit.semwal@linaro.org>, <christian.koenig@amd.com>
Date: Fri, 18 Aug 2023 20:45:37 +0800
Message-ID: <20230818124537.51296-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.174.179.215]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 canpemm500007.china.huawei.com (7.192.104.62)
X-CFilter-Loop: Reflected
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A2A993EE23
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[huawei.com,quarantine];
	RCVD_IN_DNSWL_HI(-0.50)[45.249.212.187:from];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[45.249.212.187:from];
	R_SPF_ALLOW(-0.20)[+ip4:45.249.212.187/29:c];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:134543, ipnet:45.249.212.0/24, country:CN];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	R_DKIM_NA(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	HAS_XOIP(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[]
X-MailFrom: yuehaibing@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RKBJYWVZ4E65TJX57HVPDNPQJYH2NXAZ
X-Message-ID-Hash: RKBJYWVZ4E65TJX57HVPDNPQJYH2NXAZ
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:56:58 +0000
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, yuehaibing@huawei.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH -next] drm/scheduler: Remove unused declarations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RKBJYWVZ4E65TJX57HVPDNPQJYH2NXAZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Commit 06a2d7cc3f04 ("drm/amdgpu: revert "implement tdr advanced mode"")
removed drm_sched_reset_karma()/drm_sched_increase_karma_ext() but leave
the declarations.
Commit 2cf9886e2816 ("drm/scheduler: remove drm_sched_dependency_optimized")
removed drm_sched_dependency_optimized() but not its declaration.

Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
---
 include/drm/gpu_scheduler.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/include/drm/gpu_scheduler.h b/include/drm/gpu_scheduler.h
index f9544d9b670d..cd8ac90865fc 100644
--- a/include/drm/gpu_scheduler.h
+++ b/include/drm/gpu_scheduler.h
@@ -554,10 +554,6 @@ void drm_sched_stop(struct drm_gpu_scheduler *sched, struct drm_sched_job *bad);
 void drm_sched_start(struct drm_gpu_scheduler *sched, bool full_recovery);
 void drm_sched_resubmit_jobs(struct drm_gpu_scheduler *sched);
 void drm_sched_increase_karma(struct drm_sched_job *bad);
-void drm_sched_reset_karma(struct drm_sched_job *bad);
-void drm_sched_increase_karma_ext(struct drm_sched_job *bad, int type);
-bool drm_sched_dependency_optimized(struct dma_fence* fence,
-				    struct drm_sched_entity *entity);
 void drm_sched_fault(struct drm_gpu_scheduler *sched);
 
 void drm_sched_rq_add_entity(struct drm_sched_rq *rq,
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
