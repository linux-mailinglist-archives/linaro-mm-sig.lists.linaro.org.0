Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0007C604DC7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 18:52:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 04CD43F080
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 16:52:32 +0000 (UTC)
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
	by lists.linaro.org (Postfix) with ESMTPS id 2C39A3F4E4
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 11:33:21 +0000 (UTC)
Received: from dggpeml500023.china.huawei.com (unknown [172.30.72.54])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4MYChg332szMnbq;
	Thu, 22 Sep 2022 19:28:35 +0800 (CST)
Received: from ubuntu1804.huawei.com (10.67.174.58) by
 dggpeml500023.china.huawei.com (7.185.36.114) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 19:33:17 +0800
From: Xiu Jianfeng <xiujianfeng@huawei.com>
To: <sumit.semwal@linaro.org>, <benjamin.gaignard@collabora.com>,
	<lmark@codeaurora.org>, <labbott@redhat.com>, <Brian.Starkey@arm.com>,
	<jstultz@google.com>, <christian.koenig@amd.com>
Date: Thu, 22 Sep 2022 19:29:38 +0800
Message-ID: <20220922112938.147609-1-xiujianfeng@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.67.174.58]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpeml500023.china.huawei.com (7.185.36.114)
X-CFilter-Loop: Reflected
X-MailFrom: xiujianfeng@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VBJ66ULZDJCN3IONNYH5UVPP4UX6P2EI
X-Message-ID-Hash: VBJ66ULZDJCN3IONNYH5UVPP4UX6P2EI
X-Mailman-Approved-At: Wed, 19 Oct 2022 16:52:04 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: Add __init annotation to module init func
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VBJ66ULZDJCN3IONNYH5UVPP4UX6P2EI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add missing __init annotation to module init func.

Signed-off-by: Xiu Jianfeng <xiujianfeng@huawei.com>
---
 drivers/dma-buf/heaps/cma_heap.c    | 2 +-
 drivers/dma-buf/heaps/system_heap.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index 28fb04eccdd0..62d0d0e8b10d 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -392,7 +392,7 @@ static int __add_cma_heap(struct cma *cma, void *data)
 	return 0;
 }
 
-static int add_default_cma_heap(void)
+static int __init add_default_cma_heap(void)
 {
 	struct cma *default_cma = dev_get_cma_area(NULL);
 	int ret = 0;
diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index fcf836ba9c1f..cbe445bc5bab 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -422,7 +422,7 @@ static const struct dma_heap_ops system_heap_ops = {
 	.allocate = system_heap_allocate,
 };
 
-static int system_heap_create(void)
+static int __init system_heap_create(void)
 {
 	struct dma_heap_export_info exp_info;
 
-- 
2.17.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
