Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMb/I5di5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:29:59 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDA6431486
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:29:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B13C40517
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:29:58 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id EB4D23F7B3
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Mar 2026 19:23:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=jRt16o6o;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.45) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-48702d51cd0so2480075e9.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Mar 2026 12:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1774466635; x=1775071435; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YMfoKT234OWAIu2ygAH4xOQ0BTmCnNSAwf62AjGD0Kg=;
        b=jRt16o6oVeyUAzz4+ZpWph6Nl6yvURqU5QkO/l/WdP1O6JW2/A354ehLbMprGRitR4
         zXTIAbFJgnDvsowEIcl0xvntWZnSKhHnnWnVGx+hsN9CE7a+koQujBwbi9QCubW7o4Hu
         FLVNY8+d1qxv/Ex9Qt68CPUuBnPX4Z/AayDpzz1gnpom/KwxDgTKZED9zyQkWhSDsgTK
         rhj9LTgalt7Xeq4EjwVfBiHGWvtYWyyA1H4w563sDKb6uaOLmXtNkaVC5WiQxw3lmOkk
         wkKP8CW6tL7c7dsRKGleZIag6SuVwJVHTogBQBoIe0j7Z2l7byhR1cfs8sapzhO4HT5y
         oP+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774466635; x=1775071435;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YMfoKT234OWAIu2ygAH4xOQ0BTmCnNSAwf62AjGD0Kg=;
        b=HtThBvm4iVZ7/mjCzlbIfmDbfVsFhyo3RKB+h52FNTw8VVevtLpHBbACdftSG4YoDp
         kkSZyQMtCCkWbTIjx4HgLSeEY8wm0YuwedP1N0TBRrRuD/OeM9ZE7gOcHCCg/0m7WAjq
         pqkynj5VHgzZFwgOdaLdlVo56Me5NvsxQhLcRYGVqtU8dvvLxQNCw3N3aFR2eqPjdpNA
         PFnxy1XGXcpyJcnPd7Efnsi0ML752eHiOShQqydwBdp5sMR6euUbDf1P2e31Vmk9v+v3
         +Jc/cfYJoubMz0DTciP9jKk4OmVmScHGPdVY/W8jjxqBektOwMHzwI46qcyToLiuk87j
         VG2g==
X-Forwarded-Encrypted: i=1; AJvYcCXk9HRpmy/CLNGeoIIuONWqn2kEXAJEEwYtOrgpg1pWt8e8ZT0nRiZRAk1c748R2PNTnIVMdOPpWz4EJnui@lists.linaro.org
X-Gm-Message-State: AOJu0YwwAAdE7RP2TjU/kCFYQ0MO71Rr3qrEeoV+YqhpSPFqHJM0fGm4
	5ducfh3L6jQ5i3ZimnLWS3YJavUfsDe+RKEb81fUull3k2ovRPE9ujLL3OK5eFGBFug=
X-Gm-Gg: ATEYQzzwwY58CBkyjhYBYoXgD9MvCQg7HZC9wAJd0HpqfZzLxu9ShL9zL2JFzL+rXne
	aDSGZzce8J6R260NH3n2zvyQauG0wNVcRFatqhxzEsZUrN9FvXIKs2hLDGTckOGyK1rtDJkbvgI
	gJpiu3xctYlaq+dJeuUPmp4N+GQ9B8DkgwhTstm6leOkebsB/8JYJTDTRgEnOX1XPL8gn/04sG4
	9/nj1sR38IQJSR4i2IAqHsF8cxl0B+HQDPjs/TkJ9nIy+u/mm//eiOjC9wFKli8/dbQw5aohoXf
	1Rb+0BZYU1jbrwgsmB3dea9A9mv0eAzuu5GtlQcMtUFZj6JUo6+Z/XQ3itbqoc94ZAFBprDMDJc
	3oXeVNWuSkswJ5lrdC7rpgZ+tKr6l+nb8Cgcyf62YeslplmHLG7wUFbhbRCbt+Aan6Q7WHgdwqD
	AZVB8imrkwZu/1NoHnUA==
X-Received: by 2002:a05:600c:c4a4:b0:485:1878:7b8c with SMTP id 5b1f17b1804b1-48716056512mr65908275e9.18.1774466634748;
        Wed, 25 Mar 2026 12:23:54 -0700 (PDT)
Received: from localhost ([140.209.217.211])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48711702191sm146523035e9.5.2026.03.25.12.23.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2026 12:23:54 -0700 (PDT)
From: Jiri Pirko <jiri@resnulli.us>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	iommu@lists.linux.dev,
	linux-media@vger.kernel.org
Date: Wed, 25 Mar 2026 20:23:51 +0100
Message-ID: <20260325192352.437608-2-jiri@resnulli.us>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20260325192352.437608-1-jiri@resnulli.us>
References: <20260325192352.437608-1-jiri@resnulli.us>
MIME-Version: 1.0
X-Spamd-Bar: -
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3SOMI76252QNTAQFRSTGUCKFQOMXJTU6
X-Message-ID-Hash: 3SOMI76252QNTAQFRSTGUCKFQOMXJTU6
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:29:43 +0000
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 1/2] dma-mapping: introduce DMA_ATTR_CC_SHARED for shared memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3SOMI76252QNTAQFRSTGUCKFQOMXJTU6/>
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
	DATE_IN_PAST(1.00)[622];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[resnulli.us];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.526];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,resnulli.us:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 4EDA6431486
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jiri Pirko <jiri@nvidia.com>

Current CC designs don't place a vIOMMU in front of untrusted devices.
Instead, the DMA API forces all untrusted device DMA through swiotlb
bounce buffers (is_swiotlb_force_bounce()) which copies data into
shared memory on behalf of the device.

When a caller has already arranged for the memory to be shared
via set_memory_decrypted(), the DMA API needs to know so it can map
directly using the unencrypted physical address rather than bounce
buffering. Following the pattern of DMA_ATTR_MMIO, add
DMA_ATTR_CC_SHARED for this purpose. Like the MMIO case, only the
caller knows what kind of memory it has and must inform the DMA API
for it to work correctly.

Signed-off-by: Jiri Pirko <jiri@nvidia.com>
---
v4->v5:
- rebased on top od dma-mapping-for-next
- s/decrypted/shared/
v3->v4:
- added some sanity checks to dma_map_phys and dma_unmap_phys
- enhanced documentation of DMA_ATTR_CC_DECRYPTED attr
v1->v2:
- rebased on top of recent dma-mapping-fixes
---
 include/linux/dma-mapping.h | 10 ++++++++++
 include/trace/events/dma.h  |  3 ++-
 kernel/dma/direct.h         | 14 +++++++++++---
 kernel/dma/mapping.c        | 13 +++++++++++--
 4 files changed, 34 insertions(+), 6 deletions(-)

diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
index 677c51ab7510..db8ab24a54f4 100644
--- a/include/linux/dma-mapping.h
+++ b/include/linux/dma-mapping.h
@@ -92,6 +92,16 @@
  * flushing.
  */
 #define DMA_ATTR_REQUIRE_COHERENT	(1UL << 12)
+/*
+ * DMA_ATTR_CC_SHARED: Indicates the DMA mapping is shared (decrypted) for
+ * confidential computing guests. For normal system memory the caller must have
+ * called set_memory_decrypted(), and pgprot_decrypted must be used when
+ * creating CPU PTEs for the mapping. The same shared semantic may be passed
+ * to the vIOMMU when it sets up the IOPTE. For MMIO use together with
+ * DMA_ATTR_MMIO to indicate shared MMIO. Unless DMA_ATTR_MMIO is provided
+ * a struct page is required.
+ */
+#define DMA_ATTR_CC_SHARED	(1UL << 13)
 
 /*
  * A dma_addr_t can hold any valid DMA or bus address for the platform.  It can
diff --git a/include/trace/events/dma.h b/include/trace/events/dma.h
index 63597b004424..31c9ddf72c9d 100644
--- a/include/trace/events/dma.h
+++ b/include/trace/events/dma.h
@@ -34,7 +34,8 @@ TRACE_DEFINE_ENUM(DMA_NONE);
 		{ DMA_ATTR_PRIVILEGED, "PRIVILEGED" }, \
 		{ DMA_ATTR_MMIO, "MMIO" }, \
 		{ DMA_ATTR_DEBUGGING_IGNORE_CACHELINES, "CACHELINES_OVERLAP" }, \
-		{ DMA_ATTR_REQUIRE_COHERENT, "REQUIRE_COHERENT" })
+		{ DMA_ATTR_REQUIRE_COHERENT, "REQUIRE_COHERENT" }, \
+		{ DMA_ATTR_CC_SHARED, "CC_SHARED" })
 
 DECLARE_EVENT_CLASS(dma_map,
 	TP_PROTO(struct device *dev, phys_addr_t phys_addr, dma_addr_t dma_addr,
diff --git a/kernel/dma/direct.h b/kernel/dma/direct.h
index b86ff65496fc..7140c208c123 100644
--- a/kernel/dma/direct.h
+++ b/kernel/dma/direct.h
@@ -89,16 +89,24 @@ static inline dma_addr_t dma_direct_map_phys(struct device *dev,
 	dma_addr_t dma_addr;
 
 	if (is_swiotlb_force_bounce(dev)) {
-		if (attrs & (DMA_ATTR_MMIO | DMA_ATTR_REQUIRE_COHERENT))
-			return DMA_MAPPING_ERROR;
+		if (!(attrs & DMA_ATTR_CC_SHARED)) {
+			if (attrs & (DMA_ATTR_MMIO | DMA_ATTR_REQUIRE_COHERENT))
+				return DMA_MAPPING_ERROR;
 
-		return swiotlb_map(dev, phys, size, dir, attrs);
+			return swiotlb_map(dev, phys, size, dir, attrs);
+		}
+	} else if (attrs & DMA_ATTR_CC_SHARED) {
+		return DMA_MAPPING_ERROR;
 	}
 
 	if (attrs & DMA_ATTR_MMIO) {
 		dma_addr = phys;
 		if (unlikely(!dma_capable(dev, dma_addr, size, false)))
 			goto err_overflow;
+	} else if (attrs & DMA_ATTR_CC_SHARED) {
+		dma_addr = phys_to_dma_unencrypted(dev, phys);
+		if (unlikely(!dma_capable(dev, dma_addr, size, false)))
+			goto err_overflow;
 	} else {
 		dma_addr = phys_to_dma(dev, phys);
 		if (unlikely(!dma_capable(dev, dma_addr, size, true)) ||
diff --git a/kernel/dma/mapping.c b/kernel/dma/mapping.c
index df3eccc7d4ca..23ed8eb9233e 100644
--- a/kernel/dma/mapping.c
+++ b/kernel/dma/mapping.c
@@ -157,6 +157,7 @@ dma_addr_t dma_map_phys(struct device *dev, phys_addr_t phys, size_t size,
 {
 	const struct dma_map_ops *ops = get_dma_ops(dev);
 	bool is_mmio = attrs & DMA_ATTR_MMIO;
+	bool is_cc_shared = attrs & DMA_ATTR_CC_SHARED;
 	dma_addr_t addr = DMA_MAPPING_ERROR;
 
 	BUG_ON(!valid_dma_direction(dir));
@@ -168,8 +169,11 @@ dma_addr_t dma_map_phys(struct device *dev, phys_addr_t phys, size_t size,
 		return DMA_MAPPING_ERROR;
 
 	if (dma_map_direct(dev, ops) ||
-	    (!is_mmio && arch_dma_map_phys_direct(dev, phys + size)))
+	    (!is_mmio && !is_cc_shared &&
+	     arch_dma_map_phys_direct(dev, phys + size)))
 		addr = dma_direct_map_phys(dev, phys, size, dir, attrs, true);
+	else if (is_cc_shared)
+		return DMA_MAPPING_ERROR;
 	else if (use_dma_iommu(dev))
 		addr = iommu_dma_map_phys(dev, phys, size, dir, attrs);
 	else if (ops->map_phys)
@@ -206,11 +210,16 @@ void dma_unmap_phys(struct device *dev, dma_addr_t addr, size_t size,
 {
 	const struct dma_map_ops *ops = get_dma_ops(dev);
 	bool is_mmio = attrs & DMA_ATTR_MMIO;
+	bool is_cc_shared = attrs & DMA_ATTR_CC_SHARED;
 
 	BUG_ON(!valid_dma_direction(dir));
+
 	if (dma_map_direct(dev, ops) ||
-	    (!is_mmio && arch_dma_unmap_phys_direct(dev, addr + size)))
+	    (!is_mmio && !is_cc_shared &&
+	     arch_dma_unmap_phys_direct(dev, addr + size)))
 		dma_direct_unmap_phys(dev, addr, size, dir, attrs, true);
+	else if (is_cc_shared)
+		return;
 	else if (use_dma_iommu(dev))
 		iommu_dma_unmap_phys(dev, addr, size, dir, attrs);
 	else if (ops->unmap_phys)
-- 
2.51.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
