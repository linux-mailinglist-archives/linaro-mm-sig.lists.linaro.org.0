Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5C9A92614
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Apr 2025 20:10:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D71AE4494D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Apr 2025 18:10:09 +0000 (UTC)
Received: from mail-pf1-f202.google.com (mail-pf1-f202.google.com [209.85.210.202])
	by lists.linaro.org (Postfix) with ESMTPS id 5013C44532
	for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Apr 2025 18:09:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=D7PZtsyi;
	spf=pass (lists.linaro.org: domain of 370MBaAkKDcI1rumzkqmzowwotm.kwutqvizw-uu-0qotq010.tqvizw.wzo@flex--tjmercier.bounces.google.com designates 209.85.210.202 as permitted sender) smtp.mailfrom=370MBaAkKDcI1rumzkqmzowwotm.kwutqvizw-uu-0qotq010.tqvizw.wzo@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pf1-f202.google.com with SMTP id d2e1a72fcca58-7398d70abbfso1355075b3a.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Apr 2025 11:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744913391; x=1745518191; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VieRPDeOIrrtofiVIhvIFRGmHPPN8m75t7mreV4JIzU=;
        b=D7PZtsyiprOQL0QP5ghPmb+slrpDzOduMO5xSIzG5flyzsPy27IT9BcQGvp0BGOWQd
         k1b44G8xFINDczEBjtHEs5OYEwGFNd3716ycluOzvdlwCNZLR8j4GieVJC8Hvmvbvw76
         4ffvAL3vJv+lc9OV8jbfjVZ6w0bGjnzYwV8Xoy2nThhUfGtGw/tJvtzv9cumUmqk/2Mg
         TcLseflgC/71etfE2VGbwLhq7iPgONL6sQCopP+tix8kti/DbxfIWEGE0UI35jsAC9At
         KC0ZTVmMCUN003VoH1Le0VhPLF3JRentaDWhmiorl1V8s2nhIFf96CrrE8D333xlupIy
         CtKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744913391; x=1745518191;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VieRPDeOIrrtofiVIhvIFRGmHPPN8m75t7mreV4JIzU=;
        b=wmsc0MsTwuDtlvkZ0ZsaQyWLVJiYZrOqFM+wdeFMiXAbjQKkGAeQWg5LndcHtyl//4
         eikIUvsOn3e7iR7J/nJBdEsYv7A4HnsDBXcwC4bskTZ6/Q7zebJFOi3MOwWE0Z7Qba1q
         IOS2y7yGJCq+OBgftm4y80nT77XFtBPqeQqRA54LtuuzNaUP/Bu9IHlZmRk2EP0Pbm6o
         JAc1kUmzyMsBhrbayLmuBlVH2ZWMERXkAuCg0ySZmHpPzqmknR5wP9BWcDnjzejlCGzt
         nb6BoVNtrlYq2sQlDGl9heBipNd49aLHqkS5FXD+9pbnVA2oDy+9XCcVjQRzlBrzuEmN
         fXbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXK6ecz+QzkJcqYe1xyHfKZsmQf4zZEDtPUMQRY6Vn2E9GXi+90WnyorwyO8fAwhckr+KFgrmtJRxY9UFqP@lists.linaro.org
X-Gm-Message-State: AOJu0Yzd1Uu48dTm/9HCpqVolQfrw+ub+0zMxfLl0Yva3+/89IYSIxb3
	G5NnsvkxTHSufO7XrupvvYGI8vkF21sRiQ8LS09H+r5f3i8qWeNr3YqbiivIf7eYPA3504PIILi
	lrqtED65qh4D/mA==
X-Google-Smtp-Source: AGHT+IFiEqpxdk1THB5nHvZfHtFFffV9Gz5mbaspUCw4yzGR9KYpdaO0xsj+RVnwm9NlrjGZ6uNoUIW5ZLKdM/Y=
X-Received: from pfvb12.prod.google.com ([2002:a05:6a00:ccc:b0:736:7120:dd05])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a00:180f:b0:736:6d4d:ffa6 with SMTP id d2e1a72fcca58-73c267e1deamr8747874b3a.15.1744913391461;
 Thu, 17 Apr 2025 11:09:51 -0700 (PDT)
Date: Thu, 17 Apr 2025 18:09:41 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
Message-ID: <20250417180943.1559755-1-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>
X-Rspamd-Queue-Id: 5013C44532
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[209.85.210.202:from];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,370MBaAkKDcI1rumzkqmzowwotm.kwutqvizw-uu-0qotq010.tqvizw.wzo@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.202:from];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,370MBaAkKDcI1rumzkqmzowwotm.kwutqvizw-uu-0qotq010.tqvizw.wzo@flex--tjmercier.bounces.google.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: BLMHKIWPVRH52U5FNBZCEADZQOSGK5CG
X-Message-ID-Hash: BLMHKIWPVRH52U5FNBZCEADZQOSGK5CG
X-MailFrom: 370MBaAkKDcI1rumzkqmzowwotm.kwutqvizw-uu-0qotq010.tqvizw.wzo@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: system_heap: No separate allocation for attachment sg_tables
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BLMHKIWPVRH52U5FNBZCEADZQOSGK5CG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

struct dma_heap_attachment is a separate allocation from the struct
sg_table it contains, but there is no reason for this. Let's use the
slab allocator just once instead of twice for dma_heap_attachment.

Signed-off-by: T.J. Mercier <tjmercier@google.com>
---
 drivers/dma-buf/heaps/system_heap.c | 43 ++++++++++++-----------------
 1 file changed, 17 insertions(+), 26 deletions(-)

diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index 26d5dc89ea16..bee10c400cf0 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -35,7 +35,7 @@ struct system_heap_buffer {
 
 struct dma_heap_attachment {
 	struct device *dev;
-	struct sg_table *table;
+	struct sg_table table;
 	struct list_head list;
 	bool mapped;
 };
@@ -54,29 +54,22 @@ static gfp_t order_flags[] = {HIGH_ORDER_GFP, HIGH_ORDER_GFP, LOW_ORDER_GFP};
 static const unsigned int orders[] = {8, 4, 0};
 #define NUM_ORDERS ARRAY_SIZE(orders)
 
-static struct sg_table *dup_sg_table(struct sg_table *table)
+static int dup_sg_table(struct sg_table *from, struct sg_table *to)
 {
-	struct sg_table *new_table;
-	int ret, i;
 	struct scatterlist *sg, *new_sg;
+	int ret, i;
 
-	new_table = kzalloc(sizeof(*new_table), GFP_KERNEL);
-	if (!new_table)
-		return ERR_PTR(-ENOMEM);
-
-	ret = sg_alloc_table(new_table, table->orig_nents, GFP_KERNEL);
-	if (ret) {
-		kfree(new_table);
-		return ERR_PTR(-ENOMEM);
-	}
+	ret = sg_alloc_table(to, from->orig_nents, GFP_KERNEL);
+	if (ret)
+		return ret;
 
-	new_sg = new_table->sgl;
-	for_each_sgtable_sg(table, sg, i) {
+	new_sg = to->sgl;
+	for_each_sgtable_sg(from, sg, i) {
 		sg_set_page(new_sg, sg_page(sg), sg->length, sg->offset);
 		new_sg = sg_next(new_sg);
 	}
 
-	return new_table;
+	return 0;
 }
 
 static int system_heap_attach(struct dma_buf *dmabuf,
@@ -84,19 +77,18 @@ static int system_heap_attach(struct dma_buf *dmabuf,
 {
 	struct system_heap_buffer *buffer = dmabuf->priv;
 	struct dma_heap_attachment *a;
-	struct sg_table *table;
+	int ret;
 
 	a = kzalloc(sizeof(*a), GFP_KERNEL);
 	if (!a)
 		return -ENOMEM;
 
-	table = dup_sg_table(&buffer->sg_table);
-	if (IS_ERR(table)) {
+	ret = dup_sg_table(&buffer->sg_table, &a->table);
+	if (ret) {
 		kfree(a);
-		return -ENOMEM;
+		return ret;
 	}
 
-	a->table = table;
 	a->dev = attachment->dev;
 	INIT_LIST_HEAD(&a->list);
 	a->mapped = false;
@@ -120,8 +112,7 @@ static void system_heap_detach(struct dma_buf *dmabuf,
 	list_del(&a->list);
 	mutex_unlock(&buffer->lock);
 
-	sg_free_table(a->table);
-	kfree(a->table);
+	sg_free_table(&a->table);
 	kfree(a);
 }
 
@@ -129,7 +120,7 @@ static struct sg_table *system_heap_map_dma_buf(struct dma_buf_attachment *attac
 						enum dma_data_direction direction)
 {
 	struct dma_heap_attachment *a = attachment->priv;
-	struct sg_table *table = a->table;
+	struct sg_table *table = &a->table;
 	int ret;
 
 	ret = dma_map_sgtable(attachment->dev, table, direction, 0);
@@ -164,7 +155,7 @@ static int system_heap_dma_buf_begin_cpu_access(struct dma_buf *dmabuf,
 	list_for_each_entry(a, &buffer->attachments, list) {
 		if (!a->mapped)
 			continue;
-		dma_sync_sgtable_for_cpu(a->dev, a->table, direction);
+		dma_sync_sgtable_for_cpu(a->dev, &a->table, direction);
 	}
 	mutex_unlock(&buffer->lock);
 
@@ -185,7 +176,7 @@ static int system_heap_dma_buf_end_cpu_access(struct dma_buf *dmabuf,
 	list_for_each_entry(a, &buffer->attachments, list) {
 		if (!a->mapped)
 			continue;
-		dma_sync_sgtable_for_device(a->dev, a->table, direction);
+		dma_sync_sgtable_for_device(a->dev, &a->table, direction);
 	}
 	mutex_unlock(&buffer->lock);
 

base-commit: 8ffd015db85fea3e15a77027fda6c02ced4d2444
-- 
2.49.0.805.g082f7c87e0-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
