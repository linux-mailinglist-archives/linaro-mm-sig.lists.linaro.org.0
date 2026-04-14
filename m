Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JFTL7dl5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:43:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D0A431E7A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:43:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15DD3406B2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:43:18 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	by lists.linaro.org (Postfix) with ESMTPS id 874893F767
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2026 10:55:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=d3eACF3o;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of popov.nkv@gmail.com designates 209.85.167.47 as permitted sender) smtp.mailfrom=popov.nkv@gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-59dea72099eso5430933e87.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2026 03:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776164143; x=1776768943; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=W12ofF4X1Wo2C6qvMXRei9SFctcqIrL5xbkSvEXmBW4=;
        b=d3eACF3oqn586mPjeBfbLsGLOnNRKZOp3NjOY3bcciUoZZeO3HWSvp0XlRjlWs0SpA
         +/k47T38FlRqHAbVJ6dhCwTOXswUICEUrVBKzse807RTiPIn1VEbBHTPnL72qKI2HpY/
         6MLC8QkO4Fku81aCRPzrayJPg2kCos440eoH6KoiP0ZeozzFjEVHjFFAlVdpdMaU1knU
         7pDA3d/EBIgorNdKiHWPDsr8W4WNyQXN7moZKwGJXNAJ0RV7l8FtEiGcKV0J6886I5y3
         3ZLtuzVFFv9HBCICsGnYFFs2w4SRdZaneU/IiEUEl7VPzW1eoVXo4zksUQBpHqmPLftn
         uAfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776164143; x=1776768943;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W12ofF4X1Wo2C6qvMXRei9SFctcqIrL5xbkSvEXmBW4=;
        b=H1CK9jYn10DOn/UArOg6AZReRk8Sgmk8fmsUZ9dByNQ/8BOfYzJJEhq+BLl34etCB4
         +qUKC0lEAxCr2Ngdb2SDEw7sqlgFMwOXUMTYGfsOyp+wZwOduhOGSQUInJDooCQAogoj
         z2x5cPWJx31ykZHOQNX9PQrGH2+1JtfhD9txYikro+n7B7XmpfVtJzNzbrRUUq/NjMnx
         Vgv/317OmilCHrw6LjMDKCiILVk8YmXfahNSSESnyZO4Al0WmBS6BUf34jwWuBpYghxH
         A1EigtZVmfw9v/gqifPy3yDE+96/jtGWyDYNVZGOs0cxGA4GBF0SAAdPegKyXK1oPeR7
         L8jg==
X-Forwarded-Encrypted: i=1; AFNElJ84ybTNY/gn3At4q5evx2QAM/tMEDjqeSQsUz9Y2rEkj0FfZHnJxVxdSg3BQiTrQhPWdwPtDOfYPNl6nwN7@lists.linaro.org
X-Gm-Message-State: AOJu0YxBJyWfAjUWu5+xlsiyUBg5Ag7xSBGSkFF8ikdAOt4hjfPCpC7H
	80ZULaaIIovLpDTwhZQoIuN+k/vLB1fSLc5gaBxZhmlZK971vBG8ZNGx
X-Gm-Gg: AeBDieuQ4nDBykllshJ+QNre28WuIek5QICRy1/lIZDcxS+NuBl6sQG+cdmFPqqOjr3
	Z5rxNczDWhfYs7L+3Pl90/yb1vydG87cGskRvEJlaQvviSisQT6HgRCcEH1LV+5zLR2s88x1Y/M
	WDOK/eaSRqZVZ2EWhcL1ZPGxePHBFNZhjCCll/J4P6ItgIMPoaIs30EsSIWTngnswfZWU8Npfrs
	RV07bPX222LgTYpoVPZjhu0UHl0stCnrwHV4c4ZB/UPK0I3jmC5Gm8Gp2yfVbRp0EcfeVXGm+uP
	ttgW+rXz8opyboBuqrDFoyrqfyIzN+EKIAVfdH/4UPOHVsRfl3fB3IZnsnIx0j+oNGwzkpF8nSq
	g4xasMdENXg7bte+gFJ/sPZADtbEHZf3z0u93UdEXrzAs1SmByABl99/tsrPg27ZnF95P9dJ1d9
	VdUAiI9NmIgSvyUTg9VacQUGuPGhadLFJHeBcorkpShhT/LzYzwWDYDZY5LQ==
X-Received: by 2002:a05:6512:a94:b0:5a2:bf05:be77 with SMTP id 2adb3069b0e04-5a3efb283fbmr5981911e87.23.1776164142993;
        Tue, 14 Apr 2026 03:55:42 -0700 (PDT)
Received: from ghost-mint-vmk.cs.msu.ru (wifi.cs.msu.ru. [188.44.42.48])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a3eeee12fesm3177645e87.40.2026.04.14.03.55.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2026 03:55:42 -0700 (PDT)
From: popov.nkv@gmail.com
To: Zack Rusin <zack.rusin@broadcom.com>
Date: Tue, 14 Apr 2026 13:55:27 +0300
Message-ID: <20260414105529.9883-1-popov.nkv@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: popov.nkv@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: K3PQY2C4NCIZBFKYSETU77CD6DOGANC7
X-Message-ID-Hash: K3PQY2C4NCIZBFKYSETU77CD6DOGANC7
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:42:28 +0000
CC: Vladimir Popov <popov.nkv@gmail.com>, bcm-kernel-feedback-list@broadcom.com, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Deepak Rawat <drawat@vmware.com>, Sinclair Yeh <syeh@vmware.com>, Thomas Hellstrom <thellstrom@vmware.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, lvc-project@linuxtesting.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 15901/15901] drm/vmwgfx: fix NULL pointer dereference in vmw_validation_bo_fence()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K3PQY2C4NCIZBFKYSETU77CD6DOGANC7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[150];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.927];
	FROM_NEQ_ENVFROM(0.00)[popovnkv@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,broadcom.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,amd.com,vmware.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,linuxtesting.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxtesting.org:url,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 68D0A431E7A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Vladimir Popov <popov.nkv@gmail.com>

If vmw_execbuf_fence_commands() call fails in
vmw_kms_helper_validation_finish(), it sets *p_fence = NULL. If 
ctx->bo_list is not empty, the caller, vmw_kms_helper_validation_finish(),
passes the fence through a chain of functions to dma_fence_is_array(),
which causes a NULL pointer dereference in dma_fence_is_array():

vmw_kms_helper_validation_finish() // pass NULL fence
  vmw_validation_done()
    vmw_validation_bo_fence()
      ttm_eu_fence_buffer_objects() // pass NULL fence
        dma_resv_add_fence()
          dma_fence_is_container()
            dma_fence_is_array() // NULL deref

Fix this by adding a NULL check in vmw_validation_bo_fence(): if the fence
is NULL, fall back to ttm_eu_backoff_reservation()to safely release
the buffer object reservations without attempting to add a NULL fence to
dma_resv. This is safe because when fence is NULL, vmw_fallback_wait()
has already been called inside vmw_execbuf_fence_commands() to synchronize
the GPU.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Fixes: 038ecc503236 ("drm/vmwgfx: Add a validation module v2")
Cc: stable@vger.kernel.org
Signed-off-by: Vladimir Popov <popov.nkv@gmail.com>
---
 drivers/gpu/drm/vmwgfx/vmwgfx_validation.h | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_validation.h b/drivers/gpu/drm/vmwgfx/vmwgfx_validation.h
index 353d837907d8..fc04555ca505 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_validation.h
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_validation.h
@@ -127,16 +127,23 @@ vmw_validation_bo_reserve(struct vmw_validation_context *ctx,
  * vmw_validation_bo_fence - Unreserve and fence buffer objects registered
  * with a validation context
  * @ctx: The validation context
+ * @fence: Fence with which to fence all buffer objects taking part in the
+ * command submission.
  *
  * This function unreserves the buffer objects previously reserved using
- * vmw_validation_bo_reserve, and fences them with a fence object.
+ * vmw_validation_bo_reserve, and fences them with a fence object if the
+ * given fence object is not NULL.
  */
 static inline void
 vmw_validation_bo_fence(struct vmw_validation_context *ctx,
 			struct vmw_fence_obj *fence)
 {
-	ttm_eu_fence_buffer_objects(&ctx->ticket, &ctx->bo_list,
-				    (void *) fence);
+	/* fence is able to be NULL if vmw_execbuf_fence_commands() fails */
+	if (fence)
+		ttm_eu_fence_buffer_objects(&ctx->ticket, &ctx->bo_list,
+					    (void *)fence);
+	else
+		ttm_eu_backoff_reservation(&ctx->ticket, &ctx->bo_list);
 }
 
 /**
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
