Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNwdM75g5mkxvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:22:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D984310DD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:22:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF3D03F70A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:22:05 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id C7DC43F683
	for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Mar 2026 12:59:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=D9DlbXfp;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.49) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-48539cbb7b1so26213415e9.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Mar 2026 05:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1773665941; x=1774270741; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=emL9z4Qbm9oQec+/P2Nv6r0/NLIOGJvL2ewVYE7x7Io=;
        b=D9DlbXfpHLKEtq+vlRm2HdCIITG4Du5SQB1+gddt3NxLzA+In8BGL/aJVKA5pVVK9c
         Nvvc2fVrZO/8MpNCqadYENeCaswC6qQDtNQGC6bMTGDhIfGQfQ4bpWw00+aFdXnvWsFV
         GUE5BIOWl/h436jkIGl2HjHUbJ16M7f2iJ9ciRWKxkyufANuBNOELSqMh8UGYVsobxxk
         FOaBTTNGbn1TlwCD0kyl97QQi9FaMJu2qgKsm1zQO1iIhV8RdrOj5/LKKa04MycMKmNi
         lcDaAFiv94aR5XtSqfRwdQ41D3tjTGgjNMJ4VGy+nwlAj3YxCwyIa8/1rv0u1UwEI8qt
         mDvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773665941; x=1774270741;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=emL9z4Qbm9oQec+/P2Nv6r0/NLIOGJvL2ewVYE7x7Io=;
        b=spOZM6imd80DIZ15Hf0WJvipGyDd0CQpISRp9xNDQ5H5eXZybtci24cwF4Nt5YHIHM
         msyRVIEEIeSIZDHbj1OUiiNvTC4kkqNx21IikkRVM/8vhIh3Jg9x5Kkq5e4OgvcRwgGC
         CYFSXdbaEVvEPXClk+1FMPftX0z+1ZdVOfXMEUYYkMZre8dNRy9hvY+lVWObmElU9bim
         x20moR9dGyNWpIHy0vPGx8h/Kmdv6PG28DcZWtCToau0ZmPVaKznsEpPWqTRedQ4uC3x
         Yk05HQlzXUOCZIf0aM2wQLdbJNLOKDZWAHUuwB45SuaEyzgU9Nj3Cs9pUggAnfWujhuY
         kEYw==
X-Forwarded-Encrypted: i=1; AJvYcCWrvC6NcK23Oju6oMSOQRq0ow/Lg+A2shNygGY0AbrDYh/0wZOI5EMKcy5jD/cCiZFC8kIBFW5GyZf/QqP7@lists.linaro.org
X-Gm-Message-State: AOJu0YxpHMFqr26OFUJM/FOR/Fe/gOLhicTdQJKI9wUVJKGlekEMF4Cb
	5Et6KRLI8hNLIZ3IcoHqPT/VthxhkKE2YdWTPm3W5BHJV2XS7COJlRuQrPvLj8T5Twc=
X-Gm-Gg: ATEYQzy0HrnPlYUO5m0vWjBYNCsLpOhVloELq8JSEHkA86YiKcVC4e3TVlRpBLOsQXI
	bdDjVOZtZcBm0YHvtAYcnOZr5gBgHlf36+my0dM13mglTDxoy0NwvlCLbnD8aI5OSbVPnJ5BVS/
	Ku6HYiRl/GDheweR9yh8vjZ17yggcxQhkC5mnD0jfxiIvNejlNETvRaR/AzDHGJSnCakmgijTRH
	81wD9SAUz7KizE6D5gUjMXZ3GpEj0rW8PIdtFK1pA/VzJq9Pr0NRVcW8Ukt9Q1O1TtmoMGUu6x3
	ZTiKqA57gGL9n9B6Iswb4uih6Wt77VaDL1sI6sZJr8oAMXIIt5T0FC3cfAV3E7LkKBqm4L7G51p
	Fwuf3oDHpcmocc1Cg6/f9tfVd4E7k4hyV4A0l9jeqQKJVLPF/UHe3HaIXkSrdfYPj8xuRNdt8CN
	bONE+eeux8BXNIELIRTatDNzpe
X-Received: by 2002:a05:600c:3b90:b0:485:345b:ccb1 with SMTP id 5b1f17b1804b1-48556720f86mr199505885e9.27.1773665940699;
        Mon, 16 Mar 2026 05:59:00 -0700 (PDT)
Received: from localhost ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b45e51681sm4423103f8f.25.2026.03.16.05.59.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 05:59:00 -0700 (PDT)
From: Jiri Pirko <jiri@resnulli.us>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	iommu@lists.linux.dev,
	linux-media@vger.kernel.org
Date: Mon, 16 Mar 2026 13:58:56 +0100
Message-ID: <20260316125857.617836-2-jiri@resnulli.us>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20260316125857.617836-1-jiri@resnulli.us>
References: <20260316125857.617836-1-jiri@resnulli.us>
MIME-Version: 1.0
X-Spamd-Bar: -
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LHKYFSRX7TM66TNJJWKR6HZ5YEJEERC3
X-Message-ID-Hash: LHKYFSRX7TM66TNJJWKR6HZ5YEJEERC3
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:21:46 +0000
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 1/2] dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LHKYFSRX7TM66TNJJWKR6HZ5YEJEERC3/>
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
	DATE_IN_PAST(1.00)[844];
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
	NEURAL_SPAM(0.00)[0.527];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[resnulli.us:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: A3D984310DD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jiri Pirko <jiri@nvidia.com>

Current CC designs don't place a vIOMMU in front of untrusted devices.
Instead, the DMA API forces all untrusted device DMA through swiotlb
bounce buffers (is_swiotlb_force_bounce()) which copies data into
decrypted memory on behalf of the device.

When a caller has already arranged for the memory to be decrypted
via set_memory_decrypted(), the DMA API needs to know so it can map
directly using the unencrypted physical address rather than bounce
buffering. Following the pattern of DMA_ATTR_MMIO, add
DMA_ATTR_CC_DECRYPTED for this purpose. Like the MMIO case, only the
caller knows what kind of memory it has and must inform the DMA API
for it to work correctly.

Signed-off-by: Jiri Pirko <jiri@nvidia.com>
---
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
index 29973baa0581..476964d2b22f 100644
--- a/include/linux/dma-mapping.h
+++ b/include/linux/dma-mapping.h
@@ -85,6 +85,16 @@
  * a cacheline must have this attribute for this to be considered safe.
  */
 #define DMA_ATTR_CPU_CACHE_CLEAN	(1UL << 11)
+/*
+ * DMA_ATTR_CC_DECRYPTED: Indicates the DMA mapping is decrypted (shared) for
+ * confidential computing guests. For normal system memory the caller must have
+ * called set_memory_decrypted(), and pgprot_decrypted must be used when
+ * creating CPU PTEs for the mapping. The same decrypted semantic may be passed
+ * to the vIOMMU when it sets up the IOPTE. For MMIO use together with
+ * DMA_ATTR_MMIO to indicate decrypted MMIO. Unless DMA_ATTR_MMIO is provided
+ * a struct page is required.
+ */
+#define DMA_ATTR_CC_DECRYPTED	(1UL << 12)
 
 /*
  * A dma_addr_t can hold any valid DMA or bus address for the platform.  It can
diff --git a/include/trace/events/dma.h b/include/trace/events/dma.h
index 33e99e792f1a..b8082d5177c4 100644
--- a/include/trace/events/dma.h
+++ b/include/trace/events/dma.h
@@ -32,7 +32,8 @@ TRACE_DEFINE_ENUM(DMA_NONE);
 		{ DMA_ATTR_ALLOC_SINGLE_PAGES, "ALLOC_SINGLE_PAGES" }, \
 		{ DMA_ATTR_NO_WARN, "NO_WARN" }, \
 		{ DMA_ATTR_PRIVILEGED, "PRIVILEGED" }, \
-		{ DMA_ATTR_MMIO, "MMIO" })
+		{ DMA_ATTR_MMIO, "MMIO" }, \
+		{ DMA_ATTR_CC_DECRYPTED, "CC_DECRYPTED" })
 
 DECLARE_EVENT_CLASS(dma_map,
 	TP_PROTO(struct device *dev, phys_addr_t phys_addr, dma_addr_t dma_addr,
diff --git a/kernel/dma/direct.h b/kernel/dma/direct.h
index e89f175e9c2d..c047a9d0fda3 100644
--- a/kernel/dma/direct.h
+++ b/kernel/dma/direct.h
@@ -84,16 +84,24 @@ static inline dma_addr_t dma_direct_map_phys(struct device *dev,
 	dma_addr_t dma_addr;
 
 	if (is_swiotlb_force_bounce(dev)) {
-		if (attrs & DMA_ATTR_MMIO)
-			return DMA_MAPPING_ERROR;
+		if (!(attrs & DMA_ATTR_CC_DECRYPTED)) {
+			if (attrs & DMA_ATTR_MMIO)
+				return DMA_MAPPING_ERROR;
 
-		return swiotlb_map(dev, phys, size, dir, attrs);
+			return swiotlb_map(dev, phys, size, dir, attrs);
+		}
+	} else if (attrs & DMA_ATTR_CC_DECRYPTED) {
+		return DMA_MAPPING_ERROR;
 	}
 
 	if (attrs & DMA_ATTR_MMIO) {
 		dma_addr = phys;
 		if (unlikely(!dma_capable(dev, dma_addr, size, false)))
 			goto err_overflow;
+	} else if (attrs & DMA_ATTR_CC_DECRYPTED) {
+		dma_addr = phys_to_dma_unencrypted(dev, phys);
+		if (unlikely(!dma_capable(dev, dma_addr, size, false)))
+			goto err_overflow;
 	} else {
 		dma_addr = phys_to_dma(dev, phys);
 		if (unlikely(!dma_capable(dev, dma_addr, size, true)) ||
diff --git a/kernel/dma/mapping.c b/kernel/dma/mapping.c
index 3928a509c44c..abb0c88b188b 100644
--- a/kernel/dma/mapping.c
+++ b/kernel/dma/mapping.c
@@ -157,6 +157,7 @@ dma_addr_t dma_map_phys(struct device *dev, phys_addr_t phys, size_t size,
 {
 	const struct dma_map_ops *ops = get_dma_ops(dev);
 	bool is_mmio = attrs & DMA_ATTR_MMIO;
+	bool is_cc_decrypted = attrs & DMA_ATTR_CC_DECRYPTED;
 	dma_addr_t addr = DMA_MAPPING_ERROR;
 
 	BUG_ON(!valid_dma_direction(dir));
@@ -165,8 +166,11 @@ dma_addr_t dma_map_phys(struct device *dev, phys_addr_t phys, size_t size,
 		return DMA_MAPPING_ERROR;
 
 	if (dma_map_direct(dev, ops) ||
-	    (!is_mmio && arch_dma_map_phys_direct(dev, phys + size)))
+	    (!is_mmio && !is_cc_decrypted &&
+	     arch_dma_map_phys_direct(dev, phys + size)))
 		addr = dma_direct_map_phys(dev, phys, size, dir, attrs);
+	else if (is_cc_decrypted)
+		return DMA_MAPPING_ERROR;
 	else if (use_dma_iommu(dev))
 		addr = iommu_dma_map_phys(dev, phys, size, dir, attrs);
 	else if (ops->map_phys)
@@ -203,11 +207,16 @@ void dma_unmap_phys(struct device *dev, dma_addr_t addr, size_t size,
 {
 	const struct dma_map_ops *ops = get_dma_ops(dev);
 	bool is_mmio = attrs & DMA_ATTR_MMIO;
+	bool is_cc_decrypted = attrs & DMA_ATTR_CC_DECRYPTED;
 
 	BUG_ON(!valid_dma_direction(dir));
+
 	if (dma_map_direct(dev, ops) ||
-	    (!is_mmio && arch_dma_unmap_phys_direct(dev, addr + size)))
+	    (!is_mmio && !is_cc_decrypted &&
+	     arch_dma_unmap_phys_direct(dev, addr + size)))
 		dma_direct_unmap_phys(dev, addr, size, dir, attrs);
+	else if (is_cc_decrypted)
+		return;
 	else if (use_dma_iommu(dev))
 		iommu_dma_unmap_phys(dev, addr, size, dir, attrs);
 	else if (ops->unmap_phys)
-- 
2.51.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
