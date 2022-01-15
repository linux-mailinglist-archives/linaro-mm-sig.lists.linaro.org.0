Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 681164B63FE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:10:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 99E8B401CC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:10:21 +0000 (UTC)
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	by lists.linaro.org (Postfix) with ESMTPS id 56D393ECD2
	for <linaro-mm-sig@lists.linaro.org>; Sat, 15 Jan 2022 01:08:05 +0000 (UTC)
Received: by mail-yb1-f201.google.com with SMTP id p8-20020a25bd48000000b00611be5dd7eeso13690930ybm.19
        for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jan 2022 17:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=LfOWpUXhBkdNMBSdLOLDySgcwCzbXXwP1iBJEDhZFv8=;
        b=J5mPbGLt7ug0i6rUOlPQB0SbUQWFJSgsvFcHqlpnRStYUmz1v8nAst5BH8KdUKH+E5
         Y+y+ri5cPm3Uc/11fNmg6U++8GpkzZIL7XzsjexToSq8fHDkgii6o4uCbMapylVz/zEG
         3m9pF8AyP4tGEI6jLNHgoo9nrfidCLz5OBW+Y7Zf+hWlmtr7PKpPe6JO8A2jObfel0K5
         vtHp9sm9kp4trwusYDUnrCA+WhVBojy0HqwJMYa1rlb4GwpGlQwdtwLnm2rfqYKTjW20
         BG0Wzk29UTQ44uAuhbMgF+LJ2TfXg8DiW2p23TbKNWUdiFe4hDC7YPdZpGFY11QQM6RU
         Gpkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=LfOWpUXhBkdNMBSdLOLDySgcwCzbXXwP1iBJEDhZFv8=;
        b=mofIFa/NKCy5LkRzobXetB+pkdBt6Wz9/296WwV/OGbNrVqYf2dhPFdOYDqGVMiQKu
         hgSiOZeDAzQ68FUMn1oaDLJ5tjTuZQR3/G+uQjficzYVLHBtQC4276nihlfg1AAHe7iH
         O7bwzRMoN2wwZOBObqOWo86hk29OBjd78+gzsPmTbKQ7+aOySVHbpdQmdTzMmy0NrLl0
         nXQdYiVtCIf+1ZH+WiouZWGB1Ddet50wvJ7cMQ6WuYFXnoTv/dMLKZSUt8EHn/7PAhWI
         +ijq4BTm6Vn7jmZsb3lZLNLXKXMCEISMIDjlRuKaexx0fLBa2uRGePiyZJC1TUQtaeTi
         RtiA==
X-Gm-Message-State: AOAM532AGswW+eeTgTJ/1vYk2W19lRAzTpK59ss2p7HweyBUhpxdvD5Y
	pDBTxelcu9GR1O/TqYTXOCBGKCc4AVw=
X-Google-Smtp-Source: ABdhPJxEo/SHkh9fjhSgvj8DmROG2DlBqP+iV92JJogPD/EIt81pQMWUSFVVVrqMuvuOzRUehku30plW1rY=
X-Received: from hridya.mtv.corp.google.com ([2620:15c:211:200:5860:362a:3112:9d85])
 (user=hridya job=sendgmr) by 2002:a25:d305:: with SMTP id e5mr8057117ybf.182.1642208884729;
 Fri, 14 Jan 2022 17:08:04 -0800 (PST)
Date: Fri, 14 Jan 2022 17:06:01 -0800
In-Reply-To: <20220115010622.3185921-1-hridya@google.com>
Message-Id: <20220115010622.3185921-4-hridya@google.com>
Mime-Version: 1.0
References: <20220115010622.3185921-1-hridya@google.com>
X-Mailer: git-send-email 2.34.1.703.g22d0c6ccf7-goog
From: Hridya Valsaraju <hridya@google.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <christian@brauner.io>,
	Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
	Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>, Tejun Heo <tj@kernel.org>,
	Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>,
	Dave Airlie <airlied@redhat.com>, Matthew Auld <matthew.auld@intel.com>,
	Jason Ekstrand <jason@jlekstrand.net>, Jon Bloomfield <jon.bloomfield@intel.com>,
	Matthew Brost <matthew.brost@intel.com>, Li Li <dualli@google.com>,
	Marco Ballesio <balejs@google.com>, Wedson Almeida Filho <wedsonaf@google.com>, Hang Lu <hangl@codeaurora.org>,
	Masahiro Yamada <masahiroy@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <nathan@kernel.org>, Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>, Miguel Ojeda <ojeda@kernel.org>,
	Vipin Sharma <vipinsh@google.com>, Chris Down <chris@chrisdown.name>,
	Daniel Borkmann <daniel@iogearbox.net>, Vlastimil Babka <vbabka@suse.cz>, Arnd Bergmann <arnd@arndb.de>,
	dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org
X-MailFrom: 3dB7iYQYKDU8y8zuFrx55x2v.t532z4r85-33-9zx2z9A9.2z4r85.58x@flex--hridya.bounces.google.com
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: 3UJ57KLW76STAV5OJYWFDM5F2STZUCNT
X-Message-ID-Hash: 3UJ57KLW76STAV5OJYWFDM5F2STZUCNT
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:09:58 +0000
CC: Kenny.Ho@amd.com, daniels@collabora.com, kaleshsingh@google.com, tjmercier@google.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC 3/6] dmabuf: heaps: Use the GPU cgroup charge/uncharge APIs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3UJ57KLW76STAV5OJYWFDM5F2STZUCNT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This patch uses the GPU cgroup charge/uncharge APIs to charge buffers
allocated by the DMA-BUF system heap to the processes who allocated them.

By doing so, it becomes possible to track who allocated/exported a
DMA-BUF even after the allocating process drops all references to a
buffer.

Signed-off-by: Hridya Valsaraju <hridya@google.com>
---
 drivers/dma-buf/dma-heap.c          | 27 +++++++++++++++++++++++++++
 drivers/dma-buf/heaps/system_heap.c | 25 +++++++++++++++++++++++++
 include/linux/dma-heap.h            | 11 +++++++++++
 3 files changed, 63 insertions(+)

diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
index 56bf5ad01ad5..6e74690f4b83 100644
--- a/drivers/dma-buf/dma-heap.c
+++ b/drivers/dma-buf/dma-heap.c
@@ -6,6 +6,7 @@
  * Copyright (C) 2019 Linaro Ltd.
  */
 
+#include <linux/cgroup_gpu.h>
 #include <linux/cdev.h>
 #include <linux/debugfs.h>
 #include <linux/device.h>
@@ -30,6 +31,7 @@
  * @heap_devt		heap device node
  * @list		list head connecting to list of heaps
  * @heap_cdev		heap char device
+ * @gpucg_dev           gpu cg device for memory accounting
  *
  * Represents a heap of memory from which buffers can be made.
  */
@@ -40,6 +42,9 @@ struct dma_heap {
 	dev_t heap_devt;
 	struct list_head list;
 	struct cdev heap_cdev;
+#ifdef CONFIG_CGROUP_GPU
+	struct gpucg_device gpucg_dev;
+#endif
 };
 
 static LIST_HEAD(heap_list);
@@ -214,6 +219,26 @@ const char *dma_heap_get_name(struct dma_heap *heap)
 	return heap->name;
 }
 
+#ifdef CONFIG_CGROUP_GPU
+/**
+ * dma_heap_get_gpucg_dev() - get struct gpucg_device for the heap.
+ * @heap: DMA-Heap to get the gpucg_device struct for.
+ *
+ * Returns:
+ * The gpucg_device struct for the heap. NULL if the GPU cgroup controller is
+ * not enabled.
+ */
+struct gpucg_device *dma_heap_get_gpucg_dev(struct dma_heap *heap)
+{
+	return &heap->gpucg_dev;
+}
+#else
+struct gpucg_device *dma_heap_get_gpucg_dev(struct dma_heap *heap)
+{
+	return NULL;
+}
+#endif
+
 struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
 {
 	struct dma_heap *heap, *h, *err_ret;
@@ -286,6 +311,8 @@ struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
 	list_add(&heap->list, &heap_list);
 	mutex_unlock(&heap_list_lock);
 
+	gpucg_register_device(dma_heap_get_gpucg_dev(heap), exp_info->name);
+
 	return heap;
 
 err2:
diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index ab7fd896d2c4..adfdc8c576f2 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -31,6 +31,7 @@ struct system_heap_buffer {
 	struct sg_table sg_table;
 	int vmap_cnt;
 	void *vaddr;
+	struct gpucg *gpucg;
 };
 
 struct dma_heap_attachment {
@@ -296,6 +297,13 @@ static void system_heap_dma_buf_release(struct dma_buf *dmabuf)
 		__free_pages(page, compound_order(page));
 	}
 	sg_free_table(table);
+
+	gpucg_uncharge(buffer->gpucg,
+		       dma_heap_get_gpucg_dev(buffer->heap),
+		       buffer->len);
+
+	gpucg_put(buffer->gpucg);
+
 	kfree(buffer);
 }
 
@@ -356,6 +364,16 @@ static struct dma_buf *system_heap_allocate(struct dma_heap *heap,
 	mutex_init(&buffer->lock);
 	buffer->heap = heap;
 	buffer->len = len;
+	buffer->gpucg = gpucg_get(current);
+
+	ret = gpucg_try_charge(buffer->gpucg,
+			       dma_heap_get_gpucg_dev(buffer->heap),
+			       len);
+	if (ret) {
+		gpucg_put(buffer->gpucg);
+		kfree(buffer);
+		return ERR_PTR(ret);
+	}
 
 	INIT_LIST_HEAD(&pages);
 	i = 0;
@@ -413,6 +431,13 @@ static struct dma_buf *system_heap_allocate(struct dma_heap *heap,
 free_buffer:
 	list_for_each_entry_safe(page, tmp_page, &pages, lru)
 		__free_pages(page, compound_order(page));
+
+	gpucg_uncharge(buffer->gpucg,
+		       dma_heap_get_gpucg_dev(buffer->heap),
+		       buffer->len);
+
+	gpucg_put(buffer->gpucg);
+
 	kfree(buffer);
 
 	return ERR_PTR(ret);
diff --git a/include/linux/dma-heap.h b/include/linux/dma-heap.h
index 0c05561cad6e..e447a61d054e 100644
--- a/include/linux/dma-heap.h
+++ b/include/linux/dma-heap.h
@@ -10,6 +10,7 @@
 #define _DMA_HEAPS_H
 
 #include <linux/cdev.h>
+#include <linux/cgroup_gpu.h>
 #include <linux/types.h>
 
 struct dma_heap;
@@ -59,6 +60,16 @@ void *dma_heap_get_drvdata(struct dma_heap *heap);
  */
 const char *dma_heap_get_name(struct dma_heap *heap);
 
+/**
+ * dma_heap_get_gpucg_dev() - get a pointer to the struct gpucg_device for the
+ * heap.
+ * @heap: DMA-Heap to retrieve gpucg_device for.
+ *
+ * Returns:
+ * The gpucg_device struct for the heap.
+ */
+struct gpucg_device *dma_heap_get_gpucg_dev(struct dma_heap *heap);
+
 /**
  * dma_heap_add - adds a heap to dmabuf heaps
  * @exp_info:		information needed to register this heap
-- 
2.34.1.703.g22d0c6ccf7-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
