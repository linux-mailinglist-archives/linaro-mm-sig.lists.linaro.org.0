Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5SGjHYJzKWpJXAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 16:24:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ED85366A2EE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 16:24:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=linaro.org header.s=google header.b=ZxkS8N3V;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=pass (policy=none) header.from=linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E95AE40A1E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 14:24:00 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	by lists.linaro.org (Postfix) with ESMTPS id F1DA84095B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 14:23:48 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2c0c3546924so45588465ad.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 07:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1781101428; x=1781706228; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RIgrfTieRwmLlw1dLE2AIE0y0j3JlRfXfzK5v3rBlwE=;
        b=ZxkS8N3V099qxrs41m05as3z6iILsbB9QteSlOa83EE8TA6hCqJiFTbhctEqzPSdmb
         F4sRjDEMwPgnkgXvyTsapQaFpUJFFMPaH9v/wnJoMf2UaPwL7cgt9UqpzGCjYJUw+Pz2
         nS9RfoN/Z4vA98OtgY3TvLnr/QL1so0h3yO6nXVbk2ckmxZVTSSbcDhmgDDOWsco9EtD
         gyHZCFVkkccGMISy15FXPbFirhnpEIKetCCf3QQbimafa+4YfSXiJXLEdGr2g/YtVbPh
         xYxabZ7DPtYjYwtioEVcwtgZT1cc5W6qFAtZnltxGfZz72q3oK3OghRKxL369BudOxXl
         IQFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781101428; x=1781706228;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RIgrfTieRwmLlw1dLE2AIE0y0j3JlRfXfzK5v3rBlwE=;
        b=fWcCP3j4FzjGRsJAXLrLu0uXHpfwIYlOyBeo9Dv2ka3/7nHung24oKO8G9Hcaj89t+
         Y+2WiJffHyLMkiYB3/X60Crml2eUYvceTizNJijLWfjk4ZVY5In2FD01dAkCa4kt5H2d
         LLwW+ujDKcfN0o1KaXXjNxnif/hULMm/6+Z/+/hBgfd3+FO3c4JOW5HR0w2W9qZ3Phur
         c3SlAyE+cKSpjhXPiCxczzwnZ6PVuPFKNoe2kU9pjmK42BJkEFeajCeAClz6iEXU2ziv
         gMtm4Fg5jeK9GDU8/qIRLdFLG05KcLe+qpc5DQkKKs9cqKORLgTyb/ij/1iPut9Jv0H3
         NaSA==
X-Forwarded-Encrypted: i=1; AFNElJ+zKrKkrbMm7BlGwpxVhpZ0a5Lyfsk9VdL0Ha6jyxjtHvJ/06DK28DGH67DtjgRpkKjjx8xwrqaTbbKm+5y@lists.linaro.org
X-Gm-Message-State: AOJu0YyJ6J2Od9R663hXjeMcMmNxgNq3nZsEmE05JrW52wAqtFSMvv+f
	meJaTosXNcRKDZCmcRQhFHNF67oyaKsL9C15pIxIAHamRrgro0O/XtEC8kpuAlEjUPTttQ==
X-Gm-Gg: Acq92OGdjNn3SDA5WTkmYTe4GzaoHvsWKSUCmlK0nwj94Rhhh7gfySP0RQ1TAIPG7Sm
	g97J4pR/+LorMQy1fKc6G+LVNdGvdBDaxTyejTnXIzDsgehIiX3LRu0snthP21S5bJMuxq2/GoB
	VtLFzHxu+Eb65DeFtDdKLCt9gpNu2gwl7VyYLhTgOEjl+BraIr2J/5S0mKupsISyTAdPQGOa1aK
	JnipBCophlJJT7SpxwJ4k/ZP8SURvVqCO6/M/eIHwqC3TOEEmMUoVQ7Oh6M1GFbEECK9jnRa5GW
	qJs6HTdr6l60MoRwMsTJoyIgw9BGmBS/shfNFVuKgA0IFUoNzXTJDBoU5xpASvbT8Yt+vDj9N6d
	SvLzP+g+9dnNxpV74cQq7G4CRs0r15EprOzBZKk/AqcfvF+cGxO2kzBYIqr+/JNqPo4/zPySPAE
	0+akAb3ss3tfyZjuj+qnRAwOcqU8/OOSPTHiSB0xc/yZ+UsOEXqE4yZQ==
X-Received: by 2002:a17:902:e752:b0:2b2:5515:661c with SMTP id d9443c01a7336-2c1e893d62dmr281727295ad.31.1781101427890;
        Wed, 10 Jun 2026 07:23:47 -0700 (PDT)
Received: from nagraj.tail8a2ac.ts.net ([2406:7400:98:3ab:da47:17e2:32f7:c4d3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6d318sm265761935ad.15.2026.06.10.07.23.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 07:23:47 -0700 (PDT)
From: Sumit Semwal <sumit.semwal@linaro.org>
To: sumit.semwal@linaro.org,
	christian.koenig@amd.com
Date: Wed, 10 Jun 2026 19:53:29 +0530
Message-ID: <20260610142329.3836808-1-sumit.semwal@linaro.org>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
X-Spamd-Bar: --
Message-ID-Hash: 5LPBGIXW46BY5NIRAN2732ITEKVGEEEW
X-Message-ID-Hash: 5LPBGIXW46BY5NIRAN2732ITEKVGEEEW
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: jgg@ziepe.ca, jiri@resnulli.us, hch@infradead.org, maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com, chleroy@kernel.org, linuxppc-dev@lists.ozlabs.org, lkp@intel.com, agordeev@linux.ibm.com, gerald.schaefer@linux.ibm.com, linux-s390@vger.kernel.org, djbw@kernel.org, thomas.lendacky@amd.com, x86@kernel.org, arnd@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, mripard@kernel.org, afd@ti.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: move system_cc_shared heap under separate Kconfig
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5LPBGIXW46BY5NIRAN2732ITEKVGEEEW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[ziepe.ca,resnulli.us,infradead.org,linux.ibm.com,ellerman.id.au,gmail.com,kernel.org,lists.ozlabs.org,intel.com,vger.kernel.org,amd.com,linaro.org,collabora.com,arm.com,google.com,ti.com,lists.freedesktop.org,lists.linaro.org,arndb.de];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[sumit.semwal@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	R_DKIM_REJECT(0.00)[linaro.org:s=google];
	RCPT_COUNT_TWELVE(0.00)[29];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jgg@ziepe.ca,m:jiri@resnulli.us,m:hch@infradead.org,m:maddy@linux.ibm.com,m:mpe@ellerman.id.au,m:npiggin@gmail.com,m:chleroy@kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:lkp@intel.com,m:agordeev@linux.ibm.com,m:gerald.schaefer@linux.ibm.com,m:linux-s390@vger.kernel.org,m:djbw@kernel.org,m:thomas.lendacky@amd.com,m:x86@kernel.org,m:arnd@linaro.org,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:tjmercier@google.com,m:mripard@kernel.org,m:afd@ti.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:arnd@arndb.de,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:-];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sumit.semwal@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:mid,linaro.org:from_mime,arndb.de:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ED85366A2EE

From: Arnd Bergmann <arnd@arndb.de>

While system heap and system_cc_shared heap share a lot of code
and hence the same source file, their users have different needs.

system heap users need it to be a loadable module, while
system_cc_shared heap users don't.

Building as a loadable module breaks system_cc_shared heap on
powerpc and s390 due to un-exported set_memory_encrypted /
set_memory_decrypted functions.

Fix these by reorganising code to put the system_cc_shared heap
under a new Kconfig symbol, which allows either building both
into the kernel, or leave encryption up to the consumers of the
system heap.

Fixes: fd55edff8a0a ("dma-buf: heaps: system: Turn the heap into a module")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Sumit Semwal <sumit.semwal@linaro.org>
---
 drivers/dma-buf/heaps/Kconfig       |  8 ++++++++
 drivers/dma-buf/heaps/system_heap.c | 16 ++++++++++------
 2 files changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/heaps/Kconfig
index e273fb18feca..a39decdcf067 100644
--- a/drivers/dma-buf/heaps/Kconfig
+++ b/drivers/dma-buf/heaps/Kconfig
@@ -5,6 +5,14 @@ config DMABUF_HEAPS_SYSTEM
 	  Choose this option to enable the system dmabuf heap. The system heap
 	  is backed by pages from the buddy allocator. If in doubt, say Y.
 
+config DMABUF_HEAPS_CC_SYSTEM
+	bool "DMA-BUF System Heap for decrypted CoCo VMs"
+	depends on DMABUF_HEAPS && ARCH_HAS_MEM_ENCRYPT && DMABUF_HEAPS_SYSTEM=y
+	help
+	  Choose this option to enable the system_cc_shared dmabuf heap. This
+	  allows allocating shared (decrypted) memory for confidential computing
+	  (CoCo) VMs.
+
 config DMABUF_HEAPS_CMA
 	tristate "DMA-BUF CMA Heap"
 	depends on DMABUF_HEAPS && DMA_CMA
diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index c92bdec356fc..71d9028cc3df 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -48,6 +48,9 @@ struct dma_heap_attachment {
 	bool cc_shared;
 };
 
+#define cc_shared_buffer(b) (IS_ENABLED(CONFIG_DMABUF_HEAPS_CC_SYSTEM) && \
+				(b)->cc_shared)
+
 #define LOW_ORDER_GFP (GFP_HIGHUSER | __GFP_ZERO)
 #define HIGH_ORDER_GFP  (((GFP_HIGHUSER | __GFP_ZERO | __GFP_NOWARN \
 				| __GFP_NORETRY) & ~__GFP_RECLAIM) \
@@ -161,7 +164,7 @@ static struct sg_table *system_heap_map_dma_buf(struct dma_buf_attachment *attac
 	unsigned long attrs;
 	int ret;
 
-	attrs = a->cc_shared ? DMA_ATTR_CC_SHARED : 0;
+	attrs = cc_shared_buffer(a) ? DMA_ATTR_CC_SHARED : 0;
 	ret = dma_map_sgtable(attachment->dev, table, direction, attrs);
 	if (ret)
 		return ERR_PTR(ret);
@@ -233,7 +236,7 @@ static int system_heap_mmap(struct dma_buf *dmabuf, struct vm_area_struct *vma)
 	int i, ret;
 
 	prot = vma->vm_page_prot;
-	if (buffer->cc_shared)
+	if (cc_shared_buffer(buffer))
 		prot = pgprot_decrypted(prot);
 
 	for_each_sgtable_sg(table, sg, i) {
@@ -282,7 +285,7 @@ static void *system_heap_do_vmap(struct system_heap_buffer *buffer)
 	}
 
 	prot = PAGE_KERNEL;
-	if (buffer->cc_shared)
+	if (cc_shared_buffer(buffer))
 		prot = pgprot_decrypted(prot);
 	vaddr = vmap(pages, npages, VM_MAP, prot);
 	vfree(pages);
@@ -349,7 +352,7 @@ static void system_heap_dma_buf_release(struct dma_buf *dmabuf)
 		 * Intentionally leak pages that cannot be re-encrypted
 		 * to prevent shared memory from being reused.
 		 */
-		if (buffer->cc_shared &&
+		if (cc_shared_buffer(buffer) &&
 		    system_heap_set_page_encrypted(page))
 			continue;
 
@@ -456,7 +459,7 @@ static struct dma_buf *system_heap_allocate(struct dma_heap *heap,
 		list_del(&page->lru);
 	}
 
-	if (cc_shared) {
+	if (cc_shared_buffer(buffer)) {
 		for_each_sgtable_sg(table, sg, i) {
 			ret = system_heap_set_page_decrypted(sg_page(sg));
 			if (ret)
@@ -485,7 +488,7 @@ static struct dma_buf *system_heap_allocate(struct dma_heap *heap,
 		 * Intentionally leak pages that cannot be re-encrypted
 		 * to prevent shared memory from being reused.
 		 */
-		if (buffer->cc_shared &&
+		if (cc_shared_buffer(buffer) &&
 		    system_heap_set_page_encrypted(p))
 			continue;
 		__free_pages(p, compound_order(p));
@@ -525,6 +528,7 @@ static int __init system_heap_create(void)
 		return PTR_ERR(sys_heap);
 
 	if (IS_ENABLED(CONFIG_HIGHMEM) ||
+	    !IS_ENABLED(CONFIG_DMABUF_HEAPS_CC_SYSTEM) ||
 	    !cc_platform_has(CC_ATTR_MEM_ENCRYPT))
 		return 0;
 
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
