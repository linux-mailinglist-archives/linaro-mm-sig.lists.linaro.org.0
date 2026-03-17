Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJ+TFM9g5mkxvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:22:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EB717431109
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:22:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F0828404F6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:22:21 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	by lists.linaro.org (Postfix) with ESMTPS id F0FF83F700
	for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2026 05:37:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=TwiPbLFz;
	spf=pass (lists.linaro.org: domain of mikhail.v.gavrilov@gmail.com designates 209.85.167.48 as permitted sender) smtp.mailfrom=mikhail.v.gavrilov@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-59e5aa4ca41so4894285e87.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Mar 2026 22:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773725822; x=1774330622; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2NiRAQv05vxst//6uLfp/yYFASGq0d9XovqJe++xcxQ=;
        b=TwiPbLFzMv2lPcSCRY7NL2vCp3a68UCZ41+YCsI867fT4xTIaZ0slsIlmX2HPzc0BN
         +m2nRfauiRssCObj+S/cp4SAde7XpBOPzc2GNwt+fjaRR02mqSO7lOlCaKl3iY3dgRZD
         YP/Tn/mUFz8QwwVMk7GH/4hfaQFQLN5o9fsXmnQoO4FDRZRYuieBP5apTHNMNo7SmmB0
         2BJQLoyrjyRuEawzgE+DI3qDeg6ot6n1Wh7HVtl7+b1EJ6xss1V5KLvdpWmcE6JImYLo
         J3eNFnX+dq0FKn+f9Hmh0JpkIQ/m/HhQEPF0u8PyLPLi/fIXoHAYGF5cyXfa7mt21SiR
         mDCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773725822; x=1774330622;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2NiRAQv05vxst//6uLfp/yYFASGq0d9XovqJe++xcxQ=;
        b=UuPLMXADnusK0kemNi1kNWjfI3jmlmeyjNOc26AgBi1UDTltXqEhLc98KJgXbQAvMh
         rNJcfsB+XoPJqAzV2VyJTMMsIxRq+3Zz7ngsA0u6toq0Vy7E4IcnVo5I6U5OoHE9vWFa
         fLEyNfcB+sV5Tt4Ina0YOI4ZU+jOpaQ+QEj4V9UXN+7OgCU72Mvwc0C6X11t1Te1Pp9N
         3TzlxogDfC+gX/vjiCpHPapCcaJ7tQJ16TaY70nA3lUD5pr164zJtAUvyr+1CPd3PP4D
         mH3NWqv81M4ACsrlvIev5zb08U2bXjfDPmSrAwDklDILExp4oXdjqN65daqjiYZQjt7r
         8C7Q==
X-Forwarded-Encrypted: i=1; AJvYcCW52qcHZviNKmh15C+6eCFOsA6UVWjhve3o5cSf7Xlvuz7gWQVwhhnTjbMkKB0rfBckuQenem7T3CycOuBk@lists.linaro.org
X-Gm-Message-State: AOJu0YzoY5jqm2VVdplk97LPagKeW1Ya7aepagqJFQwPLG8UBcforZM5
	VP50jqFgcpdvxtE0VcD06iRU6CjH9ZsUauT/fZw4QOCj8hfV+3gXeuuP
X-Gm-Gg: ATEYQzzJAdRHtb5nx19JDMqZDkonCvAbSV0l8pYWMzsJ3hpttFmlbbKMqQ3uK5MfCbZ
	gRKXrYqxqs8HLBkNeD6nJ6lh/R+hCWZRiVdXbe+1V1epJifs+CKWb0mYRsWfJx9Njso7b9nkLWQ
	Nc0V1gCBVRG/H811tx4zF0d2C6fuvMZWV/9eGXzxioeZYQb748KBgTWfERbmrSOxvzS6iDr/88k
	2Azr/0PmNQs3F3QrSqXRysVCcAcLTu4b02+SLyC4MAgp5RfKIqZFMrVTpPTbKYNWDWj+sx4iqG6
	Ro4SkJXXazEgpY7+oe11UX9J2RmDlDwwAGnYnCliAnICEB407FKKwb7OjN8ObLJlFPwWTPp1yyG
	WNGhFmPHtBXG97CQUjEWVf1r++Ak5U/iVHiiaDsRgbPS7lzeixisQQu9asTg7VjkwZzScSXR/dX
	8+ubpicFiwSVqcM+3e1kWb0wjGlYXGXjpj+yQzWG8kcFOI
X-Received: by 2002:a05:6512:2350:b0:5a1:c03b:7980 with SMTP id 2adb3069b0e04-5a1c03b7a7dmr186889e87.28.1773725821391;
        Mon, 16 Mar 2026 22:37:01 -0700 (PDT)
Received: from localhost ([188.234.148.119])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156366606sm3958338e87.73.2026.03.16.22.36.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 22:36:59 -0700 (PDT)
From: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
To: kraxel@redhat.com,
	vivek.kasireddy@intel.com
Date: Tue, 17 Mar 2026 10:36:53 +0500
Message-ID: <20260317053653.28888-1-mikhail.v.gavrilov@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: mikhail.v.gavrilov@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7FIH7NUGCMJOYDVCZE5AOAJV5DJHHSGO
X-Message-ID-Hash: 7FIH7NUGCMJOYDVCZE5AOAJV5DJHHSGO
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:21:48 +0000
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org, Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf/udmabuf: skip redundant cpu sync to fix cacheline EEXIST warning
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7FIH7NUGCMJOYDVCZE5AOAJV5DJHHSGO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[827];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mikhailvgavrilov@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,gmail.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.780];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: EB717431109
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When CONFIG_DMA_API_DEBUG_SG is enabled, importing a udmabuf into a DRM
driver (e.g. amdgpu for video playback in GNOME Videos / Showtime)
triggers a spurious warning:

  DMA-API: amdgpu 0000:03:00.0: cacheline tracking EEXIST, \
      overlapping mappings aren't supported
  WARNING: kernel/dma/debug.c:619 at add_dma_entry+0x473/0x5f0

The call chain is:

  amdgpu_cs_ioctl
   -> amdgpu_ttm_backend_bind
    -> dma_buf_map_attachment
     -> [udmabuf] map_udmabuf -> get_sg_table
      -> dma_map_sgtable(dev, sg, direction, 0)  // attrs=0
       -> debug_dma_map_sg -> add_dma_entry -> EEXIST

This happens because udmabuf builds a per-page scatter-gather list via
sg_set_folio().  When begin_cpu_udmabuf() has already created an sg
table mapped for the misc device, and an importer such as amdgpu maps
the same pages for its own device via map_udmabuf(), the DMA debug
infrastructure sees two active mappings whose physical addresses share
cacheline boundaries and warns about the overlap.

The DMA_ATTR_SKIP_CPU_SYNC flag suppresses this check in
add_dma_entry() because it signals that no CPU cache maintenance is
performed at map/unmap time, making the cacheline overlap harmless.

All other major dma-buf exporters already pass this flag:
  - drm_gem_map_dma_buf() passes DMA_ATTR_SKIP_CPU_SYNC
  - amdgpu_dma_buf_map() passes DMA_ATTR_SKIP_CPU_SYNC

The CPU sync at map/unmap time is also redundant for udmabuf:
begin_cpu_udmabuf() and end_cpu_udmabuf() already perform explicit
cache synchronization via dma_sync_sgtable_for_cpu/device() when CPU
access is requested through the dma-buf interface.

Pass DMA_ATTR_SKIP_CPU_SYNC to dma_map_sgtable() and
dma_unmap_sgtable() in udmabuf to suppress the spurious warning and
skip the redundant sync.

Fixes: 284562e1f348 ("udmabuf: implement begin_cpu_access/end_cpu_access hooks")
Cc: stable@vger.kernel.org
Signed-off-by: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
---
 drivers/dma-buf/udmabuf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index 94b8ecb892bb..9c6f8785a28a 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -162,7 +162,7 @@ static struct sg_table *get_sg_table(struct device *dev, struct dma_buf *buf,
 		sg_set_folio(sgl, ubuf->folios[i], PAGE_SIZE,
 			     ubuf->offsets[i]);
 
-	ret = dma_map_sgtable(dev, sg, direction, 0);
+	ret = dma_map_sgtable(dev, sg, direction, DMA_ATTR_SKIP_CPU_SYNC);
 	if (ret < 0)
 		goto err_map;
 	return sg;
@@ -177,7 +177,7 @@ static struct sg_table *get_sg_table(struct device *dev, struct dma_buf *buf,
 static void put_sg_table(struct device *dev, struct sg_table *sg,
 			 enum dma_data_direction direction)
 {
-	dma_unmap_sgtable(dev, sg, direction, 0);
+	dma_unmap_sgtable(dev, sg, direction, DMA_ATTR_SKIP_CPU_SYNC);
 	sg_free_table(sg);
 	kfree(sg);
 }
-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
