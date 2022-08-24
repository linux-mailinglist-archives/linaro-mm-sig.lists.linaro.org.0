Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 261EE59F77B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 12:24:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B66D3F5E3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 10:24:19 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id D52D23F5F8
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Aug 2022 10:23:51 +0000 (UTC)
Received: from dimapc.. (109-252-119-13.nat.spd-mgts.ru [109.252.119.13])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A9AE36601E7F;
	Wed, 24 Aug 2022 11:23:48 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661336631;
	bh=bBPiDsDV8VShdB9ZtsiGZVkPLMJ84keUgctgg0zrhSA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JIhKt4lzNSoUC/gVVAg+P2BZTIZZfWC4j8cmZ96m9spViCUOHP9dhSzL9/TwHMFqo
	 MTL1a+pEkZHqam6VPg/TGjdRI6cjmTtHT3J2wR/VgKIz1/2FTiyCqnedrxarpJbRon
	 PjDbcSi39vlbNnMuWe4Xxek0HqedxV/W1+HbMYb8btuuknX9qbhxejZCbKsfYzxDeg
	 oM/OFKz9xE1rWQ9VV5hB49pv1q49DazwU2I1XPcrSlkRqNX99vp8QPqLCv1IrBjHRv
	 b7CBEceUTBLBPfRqP6/JOvxFvZEKyEqAOxXJiaUh6K3gSid1+JBtb4oOBcyMThzL6I
	 BS7ztXgJe5vKQ==
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
	Qiang Yu <yuq825@gmail.com>
Date: Wed, 24 Aug 2022 13:22:44 +0300
Message-Id: <20220824102248.91964-6-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220824102248.91964-1-dmitry.osipenko@collabora.com>
References: <20220824102248.91964-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Message-ID-Hash: WNLJLSE2EGHMQZT2HKVIFAZGR55MXP2C
X-Message-ID-Hash: WNLJLSE2EGHMQZT2HKVIFAZGR55MXP2C
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org, lima@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 5/9] dma-buf: Move dma_buf_mmap_unlocked() to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WNLJLSE2EGHMQZT2HKVIFAZGR55MXP2C/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Move dma_buf_mmap_unlocked() function to the dynamic locking specification
by taking the reservation lock. Neither of the today's drivers take the
reservation lock within the mmap() callback, hence it's safe to enforce
the locking.

Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 drivers/dma-buf/dma-buf.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index f358af401360..4556a12bd741 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -1348,6 +1348,8 @@ EXPORT_SYMBOL_NS_GPL(dma_buf_end_cpu_access, DMA_BUF);
 int dma_buf_mmap_unlocked(struct dma_buf *dmabuf, struct vm_area_struct *vma,
 			  unsigned long pgoff)
 {
+	int ret;
+
 	if (WARN_ON(!dmabuf || !vma))
 		return -EINVAL;
 
@@ -1368,7 +1370,11 @@ int dma_buf_mmap_unlocked(struct dma_buf *dmabuf, struct vm_area_struct *vma,
 	vma_set_file(vma, dmabuf->file);
 	vma->vm_pgoff = pgoff;
 
-	return dmabuf->ops->mmap(dmabuf, vma);
+	dma_resv_lock(dmabuf->resv, NULL);
+	ret = dmabuf->ops->mmap(dmabuf, vma);
+	dma_resv_unlock(dmabuf->resv);
+
+	return ret;
 }
 EXPORT_SYMBOL_NS_GPL(dma_buf_mmap_unlocked, DMA_BUF);
 
-- 
2.37.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
