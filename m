Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A672A4853A6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jan 2022 14:37:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D69E93EDA2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jan 2022 13:37:24 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by lists.linaro.org (Postfix) with ESMTPS id 9AE333EBB5
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Jan 2022 07:36:14 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id s1so74316947wra.6
        for <linaro-mm-sig@lists.linaro.org>; Mon, 03 Jan 2022 23:36:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5QgurAW0lNK9DtZ5aiYOIjTcb84ucRlepZxkJq+T308=;
        b=GatvyyE/kBqheoYQ/d13MygNqovRYyBIG1SdlHBTM1JWbwgDE3yn5BdZmHzV8HNnvD
         rmimV5S7wUikeOcwGIyS15JbLAw7OU1rycZIfjDo20/Z+pwuC3BigTkotG+zY4Z3RYi2
         e3Na7QyiJiekB7fK2RCVkTJKTz/P8RzAoNvkGvsJH8h2hE7U8ECkMOXtgytKJdpoqgOF
         IUTKXMadctzVM8Lvz9v06fMMeae/oeEe4C8ta1Fai/ggwnhkSQ1ORvJy7e4G5uk+p81v
         nPgtzhQqJCGHo8e/zXUhVqDmmFor3xL5Wzpl6GyWhqpLJmRwhIxS2YHwtQMLBUXGuPg5
         ITsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5QgurAW0lNK9DtZ5aiYOIjTcb84ucRlepZxkJq+T308=;
        b=it5ToES6tsCM+N1G5aXj2fwxD/ZiwNbbU7Po5NAXGAZ0RC61lGrsFFGyglt43gfI+9
         9otoLUK/sMtyQRhFbuuCjOt7JeCyo9AHQLjifBWx1B0cHmIJiABXCYdc9cCbL7ZvGeH9
         AMw0MWVDC1Qpmzo6PQXou1Qf43rbMABFPP+uakLOigIsRnV3Pjvs/6QyVM64eyNP4fo/
         QHf/BF5vlGjt9L4JKKT5wlxaCgrfHwHYBbiYgCFasOnWochApg9jxFQPUfLb6hDal9sR
         +iyQWhmes73LW7UN6EqUs/YXJLCi17UE3FmaSUCUHPkcMkIQQFGeXhCFDdwrUYWksd3e
         Wj2Q==
X-Gm-Message-State: AOAM5306+ipb2YcPRiIm4uZ1/CqA5MVw2OJWzfYU6/pybsUOwaSCtHwE
	QYU11qKOuHnpvcpIWuZIjVY=
X-Google-Smtp-Source: ABdhPJwWuBVqvqiAa6SL5fPaQqllfHGw/SdK0Uc5+CN6wLMv/wwUKJbrSULom+MJXNBTgh1mRkzIPw==
X-Received: by 2002:a05:6000:2aa:: with SMTP id l10mr42207978wry.518.1641281773701;
        Mon, 03 Jan 2022 23:36:13 -0800 (PST)
Received: from ownia.. ([103.105.48.220])
        by smtp.gmail.com with ESMTPSA id l12sm43064477wmq.2.2022.01.03.23.36.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jan 2022 23:36:13 -0800 (PST)
From: Weizhao Ouyang <o451686892@gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Liam Mark <lmark@codeaurora.org>,
	Laura Abbott <labbott@kernel.org>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <john.stultz@linaro.org>,
	christian.koenig@amd.com
Date: Tue,  4 Jan 2022 15:35:45 +0800
Message-Id: <20220104073545.124244-1-o451686892@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-MailFrom: o451686892@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YDB54E47MOD5LVQZAH7R4KR362KM35XQ
X-Message-ID-Hash: YDB54E47MOD5LVQZAH7R4KR362KM35XQ
X-Mailman-Approved-At: Wed, 05 Jan 2022 13:36:43 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Weizhao Ouyang <o451686892@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: cma_heap: Fix mutex locking section
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YDB54E47MOD5LVQZAH7R4KR362KM35XQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Fix cma_heap_buffer mutex locking critical section to protect vmap_cnt
and vaddr.

Fixes: a5d2d29e24be ("dma-buf: heaps: Move heap-helper logic into the cma_heap implementation")
Signed-off-by: Weizhao Ouyang <o451686892@gmail.com>
---
 drivers/dma-buf/heaps/cma_heap.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index 0c05b79870f9..83f02bd51dda 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -124,10 +124,11 @@ static int cma_heap_dma_buf_begin_cpu_access(struct dma_buf *dmabuf,
 	struct cma_heap_buffer *buffer = dmabuf->priv;
 	struct dma_heap_attachment *a;
 
+	mutex_lock(&buffer->lock);
+
 	if (buffer->vmap_cnt)
 		invalidate_kernel_vmap_range(buffer->vaddr, buffer->len);
 
-	mutex_lock(&buffer->lock);
 	list_for_each_entry(a, &buffer->attachments, list) {
 		if (!a->mapped)
 			continue;
@@ -144,10 +145,11 @@ static int cma_heap_dma_buf_end_cpu_access(struct dma_buf *dmabuf,
 	struct cma_heap_buffer *buffer = dmabuf->priv;
 	struct dma_heap_attachment *a;
 
+	mutex_lock(&buffer->lock);
+
 	if (buffer->vmap_cnt)
 		flush_kernel_vmap_range(buffer->vaddr, buffer->len);
 
-	mutex_lock(&buffer->lock);
 	list_for_each_entry(a, &buffer->attachments, list) {
 		if (!a->mapped)
 			continue;
-- 
2.32.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
