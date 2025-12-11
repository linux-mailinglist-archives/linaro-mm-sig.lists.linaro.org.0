Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A11EACB5D6A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 13:28:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CAD383F998
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 12:28:03 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by lists.linaro.org (Postfix) with ESMTPS id 311C53F91F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 12:24:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=XF9TShan;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.43 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47774d3536dso351685e9.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 04:24:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765455866; x=1766060666; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8EuAg/9QTvoHOUeEar95nqMyKM7mcolsdA7zaojYL4I=;
        b=XF9TShan43Y5eBhECR072bafbMJAKBvtNkb/X9i5DyPzKcCGBe+k7IMpDRy9Ireei1
         WDOGKe0yNlD2YzXJU/n1EpAjyRPzkh54ZS91sgX3j06ZQ5hcLcxmQrOkzAZ2zaljZdvX
         2mEVVG3OAzkpGtZm3nJgbSMsRX5gh9y7XotMKTPlmnv+x4i7h8CZwv/VDVkQwomardjO
         OsieYUf5gke2JzfO8XfcCbPWTJTexNJ+TuWn8MiHSYV6K2BgJUqWSQEGvWTlMwglsfRh
         DKdKNB6sz3wk9di4KS3yDcXFeapFvv14kKz0ENQ7E2V5eDEBAHdRiBvgkEv6UqgnNTKN
         LYQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765455866; x=1766060666;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8EuAg/9QTvoHOUeEar95nqMyKM7mcolsdA7zaojYL4I=;
        b=ZL+ZZX0S1q7Z8bO3dlGmBPXlojLyr+eoDm48OtUJegFnNtePliJXAafC429ezqCp/f
         Xd+tTnt1IfKhElqpnz+l4WKS6aLMqmYtIJ9OcfqjggXrbefNLDrCr2z5pAHQSD+MDVfY
         6mBEWybotwcxoENv4iggIy7PCO+zlOECtf7Kx3b+48MjU7Z/mVvbPeTklMPbeiO3BST3
         kZzY1Vq1SidC4eVQITWZBBm/Tbw0ErGGnkbPyikhXQ5I3hq+c4dNT54rD6oSMiCWB0Zc
         C5K0kAETIjFenPZ3HayHAhSBAeqHbTYNQqPRRLdR1NT0VfUXXT5ZVNklbfiZSIQHbWFD
         DcsQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8sdc/MCU92YWljDHzqfZe7G4RI3MK7VHmQGXK8o/KlDfv4K62fhahJXQcnU/2R/Fi/bhX3fDsi/MrxTHc@lists.linaro.org
X-Gm-Message-State: AOJu0Yyf1s/orts/xUGIeRGeuuTuFlfGDTY8rjC40Ui7NTs+4QhImaBY
	QmeDwYdGd5c7W/FWHjMtERF+XyX5T5RXSOrnlrxHMN+w9uctPAS4HxR2
X-Gm-Gg: AY/fxX6Q/QQP54HC/hHAR7T3MII9aJt2my4sFdZekSb3LNck15Y9SvVYmmQWOFwnVQm
	DHawjW4qfIpHoXjN1BQo6jiz5HKGgbFAy9VemardhbXm6CjnUOMpoXAR0nyjyvBY9IWGEYsecox
	YQm+1J2SyENZBgLcsuRvcVLPvBEqSl1XiNlDx0OGCxTI8BOO6ddzD5IvLXAxreG4X7KFvI61dU7
	T6++HK/cakAxbhUzemq6YNGwS+QqI+vkDXRhx3qsNhi+RAcbtAaMx6M7T9T5mcxjVAVqZNceODN
	cOwKxmkacdMk9ydEpr8dsG/NAXGPm+3wbKWchKJNiuOCIs8sbwqvqI7zsE1VdpyXati2oceF3om
	e4GkenMrhLHVcU0FXOyyyI+/b4i308s/s4jvu8F2pdrTL9yjYj0kNVB19/v6u+AzDKzACMMH2L4
	ZKlthohY9vn1a1yxZoyWQIU71g
X-Google-Smtp-Source: AGHT+IFVaKTlm6xg3Jw/ZlZAoCPwWKIJ0C6rGXg02SL6rCNSKEFY1d4MYoxRqE0I/5CkMfvv/lIlqg==
X-Received: by 2002:a05:600c:c3c1:20b0:477:75b4:d2d1 with SMTP id 5b1f17b1804b1-47a89ed5c41mr15862835e9.15.1765455866064;
        Thu, 11 Dec 2025 04:24:26 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:9f00:dc26:feac:12f7:4088])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89d8e680sm12172785e9.6.2025.12.11.04.24.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 04:24:25 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 13:16:50 +0100
Message-ID: <20251211122407.1709-20-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251211122407.1709-1-christian.koenig@amd.com>
References: <20251211122407.1709-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.43:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	BLOCKLISTDE_FAIL(0.00)[2a00:e180:152a:9f00:dc26:feac:12f7:4088:server fail];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 311C53F91F
X-Spamd-Bar: ---
Message-ID-Hash: 6QH47VOB22QUTMLK3CVN5KDHTSKQOKSX
X-Message-ID-Hash: 6QH47VOB22QUTMLK3CVN5KDHTSKQOKSX
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 19/19] drm/xe: Finish disconnect HW fences from module
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6QH47VOB22QUTMLK3CVN5KDHTSKQOKSX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Matthew Brost <matthew.brost@intel.com>

Be safe when dereferencing fence->xe.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/xe/xe_hw_fence.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_hw_fence.c b/drivers/gpu/drm/xe/xe_hw_fence.c
index d0508b855410..1bf4d234a315 100644
--- a/drivers/gpu/drm/xe/xe_hw_fence.c
+++ b/drivers/gpu/drm/xe/xe_hw_fence.c
@@ -157,9 +157,7 @@ static struct xe_hw_fence_irq *xe_hw_fence_irq(struct xe_hw_fence *fence)
 
 static const char *xe_hw_fence_get_driver_name(struct dma_fence *dma_fence)
 {
-	struct xe_hw_fence *fence = to_xe_hw_fence(dma_fence);
-
-	return dev_name(fence->xe->drm.dev);
+	return "xe";
 }
 
 static const char *xe_hw_fence_get_timeline_name(struct dma_fence *dma_fence)
@@ -173,10 +171,13 @@ static bool xe_hw_fence_signaled(struct dma_fence *dma_fence)
 {
 	struct xe_hw_fence *fence = to_xe_hw_fence(dma_fence);
 	struct xe_device *xe = fence->xe;
-	u32 seqno = xe_map_rd(xe, &fence->seqno_map, 0, u32);
+	u32 seqno;
+
+	if (dma_fence->error)
+		return true;
 
-	return dma_fence->error ||
-		!__dma_fence_is_later(dma_fence, dma_fence->seqno, seqno);
+	seqno = xe_map_rd(xe, &fence->seqno_map, 0, u32);
+	return !__dma_fence_is_later(dma_fence, dma_fence->seqno, seqno);
 }
 
 static bool xe_hw_fence_enable_signaling(struct dma_fence *dma_fence)
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
