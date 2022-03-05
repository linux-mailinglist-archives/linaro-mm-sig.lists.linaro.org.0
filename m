Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A994EACE2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 14:09:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6B0193EC0E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 12:09:40 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	by lists.linaro.org (Postfix) with ESMTPS id 5F2EC3E8AA
	for <linaro-mm-sig@lists.linaro.org>; Sat,  5 Mar 2022 12:17:24 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id e2so10008979pls.10
        for <linaro-mm-sig@lists.linaro.org>; Sat, 05 Mar 2022 04:17:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id;
        bh=As7hVMsPOFgRRyj2g+9QKSheeaMQmbJCYo1136pnD3w=;
        b=oPTtem8MrcBUiOBs70K5qRUpjbSOEtnzFf7f4fnGmHhRicBxc9TKO9YUfPPWot1KUR
         ijWTghW9y7IGRycgPeSF2SrYfDYDKiQgM6c0y5WSil+oyWaki1Hla47g/nuPMiYsvjTU
         StCrczr3IGCe1FG47GkrjwEPweX7WGF0LjdxoM/xQgJ8YRYRYpr87VfPuDgKR0DhRKU1
         6bdeiYJhEopI/g40/K24EDPSbOoA7MOufNoBuu3G/37oN6TBN2bpIspp1VdXBHZbwi8S
         +lgOH2l118HSQBZX+Blo+F50LYXcrnN6ql4dY1xxyKE7EfuF4YX++/QI5JqGJzkDF9R6
         BKMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=As7hVMsPOFgRRyj2g+9QKSheeaMQmbJCYo1136pnD3w=;
        b=dJXISlphhUxYxlft32aZ9pz955qrA+UVicQ+siAu+2dqOzhoa0g6L2sJckg55Nqh5w
         sSaRjjumn6Jyph6preBuaptoAnPLe/1t4h8B2LflazVjtU3Ftab+p7wIbarQdPzHh60x
         l0Y8nfCW+fT2/fj47o9yto1JcXDOg1IFh69QvHQItcSfsBlo0B2mFHD5QrTYUAipGwUd
         hCrwkwKCbVVyqIInxH4E44qd/9rW6MNA548AhHM2hwQmITtsjiGIU9ie1ZUz8bZUZoZY
         TNBYTm4Xe3iAHWQmV6yF3dzS15F38sXwnYXZNkXa1lgzFoiqWcvP0JyTlOOEvGRCwZ6D
         qnUg==
X-Gm-Message-State: AOAM533DyWKiurZiFevsQpBsYpjk3BFEHL2b2u6YnrFm92bnIcMXl3cO
	0Q4UZbpsun6XX3OQkvGiofU=
X-Google-Smtp-Source: ABdhPJyxDXTIIIZDoRs76X22sySaK+1GJzMHk1aLvX4rXnEayQHsfPOUonh+aMgsr08eXP98NLVK2g==
X-Received: by 2002:a17:902:f155:b0:151:8377:9a8e with SMTP id d21-20020a170902f15500b0015183779a8emr3185454plb.21.1646482643449;
        Sat, 05 Mar 2022 04:17:23 -0800 (PST)
Received: from localhost.localdomain ([49.65.245.47])
        by smtp.gmail.com with ESMTPSA id k17-20020a056a00135100b004f3a9a477d0sm9520526pfu.110.2022.03.05.04.17.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Mar 2022 04:17:23 -0800 (PST)
From: wangshumin <pdsrazor@gmail.com>
To: sumit.semwal@linaro.org,
	gustavo@padovan.org,
	christian.koenig@amd.com
Date: Sat,  5 Mar 2022 20:17:03 +0800
Message-Id: <20220305121703.17041-1-pdsrazor@gmail.com>
X-Mailer: git-send-email 2.17.1
X-MailFrom: pdsrazor@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RZL2Y3BM5YOOEYC32QSGRZFJIKL5DSII
X-Message-ID-Hash: RZL2Y3BM5YOOEYC32QSGRZFJIKL5DSII
X-Mailman-Approved-At: Tue, 29 Mar 2022 12:09:36 +0000
CC: linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, wangshumin <pdsrazor@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-fence: fix free sync object incorrectly
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RZL2Y3BM5YOOEYC32QSGRZFJIKL5DSII/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The function dma_fence_free() works fine because
struct dma_fence is the first member of sync object.

Use `kfree` make it more reasonable.

Signed-off-by: wangshumin <pdsrazor@gmail.com>
---
 drivers/dma-buf/dma-fence-array.c | 2 +-
 drivers/dma-buf/dma-fence-chain.c | 2 +-
 drivers/dma-buf/sw_sync.c         | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/dma-buf/dma-fence-array.c b/drivers/dma-buf/dma-fence-array.c
index cb1bacb5a42b..fc52d837e579 100644
--- a/drivers/dma-buf/dma-fence-array.c
+++ b/drivers/dma-buf/dma-fence-array.c
@@ -120,7 +120,7 @@ static void dma_fence_array_release(struct dma_fence *fence)
 		dma_fence_put(array->fences[i]);
 
 	kfree(array->fences);
-	dma_fence_free(fence);
+	kfree(array);
 }
 
 const struct dma_fence_ops dma_fence_array_ops = {
diff --git a/drivers/dma-buf/dma-fence-chain.c b/drivers/dma-buf/dma-fence-chain.c
index 06f8ef97c6e8..b29e1f22f08e 100644
--- a/drivers/dma-buf/dma-fence-chain.c
+++ b/drivers/dma-buf/dma-fence-chain.c
@@ -203,7 +203,7 @@ static void dma_fence_chain_release(struct dma_fence *fence)
 	dma_fence_put(prev);
 
 	dma_fence_put(chain->fence);
-	dma_fence_free(fence);
+	kfree(chain);
 }
 
 const struct dma_fence_ops dma_fence_chain_ops = {
diff --git a/drivers/dma-buf/sw_sync.c b/drivers/dma-buf/sw_sync.c
index 348b3a9170fa..80432eeb58c3 100644
--- a/drivers/dma-buf/sw_sync.c
+++ b/drivers/dma-buf/sw_sync.c
@@ -142,7 +142,7 @@ static void timeline_fence_release(struct dma_fence *fence)
 	spin_unlock_irqrestore(fence->lock, flags);
 
 	sync_timeline_put(parent);
-	dma_fence_free(fence);
+	kfree(pt);
 }
 
 static bool timeline_fence_signaled(struct dma_fence *fence)
-- 
2.17.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
