Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IM4rGK1j5mkuvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:34:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 202414317DA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:34:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 259F43F7D9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:34:36 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by lists.linaro.org (Postfix) with ESMTPS id 238863F7B6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Mar 2026 06:17:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=D1zqYj0I;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of mikhail.v.gavrilov@gmail.com designates 209.85.167.53 as permitted sender) smtp.mailfrom=mikhail.v.gavrilov@gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5a2ad56dbb2so3324486e87.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Mar 2026 23:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774937822; x=1775542622; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=slrIynpsyCDGbw/DVJ139y58tD8HDF7VkYtGZ4Dd10U=;
        b=D1zqYj0IsVhYaENH06G/Js71q8tdz97cGRgRXOWf4lDMiK+O2toaGTEISGo+Rdu6Ys
         xJFZ/LoBsg4E3pS9ZfYo+RYdMyJcgZtyztBbrGYvBL5iQdXK/wOkxqgpO3ULbmEt95zO
         LSP370Y07IqyPE8LyVTbQiIVVfdxTmdx+BQd/VV3gECW/qvZ5PVT1M9N8uGOCA+sS5rK
         qPe8gEaUMma57iWchO7xA50Q4Ke+dDEERbo/htUtqv2GDIUdJIqaGsbCLfctm8PUYQBM
         AX9sU8ayZkC0lisYt+ZdJVAkDiPzHOpTeIyz65HoughD1XVKfE3QqNW5BMJ11IPQjmmd
         hkpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774937822; x=1775542622;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=slrIynpsyCDGbw/DVJ139y58tD8HDF7VkYtGZ4Dd10U=;
        b=T5JhKdQ9xRL8TgH4crsHsUyYjELoWYFW9jXwqX7jDdD6i+ET58Y79ZHWwcPNk6s1mt
         12QUaFIy8zQqYfh9qJ6Kjulpbr320Dbh50oGsvHV7csWyqVcVfidhCYoa3WNffq28+DR
         oCfmEG3zxn+NloW+gP5hOyct0XzWU3R0dkJxm1woATbXhurCggj3CDyv+2L81GqzXFq8
         5JIjhjeOhUxAo9qp/+92RmbKTNXA3ozVdcP5l4GU3O77tf3ELSRuj/PQQZgHFdJ9SufD
         G23z4z8p/tw6t948mMEOZRaqK7WTrn8NZSfEvTkcPuH0mcAMUAuVRtNRTDZNpW3IHtZh
         ScyQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4jJubcq5qDU7i9/MPvcBdnbzec95kidKT+OYcKIGxZg11VlBYcHVmsNZQD5pyCvL2Ii5L4KU0qr4bRSY/@lists.linaro.org
X-Gm-Message-State: AOJu0Ywhax0owE2SpNrC8FXzPSg/QfOtwJRfemPpXBcrTDMDeQWZe6Dd
	o38lFB6gP/yOtPIv1UuN8OYkXt+2uyerOKdq58SiqAwgY9lI+KEC6EpZ
X-Gm-Gg: ATEYQzyFgnhWbihxRtwCvGXtYdZsnl5z5P+XRJ6v6rVsLSZrSJgUDJA72eTc5/U15CS
	RP+ASg3rL9nBVdncksODOY+7eNdYmDw/ofqhTj7ssNayjVdd8LTm18ouQijMYhGKzdt696kApT6
	Q0yrkdF9xMb9S0lGU1c6ExXDFW8djgo5SQ7LifdtmH+6Q1EwLLFhG/Xhk4IaV+pXvFi7BWLrLsA
	1dWVSz7ewgEIBvT1vRXfhrHOKc7W3R8ARYZT5ag+XFE53HEaVv4MmnPvEXVa9G9SubK3RzTavb9
	6p4aqfIQr8sWy2hj9QycqGrpbmHUJDP3CI+7z1PB1HXwoBVWZKB6oq2r9SB4uLr5U+4q+dVYf65
	vF5rG3zvDkcw/6SQEEjeikpIxLJk3Ynufa3ybbBDXELEA86NIlVAYhTDimKhMtx3ZokMfv/s/yb
	hsmKxMOGjZVVmxDfJOWUwmGE5zz+0PNkl8PQ==
X-Received: by 2002:a05:6512:3b2c:b0:5a2:b3fc:b877 with SMTP id 2adb3069b0e04-5a2b3fcbaacmr2578412e87.25.1774937821564;
        Mon, 30 Mar 2026 23:17:01 -0700 (PDT)
Received: from localhost ([188.234.148.119])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a2b1455e14sm2145277e87.64.2026.03.30.23.17.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 23:17:00 -0700 (PDT)
From: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
To: kraxel@redhat.com,
	vivek.kasireddy@intel.com
Date: Tue, 31 Mar 2026 11:16:57 +0500
Message-ID: <20260331061657.79983-1-mikhail.v.gavrilov@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: mikhail.v.gavrilov@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VABQ7OWM4DYQWUYMLOTYWRJO6MAK3SI7
X-Message-ID-Hash: VABQ7OWM4DYQWUYMLOTYWRJO6MAK3SI7
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:33 +0000
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org, Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] dma-buf/udmabuf: skip redundant cpu sync to fix cacheline EEXIST warning
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VABQ7OWM4DYQWUYMLOTYWRJO6MAK3SI7/>
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
	DATE_IN_PAST(1.00)[491];
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
	NEURAL_SPAM(0.00)[0.987];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 202414317DA
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

v1 -> v2:
  - Rebased on drm-tip to resolve conflict with folio conversion
    patches. No code change, same two-line fix.

v1: https://lore.kernel.org/all/20260317053653.28888-1-mikhail.v.gavrilov@gmail.com/

 drivers/dma-buf/udmabuf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index 94b26ea706a3..bced421c0d65 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -145,7 +145,7 @@ static struct sg_table *get_sg_table(struct device *dev, struct dma_buf *buf,
 	if (ret < 0)
 		goto err_alloc;
 
-	ret = dma_map_sgtable(dev, sg, direction, 0);
+	ret = dma_map_sgtable(dev, sg, direction, DMA_ATTR_SKIP_CPU_SYNC);
 	if (ret < 0)
 		goto err_map;
 	return sg;
@@ -160,7 +160,7 @@ static struct sg_table *get_sg_table(struct device *dev, struct dma_buf *buf,
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
