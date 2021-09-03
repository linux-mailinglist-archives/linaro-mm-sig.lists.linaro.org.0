Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3D9400533
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Sep 2021 20:44:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 56BFD63426
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Sep 2021 18:44:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 51B606322A; Fri,  3 Sep 2021 18:44:44 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7183662DEF;
	Fri,  3 Sep 2021 18:44:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 15D2962D35
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Sep 2021 18:44:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D4B3861F45; Fri,  3 Sep 2021 18:44:20 +0000 (UTC)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
 [209.85.215.177])
 by lists.linaro.org (Postfix) with ESMTPS id 3BA7362175
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Sep 2021 18:44:17 +0000 (UTC)
Received: by mail-pg1-f177.google.com with SMTP id s11so6335885pgr.11
 for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Sep 2021 11:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ePxJybomMw7KwNl/06F/f9BuSUg0DBEjdIp9sOebF7o=;
 b=BvMTOHBoJQkt0BIhnKLwCwWsS493zyVEfOi0uWmcJC2buz2melLUXyaqwMUK4fSo3I
 y3aDAag69Mz6ynkPjigXyEg9Jl0nV+MYC1ndP1ma/Lh44jH/QjHOSs6x/3U/H1rD3bHS
 mGsKVnKN3FCYSTm655cSyebyavRCqtX2W3RFDB86rHu6twvqj4jx5KGUAgBKK/nWaiND
 dPap3WbMNgoBPMYK+DkbLTNIVDSf/Zi0N/glyV5rQz1uZ+3yUxXWiSjQrQONKO06UL+g
 gCo2fQMcpUmwzjBRHMY/2iVs3gkNmgkKjLnhHIvrWnKiOFne/vCmrW31siHiRvex8buq
 e2cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ePxJybomMw7KwNl/06F/f9BuSUg0DBEjdIp9sOebF7o=;
 b=sL6OeiM5m26fBYv3PruTfMhjYq+JEMNy9bD5swhOhKRwQq1h/3Y+xijTxysyqxWY+X
 kNW2JEebSWoixc7grIN8XXDbMV1pWVn8HCyLzj3k9VXm6bwRFrugbersVrrovqAEXohK
 Fx0Yt60Yhil0Evqa5OA/iLe+uiutObluufQN3u7BjNOVSikhALcQYPfooPiOm/SNiHEF
 fjS9IkvX5889doomZ7zJTUga1IVSLStElCNkxkxKJY3ITObdETyvnx5d5TQ2gKD/kzZN
 EItCcQKwK9NMkfR8y8H7EKckA/ZtAS1qZzxU513eHBpji759wklwk7An+FKdq6S8R35S
 hWNA==
X-Gm-Message-State: AOAM5301P6F9mkkO54N/9CRqyVBiwwBsnog8jgn9bmzbAKSi2RluhzEv
 YFsqBCFGslNYSK4j6qpaA0w=
X-Google-Smtp-Source: ABdhPJyGwtF5mT3HvxEWHeK5JnkHczkKSvr/MzHyDH1596nS2xrPI0PFohMJe721nbImhGOHVn4BLA==
X-Received: by 2002:a63:6f83:: with SMTP id k125mr365747pgc.379.1630694655988; 
 Fri, 03 Sep 2021 11:44:15 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 n13sm113692pff.164.2021.09.03.11.44.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 11:44:15 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri,  3 Sep 2021 11:47:57 -0700
Message-Id: <20210903184806.1680887-7-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210903184806.1680887-1-robdclark@gmail.com>
References: <20210903184806.1680887-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH v3 6/9] dma-buf/fence-array: Add fence
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
 drivers/dma-buf/dma-fence-array.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/dma-buf/dma-fence-array.c b/drivers/dma-buf/dma-fence-array.c
index d3fbd950be94..8d194b09ee3d 100644
--- a/drivers/dma-buf/dma-fence-array.c
+++ b/drivers/dma-buf/dma-fence-array.c
@@ -119,12 +119,23 @@ static void dma_fence_array_release(struct dma_fence *fence)
 	dma_fence_free(fence);
 }
 
+static void dma_fence_array_set_deadline(struct dma_fence *fence,
+					 ktime_t deadline)
+{
+	struct dma_fence_array *array = to_dma_fence_array(fence);
+	unsigned i;
+
+	for (i = 0; i < array->num_fences; ++i)
+		dma_fence_set_deadline(array->fences[i], deadline);
+}
+
 const struct dma_fence_ops dma_fence_array_ops = {
 	.get_driver_name = dma_fence_array_get_driver_name,
 	.get_timeline_name = dma_fence_array_get_timeline_name,
 	.enable_signaling = dma_fence_array_enable_signaling,
 	.signaled = dma_fence_array_signaled,
 	.release = dma_fence_array_release,
+	.set_deadline = dma_fence_array_set_deadline,
 };
 EXPORT_SYMBOL(dma_fence_array_ops);
 
-- 
2.31.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
