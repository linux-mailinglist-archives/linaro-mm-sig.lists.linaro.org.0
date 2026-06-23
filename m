Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7yrEJkpgPWq52AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:07:22 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BD06C7B31
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:07:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=sVw4smoN;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B638445A0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:07:21 +0000 (UTC)
Received: from mail-qt1-f201.google.com (mail-qt1-f201.google.com [209.85.160.201])
	by lists.linaro.org (Postfix) with ESMTPS id 5696C3F6A0
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 01:55:02 +0000 (UTC)
Received: by mail-qt1-f201.google.com with SMTP id d75a77b69052e-519899abab8so100954981cf.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2026 18:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1782179702; x=1782784502; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=lkITz2dGNs54nij5ccY4KCvNRYJG4BpFQmrxgUXzmOc=;
        b=sVw4smoNIXWELWcg9Nm3aVKC/I/cWJMx9VJU8DxKyitL7dtP6IrQf+toAWr3bgD1By
         ke0VjXCc2VFNQtV7PGreqcTZuLUivbiG+JlhneGbRYMW7eYMk4wZvv8FakUF1eTrLmtg
         +IfkQGeog6CVEDu87R8WOYmKYyGdlWaFJTQb/+olU5l+F33OKU59Eer4rotL0NlR4CPM
         YQf4uB9yDdXnESdZFiD+TPI3LoWUwc7S6GWdjQLOS26ImtDBB4ho8g5WjnPgyWNXe9C4
         yhSQhbctYH3mIJuJDF2uwV8G304M8WtEXATM+elK8IzU1jY/h9LOlTwgjrDwHRjATu8g
         C38w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782179702; x=1782784502;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lkITz2dGNs54nij5ccY4KCvNRYJG4BpFQmrxgUXzmOc=;
        b=Te+UnnAU34VkSRfeu8axYVwxAooJWEjKjzaWBujl/3Vf2rQrN2dOr7Xho8G81qbxCE
         k+HOVxu5JbQQ/revCyLaNKVsaHdSLY+8eFrCNFXxfldz13go50ShqJwmzsEAbFnC+7HM
         P9lkPitc5/dDUA2cNBoGRV9dBEE672wGovMkBwTtI9xxyI9va1JtztN/uXOSMiHIC2Si
         G7pd1k+Nb+aC6SniUx5i47/znVmtgFJcLUDwF08Z9arqoNOH9eLimLIeKmvZ/uvlDTI8
         8FOI36+5dJzOHCibhCYd1OVT7g6aGEtBZlKI2S8ComwLv3qwzbwdBTX1wj7CeLp9cJeL
         3eaw==
X-Forwarded-Encrypted: i=1; AFNElJ+hw44W8pMKs0Y7Z8R0f8L/k03TCs3+9RE4GkRTKcjbkvz3qzakvqrQbdO55KVNroyotu7Tlqwb1vQydXIO@lists.linaro.org
X-Gm-Message-State: AOJu0YzbL3F3acJjukGLnlmkxZYfCdkZiHdjhh4C4Wy2s3421HjJe2bi
	/A+jQvDWrLc6G69H9Pd0tpdNCHu1eiQrtIN0My0ZXNlUT1+uDixhW9z85PMkQtjWrWcmpvUK+/5
	AAOq5Rtj1RIue
X-Received: from qtxx9-n2.prod.google.com ([2002:a05:622a:aac9:20b0:517:96a4:99ea])
 (user=xuehaohu job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:622a:2609:b0:519:89f6:6ed4 with SMTP id d75a77b69052e-51a548b6418mr13414611cf.47.1782179701475;
 Mon, 22 Jun 2026 18:55:01 -0700 (PDT)
Date: Tue, 23 Jun 2026 01:54:59 +0000
In-Reply-To: <20260621222130.1667453-1-xuehaohu@google.com>
Mime-Version: 1.0
References: <20260621222130.1667453-1-xuehaohu@google.com>
X-Mailer: git-send-email 2.55.0.rc0.799.gd6f94ed593-goog
Message-ID: <20260623015459.1153884-1-xuehaohu@google.com>
From: David Hu <xuehaohu@google.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>
X-Spamd-Bar: --
X-MailFrom: 3dec5aggKDYQ52mpiwp2owwotm.kwutqvizw-uu-0qotq010.tqvizw.wzo@flex--xuehaohu.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XCVIDQQ5P5FKH2FSDH35DVRCZ2JSYKZY
X-Message-ID-Hash: XCVIDQQ5P5FKH2FSDH35DVRCZ2JSYKZY
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:06:26 +0000
CC: David Laight <david.laight.linux@gmail.com>, Jason Gunthorpe <jgg@ziepe.ca>, Nicolin Chen <nicolinc@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, jmoroni@google.com, praan@google.com, kpberry@google.com, chriscli@google.com, sashiko-bot@kernel.org, stable@vger.kernel.org, David Hu <xuehaohu@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] dma-buf: Split sgl into page-aligned 2G chunks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XCVIDQQ5P5FKH2FSDH35DVRCZ2JSYKZY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: add header
X-Spamd-Result: default: False [6.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[63];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,ziepe.ca,nvidia.com,kernel.org,intel.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev,google.com];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:david.laight.linux@gmail.com,m:jgg@ziepe.ca,m:nicolinc@nvidia.com,m:leon@kernel.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:alex@shazbot.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:iommu@lists.linux.dev,m:jmoroni@google.com,m:praan@google.com,m:kpberry@google.com,m:chriscli@google.com,m:sashiko-bot@kernel.org,m:stable@vger.kernel.org,m:xuehaohu@google.com,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 22BD06C7B31
X-Spam: Yes

Currently, `fill_sg_entry()` splits the scatterlist using `UINT_MAX`.
This creates a non-page-aligned DMA length (`0xFFFFFFFF`) for the
first entry, resulting in non-page-aligned DMA addresses for all
subsequent entries.

While the underlying IOMMU mapping may be contiguous, hardware
DMA engines often require explicit address alignment (e.g., page,
cacheline, or storage sector boundaries). Passing unaligned
addresses and lengths can cause explicit failures in DMA descriptor
creation or silent data corruption if lower unaligned bits are
truncated.

Fix this by splitting the scatterlist into 2G chunks. An alternative
previously considered was to use the largest page aligned chunk within
`UINT_MAX` (`ALIGN_DOWN(UINT_MAX, PAGE_SIZE)`) to satisfy page
alignment. A 2G chunk is better as it naturally aligns with most known
hardware boundaries, while also allowing compiler optimizations with
simple bit shifts. This ensures all scatterlist DMA addresses and
lengths remain page aligned and satisfy hardware constraints.

Page-aligned entries allow the system to cleanly chunk payloads into
PCIe MaxPayloadSize (MPS) (e.g., 128 bytes, 256 bytes, 512 bytes).
As a result, this may help reduce TLP fragmentation in P2P transfers
and alleviate potential congestion within a logical PCIe switch
partition, especially when Relaxed Ordering is not possible due to
hardware constraints.

Reported-by: sashiko-bot <sashiko-bot@kernel.org>
Closes: https://lore.kernel.org/all/20260609165431.778061F00893@smtp.kernel.org/
Fixes: 3aa31a8bb11e ("dma-buf: provide phys_vec to scatter-gather mapping routine")
Cc: stable@vger.kernel.org
Signed-off-by: David Hu <xuehaohu@google.com>
---
 Changes in v2:
 - Updated commit title and message to reflect the switch to 2G chunks
 - Switch to using 2G as the max sg entry size as it naturally aligns
   with most hardware boundaries, while allowing compiler optimizations
   with bit shifts (David Laight)
 - Optimized away division calculation for `nent`, and multiplication
   calculation for sgl address, by dropping the `for` loop in favor of a
   `while (length)` loop (David Laight)
 - Dropped `min_t` in favor of `min()` to maintain a strict type
   checking safety net (David Laight)

 drivers/dma-buf/dma-buf-mapping.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/dma-buf/dma-buf-mapping.c b/drivers/dma-buf/dma-buf-mapping.c
index 794acff2546a..2d88e08c5ebf 100644
--- a/drivers/dma-buf/dma-buf-mapping.c
+++ b/drivers/dma-buf/dma-buf-mapping.c
@@ -5,16 +5,17 @@
  */
 #include <linux/dma-buf-mapping.h>
 #include <linux/dma-resv.h>
+#include <linux/sizes.h>
+
+#define MAX_SG_ENT_SZ ((size_t)SZ_2G)
 
 static struct scatterlist *fill_sg_entry(struct scatterlist *sgl, size_t length,
 					 dma_addr_t addr)
 {
-	unsigned int len, nents;
-	int i;
+	size_t len;
 
-	nents = DIV_ROUND_UP(length, UINT_MAX);
-	for (i = 0; i < nents; i++) {
-		len = min_t(size_t, length, UINT_MAX);
+	while (length) {
+		len = min(length, MAX_SG_ENT_SZ);
 		length -= len;
 		/*
 		 * DMABUF abuses scatterlist to create a scatterlist
@@ -24,11 +25,12 @@ static struct scatterlist *fill_sg_entry(struct scatterlist *sgl, size_t length,
 		 * does not require the CPU list for mapping or unmapping.
 		 */
 		sg_set_page(sgl, NULL, 0, 0);
-		sg_dma_address(sgl) = addr + (dma_addr_t)i * UINT_MAX;
+		sg_dma_address(sgl) = addr;
 		sg_dma_len(sgl) = len;
+		addr += len;
+		/* Unconditionally advance. On last segment, this becomes NULL */
 		sgl = sg_next(sgl);
 	}
-
 	return sgl;
 }
 
@@ -41,14 +43,14 @@ static unsigned int calc_sg_nents(struct dma_iova_state *state,
 
 	if (!state || !dma_use_iova(state)) {
 		for (i = 0; i < nr_ranges; i++)
-			nents += DIV_ROUND_UP(phys_vec[i].len, UINT_MAX);
+			nents += DIV_ROUND_UP(phys_vec[i].len, MAX_SG_ENT_SZ);
 	} else {
 		/*
 		 * In IOVA case, there is only one SG entry which spans
 		 * for whole IOVA address space, but we need to make sure
 		 * that it fits sg->length, maybe we need more.
 		 */
-		nents = DIV_ROUND_UP(size, UINT_MAX);
+		nents = DIV_ROUND_UP(size, MAX_SG_ENT_SZ);
 	}
 
 	return nents;
-- 
2.55.0.rc0.799.gd6f94ed593-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
