Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C23389587
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 May 2021 20:35:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 834A961151
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 May 2021 18:35:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 588AA61175; Wed, 19 May 2021 18:35:20 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27FCF610C3;
	Wed, 19 May 2021 18:35:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D022461146
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 May 2021 18:35:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CABE56114C; Wed, 19 May 2021 18:35:12 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by lists.linaro.org (Postfix) with ESMTPS id A82DE61146
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 May 2021 18:35:10 +0000 (UTC)
Received: by mail-pj1-f53.google.com with SMTP id
 pi6-20020a17090b1e46b029015cec51d7cdso3884574pjb.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 May 2021 11:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3wJ3aAZEjHNKbopPDn5vozw1zWhc/Pr5fh5dknRs1w4=;
 b=gss/L8cW9B++qVCsEGdCG6oyYYiTxRsGPdKSYCe1zBs5bT3idIR4abiZ0irz76WItc
 WpRgUAI44ocQkA8xO50TCzSHlckQ//W8HrKtpV4wxxNY8wd6gBvLlP7K37MMnVXjcZNo
 dFFm5gTuswMS3COzZC+kulswD44KBUZfeQ3Ne/OtZpGDLbCABk3oxHv1zXvs3o4cnJeC
 MIZ56MpgQLv/myFNSnJ9lnu4lGEbPmS40KMIp6Rz7R5spCKiFQC5ZoGhsIrS5uB2Zzkq
 dcJSy6ToG6vyTsNROyQaOB1bEUbpbuCePtx/j5gCb4dsJCglofD/dge709+34GYJ9wFZ
 POdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3wJ3aAZEjHNKbopPDn5vozw1zWhc/Pr5fh5dknRs1w4=;
 b=OyBVF+MJEvhOj26lgl2bAqFbqyBVtdHhu/hmw9K1P7jlcCx9X9+OfCTq0VgPkReJzq
 UZ/4x52dLEsdhCZNi5iObMAgCDQTsxjWacFWgBoRuXY0uJml7KBJ4G0OCtWiCO6uTaNP
 +v/imArPh9A/sGTIV5OU5Dd2EDeJL3D7cWYs1E+JPBf87+wcft0/J8aDzilHrlKEsp3b
 ZtB2fuxC6soMD8SHN5qSqMZg536Hn+pc91nj6iO8lnR04rIffaNQfr4NtavpuMpBPwj9
 emtsw9ZA+/TPwt5FWmMkOSVq7d1ikbtL1FbCYK1y/fBq/1ZU7OHQLM4jktgH95KjIgSa
 +1gQ==
X-Gm-Message-State: AOAM532pk0E59GiEaFwvtMuFUZL8wsgFOSE8mfzij/bruaD9XbVMHvFy
 M48catLvzqOh8Y5QwxtBg+A=
X-Google-Smtp-Source: ABdhPJyGeOGkaCXLxdAuqUKvIOco88WnEXbNBPl9Cjgvro6oNP8qt0XB9utbkH5lWpk264hkhmH0vw==
X-Received: by 2002:a17:902:6ac3:b029:e6:c6a3:a697 with SMTP id
 i3-20020a1709026ac3b02900e6c6a3a697mr1064923plt.2.1621449309998; 
 Wed, 19 May 2021 11:35:09 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 v9sm114698pfn.22.2021.05.19.11.35.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 May 2021 11:35:09 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 19 May 2021 11:38:52 -0700
Message-Id: <20210519183855.1523927-2-robdclark@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210519183855.1523927-1-robdclark@gmail.com>
References: <20210519183855.1523927-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [RFC 1/3] dma-fence: Add boost fence op
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
 freedreno@lists.freedesktop.org,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

From: Rob Clark <robdclark@chromium.org>

Add a way to hint to the fence signaler that a fence waiter has missed a
deadline waiting on the fence.

In some cases, missing a vblank can result in lower gpu utilization,
when really we want to go in the opposite direction and boost gpu freq.
The boost callback gives some feedback to the fence signaler that we
are missing deadlines, so it can take this into account in it's freq/
utilization calculations.

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 include/linux/dma-fence.h | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/include/linux/dma-fence.h b/include/linux/dma-fence.h
index 9f12efaaa93a..172702521acc 100644
--- a/include/linux/dma-fence.h
+++ b/include/linux/dma-fence.h
@@ -231,6 +231,17 @@ struct dma_fence_ops {
 	signed long (*wait)(struct dma_fence *fence,
 			    bool intr, signed long timeout);
 
+	/**
+	 * @boost:
+	 *
+	 * Optional callback, to indicate that a fence waiter missed a deadline.
+	 * This can serve as a signal that (if possible) whatever signals the
+	 * fence should boost it's clocks.
+	 *
+	 * This can be called in any context that can call dma_fence_wait().
+	 */
+	void (*boost)(struct dma_fence *fence);
+
 	/**
 	 * @release:
 	 *
@@ -586,6 +597,21 @@ static inline signed long dma_fence_wait(struct dma_fence *fence, bool intr)
 	return ret < 0 ? ret : 0;
 }
 
+/**
+ * dma_fence_boost - hint from waiter that it missed a deadline
+ *
+ * @fence: the fence that caused the missed deadline
+ *
+ * This function gives a hint from a fence waiter that a deadline was
+ * missed, so that the fence signaler can factor this in to device
+ * power state decisions
+ */
+static inline void dma_fence_boost(struct dma_fence *fence)
+{
+	if (fence->ops->boost)
+		fence->ops->boost(fence);
+}
+
 struct dma_fence *dma_fence_get_stub(void);
 u64 dma_fence_context_alloc(unsigned num);
 
-- 
2.30.2

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
