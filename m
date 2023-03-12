Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 601206B6B49
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 12 Mar 2023 21:43:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 676843F4FB
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 12 Mar 2023 20:43:01 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	by lists.linaro.org (Postfix) with ESMTPS id 6D8DA3F0A6
	for <linaro-mm-sig@lists.linaro.org>; Sun, 12 Mar 2023 20:42:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b="eYXdz/2B";
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.180 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id k2so2956853pll.8
        for <linaro-mm-sig@lists.linaro.org>; Sun, 12 Mar 2023 13:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678653744;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G9ZzGCWyiNAeiv6c+goQOhdGUM/VAx8Q7uPqMr39xR4=;
        b=eYXdz/2BUZ1QrGdWq7Ygaino1s5nWdnFRQ3haZ30fb0XJx3n5xWw9lT7CW3VAsiE2Q
         PSqm1FfR9rwv46O0vsC9QyQ1jbZW2BHVHt8eze/jQuHn3r1vmxhd0rBrVlq7Ubxb55PZ
         M7c/ihFaD4rSYWFbD8VTvQk1Y3OzdhDYg5xxw9pOHoxCm0q3u1NQ1ac08YmNuTa7US4t
         BlOuXlIx3qG6Be3XdAafUxXouSY27fQ3Dxh3c/Xo2cZNYxqTVpssVX7mYMT2C4rGbX3R
         x3nGqJDuvIAJayagyc+aYoMUYiqNB52DUJvVtFDG8aXjpxQrxXbnJj5c8JkAoRfYhCY8
         +6+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678653744;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G9ZzGCWyiNAeiv6c+goQOhdGUM/VAx8Q7uPqMr39xR4=;
        b=kze5v4xcDVn9eNcxVK7Yj/6Q1HiolQxU+BoVbot4TJMY94lWAnVAhn4WI5feZPcjQc
         jL1hjQlIiOzh2XyS6zzu2Sht8BjAGj2A+OkbvH81lCHebUqB6kQsihBMKy+eyC/wjKpM
         flveDHUbbeOFnFX7CtdwRbc9g+2YZj67fj/r2ebpAGwKbhWXy9SD8ivWHxhGm2MtPY2I
         am1lVIvfuN9eHBSCKJ1SB3nshwwjYHCiai5gyKHtIcARdDkv8uKK3KQP4l2aElXkkV+W
         JXm8TEhlHm2xhuxZYAKUpJ4fnzFIOIRc7MGqGKPMOisHOjlIM9kTy5CcrFRovZdFfQux
         7elw==
X-Gm-Message-State: AO0yUKXfL3WJ3wglen6z1cCBZ6gekXa+rGu9Aw8Q7acU9fy2C4c6pvvb
	rvGWElY0YeyW84GRwXPbwl8=
X-Google-Smtp-Source: AK7set9qQEs+ySobSlkG+OTM0pmExlrMP7uEMdAFDvg80bkouP5hTrTWPm8MBsIdzKZouyvCoPcA8A==
X-Received: by 2002:a17:902:ab57:b0:1a0:4ebd:15da with SMTP id ij23-20020a170902ab5700b001a04ebd15damr373019plb.66.1678653744449;
        Sun, 12 Mar 2023 13:42:24 -0700 (PDT)
Received: from localhost ([2601:1c0:5080:d9fa:9b45:95de:f47d:f85e])
        by smtp.gmail.com with ESMTPSA id u9-20020a17090341c900b0019a593e45f1sm3160569ple.261.2023.03.12.13.42.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 13:42:24 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Sun, 12 Mar 2023 13:41:29 -0700
Message-Id: <20230312204150.1353517-2-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230312204150.1353517-1-robdclark@gmail.com>
References: <20230312204150.1353517-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6D8DA3F0A6
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.180:from];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[]
Message-ID-Hash: XWMKOWZYOGVLWX2A2YP25XF33XPCG5VV
X-Message-ID-Hash: XWMKOWZYOGVLWX2A2YP25XF33XPCG5VV
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-arm-msm@vger.kernel.org, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 01/13] dma-buf/dma-fence: Add dma_fence_init_noref()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XWMKOWZYOGVLWX2A2YP25XF33XPCG5VV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

Add a way to initialize a fence without touching the refcount.  This is
useful, for example, if the fence is embedded in a drm_sched_job.  In
this case the refcount will be initialized before the job is queued.
But the seqno of the hw_fence is not known until job_run().

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/dma-buf/dma-fence.c | 43 ++++++++++++++++++++++++++++---------
 include/linux/dma-fence.h   |  2 ++
 2 files changed, 35 insertions(+), 10 deletions(-)

diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
index 0de0482cd36e..3c55f946084c 100644
--- a/drivers/dma-buf/dma-fence.c
+++ b/drivers/dma-buf/dma-fence.c
@@ -929,28 +929,27 @@ void dma_fence_describe(struct dma_fence *fence, struct seq_file *seq)
 EXPORT_SYMBOL(dma_fence_describe);
 
 /**
- * dma_fence_init - Initialize a custom fence.
+ * dma_fence_init_noref - Initialize a custom fence without initializing refcount.
  * @fence: the fence to initialize
  * @ops: the dma_fence_ops for operations on this fence
  * @lock: the irqsafe spinlock to use for locking this fence
  * @context: the execution context this fence is run on
  * @seqno: a linear increasing sequence number for this context
  *
- * Initializes an allocated fence, the caller doesn't have to keep its
- * refcount after committing with this fence, but it will need to hold a
- * refcount again if &dma_fence_ops.enable_signaling gets called.
- *
- * context and seqno are used for easy comparison between fences, allowing
- * to check which fence is later by simply using dma_fence_later().
+ * Like &dma_fence_init but does not initialize the refcount.  Suitable
+ * for cases where the fence is embedded in another struct which has it's
+ * refcount initialized before the fence is initialized.  Such as embedding
+ * in a &drm_sched_job, where the job is created before knowing the seqno
+ * of the hw_fence.
  */
 void
-dma_fence_init(struct dma_fence *fence, const struct dma_fence_ops *ops,
-	       spinlock_t *lock, u64 context, u64 seqno)
+dma_fence_init_noref(struct dma_fence *fence, const struct dma_fence_ops *ops,
+		     spinlock_t *lock, u64 context, u64 seqno)
 {
 	BUG_ON(!lock);
 	BUG_ON(!ops || !ops->get_driver_name || !ops->get_timeline_name);
+	BUG_ON(!kref_read(&fence->refcount));
 
-	kref_init(&fence->refcount);
 	fence->ops = ops;
 	INIT_LIST_HEAD(&fence->cb_list);
 	fence->lock = lock;
@@ -961,4 +960,28 @@ dma_fence_init(struct dma_fence *fence, const struct dma_fence_ops *ops,
 
 	trace_dma_fence_init(fence);
 }
+EXPORT_SYMBOL(dma_fence_init_noref);
+
+/**
+ * dma_fence_init - Initialize a custom fence.
+ * @fence: the fence to initialize
+ * @ops: the dma_fence_ops for operations on this fence
+ * @lock: the irqsafe spinlock to use for locking this fence
+ * @context: the execution context this fence is run on
+ * @seqno: a linear increasing sequence number for this context
+ *
+ * Initializes an allocated fence, the caller doesn't have to keep its
+ * refcount after committing with this fence, but it will need to hold a
+ * refcount again if &dma_fence_ops.enable_signaling gets called.
+ *
+ * context and seqno are used for easy comparison between fences, allowing
+ * to check which fence is later by simply using dma_fence_later().
+ */
+void
+dma_fence_init(struct dma_fence *fence, const struct dma_fence_ops *ops,
+	       spinlock_t *lock, u64 context, u64 seqno)
+{
+	kref_init(&fence->refcount);
+	dma_fence_init_noref(fence, ops, lock, context, seqno);
+}
 EXPORT_SYMBOL(dma_fence_init);
diff --git a/include/linux/dma-fence.h b/include/linux/dma-fence.h
index 775cdc0b4f24..89d90a2b5f09 100644
--- a/include/linux/dma-fence.h
+++ b/include/linux/dma-fence.h
@@ -259,6 +259,8 @@ struct dma_fence_ops {
 				   char *str, int size);
 };
 
+void dma_fence_init_noref(struct dma_fence *fence, const struct dma_fence_ops *ops,
+			  spinlock_t *lock, u64 context, u64 seqno);
 void dma_fence_init(struct dma_fence *fence, const struct dma_fence_ops *ops,
 		    spinlock_t *lock, u64 context, u64 seqno);
 
-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
