Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B435758C6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Jul 2022 02:53:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 378A340306
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Jul 2022 00:53:52 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id C146D40308
	for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Jul 2022 00:53:34 +0000 (UTC)
Received: from dimapc.. (109-252-119-232.nat.spd-mgts.ru [109.252.119.232])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9D2B16601A58;
	Fri, 15 Jul 2022 01:53:31 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1657846414;
	bh=dr1tdx4u+QvM7fiw6wlWFPP0AWqXDJCr42blBc4VyZo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ro35pEWIBbDVr6SddC5oV5g2IzAdYCQ3y39D9s1jFkM7smnJyAgxodZSXxxyi3By8
	 vMPfDkSHreXz6dIrXY8zBhAWBr1SM9hPDKzcb1APoGPjVGznW4DbygpAPhmM4v4iqy
	 kNNVNMXe48miNTWrShOswaJRdmoyXxS+0Vc5FpskaDX7p6X/PMys3epI9Nmfk8p88w
	 W05tRtqheMg9fof74rfgYjOepSdS637dIAmjASMEhKQqWj6B1RlfwPWmspDEMsVozQ
	 9wRaNESK5yw9FLxoEgVom8kYmxVCD9KC6cScU7I+CCyZasFjtY2KBGQMWY6R6v6p3h
	 1UaDnXFpv8SQQ==
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: David Airlie <airlied@linux.ie>,
	Gerd Hoffmann <kraxel@redhat.com>,
	Gurchetan Singh <gurchetansingh@chromium.org>,
	Chia-I Wu <olvaffe@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Gert Wollny <gert.wollny@collabora.com>,
	Gustavo Padovan <gustavo.padovan@collabora.com>,
	Daniel Stone <daniel@fooishbar.org>,
	Tomeu Vizoso <tomeu.vizoso@collabora.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Clark <robdclark@gmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"Pan, Xinhui" <Xinhui.Pan@amd.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Tomasz Figa <tfiga@chromium.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Alex Deucher <alexander.deucher@amd.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
	=?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas_os@shipmail.org>
Date: Fri, 15 Jul 2022 03:52:44 +0300
Message-Id: <20220715005244.42198-7-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220715005244.42198-1-dmitry.osipenko@collabora.com>
References: <20220715005244.42198-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: MB66QHNWPJEAKMUO5FR7DIO2ODUFRWNL
X-Message-ID-Hash: MB66QHNWPJEAKMUO5FR7DIO2ODUFRWNL
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v1 6/6] dma-buf: Remove internal lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MB66QHNWPJEAKMUO5FR7DIO2ODUFRWNL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The internal dma-buf lock isn't needed anymore because the updated
locking specification claims that dma-buf reservation must be locked
by importers, and thus, the internal data is already protected by the
reservation lock. Remove the obsoleted internal lock.

Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 drivers/dma-buf/dma-buf.c | 5 -----
 include/linux/dma-buf.h   | 9 ---------
 2 files changed, 14 deletions(-)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index 37545ecb845a..4cc739537ebd 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -656,7 +656,6 @@ struct dma_buf *dma_buf_export(const struct dma_buf_export_info *exp_info)
 
 	dmabuf->file = file;
 
-	mutex_init(&dmabuf->lock);
 	INIT_LIST_HEAD(&dmabuf->attachments);
 
 	mutex_lock(&db_list.lock);
@@ -1459,7 +1458,6 @@ int dma_buf_vmap_unlocked(struct dma_buf *dmabuf, struct iosys_map *map)
 		return -EINVAL;
 
 	dma_resv_lock(dmabuf->resv, NULL);
-	mutex_lock(&dmabuf->lock);
 	if (dmabuf->vmapping_counter) {
 		dmabuf->vmapping_counter++;
 		BUG_ON(iosys_map_is_null(&dmabuf->vmap_ptr));
@@ -1479,7 +1477,6 @@ int dma_buf_vmap_unlocked(struct dma_buf *dmabuf, struct iosys_map *map)
 	*map = dmabuf->vmap_ptr;
 
 out_unlock:
-	mutex_unlock(&dmabuf->lock);
 	dma_resv_unlock(dmabuf->resv);
 	return ret;
 }
@@ -1500,13 +1497,11 @@ void dma_buf_vunmap_unlocked(struct dma_buf *dmabuf, struct iosys_map *map)
 	BUG_ON(!iosys_map_is_equal(&dmabuf->vmap_ptr, map));
 
 	dma_resv_lock(dmabuf->resv, NULL);
-	mutex_lock(&dmabuf->lock);
 	if (--dmabuf->vmapping_counter == 0) {
 		if (dmabuf->ops->vunmap)
 			dmabuf->ops->vunmap(dmabuf, map);
 		iosys_map_clear(&dmabuf->vmap_ptr);
 	}
-	mutex_unlock(&dmabuf->lock);
 	dma_resv_unlock(dmabuf->resv);
 }
 EXPORT_SYMBOL_NS_GPL(dma_buf_vunmap_unlocked, DMA_BUF);
diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
index da924a56d58f..abdd99042c77 100644
--- a/include/linux/dma-buf.h
+++ b/include/linux/dma-buf.h
@@ -326,15 +326,6 @@ struct dma_buf {
 	/** @ops: dma_buf_ops associated with this buffer object. */
 	const struct dma_buf_ops *ops;
 
-	/**
-	 * @lock:
-	 *
-	 * Used internally to serialize list manipulation, attach/detach and
-	 * vmap/unmap. Note that in many cases this is superseeded by
-	 * dma_resv_lock() on @resv.
-	 */
-	struct mutex lock;
-
 	/**
 	 * @vmapping_counter:
 	 *
-- 
2.36.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
