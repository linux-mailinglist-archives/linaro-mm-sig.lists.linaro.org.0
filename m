Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 668B05A81A6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Aug 2022 17:40:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9DBD643F47
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Aug 2022 15:40:35 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 7AC9D43F4F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Aug 2022 15:40:05 +0000 (UTC)
Received: from dimapc.. (109-252-119-13.nat.spd-mgts.ru [109.252.119.13])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CF7886601E0F;
	Wed, 31 Aug 2022 16:40:01 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661960404;
	bh=lqmbMZlr5dkrGqFSyrWeGCXHf4B0xmxBPMBh938KoCw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EAuy4nLlfDO9TVsH5HROK6LfHSaGDAbTbN/zRIX/deEuscp5PL6GdcG1ocb0FhmQq
	 vm/tCnYg7II5mjyvCT2fAryNdNnYPLx1YGmva96OnxCv9p2AcQMgO7a2Ry//qij6YL
	 OCAZmhx5VYy84KsWpiKh8pJK1Lx8enKGiM/CXGR2y6Sz/asIZccaqfjaY+To/VXUBy
	 wnuOMp2zUhytPXc3JIXdgDouOr2haYbmHySGJZOtv6kt5/EbRzbKMJSLesOYtyQl0G
	 PMk8yBLSlC+d9CVKa/v4OlzyQG5H1mlA/NRtsILc5FyvrEewXzVmiTT5t/GforGdo9
	 Z/3zW6DvacAtw==
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
	=?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas_os@shipmail.org>,
	Qiang Yu <yuq825@gmail.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Amol Maheshwari <amahesh@qti.qualcomm.com>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Leon Romanovsky <leon@kernel.org>,
	Juergen Gross <jgross@suse.com>,
	Stefano Stabellini <sstabellini@kernel.org>,
	Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
	Tomi Valkeinen <tomba@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Lucas Stach <l.stach@pengutronix.de>,
	Christian Gmeiner <christian.gmeiner@gmail.com>
Date: Wed, 31 Aug 2022 18:37:52 +0300
Message-Id: <20220831153757.97381-17-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
References: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: YXZ32P53RRVRYLFMKFTSIDKNXLLX5P6J
X-Message-ID-Hash: YXZ32P53RRVRYLFMKFTSIDKNXLLX5P6J
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 16/21] dma-buf: Move dma_buf_attach() to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YXZ32P53RRVRYLFMKFTSIDKNXLLX5P6J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Move dma-buf attachment API functions to the dynamic locking specification
by taking the reservation lock around the mapping operations. The strict
locking convention prevents deadlock situations for dma-buf importers and
exporters.

Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 drivers/dma-buf/dma-buf.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index ceea4839c641..073942bf5ae9 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -858,8 +858,8 @@ dma_buf_dynamic_attach(struct dma_buf *dmabuf, struct device *dev,
 	    dma_buf_is_dynamic(dmabuf)) {
 		struct sg_table *sgt;
 
+		dma_resv_lock(attach->dmabuf->resv, NULL);
 		if (dma_buf_is_dynamic(attach->dmabuf)) {
-			dma_resv_lock(attach->dmabuf->resv, NULL);
 			ret = dmabuf->ops->pin(attach);
 			if (ret)
 				goto err_unlock;
@@ -872,8 +872,7 @@ dma_buf_dynamic_attach(struct dma_buf *dmabuf, struct device *dev,
 			ret = PTR_ERR(sgt);
 			goto err_unpin;
 		}
-		if (dma_buf_is_dynamic(attach->dmabuf))
-			dma_resv_unlock(attach->dmabuf->resv);
+		dma_resv_unlock(attach->dmabuf->resv);
 		attach->sgt = sgt;
 		attach->dir = DMA_BIDIRECTIONAL;
 	}
@@ -889,8 +888,7 @@ dma_buf_dynamic_attach(struct dma_buf *dmabuf, struct device *dev,
 		dmabuf->ops->unpin(attach);
 
 err_unlock:
-	if (dma_buf_is_dynamic(attach->dmabuf))
-		dma_resv_unlock(attach->dmabuf->resv);
+	dma_resv_unlock(attach->dmabuf->resv);
 
 	dma_buf_detach(dmabuf, attach);
 	return ERR_PTR(ret);
@@ -936,21 +934,19 @@ void dma_buf_detach(struct dma_buf *dmabuf, struct dma_buf_attachment *attach)
 	if (WARN_ON(!dmabuf || !attach))
 		return;
 
+	dma_resv_lock(attach->dmabuf->resv, NULL);
+
 	if (attach->sgt) {
-		if (dma_buf_is_dynamic(attach->dmabuf))
-			dma_resv_lock(attach->dmabuf->resv, NULL);
 
 		__unmap_dma_buf(attach, attach->sgt, attach->dir);
 
-		if (dma_buf_is_dynamic(attach->dmabuf)) {
+		if (dma_buf_is_dynamic(attach->dmabuf))
 			dmabuf->ops->unpin(attach);
-			dma_resv_unlock(attach->dmabuf->resv);
-		}
 	}
-
-	dma_resv_lock(dmabuf->resv, NULL);
 	list_del(&attach->node);
+
 	dma_resv_unlock(dmabuf->resv);
+
 	if (dmabuf->ops->detach)
 		dmabuf->ops->detach(dmabuf, attach);
 
-- 
2.37.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
