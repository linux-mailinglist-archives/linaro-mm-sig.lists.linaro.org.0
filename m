Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD1A408C45
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:17:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EAA7B61F3E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:17:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7CAD5623DC; Mon, 13 Sep 2021 13:17:20 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C1AE661016;
	Mon, 13 Sep 2021 13:17:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5CE3460591
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5AAE460F13; Mon, 13 Sep 2021 13:17:14 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by lists.linaro.org (Postfix) with ESMTPS id 528C860591
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:12 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id u15so8599156wru.6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZdomM/e/zSdALEInWCh/AvZjZ5yHPc4saWmSbkGx8Dc=;
 b=ouCR+3aNsA1DiTowvBNcV8DKE3ifr2meLpymuJYbnE0iyPBxH3K2CRGIogq0MrDrRd
 Ah1C/sRwYxZoygqorAHIuOyDajlC5xLvlNs/P+aq4En6ifOF1IaRUtwN/DPE7u0t289Q
 BkzADtUG7taEXdtKsr9cZEPU2cggQoh7zrxMN1S6yUHPn0qYMQr246TdMCeTUJWI6B5C
 hX7gGoP5jEq04DtHwdWuSCAVJEIKnvaH1LaTNVMsRzD1qScXKm8R3xxpd+dtekJmHpjr
 90+O9aUK5BlBYMY/H4cT3mg98HMNCHS9z0/dSn3DbSxoBFYcQEOB5XD5A3HgQ4xhmzi/
 +v2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZdomM/e/zSdALEInWCh/AvZjZ5yHPc4saWmSbkGx8Dc=;
 b=vAVmlxO2NRmguOUvZxmgTSBe02FuYIV1+lvL1oD+TxOKOUX0V/MtCsrUnCbk8HIP1o
 lclRaZ0O+E2B2NxR0EgachzIbJbCXmAjbQzycRR2RNmmdNnGU/vmkBIzQAdR+jOeCNW7
 zGh+RDQFxJsPJGLXwlXd/QLPiNRavajxPkPwgev/LyqFLiw8/H7XxgT5WA997O4RfYZ+
 lCVp2Ua4fvJ5l9mvQS6NggsECzIFM0JdJaPhNivfdSpdyS4u9kREOjCaH+Au5jWlGd1k
 mKunvWT2sf7useWBojtGkMt7f22ygny+fGvaqkB7lipN8STgplfJgX1agnDYTuf6cbP5
 0UUg==
X-Gm-Message-State: AOAM5308lzLS1TshAdWzuFuaRJ2uPznswVv3jBUZd18fPrZbrvS4JM0n
 Z/moe4ruKcf6Hg5SPADyQmtFj3vTP+ly6vwR
X-Google-Smtp-Source: ABdhPJwqVroUXWf2cq8qtCQb/MmqMUlY4BONTjLjBugzEnJvbKfR5QsL1Vb0BBVo//Fn92ciq/iymg==
X-Received: by 2002:a5d:4b50:: with SMTP id w16mr12486672wrs.71.1631539031462; 
 Mon, 13 Sep 2021 06:17:11 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:10 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:16:41 +0200
Message-Id: <20210913131707.45639-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] Deploying new iterator interface for dma-buf
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Hi everybody,

we recently found that a good bunch of the RCU accesses to the dma_resv object are actually not correctly protected.

Those where fixed by either dropping the RCU approach and taking appropriate locks or using a central function to return the current fences as array and then work with that snapshot.

This set now tries to prevent adding any new broken code by rolling out two new interfaces to access the fences in a dma_resv object:

dma_resv_for_each_fence() - Iterator which should be used while holding the reservation lock.
dma_resv_for_each_fence_unlocked() - Iterator based on RCU which can be used without holding the reservation lock and automatic restart on concurrent modification.

While doing this we also move the decision which fences to use for write and read accesses into the dma_resv object which results in a quite nice code de-duplication and simplification.

The only two remaining users of the RCU shared fence interface are removing shared fences in amdkfd and debugfs code in qxl which will both be addresses in the next patch set.

Please review and/or comment,
Christian.


_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
