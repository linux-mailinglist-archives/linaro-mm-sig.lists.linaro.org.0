Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A9BC5817A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 15:57:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C690E3F889
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 14:57:38 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by lists.linaro.org (Postfix) with ESMTPS id 65AC53F829
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 14:53:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=CDITjSA4;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.45 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b7291af7190so131876366b.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 06:53:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763045629; x=1763650429; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VvIMk872eUcGrvr4oYbCLqZzU34y/qoctkmyPmiR2qE=;
        b=CDITjSA4Q2SJlkPCbzCjKjAd2lOFQQlf0urhg09eGzM8pVyHJUiLFGULrdhj8gN4Mu
         gkvQwBrI7r0q7EZ1Gz556v3g15rhFtkp5O+ibkCk/v8t24XgYp8RCtaD+84HNVYlX/dn
         1AUWuseBul570sVuhqradNoMCfvIYHs+SnU0MFIMfg+6IhMO9peKU2poBaHDQhavOn4/
         GPopf/vC3b1adtqPoYvAlTo5dUwH6RlwbmpN2G0K8D+g6mr5tp0Rda/pHw26swkXyfGi
         fLQ6c0rOyPkGjZX5q74Gcxz1XbQ/mk4qiO8hDrZ1Y3PGLDR5OTOwVZiOEPRCft5TPdTh
         HbAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763045629; x=1763650429;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VvIMk872eUcGrvr4oYbCLqZzU34y/qoctkmyPmiR2qE=;
        b=aBQT75dhdZsiBR0kXcKX+nQW5bG6/DKNoBQzQRgZaaj7stPqcRa5j86kQLQKpNRWCv
         W4v0B6PJ4rkYpiSF3v2TdeRL954vbchSrUuvaA3IeBPICSZMEtNnZifN/w9ZezUhVXeO
         oIobjhZ3SvOc7dRrOabawseMDGI/DKmoAAXjsMJ03ma8JsSufpoGn7moNsblN5mam6Oj
         djhlS4TWXTeOJwksG8s4zh+rMwNRxWF9T9hIxp5QSBkX3yxvxV9Tdh1ivJnP7Gafr5nq
         J2BTO4YzvofGC0IEIF/suAr0l9po0+lqD/sOzkgExES1/7TfvcI5xyz6Lm4q7jPaEoUM
         INZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCTaawW+t6RGdUkTL6Dova0cjluoshnKwpNRDCRvNndq66Wg9/a/ojVNXg0ZnHqcwOql8gsuRRs9HKzJb/@lists.linaro.org
X-Gm-Message-State: AOJu0YwVzgaBRMuLj8xOu5Z0qGRJqpficJfZuTLlYbHTznuXRSCsF10x
	lo0AlwcoNTxfslVMZPFv0hpuYOMFERlQSSXYxNENPN1JnKPIl/48WTDx
X-Gm-Gg: ASbGncsJoGgcE8JmEOqNJUiH6cdcMYRJmxVDe0KT5KWKxkC8kcOzVNnEEymhfi9Yd+L
	R5v3r8D+mh+5vkYLh7MKh5a83QPBA+V1qTaiVzjIGRyruAk54HGcwCt7c6NJ2jsV4wt8tvSDlQ9
	ySS63eN115xf5uXvLrwIXaLknqSQY/5XwWAXYkp12oKAlxaLhz+gyQKAaIjzU22EPn00iOIFDt8
	gxDoe0251LZ1TCUvoTyhaimLXXknHhABvijtK6c783Lj2grZaXPo3cIPUo4XD8ykrDWrqijGhe8
	jMkXz9pIzjY8NJW5AQEJYd3QJhNWy2p+3pwmcXDOajRA2Xu4MUVLMKamTgWf5HBpjLqWC8Cu95B
	joOiwMWVkgqGBZslMW88ce8B5XvQMtPdIk4dfLVMZYl3B27ivAKLfkS6DFuYYlY8Abzef7DwMmJ
	dPqcpg+98ehGg=
X-Google-Smtp-Source: AGHT+IE/99yJLzL1YvwaBMM+Q6kz/sb5G9lncACbhK/4baxWDS2QRo+Q6OgU+cRk722RQAFO4cEcfw==
X-Received: by 2002:a17:907:705:b0:b73:1634:6d71 with SMTP id a640c23a62f3a-b73319af12amr827751866b.26.1763045629179;
        Thu, 13 Nov 2025 06:53:49 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:15aa:c600:cef:d94:436c:abc5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b73513b400fsm173747166b.1.2025.11.13.06.53.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 06:53:48 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	alexdeucher@gmail.com,
	simona.vetter@ffwll.ch,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org
Date: Thu, 13 Nov 2025 15:51:55 +0100
Message-ID: <20251113145332.16805-19-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113145332.16805-1-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 65AC53F829
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.45:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[mailbox.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: YZVKVLR7SGKLTODOPPBHALFTPXQMY7EG
X-Message-ID-Hash: YZVKVLR7SGKLTODOPPBHALFTPXQMY7EG
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 18/18] drm/xe: Finish disconnect HW fences from module
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YZVKVLR7SGKLTODOPPBHALFTPXQMY7EG/>
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
index f5fad4426729..8181dfc628e4 100644
--- a/drivers/gpu/drm/xe/xe_hw_fence.c
+++ b/drivers/gpu/drm/xe/xe_hw_fence.c
@@ -159,9 +159,7 @@ static struct xe_hw_fence_irq *xe_hw_fence_irq(struct xe_hw_fence *fence)
 
 static const char *xe_hw_fence_get_driver_name(struct dma_fence *dma_fence)
 {
-	struct xe_hw_fence *fence = to_xe_hw_fence(dma_fence);
-
-	return dev_name(fence->xe->drm.dev);
+	return "xe";
 }
 
 static const char *xe_hw_fence_get_timeline_name(struct dma_fence *dma_fence)
@@ -175,10 +173,13 @@ static bool xe_hw_fence_signaled(struct dma_fence *dma_fence)
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
