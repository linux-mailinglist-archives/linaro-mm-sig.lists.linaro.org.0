Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E07F870F2D4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:33:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DEDEE41408
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:33:41 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by lists.linaro.org (Postfix) with ESMTPS id 51CDC411B9
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 14:52:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b="iG7od/ev";
	spf=pass (lists.linaro.org: domain of abailon@baylibre.com designates 209.85.221.51 as permitted sender) smtp.mailfrom=abailon@baylibre.com;
	dmarc=none
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-307d20548adso605290f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 07:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684335169; x=1686927169;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ChL28icQVyizqOaIAH3gAMzq5UZ5InLkC1WcC+s6530=;
        b=iG7od/evTKtot/nJm1gK/1OL6Lc2v1Bmw9HJrvZNepXY3d+ijpP+DWiwPAyVpH4pE1
         whGLUhjKSF4oMqvwtGaC3U7qu0JGLJf2iHcaZHG/KUWeDATqb+7kMGgK4oAbo+BiDQwI
         jpxA3KkT4mge9b6qQfuW6PavzHMyngFUeL5rUs8wtlXokzk0Gl/ytdd5BZqb0/1Z5e/Y
         cIV4AMhkBECqg1zNTCLE/3Y42tLbWIq2Tz99acBQU/rwUfG6htIKFOBvud87i13WKEpC
         cNz6RrsgVyoegDNgLU4Dj6l4jtXBZeukG92pSorCCUG0L5/O72DQRlJqUtdW4XruFu5P
         MPxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684335169; x=1686927169;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ChL28icQVyizqOaIAH3gAMzq5UZ5InLkC1WcC+s6530=;
        b=XFrf9X8Nexya1AmgMN95qfhl2JenkUV3P6t9yl0+beOnW0g69/HjAbxeMovupRWuZR
         GcP3Al4bFFanUm+nEZqrOCWgDX++A4FgIdZMMUHGIcZmN7QYQSMEufackJ8TeQDLSbGg
         bh6yuBmKEsAGrvxMuPX9CpV+4ty4j8GIi0dxzTsHruNw46eVp79dhhpCAGSbjU8bAebQ
         oJLsXOX6sgWwBUdT58Htrxz1qZjZA99Md+nq8b5oHN8Bzf27Y18Iom76r6Q3qqfil5vG
         ipU+HaNw+o3JAkUKyO4qxaoHQR8Z1QFJuvsZNerxExTBY4Nfr5d3Te4RCUCgEKGP6aAA
         S7IA==
X-Gm-Message-State: AC+VfDztkNB0xe2gt9Rz2KJviUOp2APy5dKTgJmd4BS0AKvfk7VAFqok
	F7T327TlpPni8bXPqTTEeUox7A==
X-Google-Smtp-Source: ACHHUZ5uCAqHjUKdV/6t3weODX6sjiburDexUUIvFFfFHhqo6Yq6iD6TS/qXA3nyRGAEZJG5rutnCQ==
X-Received: by 2002:a5d:4cc9:0:b0:2fb:7099:6070 with SMTP id c9-20020a5d4cc9000000b002fb70996070mr839383wrt.47.1684335169252;
        Wed, 17 May 2023 07:52:49 -0700 (PDT)
Received: from blaptop.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id v11-20020a5d678b000000b002f7780eee10sm2979098wru.59.2023.05.17.07.52.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 07:52:48 -0700 (PDT)
From: Alexandre Bailon <abailon@baylibre.com>
To: airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de
Date: Wed, 17 May 2023 16:52:35 +0200
Message-Id: <20230517145237.295461-6-abailon@baylibre.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517145237.295461-1-abailon@baylibre.com>
References: <20230517145237.295461-1-abailon@baylibre.com>
MIME-Version: 1.0
X-Spamd-Result: default: False [-0.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20221208.gappssmtp.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_NA(0.00)[baylibre.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,amd.com,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.51:from];
	TAGGED_RCPT(0.00)[dt];
	URIBL_BLOCKED(0.00)[baylibre-com.20221208.gappssmtp.com:dkim,mail-wr1-f51.google.com:rdns,mail-wr1-f51.google.com:helo];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	DKIM_TRACE(0.00)[baylibre-com.20221208.gappssmtp.com:+];
	TO_DN_NONE(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 51CDC411B9
X-Spamd-Bar: /
X-MailFrom: abailon@baylibre.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2ICXTTKJXXISM2KKHSTKXRK5B4VJMVFN
X-Message-ID-Hash: 2ICXTTKJXXISM2KKHSTKXRK5B4VJMVFN
X-Mailman-Approved-At: Wed, 24 May 2023 09:32:05 +0000
CC: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, sumit.semwal@linaro.org, christian.koenig@amd.com, jstephan@baylibre.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, khilman@baylibre.com, nbelin@baylibre.com, bero@baylibre.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 5/7] drm/apu: allow platform driver to implement their own mmap function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2ICXTTKJXXISM2KKHSTKXRK5B4VJMVFN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Julien Stephan <jstephan@baylibre.com>

By default we will call drm_gem_mmap() unless the apu driver has
declared it's own mmap handler.

Signed-off-by: Julien Stephan <jstephan@baylibre.com>
Reviewed-by: Julien Stephan <jstephan@baylibre.com>
---
 drivers/gpu/drm/apu/apu_drv.c      | 38 +++++++++++++++++++++++++++++-
 drivers/gpu/drm/apu/apu_internal.h |  2 ++
 2 files changed, 39 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/apu/apu_drv.c b/drivers/gpu/drm/apu/apu_drv.c
index a0dce785a02a..703d4515f075 100644
--- a/drivers/gpu/drm/apu/apu_drv.c
+++ b/drivers/gpu/drm/apu/apu_drv.c
@@ -29,7 +29,20 @@ static const struct drm_ioctl_desc ioctls[] = {
 			  DRM_RENDER_ALLOW),
 };
 
-DEFINE_DRM_GEM_DMA_FOPS(apu_drm_ops);
+static int apu_drm_gem_mmap(struct file *filp, struct vm_area_struct *vma);
+
+static const struct file_operations apu_drm_ops = {
+	.owner          = THIS_MODULE,
+	.open           = drm_open,
+	.release        = drm_release,
+	.unlocked_ioctl = drm_ioctl,
+	.compat_ioctl   = drm_compat_ioctl,
+	.poll           = drm_poll,
+	.read           = drm_read,
+	.llseek         = noop_llseek,
+	.mmap           = apu_drm_gem_mmap,
+	DRM_GEM_DMA_UNMAPPED_AREA_FOPS
+};
 
 static struct drm_driver apu_drm_driver = {
 	.driver_features = DRIVER_GEM | DRIVER_SYNCOBJ,
@@ -45,6 +58,29 @@ static struct drm_driver apu_drm_driver = {
 	DRM_GEM_DMA_DRIVER_OPS_WITH_DUMB_CREATE(drm_gem_dma_dumb_create),
 };
 
+/**
+ * apu_drm_gem_mmap()
+ *
+ * @filp: DRM file pointer
+ * @vma: VMA for the area to be mapped
+ *
+ * by default will call drm_gem_mmap() unless the apu driver has declared it's
+ * own mmap handler
+ *
+ */
+static int apu_drm_gem_mmap(struct file *filp, struct vm_area_struct *vma)
+{
+	struct drm_file *priv = filp->private_data;
+	struct drm_device *dev = priv->minor->dev;
+	struct apu_drm *apu = dev->dev_private;
+
+	if (apu->mmap)
+		return apu->mmap(filp, vma);
+	else
+		return drm_gem_mmap(filp, vma);
+}
+
+
 /**
  * apu_dev_alloc() - Allocate a new APU device
  *
diff --git a/drivers/gpu/drm/apu/apu_internal.h b/drivers/gpu/drm/apu/apu_internal.h
index ea4183f3fb15..46e0b2be7821 100644
--- a/drivers/gpu/drm/apu/apu_internal.h
+++ b/drivers/gpu/drm/apu/apu_internal.h
@@ -45,6 +45,8 @@ struct apu_drm {
 	struct iova_domain iovad;
 	int iova_limit_pfn;
 
+	int (*mmap)(struct file *filp, struct vm_area_struct *vma);
+
 	struct list_head cores;
 	struct list_head node;
 
-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
