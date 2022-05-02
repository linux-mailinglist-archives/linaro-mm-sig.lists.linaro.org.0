Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F104152B867
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 May 2022 13:18:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 30552410A5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 May 2022 11:18:40 +0000 (UTC)
Received: from mail-m971.mail.163.com (mail-m971.mail.163.com [123.126.97.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F58D3EA4A
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 May 2022 17:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version; bh=76j0I
	vA+I38dm9XbzmM3FuswAc3dTUCCDmQhUcsk+2Y=; b=Wl+Y3oMk2j9KfVEFnmNLH
	eg6GIloHE8BebBvjaOrJsoqg0fI36q4L9/D5d1age8+6bwL58KX2m/Pxnw+ztwLR
	G6B+/2G04FTD4oDHRVw41oCG+8buoG1VLHJ5V4oZJl3dxIUjFfOyr7EwT6QWPqwR
	14ReLd/MZLV3Tx5vk89Mz8=
Received: from localhost (unknown [49.235.41.28])
	by smtp1 (Coremail) with SMTP id GdxpCgCHteaAEXBicD8XAg--.29129S2;
	Tue, 03 May 2022 01:14:40 +0800 (CST)
Date: Tue, 3 May 2022 01:14:40 +0800
From: Hui Su <suhui_kernel@163.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com,
	daniel.vetter@ffwll.ch, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org
Message-ID: <20220502171440.GA377545@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
X-CM-TRANSID: GdxpCgCHteaAEXBicD8XAg--.29129S2
X-Coremail-Antispam: 1Uf129KBjvdXoWruF45ZFW8trW3GFW3Ar4fXwb_yoWkXrgEgr
	48Xw4xX34vkr45tw1qywn5ZFyxKa4DZrZ5Arn2q3yayry5GrnxWw4ku3Z8A348Xa18WFWv
	9ryfW34FkryUXjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8YNt7UUUUU==
X-Originating-IP: [49.235.41.28]
X-CM-SenderInfo: 5vxk3xhbnh20lho6il2tof0z/1tbiMwD0bVXmBJls4AAAsI
X-MailFrom: suhui_kernel@163.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5E5QK53CUCNBHQJ2VI5B4OTCXMOIYRMO
X-Message-ID-Hash: 5E5QK53CUCNBHQJ2VI5B4OTCXMOIYRMO
X-Mailman-Approved-At: Wed, 18 May 2022 11:18:35 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drivers/dma-buf: fix the wrong return val
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5E5QK53CUCNBHQJ2VI5B4OTCXMOIYRMO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The function should return the correct value.

Fixes: 64a8f92fd783 ("dma-buf: add dma_fence_unwrap v2")
Signed-off-by: Hui Su <suhui@zeku.com>
---
 drivers/dma-buf/st-dma-fence-unwrap.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/dma-buf/st-dma-fence-unwrap.c b/drivers/dma-buf/st-dma-fence-unwrap.c
index 039f016b57be..0f156fca9697 100644
--- a/drivers/dma-buf/st-dma-fence-unwrap.c
+++ b/drivers/dma-buf/st-dma-fence-unwrap.c
@@ -157,7 +157,7 @@ static int unwrap_array(void *arg)
 	dma_fence_signal(f1);
 	dma_fence_signal(f2);
 	dma_fence_put(array);
-	return 0;
+	return err;
 }

 static int unwrap_chain(void *arg)
@@ -199,7 +199,7 @@ static int unwrap_chain(void *arg)
 	dma_fence_signal(f1);
 	dma_fence_signal(f2);
 	dma_fence_put(chain);
-	return 0;
+	return err;
 }

 static int unwrap_chain_array(void *arg)
@@ -245,7 +245,7 @@ static int unwrap_chain_array(void *arg)
 	dma_fence_signal(f1);
 	dma_fence_signal(f2);
 	dma_fence_put(chain);
-	return 0;
+	return err;
 }

 int dma_fence_unwrap(void)
--
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
