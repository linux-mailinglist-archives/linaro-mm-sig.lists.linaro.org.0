Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E00AAA593A6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 13:09:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1096944734
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 12:09:29 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id CB6DA44899
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Mar 2025 12:06:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=JvjKiebn;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 50BE0A45AEF;
	Mon, 10 Mar 2025 12:01:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AC88C4CEE5;
	Mon, 10 Mar 2025 12:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741608408;
	bh=Qsf/4cmIwOEBWG+KEjMk+VXbjNJ+CMnPc++S7Uaux44=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=JvjKiebn6NPadaYopEROu2Wk78rdDJEvtjKTS7MkrdREUkAJTHFkGfSG4VjpCAIxq
	 ttK+MqSZtwngZd9TC+nTvymEMN2Z1f0hr3lqfy10jJxQB3UHQr0XgrNUnK9i23DUrF
	 zc1zrnOde4h44bOj69AwItqo98bkHzWaQhTwoWTxr+M2rJUk3HZWf07AceA84I0hfb
	 2drmUOmf6Ggo0nxrxKKe7iAypbLa5169lUFwKDmlZJPUPxw1F+kK0y3X8xeKel9j2a
	 h6BqBn4N7fH7hWDFgvGuFE6oAcgmi2G1iKoh52DDhw/HW4x6dTT39dvzW4+xn6sBHC
	 nr6zPuPrdq+aQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 10 Mar 2025 13:06:17 +0100
MIME-Version: 1.0
Message-Id: <20250310-dmem-cgroups-v1-11-2984c1bc9312@kernel.org>
References: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
In-Reply-To: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Tomasz Figa <tfiga@chromium.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3032; i=mripard@kernel.org;
 h=from:subject:message-id; bh=Qsf/4cmIwOEBWG+KEjMk+VXbjNJ+CMnPc++S7Uaux44=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDOnnrm7L3LlrwvOPawsFQufNnL1sEuPDM1N2vlzGOm3i9
 7c1F51fc3aUsjCIcTHIiimyxAibL4k7Net1JxvfPJg5rEwgQxi4OAVgIpn+jAwNq5b4NK817Srv
 kizRirktpJJcwtdd9bHHKpDL4wLbQmlGhifBexJPKh1i3RB2LvSO9UxWBz/dvOu+Ovv4ZRNaNvt
 LMwEA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CB6DA44899
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[147.75.193.91:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91:c];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[renesas];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linux-foundation.org,samsung.com,arm.com,linaro.org,amd.com,collabora.com,google.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,chromium.org,kernel.org];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[xs4all.nl,ideasonboard.com,kvack.org,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,lists.linaro.org,kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: X2YU3SYG7YMEVLKHF3VDDLJRWUJOGFMA
X-Message-ID-Hash: X2YU3SYG7YMEVLKHF3VDDLJRWUJOGFMA
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 11/12] drm/gem: Add cgroup memory accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X2YU3SYG7YMEVLKHF3VDDLJRWUJOGFMA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In order to support any device using the GEM support, let's charge any
GEM DMA allocation into the dmem cgroup.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/drm_gem.c            | 5 +++++
 drivers/gpu/drm/drm_gem_dma_helper.c | 6 ++++++
 include/drm/drm_device.h             | 1 +
 include/drm/drm_gem.h                | 2 ++
 4 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index ee811764c3df4b4e9c377a66afd4967512ba2001..e04733cb49353cf3ff9672d883b106a083f80d86 100644
--- a/drivers/gpu/drm/drm_gem.c
+++ b/drivers/gpu/drm/drm_gem.c
@@ -108,10 +108,11 @@ drm_gem_init(struct drm_device *dev)
 	dev->vma_offset_manager = vma_offset_manager;
 	drm_vma_offset_manager_init(vma_offset_manager,
 				    DRM_FILE_PAGE_OFFSET_START,
 				    DRM_FILE_PAGE_OFFSET_SIZE);
 
+
 	return drmm_add_action(dev, drm_gem_init_release, NULL);
 }
 
 /**
  * drm_gem_object_init_with_mnt - initialize an allocated shmem-backed GEM
@@ -973,10 +974,14 @@ drm_gem_release(struct drm_device *dev, struct drm_file *file_private)
  * drm_gem_object_init().
  */
 void
 drm_gem_object_release(struct drm_gem_object *obj)
 {
+
+	if (obj->cgroup_pool_state)
+		dmem_cgroup_uncharge(obj->cgroup_pool_state, obj->size);
+
 	if (obj->filp)
 		fput(obj->filp);
 
 	drm_gem_private_object_fini(obj);
 
diff --git a/drivers/gpu/drm/drm_gem_dma_helper.c b/drivers/gpu/drm/drm_gem_dma_helper.c
index 16988d316a6dc702310fa44c15c92dc67b82802b..6236feb67ddd6338f0f597a0606377e0352ca6ed 100644
--- a/drivers/gpu/drm/drm_gem_dma_helper.c
+++ b/drivers/gpu/drm/drm_gem_dma_helper.c
@@ -104,10 +104,16 @@ __drm_gem_dma_create(struct drm_device *drm, size_t size, bool private)
 	if (ret) {
 		drm_gem_object_release(gem_obj);
 		goto error;
 	}
 
+	ret = dmem_cgroup_try_charge(dma_get_dmem_cgroup_region(drm->dev),
+				     size,
+				     &dma_obj->base.cgroup_pool_state, NULL);
+	if (ret)
+		goto error;
+
 	return dma_obj;
 
 error:
 	kfree(dma_obj);
 	return ERR_PTR(ret);
diff --git a/include/drm/drm_device.h b/include/drm/drm_device.h
index c91f87b5242d7a499917eb4aeb6ca8350f856eb3..58987f39ba8718eb768f6261fb0a1fbf16b38549 100644
--- a/include/drm/drm_device.h
+++ b/include/drm/drm_device.h
@@ -1,8 +1,9 @@
 #ifndef _DRM_DEVICE_H_
 #define _DRM_DEVICE_H_
 
+#include <linux/cgroup_dmem.h>
 #include <linux/list.h>
 #include <linux/kref.h>
 #include <linux/mutex.h>
 #include <linux/idr.h>
 
diff --git a/include/drm/drm_gem.h b/include/drm/drm_gem.h
index fdae947682cd0b7b06db5e35e120f049a0f30179..95fe8ed48a26204020bb47d6074689829c410465 100644
--- a/include/drm/drm_gem.h
+++ b/include/drm/drm_gem.h
@@ -430,10 +430,12 @@ struct drm_gem_object {
 	 * @lru:
 	 *
 	 * The current LRU list that the GEM object is on.
 	 */
 	struct drm_gem_lru *lru;
+
+	struct dmem_cgroup_pool_state *cgroup_pool_state;
 };
 
 /**
  * DRM_GEM_FOPS - Default drm GEM file operations
  *

-- 
2.48.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
