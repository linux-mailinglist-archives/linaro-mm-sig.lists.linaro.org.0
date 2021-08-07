Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5ED3E36B8
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  7 Aug 2021 20:34:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 716C16451D
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  7 Aug 2021 18:34:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 41E2D665AB; Sat,  7 Aug 2021 18:34:08 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A32363514;
	Sat,  7 Aug 2021 18:34:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F08F86328C
 for <linaro-mm-sig@lists.linaro.org>; Sat,  7 Aug 2021 18:33:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E8AED631D0; Sat,  7 Aug 2021 18:33:58 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50])
 by lists.linaro.org (Postfix) with ESMTPS id BC748631D0
 for <linaro-mm-sig@lists.linaro.org>; Sat,  7 Aug 2021 18:33:56 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id
 u5-20020a17090ae005b029017842fe8f82so13853070pjy.0
 for <linaro-mm-sig@lists.linaro.org>; Sat, 07 Aug 2021 11:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nOt70Hk3X7Lhxeo4A7VPI3vXTVhEV/b3gfLzjthYuh8=;
 b=WAJhm4odxC+0a/CWhJcaCrimxRJDZh5esiUKqykfPr5N1kMEVgNwONgEmAlIOTKl9E
 LCSTg6HYP5W97cgx6DJ2NkW1KfF/V3D7RHMHRPICqWPaEMITetDbQ+Rh0QpIxSIAG0qT
 BGQY5S9IA65YWJmhmu5YXqvqghyumjv4vVd4zFhf1DBFOHY+cf/8NteTFisigZbHv7zB
 8DbTyZ1PAxrgiBLlYdb2XfK6I8lH6Awt0IjF+ncgnI/s3EFjkiHC3JRhMKU0h1z+sHvu
 rjz4FGBGsGpY7AXkpabfwI2v+1bsCdi/Ivo8o/IFbsRwe0UF2a0NI57QKYx4YsMeQaQk
 cO7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nOt70Hk3X7Lhxeo4A7VPI3vXTVhEV/b3gfLzjthYuh8=;
 b=AwZ4kJikAaQMwbgbKPwSLmNm1zxoCf5OERXEetgnZ/nPD2OBCZVuuvX6E539JJZfGG
 OrUkmcOc0/SHDnoZpoJkYh5KqtMR69+419NdqCeTGBU3IXnDUZVqYNp+jTpeQ6yyiadS
 CX57IYcXH1Vou+orw7h8ngxQTQIoSQMICh00mKXRgKHasBlUg/ofoz+kHvNyQBvLVjah
 UYu7b7vIPDnrlVZndIIto1sdJmUcHPmdUsOC4p3gbwmozKSY+znyHDwAratdNTJGdhX5
 YGbKc7/RbJY2K8q4AWP1cf4CMtG08PXdDc4T2kii17Q0vN5xf4h1oum6/DuxSKW/4fmx
 lQuw==
X-Gm-Message-State: AOAM533rixr+L2txvnGYqnON/xkLpvzx1qsH/sjXNrWTLZEzWpkyqxZh
 /spYES8w2XE2bNran95XKes=
X-Google-Smtp-Source: ABdhPJytMjoeUYGSmDlTuSrzeu4f9QCl9g1DzeiK4PJJWz9V3/ILIBnuVV+igG8Pn5Bsx9k2KKTCfA==
X-Received: by 2002:a17:902:8bc3:b029:124:919f:6213 with SMTP id
 r3-20020a1709028bc3b0290124919f6213mr13954733plo.51.1628361235906; 
 Sat, 07 Aug 2021 11:33:55 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 s3sm14514449pfk.61.2021.08.07.11.33.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Aug 2021 11:33:54 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Sat,  7 Aug 2021 11:37:55 -0700
Message-Id: <20210807183804.459850-2-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210807183804.459850-1-robdclark@gmail.com>
References: <20210807183804.459850-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH v2 1/5] dma-fence: Add deadline awareness
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
Cc: Rob Clark <robdclark@chromium.org>, linux-arm-msm@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Gustavo Padovan <gustavo@padovan.org>,
 freedreno@lists.freedesktop.org,
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

v2: Drop dma_fence::deadline and related logic to filter duplicate
    deadlines, to avoid increasing dma_fence size.  The fence-context
    implementation will need similar logic to track deadlines of all
    the fences on the same timeline.  [ckoenig]

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/dma-buf/dma-fence.c | 20 ++++++++++++++++++++
 include/linux/dma-fence.h   | 16 ++++++++++++++++
 2 files changed, 36 insertions(+)

diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
index ce0f5eff575d..1f444863b94d 100644
--- a/drivers/dma-buf/dma-fence.c
+++ b/drivers/dma-buf/dma-fence.c
@@ -910,6 +910,26 @@ dma_fence_wait_any_timeout(struct dma_fence **fences, uint32_t count,
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
+	if (fence->ops->set_deadline && !dma_fence_is_signaled(fence))
+		fence->ops->set_deadline(fence, deadline);
+}
+EXPORT_SYMBOL(dma_fence_set_deadline);
+
 /**
  * dma_fence_init - Initialize a custom fence.
  * @fence: the fence to initialize
diff --git a/include/linux/dma-fence.h b/include/linux/dma-fence.h
index 6ffb4b2c6371..9c809f0d5d0a 100644
--- a/include/linux/dma-fence.h
+++ b/include/linux/dma-fence.h
@@ -99,6 +99,7 @@ enum dma_fence_flag_bits {
 	DMA_FENCE_FLAG_SIGNALED_BIT,
 	DMA_FENCE_FLAG_TIMESTAMP_BIT,
 	DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
+	DMA_FENCE_FLAG_HAS_DEADLINE_BIT,
 	DMA_FENCE_FLAG_USER_BITS, /* must always be last member */
 };
 
@@ -261,6 +262,19 @@ struct dma_fence_ops {
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
@@ -586,6 +600,8 @@ static inline signed long dma_fence_wait(struct dma_fence *fence, bool intr)
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
