Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0530B58542B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 Jul 2022 19:07:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3039C47EC9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 Jul 2022 17:07:28 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	by lists.linaro.org (Postfix) with ESMTPS id E92C047EC7
	for <linaro-mm-sig@lists.linaro.org>; Fri, 29 Jul 2022 17:07:22 +0000 (UTC)
Received: by mail-pl1-f177.google.com with SMTP id x10so4443121plb.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 29 Jul 2022 10:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=FldoPR8BVfM3iFKwCM1XMFRXAR81Z32eid0v1j3G9ms=;
        b=HKz9QeN1B04S71KqwGZWo+wwf6kYkXxGdcKiMMHsrsr13IRifPJQhbh5KiqAal/DsE
         vmjJYbyNR97KhbEFgVt6sDx0Pw/eEnSBmdQG15mvI3z/WZaWhK4GWeFNA03PfPyOe5vu
         yTKimkqFzz72xhuoFlkIVRLFDeoQnq3XOJyLCDpX7m1tK4Kb4xNn9qopeHrIDF5PxWAm
         JZW/VRTDBeDZKYhtX4Xk349gSo/lWOrmUHKaG+44tHdLZEUNGvlJNmt/LwMdPDoQMNCC
         6fvIfU7eJFgMMkHB2vZYsWnHyfQTqJAKlMVd5pQHRv1+lWJdaWbpupNA3RegpyUILm1P
         MI2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=FldoPR8BVfM3iFKwCM1XMFRXAR81Z32eid0v1j3G9ms=;
        b=MHGZWD8twi5OemlNdwQZ3AvIDTpIcwMWDHIY6mkRbXF/xO+Qdta37ZwiIbGE2kfdvQ
         ZsIU3rOlJ88bxZXRJzkwtuTzZumHFQwpXcT7xz1L7McbBwSAMiPYcPCe+kG5q2EOela0
         n8eTh2GDj1EW6rQwOWAfaaP6gr5EL4As8wp8sQZhhZEQivQ3bjSeUEeHHYKme7kPTQkh
         s6CZKhBYhw+vTQfU1ia4Uq+firb2j34CEx0mroGCF4uwBsdySrK1xvD4xCXYtZhhbENa
         FoT1GANJxjPTWKhxcwBRMvSmNSeLG5ENz19MwSEVsLy7ngJgkCWeNSguy+SWf9twQs4z
         a62A==
X-Gm-Message-State: ACgBeo024X7o5QpfwICenDe7Hgmcg4g9U35mwOVlFLQKDnxYOLQUxdrs
	k3LwMkF9cYy7LKpnlerX0lg=
X-Google-Smtp-Source: AA6agR56jDy8w/4vyMlbH3lvpqcpJ00Ke/e1+Z/3QybslmIHKNYd1sUZrzP7R7Q9uY7p/hqGynTRKw==
X-Received: by 2002:a17:90a:9709:b0:1f3:7ac:73dd with SMTP id x9-20020a17090a970900b001f307ac73ddmr5214940pjo.184.1659114442062;
        Fri, 29 Jul 2022 10:07:22 -0700 (PDT)
Received: from localhost ([2a00:79e1:abd:4a00:2703:3c72:eb1a:cffd])
        by smtp.gmail.com with ESMTPSA id jz21-20020a17090b14d500b001f1ef42fd7bsm6183882pjb.36.2022.07.29.10.07.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jul 2022 10:07:20 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 29 Jul 2022 10:07:41 -0700
Message-Id: <20220729170744.1301044-3-robdclark@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220729170744.1301044-1-robdclark@gmail.com>
References: <20220729170744.1301044-1-robdclark@gmail.com>
MIME-Version: 1.0
Message-ID-Hash: UFRUY56PBMLSX5WEAWYHBF6J3QCDRGSC
X-Message-ID-Hash: UFRUY56PBMLSX5WEAWYHBF6J3QCDRGSC
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/3] drm/prime: Wire up mmap_info support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UFRUY56PBMLSX5WEAWYHBF6J3QCDRGSC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

Just plumbing the thing thru an extra layer.

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/drm_prime.c | 12 ++++++++++++
 include/drm/drm_drv.h       |  7 +++++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
index e3f09f18110c..f58586e131c5 100644
--- a/drivers/gpu/drm/drm_prime.c
+++ b/drivers/gpu/drm/drm_prime.c
@@ -784,6 +784,17 @@ int drm_gem_dmabuf_mmap(struct dma_buf *dma_buf, struct vm_area_struct *vma)
 }
 EXPORT_SYMBOL(drm_gem_dmabuf_mmap);
 
+static int drm_gem_dmabuf_mmap_info(struct dma_buf *dma_buf)
+{
+	struct drm_gem_object *obj = dma_buf->priv;
+	struct drm_device *dev = obj->dev;
+
+	if (!dev->driver->gem_prime_mmap_info)
+		return -ENOSYS;
+
+	return dev->driver->gem_prime_mmap_info(obj);
+}
+
 static const struct dma_buf_ops drm_gem_prime_dmabuf_ops =  {
 	.cache_sgt_mapping = true,
 	.attach = drm_gem_map_attach,
@@ -792,6 +803,7 @@ static const struct dma_buf_ops drm_gem_prime_dmabuf_ops =  {
 	.unmap_dma_buf = drm_gem_unmap_dma_buf,
 	.release = drm_gem_dmabuf_release,
 	.mmap = drm_gem_dmabuf_mmap,
+	.mmap_info = drm_gem_dmabuf_mmap_info,
 	.vmap = drm_gem_dmabuf_vmap,
 	.vunmap = drm_gem_dmabuf_vunmap,
 };
diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
index f6159acb8856..797c0f8c2dd0 100644
--- a/include/drm/drm_drv.h
+++ b/include/drm/drm_drv.h
@@ -355,6 +355,13 @@ struct drm_driver {
 	 */
 	int (*gem_prime_mmap)(struct drm_gem_object *obj, struct vm_area_struct *vma);
 
+	/**
+	 * @gem_prim_mmap_info:
+	 *
+	 * Get info about mmap setup by gem_prime_mmap.  See dma_buf_ops:mmap_info.
+	 */
+	int (*gem_prime_mmap_info)(struct drm_gem_object *obj);
+
 	/**
 	 * @dumb_create:
 	 *
-- 
2.36.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
