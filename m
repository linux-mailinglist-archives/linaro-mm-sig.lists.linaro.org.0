Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAC06B5F10
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Mar 2023 18:36:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 51DF03F4A4
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Mar 2023 17:35:59 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	by lists.linaro.org (Postfix) with ESMTPS id 98FB33ED86
	for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Mar 2023 17:35:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=qozX8RZW;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.180 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id ix20so2280481plb.3
        for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Mar 2023 09:35:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678556121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/hNSHVjc/0wTeCW3nY6/+a9GNb2nn01SoihN24q763w=;
        b=qozX8RZWE3nHsqGuYQWSGXKqdwuAcYURpfSiPFM9IP29zTKQOtipy8O/GmxSMJd7GU
         G2eiwcoB+mZyXyLDDUXpvQ7FntLF34u0AGf6oVPRNvrgFPSQwnLthOpkXclgCkzIqykt
         XsFgRCjAXEqj4EvvpW6GGf+KBFrVNZHFygWILrctRWcxZJnKTE9DyEZcwP1YvleOa+DC
         2VgJC3j67jilPpeIrAebn3TD7PpNA+M808wXx+2MqDd0zqNtlM6oAtz198FTC6Q43b3b
         YUVGwybEQz8Kyf3aPaizKZdRKVASFecfZMRWiPpeNxvucRWy6vbAyz/rshPX/NcgukYy
         vGoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678556121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/hNSHVjc/0wTeCW3nY6/+a9GNb2nn01SoihN24q763w=;
        b=Vnayq87ZQf7N9Zij5QDixMBG6NdnOmcs1J/KD6d0sk0a0PyEJINmoYLiWvoOBHHM3r
         abtxSfshl/6bIAuGgisC8V9gHej+g9q5U5G+b5thuaa5d92Hyu6x84lVExKv2PWd/ZiM
         2W9fBhA6p6qoRO0aEoIvKMsbIdbibrePHedKp5m/veSQHH0QdA60U091FFwwuQgAaGMq
         D7OOxXfmZfkXr6KLR1LzG9Nlqcm+WNIS2e+iwOfTmRoZGGMd8gwdgawiu/6neJtAoCJ2
         Ru1BQ6FBa9A4gN9tggGDjH1JPX4S1XVOsZS9Cuj78qgJeycM51PzXFg+tvfNbuv6KE3A
         l/Kg==
X-Gm-Message-State: AO0yUKUX365jjRMuBPNxnXrCGVGNh3vwGLBw7eTcQTerxyWzmI3OeG9A
	gvHK9s5yNn24XZYAZvt8nto=
X-Google-Smtp-Source: AK7set/92Kp+D6kfQAUn3G1hZMxs+D8jdl0o6Nhu2rBS+JMWAaAnTBNrnC1jHmBus8UctLlXZ2k6Xw==
X-Received: by 2002:a05:6a20:1589:b0:cc:3f87:a80c with SMTP id h9-20020a056a20158900b000cc3f87a80cmr33316270pzj.3.1678556120656;
        Sat, 11 Mar 2023 09:35:20 -0800 (PST)
Received: from localhost ([2601:1c0:5080:d9fa:9b45:95de:f47d:f85e])
        by smtp.gmail.com with ESMTPSA id d26-20020aa7815a000000b005d72e54a7e1sm1702285pfn.215.2023.03.11.09.35.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 09:35:20 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Sat, 11 Mar 2023 09:35:11 -0800
Message-Id: <20230311173513.1080397-2-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230311173513.1080397-1-robdclark@gmail.com>
References: <20230311173513.1080397-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 98FB33ED86
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
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
Message-ID-Hash: JC4GK4CIKTV5KU7PPVUZM557E7CEP4XH
X-Message-ID-Hash: JC4GK4CIKTV5KU7PPVUZM557E7CEP4XH
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/2] dma-buf/dma-fence: Add dma_fence_init_noref()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JC4GK4CIKTV5KU7PPVUZM557E7CEP4XH/>
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
index 74e36f6d05b0..97c05a465cb4 100644
--- a/drivers/dma-buf/dma-fence.c
+++ b/drivers/dma-buf/dma-fence.c
@@ -989,28 +989,27 @@ void dma_fence_describe(struct dma_fence *fence, struct seq_file *seq)
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
@@ -1021,4 +1020,28 @@ dma_fence_init(struct dma_fence *fence, const struct dma_fence_ops *ops,
 
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
index d54b595a0fe0..f617c78a2e0a 100644
--- a/include/linux/dma-fence.h
+++ b/include/linux/dma-fence.h
@@ -279,6 +279,8 @@ struct dma_fence_ops {
 	void (*set_deadline)(struct dma_fence *fence, ktime_t deadline);
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
