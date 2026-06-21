Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ucBsDh9gPWql2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:06:39 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AA07D6C7B10
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:06:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=vuCdotlO;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AAB9E4446C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:06:37 +0000 (UTC)
Received: from mail-qv1-f74.google.com (mail-qv1-f74.google.com [209.85.219.74])
	by lists.linaro.org (Postfix) with ESMTPS id 0D9D93F7B4
	for <linaro-mm-sig@lists.linaro.org>; Sun, 21 Jun 2026 22:21:33 +0000 (UTC)
Received: by mail-qv1-f74.google.com with SMTP id 6a1803df08f44-8dc3be1ebb4so92942656d6.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 21 Jun 2026 15:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1782080492; x=1782685292; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=E/rPiB1Qh/2nTPaKmpZPHKT5hQGs3BX51WUl0ayz+VA=;
        b=vuCdotlOqNKA9MxErO7pqS6knLLpchoOg3QB7lQcR3gpZHsaEketpoUz9k6XOGlyqp
         ub91rA8dtiAYN1/1aad7suWrFWJyS1IzC9ZzI6UynGbAn85mcWYWKmCVpLmTdGYZflme
         +HY19jPEW6DjidWeYTQmWxC0/aj8qrkux75/FqpE6JgByTRlyH2LXfyTFgSc6U1U216L
         NOH/Qg06TinZsH1q4w1qt7nHFwbzxoDKxNybmTy5hSpOVbT+GR8uMhwHt4W/9G9O10Zf
         CpBMsGCU+PRCRIagBfAaooLP5j8hIgTt/jpCCyJ0e4lWVNzz6uUj1ZnM6OGGsa935v7S
         UfSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782080492; x=1782685292;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E/rPiB1Qh/2nTPaKmpZPHKT5hQGs3BX51WUl0ayz+VA=;
        b=aR2PZCr3uuEkGkN/NfLD7dq4pqHyIeB9jGuEYq29Kovt7UpYmBvF350gB3XmOzbu4g
         tKUX6uRU3JryoY5zC3dvOc4mA75ADtJABO0vPV4y4vT5pzhphrKwbM1mh1XGOnXI+Njg
         +OZPGTXSPmH5I7LuRZ7enrd+svYzatVCIihUJFCtWyJJJGZ4T5U09K+9yYqr1DIcajgs
         PvXlHy106ox55XQ7jCbw8C7SWOEC+NW9P5ziIxNUSKQbInehRVQymxK/56S47Eo8Q8N4
         G10/+Gn/Bw74LiuCaxAUyYeoVhR61lvUtvsY+oj5sMavwXRDMm1V06qxZlTpqimT7+Q1
         qOqg==
X-Forwarded-Encrypted: i=1; AHgh+RqkYSe97/b35DNgSwU9ipatJuEmd2slGUSRJpOq+0kXhnISsk/QB9kCNk1tVSWNcQ3o7V/4lPSf6vIk+QeV@lists.linaro.org
X-Gm-Message-State: AOJu0Yw5L7/SX135HBniZlgyNGWnd9OIA4lFgbfIcCg3KsWOxaMx1Vlu
	zy3Lpw2VkMIi/e5NoPqkJvU68A4Ey4H/83pCUTFP49ZxZorPST+7CUKj5eO317gMMFWZoKXrN0g
	4QqXXYMDUNs79
X-Received: from qvbld29.prod.google.com ([2002:a05:6214:419d:b0:8db:f5ff:e5e9])
 (user=xuehaohu job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6214:3f82:b0:8cc:6aa6:7035 with SMTP id 6a1803df08f44-8de4c97e03amr175835356d6.19.1782080492419;
 Sun, 21 Jun 2026 15:21:32 -0700 (PDT)
Date: Sun, 21 Jun 2026 22:21:30 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.55.0.rc0.738.g0c8ab3ebcc-goog
Message-ID: <20260621222130.1667453-1-xuehaohu@google.com>
From: David Hu <xuehaohu@google.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>
X-Spamd-Bar: --
X-MailFrom: 37GM4aggKDe0mjTWPdWjVddVaT.RdbaXcPgd-bb-hXVaXhih.aXcPgd.dgV@flex--xuehaohu.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5LDTVKS2M6U5CVA4OUQFZSQRIEJ2BHV5
X-Message-ID-Hash: 5LDTVKS2M6U5CVA4OUQFZSQRIEJ2BHV5
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:06:26 +0000
CC: Jason Gunthorpe <jgg@ziepe.ca>, Nicolin Chen <nicolinc@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, jmoroni@google.com, praan@google.com, kpberry@google.com, David Hu <xuehaohu@google.com>, sashiko-bot <sashiko-bot@kernel.org>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: Split sgl by largest page-aligned chunk
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5LDTVKS2M6U5CVA4OUQFZSQRIEJ2BHV5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[90];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jgg@ziepe.ca,m:nicolinc@nvidia.com,m:leon@kernel.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:alex@shazbot.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:iommu@lists.linux.dev,m:jmoroni@google.com,m:praan@google.com,m:kpberry@google.com,m:xuehaohu@google.com,m:sashiko-bot@kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AA07D6C7B10

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

Fix this by splitting the scatterlist by the largest possible page
aligned chunk within `UINT_MAX` (`ALIGN_DOWN(UINT_MAX, PAGE_SIZE)`).
This ensures all scatterlist DMA addresses and lengths remain page
aligned and satisfy hardware constraints.

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
 drivers/dma-buf/dma-buf-mapping.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/dma-buf/dma-buf-mapping.c b/drivers/dma-buf/dma-buf-mapping.c
index 794acff2546a..f2bde38fdb1f 100644
--- a/drivers/dma-buf/dma-buf-mapping.c
+++ b/drivers/dma-buf/dma-buf-mapping.c
@@ -5,6 +5,9 @@
  */
 #include <linux/dma-buf-mapping.h>
 #include <linux/dma-resv.h>
+#include <linux/align.h>
+
+#define MAX_ENT_SZ ALIGN_DOWN(UINT_MAX, PAGE_SIZE)
 
 static struct scatterlist *fill_sg_entry(struct scatterlist *sgl, size_t length,
 					 dma_addr_t addr)
@@ -12,9 +15,9 @@ static struct scatterlist *fill_sg_entry(struct scatterlist *sgl, size_t length,
 	unsigned int len, nents;
 	int i;
 
-	nents = DIV_ROUND_UP(length, UINT_MAX);
+	nents = DIV_ROUND_UP(length, MAX_ENT_SZ);
 	for (i = 0; i < nents; i++) {
-		len = min_t(size_t, length, UINT_MAX);
+		len = min_t(size_t, length, MAX_ENT_SZ);
 		length -= len;
 		/*
 		 * DMABUF abuses scatterlist to create a scatterlist
@@ -24,7 +27,7 @@ static struct scatterlist *fill_sg_entry(struct scatterlist *sgl, size_t length,
 		 * does not require the CPU list for mapping or unmapping.
 		 */
 		sg_set_page(sgl, NULL, 0, 0);
-		sg_dma_address(sgl) = addr + (dma_addr_t)i * UINT_MAX;
+		sg_dma_address(sgl) = addr + (dma_addr_t)i * MAX_ENT_SZ;
 		sg_dma_len(sgl) = len;
 		sgl = sg_next(sgl);
 	}
@@ -41,14 +44,14 @@ static unsigned int calc_sg_nents(struct dma_iova_state *state,
 
 	if (!state || !dma_use_iova(state)) {
 		for (i = 0; i < nr_ranges; i++)
-			nents += DIV_ROUND_UP(phys_vec[i].len, UINT_MAX);
+			nents += DIV_ROUND_UP(phys_vec[i].len, MAX_ENT_SZ);
 	} else {
 		/*
 		 * In IOVA case, there is only one SG entry which spans
 		 * for whole IOVA address space, but we need to make sure
 		 * that it fits sg->length, maybe we need more.
 		 */
-		nents = DIV_ROUND_UP(size, UINT_MAX);
+		nents = DIV_ROUND_UP(size, MAX_ENT_SZ);
 	}
 
 	return nents;
-- 
2.55.0.rc0.738.g0c8ab3ebcc-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
