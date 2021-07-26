Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAD13D6A48
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jul 2021 01:35:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE23C63500
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Jul 2021 23:35:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E3D20634D1; Mon, 26 Jul 2021 23:35:02 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DF64B6339C;
	Mon, 26 Jul 2021 23:34:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0A0D06049D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jul 2021 23:34:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 05E516339A; Mon, 26 Jul 2021 23:34:50 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by lists.linaro.org (Postfix) with ESMTPS id EBF3361A40
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jul 2021 23:34:47 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id c16so8017660plh.7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jul 2021 16:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Hr8TbT0NY8bhwRPFfOulQoFlLUKAkASJhK+Ly3YzODY=;
 b=j8LlgSPw1RFIs8exl6aXPn3feuweS/2CJIHKyHEB7xVGXTNTC85mtEg/Uq+42kAlt2
 3QjXHcRqxRY2YLBc/jRGnCj71ESXb3kYFw4vm/zBJUYQ8kIHhxPNUw8U5SBxXsPeo0++
 +0KYr1u29WW/FfVUqJJhz1n67eMRUY2pPWVlZ2NKZJ4YtMbcgkyjTi++nbRozr3VyCpB
 /Def4VylyfYnxhrjrlupA1NQ22I3TDfVPJqR6eoJLDGBYyvFR7ANRtd5Gu4fX47qDI8U
 T6fC5hASr8PoHrvYYtUpfai0fxI/yp8YrtOmOrPcSJnWieo53lWJRaIQyIskGWwapfcy
 PvRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Hr8TbT0NY8bhwRPFfOulQoFlLUKAkASJhK+Ly3YzODY=;
 b=ifE8F+NLxljf417AbuwKutl5WG3wZFI7u47jh7WQYZ7w1Vexmu5xfWroIgLQeaIgdx
 SL89AU7GIZIvgdL/mV/B0VBfeggfhVTBowv/DkVWGqu+B204xjDEg1W4wKeW7wnaErl6
 PBCSF+6l0IXNySiVhlq18v+FJwAML2wvC30WLeEgWSgXi9HhSjhMkTYwcg8yRLyfS7q2
 5+lT8O90xmggkhn+tcakxGxe62J/ShtHIkeh8gK+ytnlYW5/yz1eO0jGrXcLs6TTMnXU
 kdzh2agsZJxlmx6Z4QV3eeF3V6gDF0GHOg0Hv3xnQ21JT6uipksNRD0bpqQCxL/18B8p
 0yeA==
X-Gm-Message-State: AOAM5325/7oc6uhcmouE2+A3icuZBUQWLE8TlR8BlO5gyVUE1DRJHrwm
 6dQ/OGb6l0RKYx7N5Z+5pns=
X-Google-Smtp-Source: ABdhPJzCJR1KRrhEUmpZNBEL+HoO6bZ9tT6NUdNFHH+pky+Hz4zM8T717wtK0Zidl77XkVjEvdhVFw==
X-Received: by 2002:a17:90a:940e:: with SMTP id
 r14mr1342648pjo.41.1627342487091; 
 Mon, 26 Jul 2021 16:34:47 -0700 (PDT)
Received: from localhost ([2601:1c0:5200:a6:307:a401:7b76:c6e5])
 by smtp.gmail.com with ESMTPSA id u190sm1212457pfb.95.2021.07.26.16.34.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Jul 2021 16:34:46 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 26 Jul 2021 16:38:48 -0700
Message-Id: <20210726233854.2453899-2-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210726233854.2453899-1-robdclark@gmail.com>
References: <20210726233854.2453899-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [RFC 1/4] dma-fence: Add deadline awareness
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Matthew Brost <matthew.brost@intel.com>, Rob Clark <robdclark@chromium.org>,
 open list <linux-kernel@vger.kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Gustavo Padovan <gustavo@padovan.org>,
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

From: Rob Clark <robdclark@chromium.org>

Add a way to hint to the fence signaler of an upcoming deadline, such as
vblank, which the fence waiter would prefer not to miss.  This is to aid
the fence signaler in making power management decisions, like boosting
frequency as the deadline approaches and awareness of missing deadlines
so that can be factored in to the frequency scaling.

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/dma-buf/dma-fence.c | 39 +++++++++++++++++++++++++++++++++++++
 include/linux/dma-fence.h   | 17 ++++++++++++++++
 2 files changed, 56 insertions(+)

diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
index ce0f5eff575d..2e0d25ab457e 100644
--- a/drivers/dma-buf/dma-fence.c
+++ b/drivers/dma-buf/dma-fence.c
@@ -910,6 +910,45 @@ dma_fence_wait_any_timeout(struct dma_fence **fences, uint32_t count,
 }
 EXPORT_SYMBOL(dma_fence_wait_any_timeout);
 
+
+/**
+ * dma_fence_set_deadline - set desired fence-wait deadline
+ * @fence:    the fence that is to be waited on
+ * @deadline: the time by which the waiter hopes for the fence to be
+ *            signaled
+ *
+ * Inform the fence signaler of an upcoming deadline, such as vblank, by
+ * which point the waiter would prefer the fence to be signaled by.  This
+ * is intended to give feedback to the fence signaler to aid in power
+ * management decisions, such as boosting GPU frequency if a periodic
+ * vblank deadline is approaching.
+ */
+void dma_fence_set_deadline(struct dma_fence *fence, ktime_t deadline)
+{
+	unsigned long flags;
+
+	if (dma_fence_is_signaled(fence))
+		return;
+
+	spin_lock_irqsave(fence->lock, flags);
+
+	/* If we already have an earlier deadline, keep it: */
+	if (test_bit(DMA_FENCE_FLAG_HAS_DEADLINE_BIT, &fence->flags) &&
+	    ktime_before(fence->deadline, deadline)) {
+		spin_unlock_irqrestore(fence->lock, flags);
+		return;
+	}
+
+	fence->deadline = deadline;
+	set_bit(DMA_FENCE_FLAG_HAS_DEADLINE_BIT, &fence->flags);
+
+	spin_unlock_irqrestore(fence->lock, flags);
+
+	if (fence->ops->set_deadline)
+		fence->ops->set_deadline(fence, deadline);
+}
+EXPORT_SYMBOL(dma_fence_set_deadline);
+
 /**
  * dma_fence_init - Initialize a custom fence.
  * @fence: the fence to initialize
diff --git a/include/linux/dma-fence.h b/include/linux/dma-fence.h
index 6ffb4b2c6371..4e6cfe4e6fbc 100644
--- a/include/linux/dma-fence.h
+++ b/include/linux/dma-fence.h
@@ -88,6 +88,7 @@ struct dma_fence {
 		/* @timestamp replaced by @rcu on dma_fence_release() */
 		struct rcu_head rcu;
 	};
+	ktime_t deadline;
 	u64 context;
 	u64 seqno;
 	unsigned long flags;
@@ -99,6 +100,7 @@ enum dma_fence_flag_bits {
 	DMA_FENCE_FLAG_SIGNALED_BIT,
 	DMA_FENCE_FLAG_TIMESTAMP_BIT,
 	DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
+	DMA_FENCE_FLAG_HAS_DEADLINE_BIT,
 	DMA_FENCE_FLAG_USER_BITS, /* must always be last member */
 };
 
@@ -261,6 +263,19 @@ struct dma_fence_ops {
 	 */
 	void (*timeline_value_str)(struct dma_fence *fence,
 				   char *str, int size);
+
+	/**
+	 * @set_deadline:
+	 *
+	 * Callback to allow a fence waiter to inform the fence signaler of an
+	 * upcoming deadline, such as vblank, by which point the waiter would
+	 * prefer the fence to be signaled by.  This is intended to give feedback
+	 * to the fence signaler to aid in power management decisions, such as
+	 * boosting GPU frequency.
+	 *
+	 * This callback is optional.
+	 */
+	void (*set_deadline)(struct dma_fence *fence, ktime_t deadline);
 };
 
 void dma_fence_init(struct dma_fence *fence, const struct dma_fence_ops *ops,
@@ -586,6 +601,8 @@ static inline signed long dma_fence_wait(struct dma_fence *fence, bool intr)
 	return ret < 0 ? ret : 0;
 }
 
+void dma_fence_set_deadline(struct dma_fence *fence, ktime_t deadline);
+
 struct dma_fence *dma_fence_get_stub(void);
 struct dma_fence *dma_fence_allocate_private_stub(void);
 u64 dma_fence_context_alloc(unsigned num);
-- 
2.31.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
