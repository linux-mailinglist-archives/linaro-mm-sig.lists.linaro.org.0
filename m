Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCGQFOEQ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:40:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 797B8411D2C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:40:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 74EB444B7E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:39:59 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by lists.linaro.org (Postfix) with ESMTPS id AA33D3F7EA
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Feb 2026 15:38:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=k8vD1hj2;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.221.50) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-4359228b7c6so1952870f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Feb 2026 07:38:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1770651493; x=1771256293; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=10eo7Xx3UsXznodXP/t6JgtysFzGllvuxfjnxVYXEzw=;
        b=k8vD1hj2xgCHxiNtxD9e+L3oCzKDaffp88gw/Qpb4t7HCVe44x6zk6THY1JthdKIRZ
         OpKTVdrEJ2batYEMZOtioe+TmU6ZbIqSX5/uhKXGUyFoomnJrfLLanjZnd3xn6izrQHn
         yDjZJJn0WIpnWHlCgh56FDWgZLtVu1ijmVi8KIpreyUA2arFC3X36zy1efF1vr+Micii
         nwLttGBr/A+CDgxQt8LRI0SV5ODCsItJXJoeMdS3ymoUjuGBmVkC2FrwEE3IFBkX5N/U
         wrotcPxG0TkE9kxvLc1OL+sH+iEmrInU77m4/zjdSwjjNwYdcAWuy+hBwbq9/fzV2RDK
         ob3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770651493; x=1771256293;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=10eo7Xx3UsXznodXP/t6JgtysFzGllvuxfjnxVYXEzw=;
        b=ECsIYIUrqsSDc1kMBv5mA5OZTusM/yiYfN5SikyWWRcsfqPzRzDsMBpGkRobaBx9V9
         b71GW2mh2X0RyxeI7ZlK6lNlXwBeKGuJHy8JnFjLluMyDmC/4T/w2tdNXvm1+IkbJkH0
         alojeH5CfC5vzTlFNwom4bcrrIc4sf1ATLg+3qafKWkRuVnjxWNgy+1ouZ4IADW6LW8D
         5KugLvPYXEMfzRt4GV31omfctJuDb+EhRmk1xmUulsr0zaIdgOXnNdBlaKiy10Clf9aM
         bNOiDeHW9VUU2LUFDjbImFvIDZ+VthTbHTueegRTP9ZPBFZRB2Cuf/kd3I7+uZRSAJ6X
         uRqg==
X-Forwarded-Encrypted: i=1; AJvYcCXROJDMfmjDXnx8bvNqzt2RUJP73FAtLUyCZOuRfvZLX+cWkUAAUeqHwN2Q2zZH/INkHJXlNBTiF7HwMhzf@lists.linaro.org
X-Gm-Message-State: AOJu0YyW3q2Th+mQJM900DnXA0fBupQdCYNhIgxzyAr7H+f8JlLqyAcJ
	UxJLckJgehGdclV+MTLUCbgqKxqxi9TkG1HpMMs7saiLCvK8vJBf6W/WjrTisd4emFA=
X-Gm-Gg: AZuq6aJEneLIlDUb3KF/W4C5QCSl7O9msnGy2q1WDScdSFor6XGnr+yIOqiMa3OBigY
	0PnJ8Co0fBtjmyWsXL62c7yzCuDk1IjIIWPAFJg8dqBXD8cbwTGMMCvk6zVOZuBh04pjaD6g9WY
	mV6SoRMDLpYgAeoLSacO5SKsBkzHTi3lvlvkx3OCbyNXuIECcnIOkd2JgVnfjNX1jhouXHtRxnq
	ZMhm20kbxC9z2/ttokoBCQkAR2Xh4z2el0TGLWZ02jtEftJHN4lkvrF8BH99Qr67sGsqmiu1uJk
	nXWyCIO8a3I9tJvjAjbXR234XfCZGl2DjCYFMzKlpO53UI2K2ar2egdTxf66CzjOKisDDubJhCQ
	LLyYbW8wwiLfxOJDc00bYNQnmrAVs5wjsK0Aauf+iDeQr/Tn7jyKlgUbObEee/iaRPHZdBMj9nO
	iKLA==
X-Received: by 2002:a05:6000:4211:b0:435:b755:c67e with SMTP id ffacd0b85a97d-4362938a453mr16934813f8f.49.1770651492550;
        Mon, 09 Feb 2026 07:38:12 -0800 (PST)
Received: from localhost ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436296bd4a1sm27481147f8f.17.2026.02.09.07.38.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 07:38:12 -0800 (PST)
From: Jiri Pirko <jiri@resnulli.us>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	iommu@lists.linux.dev,
	linux-media@vger.kernel.org
Date: Mon,  9 Feb 2026 16:38:06 +0100
Message-ID: <20260209153809.250835-3-jiri@resnulli.us>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20260209153809.250835-1-jiri@resnulli.us>
References: <20260209153809.250835-1-jiri@resnulli.us>
MIME-Version: 1.0
X-Spamd-Bar: -
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DIMO5QBZ2RF2SQ3F2ZTHV4DCHSO3OSAE
X-Message-ID-Hash: DIMO5QBZ2RF2SQ3F2ZTHV4DCHSO3OSAE
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:10 +0000
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/5] dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DIMO5QBZ2RF2SQ3F2ZTHV4DCHSO3OSAE/>
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
	DATE_IN_PAST(1.00)[1585];
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
	NEURAL_HAM(-0.00)[-0.792];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,linaro.org:email,resnulli.us:mid]
X-Rspamd-Queue-Id: 797B8411D2C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jiri Pirko <jiri@nvidia.com>

This is only relevant inside confidential computing (CoCo) virtual
machines, not on the hypervisor side.

Current CoCo designs don't place a vIOMMU in front of untrusted devices.
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
 include/linux/dma-mapping.h |  7 +++++++
 include/trace/events/dma.h  |  3 ++-
 kernel/dma/direct.h         | 14 +++++++++++---
 3 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
index aa36a0d1d9df..052235feb853 100644
--- a/include/linux/dma-mapping.h
+++ b/include/linux/dma-mapping.h
@@ -78,6 +78,13 @@
  */
 #define DMA_ATTR_MMIO		(1UL << 10)
 
+/*
+ * DMA_ATTR_CC_DECRYPTED: Indicates memory that has been explicitly decrypted
+ * (shared) for confidential computing guests. The caller must have
+ * called set_memory_decrypted(). A struct page is required.
+ */
+#define DMA_ATTR_CC_DECRYPTED	(1UL << 11)
+
 /*
  * A dma_addr_t can hold any valid DMA or bus address for the platform.  It can
  * be given to a device to use as a DMA source or target.  It is specific to a
diff --git a/include/trace/events/dma.h b/include/trace/events/dma.h
index b3fef140ae15..b3c2cee8841a 100644
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
index 62f0d9d0ba02..ae5bc1919e1c 100644
--- a/kernel/dma/direct.h
+++ b/kernel/dma/direct.h
@@ -87,16 +87,24 @@ static inline dma_addr_t dma_direct_map_phys(struct device *dev,
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
-- 
2.51.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
