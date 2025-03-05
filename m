Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B7750A4FFA7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Mar 2025 14:09:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE21644AD9
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Mar 2025 13:09:10 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by lists.linaro.org (Postfix) with ESMTPS id 6F14C44ADD
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Mar 2025 13:07:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=rG54a8lS;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.208.45 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5e4ce6e3b8cso1311684a12.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Mar 2025 05:07:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741180019; x=1741784819; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+6L88VawgT5clB6S0hOB/yQKL6Af309OnWxwlD6cmBU=;
        b=rG54a8lSAJsFwnBgGNlkF6cAwXSldmvt9E8It919sZCBt/IHY7muhIjHqDHnMCNpR6
         2zLkOG8AfG63guGjpkaaRwCZRec8Q5G7LztA049w90qQhYaiw3IReKITVAvKaAE49wZI
         0yxfddT0kd56eh1ep05CXWaZuGOum5GmNGbhDnvZir+XSlYsF1XIi8RH+26scRqFbyUx
         XMoRVWvoI5z5T4fewvhDbtO/fZODjnETrmV/estwXr30zNtbkwxYgcqwgPmh9j7Kngrn
         D4dqLaV6rn2mandvCQrb/fQXohymypx1dakoLHyS2WGtKBoFGpRiBZMkRIgMIdPVxKqY
         eKTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741180019; x=1741784819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+6L88VawgT5clB6S0hOB/yQKL6Af309OnWxwlD6cmBU=;
        b=TMzbLjh6orIidwgCHfr2VLquR3yTz5hORk+iFP+XXCwLqwt78idhdAvPGJzHm3/sab
         +q673oFAvS3xahXcX3jHgRBETA3kt/InzwNi1iYDHUoWF8T/3qQYGszsSg9vZzvsbypM
         UgPeLYLM8uCaF+TPRE0pBuTGdUZqeB8EQJ6Q2/6nXpo7RGRs30vc04bfetxASG25UoMZ
         40Qha+l32Aim0E0U42dqtOkwRRUI93Q+Y1HCZ8mmqOfMyy2lBW4VH/nMB2ipMmvim603
         ubZri1UnPXEMkGjBYb8ox1y/4qUXRqyihB5xpP6anCvEio4sW7Epk0qSLGP6CMY2O3C2
         J4rQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjWHJ3LUS3me8ob0tvVH/PPR9vfKOLGCBmOt35HDz30LfseujynfBTC1uxhsmnAV5TFT1MeOZv51haPQbP@lists.linaro.org
X-Gm-Message-State: AOJu0Yy8WKl64pIcBdWN+95/MIR8p8Rp+bbEoclKV0vToP0X6MCzYGrd
	UOEs+/s553UOzMtAnF8C3Mwgl1/E633z2kOnAcTVIQUjzIe0E8bZuDu+P9ixbbbTOw==
X-Gm-Gg: ASbGnctr7mvrmRm7lFRYT0CQ47WOxsBNIUM/3OhZZeu2Kf6E/ztEyrhO90oCyqihiEU
	1qNRy8VpcfIxv3LrftI5JGgMpBpCi7Z0T3G5rc43m3IJ3TAuOYoEVDoz9LD6rBRB7TZHtRuhw08
	6etFSlPxbsXSaX7EURK5Os8v9wVVOrFqohH2lGPxt3wS2JlHVfXWbS5ZKkWSMLTXpQMkjcTJLC0
	WliRPAw9azFNboOPPsPS7/vpTWggSPWWHkyjCiHrK0oYYkYfm5MBC3AQC7CSF+Zi9fFdZg5ZTH1
	NejseIEOOsUGVXKYEMJMANp+FdD1HVFIFqjLF88TQB9psv97Yn3rCUe+3nKtnqnAC/kYW0edtsw
	pLey73nvwN5G85/5CcPoy4Q==
X-Google-Smtp-Source: AGHT+IEAmgkcE8RyjO1pJJHrKqdAmUGw9vFkZJI7+m0/4SoKqcFz7yQm/3SS6AjKMMHXW07x446SxQ==
X-Received: by 2002:a05:6402:4309:b0:5e4:d52b:78a2 with SMTP id 4fb4d7f45d1cf-5e584f51077mr7080244a12.15.1741180019316;
        Wed, 05 Mar 2025 05:06:59 -0800 (PST)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5bcd1595bsm65714a12.42.2025.03.05.05.06.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 05:06:57 -0800 (PST)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Wed,  5 Mar 2025 14:04:13 +0100
Message-ID: <20250305130634.1850178-8-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250305130634.1850178-1-jens.wiklander@linaro.org>
References: <20250305130634.1850178-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6F14C44ADD
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RBL_SENDERSCORE_REPUT_7(0.50)[209.85.208.45:from];
	R_MISSING_CHARSET(0.50)[];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[linaro.org:s=google];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[98.128.140.123:received];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.208.45:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.45:from];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: ODMUZVA6SDJXZ2Q6FJVOE2UVE4OHOUHS
X-Message-ID-Hash: ODMUZVA6SDJXZ2Q6FJVOE2UVE4OHOUHS
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 07/10] tee: add tee_shm_alloc_cma_phys_mem()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ODMUZVA6SDJXZ2Q6FJVOE2UVE4OHOUHS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add tee_shm_alloc_cma_phys_mem() to allocate a physical memory using
from the default CMA pool. The memory is represented by a tee_shm object
using the new flag TEE_SHM_CMA_BUF to identify it as physical memory
from CMA.

Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/tee_shm.c    | 55 ++++++++++++++++++++++++++++++++++++++--
 include/linux/tee_core.h |  4 +++
 2 files changed, 57 insertions(+), 2 deletions(-)

diff --git a/drivers/tee/tee_shm.c b/drivers/tee/tee_shm.c
index 8b79918468b5..8d8341f8ebd7 100644
--- a/drivers/tee/tee_shm.c
+++ b/drivers/tee/tee_shm.c
@@ -3,8 +3,11 @@
  * Copyright (c) 2015-2017, 2019-2021 Linaro Limited
  */
 #include <linux/anon_inodes.h>
+#include <linux/cma.h>
 #include <linux/device.h>
 #include <linux/dma-buf.h>
+#include <linux/dma-map-ops.h>
+#include <linux/highmem.h>
 #include <linux/idr.h>
 #include <linux/io.h>
 #include <linux/mm.h>
@@ -13,7 +16,6 @@
 #include <linux/tee_core.h>
 #include <linux/uaccess.h>
 #include <linux/uio.h>
-#include <linux/highmem.h>
 #include "tee_private.h"
 
 /* extra references appended to shm object for registered shared memory */
@@ -59,7 +61,14 @@ static void tee_shm_release(struct tee_device *teedev, struct tee_shm *shm)
 	struct tee_shm *parent_shm = NULL;
 	void *p = shm;
 
-	if (shm->flags & TEE_SHM_DMA_BUF) {
+	if (shm->flags & TEE_SHM_CMA_BUF) {
+#if !IS_MODULE(CONFIG_TEE) && IS_ENABLED(CONFIG_CMA)
+		struct page *page = phys_to_page(shm->paddr);
+		struct cma *cma = dev_get_cma_area(&shm->ctx->teedev->dev);
+
+		cma_release(cma, page, shm->size / PAGE_SIZE);
+#endif
+	} else if (shm->flags & TEE_SHM_DMA_BUF) {
 		struct tee_shm_dmabuf_ref *ref;
 
 		ref = container_of(shm, struct tee_shm_dmabuf_ref, shm);
@@ -341,6 +350,48 @@ struct tee_shm *tee_shm_alloc_priv_buf(struct tee_context *ctx, size_t size)
 }
 EXPORT_SYMBOL_GPL(tee_shm_alloc_priv_buf);
 
+struct tee_shm *tee_shm_alloc_cma_phys_mem(struct tee_context *ctx,
+					   size_t page_count, size_t align)
+{
+#if !IS_MODULE(CONFIG_TEE) && IS_ENABLED(CONFIG_CMA)
+	struct tee_device *teedev = ctx->teedev;
+	struct cma *cma = dev_get_cma_area(&teedev->dev);
+	struct tee_shm *shm;
+	struct page *page;
+
+	if (!tee_device_get(teedev))
+		return ERR_PTR(-EINVAL);
+
+	page = cma_alloc(cma, page_count, align, true/*no_warn*/);
+	if (!page)
+		goto err_put_teedev;
+
+	shm = kzalloc(sizeof(*shm), GFP_KERNEL);
+	if (!shm)
+		goto err_cma_crelease;
+
+	refcount_set(&shm->refcount, 1);
+	shm->ctx = ctx;
+	shm->paddr = page_to_phys(page);
+	shm->size = page_count * PAGE_SIZE;
+	shm->flags = TEE_SHM_CMA_BUF;
+
+	teedev_ctx_get(ctx);
+
+	return shm;
+
+err_cma_crelease:
+	cma_release(cma, page, page_count);
+err_put_teedev:
+	tee_device_put(teedev);
+
+	return ERR_PTR(-ENOMEM);
+#else
+	return ERR_PTR(-EINVAL);
+#endif
+}
+EXPORT_SYMBOL_GPL(tee_shm_alloc_cma_phys_mem);
+
 int tee_dyn_shm_alloc_helper(struct tee_shm *shm, size_t size, size_t align,
 			     int (*shm_register)(struct tee_context *ctx,
 						 struct tee_shm *shm,
diff --git a/include/linux/tee_core.h b/include/linux/tee_core.h
index 6bd833b6d0e1..b6727d9a3556 100644
--- a/include/linux/tee_core.h
+++ b/include/linux/tee_core.h
@@ -29,6 +29,7 @@
 #define TEE_SHM_POOL		BIT(2)  /* Memory allocated from pool */
 #define TEE_SHM_PRIV		BIT(3)  /* Memory private to TEE driver */
 #define TEE_SHM_DMA_BUF		BIT(4)	/* Memory with dma-buf handle */
+#define TEE_SHM_CMA_BUF		BIT(5)	/* CMA allocated memory */
 
 #define TEE_DEVICE_FLAG_REGISTERED	0x1
 #define TEE_MAX_DEV_NAME_LEN		32
@@ -307,6 +308,9 @@ void *tee_get_drvdata(struct tee_device *teedev);
  */
 struct tee_shm *tee_shm_alloc_priv_buf(struct tee_context *ctx, size_t size);
 
+struct tee_shm *tee_shm_alloc_cma_phys_mem(struct tee_context *ctx,
+					   size_t page_count, size_t align);
+
 int tee_dyn_shm_alloc_helper(struct tee_shm *shm, size_t size, size_t align,
 			     int (*shm_register)(struct tee_context *ctx,
 						 struct tee_shm *shm,
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
