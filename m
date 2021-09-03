Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6207C400531
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Sep 2021 20:44:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5CF5662EA6
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Sep 2021 18:44:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3D8CC61B00; Fri,  3 Sep 2021 18:44:39 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A0851610C3;
	Fri,  3 Sep 2021 18:44:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E6C4A629CD
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Sep 2021 18:44:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CBF2761172; Fri,  3 Sep 2021 18:44:20 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by lists.linaro.org (Postfix) with ESMTPS id D8D4A62164
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Sep 2021 18:44:18 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id
 mw10-20020a17090b4d0a00b0017b59213831so183224pjb.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Sep 2021 11:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=31jt7QK/9p5C4ADlv88LMXP5EVEdNDb9tmwFIJMLC4k=;
 b=qDJrFouyCfFeLGnUbBR95iExuYEIHyianFD6naRgO7dfxR2y9NADfeSqdQuNE+FJP9
 E0Sm4AaAcVXgb7ItBoEq1Iue3+aYiFwCDfaXrcFO+hJ+CTd1JP1+v4GAaP7dlMdtXzo6
 sCevxf1S8rW69vkzS4YlO32nzt2EwbQhNUeHTi6KmHcz6lpGQq9QYzEYx5ZwcsPS4eYn
 b5eZur8Smg2NtgeTQXEDS2Zq7A5VrbBKomXnqtw96gjnrH5SY/tJD6jSk6HnTtqOi3rX
 QJv3DWZde2p64pTjBa1sKF0dNN3uEeMz/nsLOotmS46dBO2qtWO6ZK+KgQiEMO0DKB/X
 D9kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=31jt7QK/9p5C4ADlv88LMXP5EVEdNDb9tmwFIJMLC4k=;
 b=Z1WL2goSEYd6BMaxJubNklkuHrmvLkMfZ/+IJhGml9x2OLakKbue1pgVe7ZIIqGJuQ
 I826+KGUeFxzGtzUXpS05vdJmbzS25VdlxcHxydYLeRp9UAlVoHKtlArGmFgGXQOAEpK
 VAY8XKR0g/EZ8VEbumfiOtjCbQOMGR4BVp/B1hE4LEZ2XtwTMqf4VDzO2Qs/z3xuisJX
 qJbLpistQihNlXBmR3Uldi7PW8qewVioR762bXrpGx+ie5y8D5R8BQb6d9s2VR2ugeec
 hV6hwtc1QjlCcezhoT04vRAhtzfF2BngAbZqhICMhTdO3MSj9r9AHTZBGOkrYrAAXj88
 myoQ==
X-Gm-Message-State: AOAM531qtpDzfINGNLGRmpB5qzWVLYoTWrakIG2c+gbgsEogNAwQIrZv
 kVeAG50aak8NWIOuoyhxwh4=
X-Google-Smtp-Source: ABdhPJz6kyvVGuIf5Nqgp1yrWhHs6MzCixB5+jjmT64dNTD7WkrgEvidF5J/wT0yLD8G5WTB+b3pag==
X-Received: by 2002:a17:90a:1904:: with SMTP id 4mr317144pjg.217.1630694657983; 
 Fri, 03 Sep 2021 11:44:17 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 h24sm113360pfn.180.2021.09.03.11.44.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 11:44:17 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri,  3 Sep 2021 11:47:58 -0700
Message-Id: <20210903184806.1680887-8-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210903184806.1680887-1-robdclark@gmail.com>
References: <20210903184806.1680887-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH v3 7/9] dma-buf/fence-chain: Add fence
 deadline support
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
Cc: Rob Clark <robdclark@chromium.org>,
 =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>,
 open list <linux-kernel@vger.kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Pekka Paalanen <ppaalanen@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Gustavo Padovan <gustavo@padovan.org>,
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

From: Rob Clark <robdclark@chromium.org>

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/dma-buf/dma-fence-chain.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/dma-buf/dma-fence-chain.c b/drivers/dma-buf/dma-fence-chain.c
index 1b4cb3e5cec9..736a9ad3ea6d 100644
--- a/drivers/dma-buf/dma-fence-chain.c
+++ b/drivers/dma-buf/dma-fence-chain.c
@@ -208,6 +208,18 @@ static void dma_fence_chain_release(struct dma_fence *fence)
 	dma_fence_free(fence);
 }
 
+
+static void dma_fence_chain_set_deadline(struct dma_fence *fence,
+					 ktime_t deadline)
+{
+	dma_fence_chain_for_each(fence, fence) {
+		struct dma_fence_chain *chain = to_dma_fence_chain(fence);
+		struct dma_fence *f = chain ? chain->fence : fence;
+
+		dma_fence_set_deadline(f, deadline);
+	}
+}
+
 const struct dma_fence_ops dma_fence_chain_ops = {
 	.use_64bit_seqno = true,
 	.get_driver_name = dma_fence_chain_get_driver_name,
@@ -215,6 +227,7 @@ const struct dma_fence_ops dma_fence_chain_ops = {
 	.enable_signaling = dma_fence_chain_enable_signaling,
 	.signaled = dma_fence_chain_signaled,
 	.release = dma_fence_chain_release,
+	.set_deadline = dma_fence_chain_set_deadline,
 };
 EXPORT_SYMBOL(dma_fence_chain_ops);
 
-- 
2.31.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
