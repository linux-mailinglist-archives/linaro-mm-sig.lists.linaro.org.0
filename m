Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFc4GhUT4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:49:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D877F41200A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:49:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E851240514
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:49:23 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	by lists.linaro.org (Postfix) with ESMTPS id A293A3F7DE
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 09:51:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=y+Xhb9Ux;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.67) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-48334ee0aeaso29904475e9.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 01:51:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1771840301; x=1772445101; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mF8Zav5NAo2mpAKEgaciFJ2LFKzg7+sHGDJbJ7B58Uk=;
        b=y+Xhb9Uxds3/lhS+b4GL1IlZww2906rnQBt2KwSw5OhI4X/DNaCnJWEsbgVi+9NQKq
         mVIlUFXoCtwlioBrZzlU8Uk6fXv1tN4TGrWtXMaC68oacCl1dsqIev8+UoBCh0o9pHGY
         9ueke3DcK8s1ZcSGE8TyzpgLpW9YDDwyaNYKzMK5UW8aIGUzljNcWzv5eRP+3o1Dnaiz
         5D2iqqdrkUofkJ6xw+yWXT28dwzefPMwhe2qRNFgYbg5CpNhHP8ruYbLGFQ/ek5ajkWs
         jbodMkaigSeZ2i0DVZRh+6OZswj7nKggOi1OhuBDPjDJzs7ihpqGRNSrfoB+gyz0I5t5
         uymg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771840301; x=1772445101;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mF8Zav5NAo2mpAKEgaciFJ2LFKzg7+sHGDJbJ7B58Uk=;
        b=M+uFZPiwJZI/OB1QzG370ZLnbUtkwMGpiO6sKbZqrtzemmQk8F8wp3tXNeYTPRYTGf
         9kHxO1oolhi+P4ERhRqQsrW9jC55u2LJUTI511xK0xBrdegX2mnkLCB+2ITtb+Xn/jAV
         VxtFzqFYDuRCU98i02jden1Ln6vbk+RrHMti/EHeZKluhlQckT/0xK4GARdMF6dr0KzP
         QAgtz81vxKpxKPjhcYZygsTpPHvql+qXhukib9LNg3Vkq402wimKQmXBY4k5nQGgNYfs
         SrRghKrLt365TUfzzfHGRJA9tlo2VOoxgH1eUBVnTp8c3N09OQJbV59mtxZlnQ4TCeSD
         nl4w==
X-Forwarded-Encrypted: i=1; AJvYcCUMnZZTPQMt03QCETE/n92vOsEYtdcAnFravYrYej5o8LbYt6Uf1NDMO3KhGJkKI07dSkdt6n4Fzdd88gdS@lists.linaro.org
X-Gm-Message-State: AOJu0YwV9fE1VtH7nchuRNBXxE5tDFL4/iM8ARYW4/TbWSPFBlGdMi84
	QrlOKGPzDsFbTANntOqr3SxcT03AZR71/oe5iFIQ1Si7XZV+uRatEA0iwJ+8OY6bpxc=
X-Gm-Gg: AZuq6aI9x5HZg5GKm2uMTakCOF1B2YPSXNvB6XJfG2VY90j1WaMoJHJidcIu/lKKl4X
	lteZcfchfyBAQb+wLzQkrvC62H7+YJVtctQKa3UO052UcTCr1THW+rAH+cxDpBwLh7yHEIzMwwp
	tVEDWom9V3qGY44CDoNTqtf2ar/DM7ewVmBYADRzzcNN4Z4HfRZA+K8QnpCWn/7AcpBwhN9L9f8
	lU5lLIS/Px4AubDMsrk5E8dKwL3TIoVC1fGY93DJgYs2EmO+U9Q+wVyGZcHwbUZpI50OQ5ftXqR
	YtYtAltZN7LqWIwpA8CVbeFdZG5RiWahhUh0SestyK138BnAslqFq33a685QXRXDza9OAWqER3q
	ujSqY6772pOOVuxpFOSVXetvdZXbKt4m/Z95dRvpin1XI7Tw745OaSHu1N79VaXSu6wtRnvMjYI
	/PCNyrAqpjwTke0g==
X-Received: by 2002:a05:600c:c4a5:b0:483:7783:5382 with SMTP id 5b1f17b1804b1-483a95e6b64mr115865615e9.27.1771840300410;
        Mon, 23 Feb 2026 01:51:40 -0800 (PST)
Received: from localhost ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a9caadedsm152604565e9.10.2026.02.23.01.51.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 01:51:40 -0800 (PST)
From: Jiri Pirko <jiri@resnulli.us>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	iommu@lists.linux.dev,
	linux-media@vger.kernel.org
Date: Mon, 23 Feb 2026 10:51:36 +0100
Message-ID: <20260223095136.225277-3-jiri@resnulli.us>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20260223095136.225277-1-jiri@resnulli.us>
References: <20260223095136.225277-1-jiri@resnulli.us>
MIME-Version: 1.0
X-Spamd-Bar: -
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DSW65EFQZVXI2WP2Z3OUBXAMZ3XIG5N2
X-Message-ID-Hash: DSW65EFQZVXI2WP2Z3OUBXAMZ3XIG5N2
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:38 +0000
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 2/2] dma-buf: heaps: system: add system_cc_decrypted heap for explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DSW65EFQZVXI2WP2Z3OUBXAMZ3XIG5N2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.49 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[1254];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[resnulli.us];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	NEURAL_HAM(-0.00)[-0.262];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[resnulli.us:mid,lists.linaro.org:helo,lists.linaro.org:rdns,exp_info.name:url,nvidia.com:email,ti.com:email,linaro.org:email]
X-Rspamd-Queue-Id: D877F41200A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jiri Pirko <jiri@nvidia.com>

Add a new "system_cc_decrypted" dma-buf heap to allow userspace to
allocate decrypted (shared) memory for confidential computing (CoCo)
VMs.

On CoCo VMs, guest memory is encrypted by default. The hardware uses an
encryption bit in page table entries (C-bit on AMD SEV, "shared" bit on
Intel TDX) to control whether a given memory access is encrypted or
decrypted. The kernel's direct map is set up with encryption enabled,
so pages returned by alloc_pages() are encrypted in the direct map
by default. To make this memory usable for devices that do not support
DMA to encrypted memory (no TDISP support), it has to be explicitly
decrypted. A couple of things are needed to properly handle
decrypted memory for the dma-buf use case:

- set_memory_decrypted() on the direct map after allocation:
  Besides clearing the encryption bit in the direct map PTEs, this
  also notifies the hypervisor about the page state change. On free,
  the inverse set_memory_encrypted() must be called before returning
  pages to the allocator. If re-encryption fails, pages
  are intentionally leaked to prevent decrypted memory from being
  reused as private.

- pgprot_decrypted() for userspace and kernel virtual mappings:
  Any new mapping of the decrypted pages, be it to userspace via
  mmap or to kernel vmalloc space via vmap, creates PTEs independent
  of the direct map. These must also have the encryption bit cleared,
  otherwise accesses through them would see encrypted (garbage) data.

- DMA_ATTR_CC_DECRYPTED for DMA mapping:
  Since the pages are already decrypted, the DMA API needs to be
  informed via DMA_ATTR_CC_DECRYPTED so it can map them correctly
  as unencrypted for device access.

On non-CoCo VMs, the system_cc_decrypted heap is not registered
to prevent misuse by userspace that does not understand
the security implications of explicitly decrypted memory.

Signed-off-by: Jiri Pirko <jiri@nvidia.com>
---
v1->v2:
- fixed build errors on s390 by including mem_encrypt.h
- converted system heap flag implementation to a separate heap
---
 drivers/dma-buf/heaps/system_heap.c | 103 ++++++++++++++++++++++++++--
 include/linux/dma-heap.h            |   1 +
 include/uapi/linux/dma-heap.h       |   3 +-
 3 files changed, 100 insertions(+), 7 deletions(-)

diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index b3650d8fd651..a525e9aaaffa 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -10,17 +10,25 @@
  *	Andrew F. Davis <afd@ti.com>
  */
 
+#include <linux/cc_platform.h>
 #include <linux/dma-buf.h>
 #include <linux/dma-mapping.h>
 #include <linux/dma-heap.h>
 #include <linux/err.h>
 #include <linux/highmem.h>
+#include <linux/mem_encrypt.h>
 #include <linux/mm.h>
+#include <linux/set_memory.h>
 #include <linux/module.h>
+#include <linux/pgtable.h>
 #include <linux/scatterlist.h>
 #include <linux/slab.h>
 #include <linux/vmalloc.h>
 
+struct system_heap_priv {
+	bool decrypted;
+};
+
 struct system_heap_buffer {
 	struct dma_heap *heap;
 	struct list_head attachments;
@@ -29,6 +37,7 @@ struct system_heap_buffer {
 	struct sg_table sg_table;
 	int vmap_cnt;
 	void *vaddr;
+	bool decrypted;
 };
 
 struct dma_heap_attachment {
@@ -36,6 +45,7 @@ struct dma_heap_attachment {
 	struct sg_table table;
 	struct list_head list;
 	bool mapped;
+	bool decrypted;
 };
 
 #define LOW_ORDER_GFP (GFP_HIGHUSER | __GFP_ZERO)
@@ -52,6 +62,34 @@ static gfp_t order_flags[] = {HIGH_ORDER_GFP, HIGH_ORDER_GFP, LOW_ORDER_GFP};
 static const unsigned int orders[] = {8, 4, 0};
 #define NUM_ORDERS ARRAY_SIZE(orders)
 
+static int system_heap_set_page_decrypted(struct page *page)
+{
+	unsigned long addr = (unsigned long)page_address(page);
+	unsigned int nr_pages = 1 << compound_order(page);
+	int ret;
+
+	ret = set_memory_decrypted(addr, nr_pages);
+	if (ret)
+		pr_warn_ratelimited("dma-buf system heap: failed to decrypt page at %p\n",
+				    page_address(page));
+
+	return ret;
+}
+
+static int system_heap_set_page_encrypted(struct page *page)
+{
+	unsigned long addr = (unsigned long)page_address(page);
+	unsigned int nr_pages = 1 << compound_order(page);
+	int ret;
+
+	ret = set_memory_encrypted(addr, nr_pages);
+	if (ret)
+		pr_warn_ratelimited("dma-buf system heap: failed to re-encrypt page at %p, leaking memory\n",
+				    page_address(page));
+
+	return ret;
+}
+
 static int dup_sg_table(struct sg_table *from, struct sg_table *to)
 {
 	struct scatterlist *sg, *new_sg;
@@ -90,6 +128,7 @@ static int system_heap_attach(struct dma_buf *dmabuf,
 	a->dev = attachment->dev;
 	INIT_LIST_HEAD(&a->list);
 	a->mapped = false;
+	a->decrypted = buffer->decrypted;
 
 	attachment->priv = a;
 
@@ -119,9 +158,11 @@ static struct sg_table *system_heap_map_dma_buf(struct dma_buf_attachment *attac
 {
 	struct dma_heap_attachment *a = attachment->priv;
 	struct sg_table *table = &a->table;
+	unsigned long attrs;
 	int ret;
 
-	ret = dma_map_sgtable(attachment->dev, table, direction, 0);
+	attrs = a->decrypted ? DMA_ATTR_CC_DECRYPTED : 0;
+	ret = dma_map_sgtable(attachment->dev, table, direction, attrs);
 	if (ret)
 		return ERR_PTR(ret);
 
@@ -188,8 +229,13 @@ static int system_heap_mmap(struct dma_buf *dmabuf, struct vm_area_struct *vma)
 	unsigned long addr = vma->vm_start;
 	unsigned long pgoff = vma->vm_pgoff;
 	struct scatterlist *sg;
+	pgprot_t prot;
 	int i, ret;
 
+	prot = vma->vm_page_prot;
+	if (buffer->decrypted)
+		prot = pgprot_decrypted(prot);
+
 	for_each_sgtable_sg(table, sg, i) {
 		unsigned long n = sg->length >> PAGE_SHIFT;
 
@@ -206,8 +252,7 @@ static int system_heap_mmap(struct dma_buf *dmabuf, struct vm_area_struct *vma)
 		if (addr + size > vma->vm_end)
 			size = vma->vm_end - addr;
 
-		ret = remap_pfn_range(vma, addr, page_to_pfn(page),
-				size, vma->vm_page_prot);
+		ret = remap_pfn_range(vma, addr, page_to_pfn(page), size, prot);
 		if (ret)
 			return ret;
 
@@ -225,6 +270,7 @@ static void *system_heap_do_vmap(struct system_heap_buffer *buffer)
 	struct page **pages = vmalloc(sizeof(struct page *) * npages);
 	struct page **tmp = pages;
 	struct sg_page_iter piter;
+	pgprot_t prot;
 	void *vaddr;
 
 	if (!pages)
@@ -235,7 +281,10 @@ static void *system_heap_do_vmap(struct system_heap_buffer *buffer)
 		*tmp++ = sg_page_iter_page(&piter);
 	}
 
-	vaddr = vmap(pages, npages, VM_MAP, PAGE_KERNEL);
+	prot = PAGE_KERNEL;
+	if (buffer->decrypted)
+		prot = pgprot_decrypted(prot);
+	vaddr = vmap(pages, npages, VM_MAP, prot);
 	vfree(pages);
 
 	if (!vaddr)
@@ -296,6 +345,14 @@ static void system_heap_dma_buf_release(struct dma_buf *dmabuf)
 	for_each_sgtable_sg(table, sg, i) {
 		struct page *page = sg_page(sg);
 
+		/*
+		 * Intentionally leak pages that cannot be re-encrypted
+		 * to prevent decrypted memory from being reused.
+		 */
+		if (buffer->decrypted &&
+		    system_heap_set_page_encrypted(page))
+			continue;
+
 		__free_pages(page, compound_order(page));
 	}
 	sg_free_table(table);
@@ -347,6 +404,8 @@ static struct dma_buf *system_heap_allocate(struct dma_heap *heap,
 	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
 	unsigned long size_remaining = len;
 	unsigned int max_order = orders[0];
+	struct system_heap_priv *priv = dma_heap_get_drvdata(heap);
+	bool decrypted = priv->decrypted;
 	struct dma_buf *dmabuf;
 	struct sg_table *table;
 	struct scatterlist *sg;
@@ -362,6 +421,7 @@ static struct dma_buf *system_heap_allocate(struct dma_heap *heap,
 	mutex_init(&buffer->lock);
 	buffer->heap = heap;
 	buffer->len = len;
+	buffer->decrypted = decrypted;
 
 	INIT_LIST_HEAD(&pages);
 	i = 0;
@@ -396,6 +456,14 @@ static struct dma_buf *system_heap_allocate(struct dma_heap *heap,
 		list_del(&page->lru);
 	}
 
+	if (decrypted) {
+		for_each_sgtable_sg(table, sg, i) {
+			ret = system_heap_set_page_decrypted(sg_page(sg));
+			if (ret)
+				goto free_pages;
+		}
+	}
+
 	/* create the dmabuf */
 	exp_info.exp_name = dma_heap_get_name(heap);
 	exp_info.ops = &system_heap_buf_ops;
@@ -413,6 +481,13 @@ static struct dma_buf *system_heap_allocate(struct dma_heap *heap,
 	for_each_sgtable_sg(table, sg, i) {
 		struct page *p = sg_page(sg);
 
+		/*
+		 * Intentionally leak pages that cannot be re-encrypted
+		 * to prevent decrypted memory from being reused.
+		 */
+		if (buffer->decrypted &&
+		    system_heap_set_page_encrypted(p))
+			continue;
 		__free_pages(p, compound_order(p));
 	}
 	sg_free_table(table);
@@ -428,6 +503,14 @@ static const struct dma_heap_ops system_heap_ops = {
 	.allocate = system_heap_allocate,
 };
 
+static struct system_heap_priv system_heap_priv = {
+	.decrypted = false,
+};
+
+static struct system_heap_priv system_heap_cc_decrypted_priv = {
+	.decrypted = true,
+};
+
 static int __init system_heap_create(void)
 {
 	struct dma_heap_export_info exp_info;
@@ -435,8 +518,18 @@ static int __init system_heap_create(void)
 
 	exp_info.name = "system";
 	exp_info.ops = &system_heap_ops;
-	exp_info.priv = NULL;
+	exp_info.priv = &system_heap_priv;
+
+	sys_heap = dma_heap_add(&exp_info);
+	if (IS_ERR(sys_heap))
+		return PTR_ERR(sys_heap);
+
+	if (IS_ENABLED(CONFIG_HIGHMEM) ||
+	    !cc_platform_has(CC_ATTR_MEM_ENCRYPT))
+		return 0;
 
+	exp_info.name = "system_cc_decrypted";
+	exp_info.priv = &system_heap_cc_decrypted_priv;
 	sys_heap = dma_heap_add(&exp_info);
 	if (IS_ERR(sys_heap))
 		return PTR_ERR(sys_heap);
diff --git a/include/linux/dma-heap.h b/include/linux/dma-heap.h
index 648328a64b27..d97b668413c1 100644
--- a/include/linux/dma-heap.h
+++ b/include/linux/dma-heap.h
@@ -10,6 +10,7 @@
 #define _DMA_HEAPS_H
 
 #include <linux/types.h>
+#include <uapi/linux/dma-heap.h>
 
 struct dma_heap;
 
diff --git a/include/uapi/linux/dma-heap.h b/include/uapi/linux/dma-heap.h
index a4cf716a49fa..ab95bb355ed5 100644
--- a/include/uapi/linux/dma-heap.h
+++ b/include/uapi/linux/dma-heap.h
@@ -18,8 +18,7 @@
 /* Valid FD_FLAGS are O_CLOEXEC, O_RDONLY, O_WRONLY, O_RDWR */
 #define DMA_HEAP_VALID_FD_FLAGS (O_CLOEXEC | O_ACCMODE)
 
-/* Currently no heap flags */
-#define DMA_HEAP_VALID_HEAP_FLAGS (0ULL)
+#define DMA_HEAP_VALID_HEAP_FLAGS (0)
 
 /**
  * struct dma_heap_allocation_data - metadata passed from userspace for
-- 
2.51.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
