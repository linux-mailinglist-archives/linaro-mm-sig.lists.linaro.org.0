Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NzBM1YQ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:37:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 63277411C59
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:37:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7F8644411B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:37:41 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id A16303F6BD
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jan 2026 23:00:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=G6e0EsOD;
	spf=pass (lists.linaro.org: domain of echanude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=echanude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1769814023;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=xpVWSYOjmpUvjd6bPS5vI/Dt/+7lbqD30OTCkZ3YauU=;
	b=G6e0EsOD1RqBcrPJX4O26zLs7Y7YMZtlKAImYoIM3HQM68EDlzDbLWGx0/y5/Jk51dg7nj
	sR7AqSsh94UL6KK7bk0I4J5qwocl7oYHgopePBgVZfCQqmyJlGfvnpckBiyLzhIn+4+Dqu
	cjlJyL+Rq1ebSGZJu9XByaENovr/DZ8=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-112-7XrenAJGPPWmDmbJoBJ9xA-1; Fri, 30 Jan 2026 18:00:21 -0500
X-MC-Unique: 7XrenAJGPPWmDmbJoBJ9xA-1
X-Mimecast-MFC-AGG-ID: 7XrenAJGPPWmDmbJoBJ9xA_1769814021
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-504888a2a1dso50207801cf.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jan 2026 15:00:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769814021; x=1770418821;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xpVWSYOjmpUvjd6bPS5vI/Dt/+7lbqD30OTCkZ3YauU=;
        b=kGqK8Yf3w+GRMa3jBnDWpxVGDFQYsUHdf1UvZfbgWOpwWrgTecIQkL0UZjZ0BeJbSh
         +HTTem/cicXKQRHvX1PA11jocpG9+z/hxRu7LDFNyy5EdpwBVgsCF+2dPoDiWl1nyNeQ
         wEp2SGs+TB8v/KPlPLKAR1oTLQwomSKd0KCX7iUkAMsjIZKAdT++EMCyJ4Nc3kxu3p4S
         RiUadGzlfGTafVJ9QInid+Lz+maiIgBOjySGUfNQ7+WKT7rmACSdSFBtquukVFYh9lZY
         kN4kDcGAUg2kiFMSXyHvW0bpOCs8oyGkelIUbKV/ZDGZj4y+TtsAJ26DvGb21zmQasIK
         l7vQ==
X-Forwarded-Encrypted: i=1; AJvYcCVM5ha+54/ujJ4kTM+r4rqdbnF4+2YsF5PHucY3Ai3B/8oOD8kpDMcnv+LB9988B58XOE9zIbEGxqVKVB0L@lists.linaro.org
X-Gm-Message-State: AOJu0YysTbS47EnJG9v7B/sHkShKNK3CTy0w1b+7DqvYZYepbCTyEDpd
	D12D6ELUcd8NEZJyN9KnrTDD+AvNhr+3/ap5NybrWRApOSle9rnOoWpE+UNS6GzK7/M/pyJd7nr
	bH1OiY2NjLgfnwW03Xyaispfvfbm59a8kYCYt/nlXFKOc81/tNskzQKWwOeAwbtvFeFJF
X-Gm-Gg: AZuq6aLVftzZrS5D74Isx69uQKUPmDqru4clxRZVSxmMKY7N8SeX0QIJus4/EFPW9SA
	rkjPQZVsXgLQlLDhXLduFfa7GDtq66Qux0XaIl3s/XXyAtuOhSryFicgrM6fTSOj1tonDqBjBxl
	+5JD1MuXgCF81rDnxW+1/Gt7Zn59CAtR9N1qRh8j3K+USTkaECNcLImb43ldEefq/ATFKXBeMM0
	bYOaYYSbi1F4vz65FoI7MYtM0SnCC1Mk/QeJUD2+u01ezKhPfAJ6tEP/nRktpceEehV6OUPTsNI
	9iHq1J1bxuMkZoEakFThFtppX2L2aBQ8EZNMiEm1Px/1p6Xd7Yaas4zfaUGbn2guX1M9vskzPDt
	/RIF1JwKp8b6Fr9Tm04o9I3GXUQiF5mz3Uq9ZAWUY+2X4PeWaLy0=
X-Received: by 2002:ac8:5ac7:0:b0:4f1:ca4f:d480 with SMTP id d75a77b69052e-505d2263fddmr58996131cf.45.1769814020757;
        Fri, 30 Jan 2026 15:00:20 -0800 (PST)
X-Received: by 2002:ac8:5ac7:0:b0:4f1:ca4f:d480 with SMTP id d75a77b69052e-505d2263fddmr58995451cf.45.1769814020240;
        Fri, 30 Jan 2026 15:00:20 -0800 (PST)
Received: from localhost (pool-100-17-18-12.bstnma.fios.verizon.net. [100.17.18.12])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-894d375e1c8sm70249956d6.48.2026.01.30.15.00.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 15:00:19 -0800 (PST)
From: Eric Chanudet <echanude@redhat.com>
Date: Fri, 30 Jan 2026 17:55:30 -0500
MIME-Version: 1.0
Message-Id: <20260130-dmabuf-heap-cma-dmem-v1-1-3647ea993e99@redhat.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MMQqAMAxA0atIZgNtEBGvIg7RpjZDq7Qognh3i
 +Mb/n+gSFYpMDYPZLm06J4qbNvAGjhtguqqgQz1xtKALvJyegzCB66RqyWi7ywZJuc7HqCmRxa
 v97+d5vf9AHWa3QpmAAAA
X-Change-ID: 20260128-dmabuf-heap-cma-dmem-f4120a2df4a8
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.2
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Eziu_t0XG-dF8tBhUI1U23TRcTR48orfLBdAhbHk8v8_1769814021
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
X-MailFrom: echanude@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4ABXR4JP2VEJW2OOPSFVW2PNN7SWCDDC
X-Message-ID-Hash: 4ABXR4JP2VEJW2OOPSFVW2PNN7SWCDDC
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:35:58 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@redhat.com>, Albert Esteve <aesteve@redhat.com>, Eric Chanudet <echanude@redhat.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: heaps: cma: register a dmem region for each cma heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4ABXR4JP2VEJW2OOPSFVW2PNN7SWCDDC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[1817];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[echanude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.895];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 63277411C59
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The cma dma-buf heaps let userspace allocate buffers in CMA regions
without enforcing limits. Register a dmem region per cma heap and charge
against it when allocating a buffer in a cma heap.

For the default cma region, two heaps may be created for the same cma
range:
commit 854acbe75ff4 ("dma-buf: heaps: Give default CMA heap a fixed name")
  Introduced /dev/dma_heap/default_cma_region
commit 4f5f8baf7341 ("dma-buf: heaps: cma: Create CMA heap for each CMA
                      reserved region")
  Created a CMA heap for each CMA region, which might create a duplicate
  heap to the default one, e.g:
    /dev/dma_heap/default_cma_region
    /dev/dma_heap/reserved

Removing the legacy heap would break user API. So handle the special
case by using one dmem between the two heaps to account charges
correctly.

Signed-off-by: Eric Chanudet <echanude@redhat.com>
---
In continuation with introducing cgroup for the system heap[1], this
behavior is enabled based on dma_heap.mem_accounting, disabled by
default.

dmem is chosen for CMA heaps as it allows limits to be set for each
region backing each heap. There is one caveat for the default cma range
that may accessible through two different cma heaps, which is treated as
a special case.

[1] https://lore.kernel.org/all/20260116-dmabuf-heap-system-memcg-v3-0-ecc6b62cc446@redhat.com/
---
 drivers/dma-buf/heaps/cma_heap.c | 51 ++++++++++++++++++++++++++++++++++++----
 1 file changed, 46 insertions(+), 5 deletions(-)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index 49cc45fb42dd7200c3c14384bcfdbe85323454b1..608af8ad6bce7fe0321da6d8f1b65a69f5d8d950 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -27,6 +27,7 @@
 #include <linux/scatterlist.h>
 #include <linux/slab.h>
 #include <linux/vmalloc.h>
+#include <linux/cgroup_dmem.h>
 
 #define DEFAULT_CMA_NAME "default_cma_region"
 
@@ -46,7 +47,9 @@ int __init dma_heap_cma_register_heap(struct cma *cma)
 struct cma_heap {
 	struct dma_heap *heap;
 	struct cma *cma;
+	struct dmem_cgroup_region *cg;
 };
+static struct dmem_cgroup_region *default_cma_cg;
 
 struct cma_heap_buffer {
 	struct cma_heap *heap;
@@ -58,6 +61,7 @@ struct cma_heap_buffer {
 	pgoff_t pagecount;
 	int vmap_cnt;
 	void *vaddr;
+	struct dmem_cgroup_pool_state *pool;
 };
 
 struct dma_heap_attachment {
@@ -276,6 +280,7 @@ static void cma_heap_dma_buf_release(struct dma_buf *dmabuf)
 	kfree(buffer->pages);
 	/* release memory */
 	cma_release(cma_heap->cma, buffer->cma_pages, buffer->pagecount);
+	dmem_cgroup_uncharge(buffer->pool, buffer->len);
 	kfree(buffer);
 }
 
@@ -319,9 +324,16 @@ static struct dma_buf *cma_heap_allocate(struct dma_heap *heap,
 	if (align > CONFIG_CMA_ALIGNMENT)
 		align = CONFIG_CMA_ALIGNMENT;
 
+	if (mem_accounting) {
+		ret = dmem_cgroup_try_charge(cma_heap->cg, size,
+					     &buffer->pool, NULL);
+		if (ret)
+			goto free_buffer;
+	}
+
 	cma_pages = cma_alloc(cma_heap->cma, pagecount, align, false);
 	if (!cma_pages)
-		goto free_buffer;
+		goto uncharge_cgroup;
 
 	/* Clear the cma pages */
 	if (PageHighMem(cma_pages)) {
@@ -376,6 +388,8 @@ static struct dma_buf *cma_heap_allocate(struct dma_heap *heap,
 	kfree(buffer->pages);
 free_cma:
 	cma_release(cma_heap->cma, cma_pages, pagecount);
+uncharge_cgroup:
+	dmem_cgroup_uncharge(buffer->pool, size);
 free_buffer:
 	kfree(buffer);
 
@@ -390,25 +404,52 @@ static int __init __add_cma_heap(struct cma *cma, const char *name)
 {
 	struct dma_heap_export_info exp_info;
 	struct cma_heap *cma_heap;
+	struct dmem_cgroup_region *region;
+	int ret;
 
 	cma_heap = kzalloc(sizeof(*cma_heap), GFP_KERNEL);
 	if (!cma_heap)
 		return -ENOMEM;
 	cma_heap->cma = cma;
 
+	/*
+	 * If two heaps are created for the default cma region, use the same
+	 * dmem for them. They both use the same memory pool.
+	 */
+	if (dev_get_cma_area(NULL) == cma && default_cma_cg)
+		region = default_cma_cg;
+	else {
+		region = dmem_cgroup_register_region(cma_get_size(cma), "cma/%s", name);
+		if (IS_ERR(region)) {
+			ret = PTR_ERR(region);
+			goto free_cma_heap;
+		}
+	}
+	cma_heap->cg = region;
+
 	exp_info.name = name;
 	exp_info.ops = &cma_heap_ops;
 	exp_info.priv = cma_heap;
 
 	cma_heap->heap = dma_heap_add(&exp_info);
 	if (IS_ERR(cma_heap->heap)) {
-		int ret = PTR_ERR(cma_heap->heap);
-
-		kfree(cma_heap);
-		return ret;
+		ret = PTR_ERR(cma_heap->heap);
+		goto cg_unregister;
 	}
 
+	if (dev_get_cma_area(NULL) == cma && !default_cma_cg)
+		default_cma_cg = region;
+
 	return 0;
+
+cg_unregister:
+	/* default_cma_cg == cma_heap->cg only for the duplicate heap. */
+	if (default_cma_cg != cma_heap->cg)
+		dmem_cgroup_unregister_region(cma_heap->cg);
+free_cma_heap:
+	kfree(cma_heap);
+
+	return ret;
 }
 
 static int __init add_cma_heaps(void)

---
base-commit: 3d65e4c276b32c03450261d114e495fda03c8e97
change-id: 20260128-dmabuf-heap-cma-dmem-f4120a2df4a8

Best regards,
-- 
Eric Chanudet <echanude@redhat.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
