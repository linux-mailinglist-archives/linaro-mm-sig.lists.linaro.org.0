Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0FLdIjwadWl8AwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 24 Jan 2026 20:15:08 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF527EA31
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 24 Jan 2026 20:15:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45F28401B8
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 24 Jan 2026 19:15:07 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id E707C401B8
	for <linaro-mm-sig@lists.linaro.org>; Sat, 24 Jan 2026 19:14:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=eJJjSG7y;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5FC6260055;
	Sat, 24 Jan 2026 19:14:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72D60C19424;
	Sat, 24 Jan 2026 19:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769282078;
	bh=ON2F2Vj2vTMA2DQJXK9cxWPSAn+7ZMwiHez65G8+P60=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eJJjSG7y4NdYJB+tKOpTsoL6xtJXXKzGoMRIhIs1S7kaV3ogLgX09GVAjDBmTtIRF
	 ePeN3ZZScxJ+myAD2omR8Ncj7Hs21fTzdNTG03FHTwvhEPUy3Af+es8gmWB4DFlhRC
	 aFTEg+kDwYtUM9vYEl1xZ1B+BypyuCDUqj1YQ5rGg1S7VbhcZ96G6IINWameKQZYau
	 XwMlqIBKUgzUOb/26VGVZQG4/FArLA12TOI1ieGCdaPmFtHEb1RMsxF5ZpSjz7iign
	 RznsK5tp2ru5eIfnXEgjNzI0fe6iOHHA9Bnr1BfwdbcaOdzo3XRey21ZxSBCXHCABD
	 WOw8u03ZfKjuw==
From: Leon Romanovsky <leon@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Gerd Hoffmann <kraxel@redhat.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Gurchetan Singh <gurchetansingh@chromium.org>,
	Chia-I Wu <olvaffe@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Lucas De Marchi <lucas.demarchi@intel.com>,
	=?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Leon Romanovsky <leon@kernel.org>,
	Kevin Tian <kevin.tian@intel.com>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Felix Kuehling <Felix.Kuehling@amd.com>,
	Alex Williamson <alex@shazbot.org>,
	Ankit Agrawal <ankita@nvidia.com>,
	Vivek Kasireddy <vivek.kasireddy@intel.com>
Date: Sat, 24 Jan 2026 21:14:14 +0200
Message-ID: <20260124-dmabuf-revoke-v5-2-f98fca917e96@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-47773
X-Spamd-Bar: ----
Message-ID-Hash: BYLEXKO2TS76ESCDL5WREQFE3LPNQPLU
X-Message-ID-Hash: BYLEXKO2TS76ESCDL5WREQFE3LPNQPLU
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 2/8] dma-buf: Rename dma_buf_move_notify() to dma_buf_invalidate_mappings()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BYLEXKO2TS76ESCDL5WREQFE3LPNQPLU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: 2EF527EA31
X-Rspamd-Action: no action

From: Leon Romanovsky <leonro@nvidia.com>

Along with renaming the .move_notify() callback, rename the corresponding
dma-buf core function. This makes the expected behavior clear to exporters
calling this function.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/dma-buf/dma-buf.c                  | 8 ++++----
 drivers/gpu/drm/amd/amdgpu/amdgpu_object.c | 2 +-
 drivers/gpu/drm/xe/xe_bo.c                 | 2 +-
 drivers/iommu/iommufd/selftest.c           | 2 +-
 drivers/vfio/pci/vfio_pci_dmabuf.c         | 4 ++--
 include/linux/dma-buf.h                    | 2 +-
 6 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index 59cc647bf40e..e12db540c413 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -912,7 +912,7 @@ dma_buf_pin_on_map(struct dma_buf_attachment *attach)
  * 3. Exporters must hold the dma-buf reservation lock when calling these
  *    functions:
  *
- *     - dma_buf_move_notify()
+ *     - dma_buf_invalidate_mappings()
  */
 
 /**
@@ -1247,14 +1247,14 @@ void dma_buf_unmap_attachment_unlocked(struct dma_buf_attachment *attach,
 EXPORT_SYMBOL_NS_GPL(dma_buf_unmap_attachment_unlocked, "DMA_BUF");
 
 /**
- * dma_buf_move_notify - notify attachments that DMA-buf is moving
+ * dma_buf_invalidate_mappings - notify attachments that DMA-buf is moving
  *
  * @dmabuf:	[in]	buffer which is moving
  *
  * Informs all attachments that they need to destroy and recreate all their
  * mappings.
  */
-void dma_buf_move_notify(struct dma_buf *dmabuf)
+void dma_buf_invalidate_mappings(struct dma_buf *dmabuf)
 {
 	struct dma_buf_attachment *attach;
 
@@ -1264,7 +1264,7 @@ void dma_buf_move_notify(struct dma_buf *dmabuf)
 		if (attach->importer_ops)
 			attach->importer_ops->invalidate_mappings(attach);
 }
-EXPORT_SYMBOL_NS_GPL(dma_buf_move_notify, "DMA_BUF");
+EXPORT_SYMBOL_NS_GPL(dma_buf_invalidate_mappings, "DMA_BUF");
 
 /**
  * DOC: cpu access
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
index e08f58de4b17..f73dc99d1887 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
@@ -1270,7 +1270,7 @@ void amdgpu_bo_move_notify(struct ttm_buffer_object *bo,
 
 	if (abo->tbo.base.dma_buf && !drm_gem_is_imported(&abo->tbo.base) &&
 	    old_mem && old_mem->mem_type != TTM_PL_SYSTEM)
-		dma_buf_move_notify(abo->tbo.base.dma_buf);
+		dma_buf_invalidate_mappings(abo->tbo.base.dma_buf);
 
 	/* move_notify is called before move happens */
 	trace_amdgpu_bo_move(abo, new_mem ? new_mem->mem_type : -1,
diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
index bf4ee976b680..7d02cd9a8501 100644
--- a/drivers/gpu/drm/xe/xe_bo.c
+++ b/drivers/gpu/drm/xe/xe_bo.c
@@ -819,7 +819,7 @@ static int xe_bo_move_notify(struct xe_bo *bo,
 
 	/* Don't call move_notify() for imported dma-bufs. */
 	if (ttm_bo->base.dma_buf && !ttm_bo->base.import_attach)
-		dma_buf_move_notify(ttm_bo->base.dma_buf);
+		dma_buf_invalidate_mappings(ttm_bo->base.dma_buf);
 
 	/*
 	 * TTM has already nuked the mmap for us (see ttm_bo_unmap_virtual),
diff --git a/drivers/iommu/iommufd/selftest.c b/drivers/iommu/iommufd/selftest.c
index 550ff36dec3a..f60cbd5328cc 100644
--- a/drivers/iommu/iommufd/selftest.c
+++ b/drivers/iommu/iommufd/selftest.c
@@ -2081,7 +2081,7 @@ static int iommufd_test_dmabuf_revoke(struct iommufd_ucmd *ucmd, int fd,
 	priv = dmabuf->priv;
 	dma_resv_lock(dmabuf->resv, NULL);
 	priv->revoked = revoked;
-	dma_buf_move_notify(dmabuf);
+	dma_buf_invalidate_mappings(dmabuf);
 	dma_resv_unlock(dmabuf->resv);
 
 err_put:
diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
index 4be4a85005cb..d8ceafabef48 100644
--- a/drivers/vfio/pci/vfio_pci_dmabuf.c
+++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
@@ -332,7 +332,7 @@ void vfio_pci_dma_buf_move(struct vfio_pci_core_device *vdev, bool revoked)
 		if (priv->revoked != revoked) {
 			dma_resv_lock(priv->dmabuf->resv, NULL);
 			priv->revoked = revoked;
-			dma_buf_move_notify(priv->dmabuf);
+			dma_buf_invalidate_mappings(priv->dmabuf);
 			dma_resv_unlock(priv->dmabuf->resv);
 		}
 		fput(priv->dmabuf->file);
@@ -353,7 +353,7 @@ void vfio_pci_dma_buf_cleanup(struct vfio_pci_core_device *vdev)
 		list_del_init(&priv->dmabufs_elm);
 		priv->vdev = NULL;
 		priv->revoked = true;
-		dma_buf_move_notify(priv->dmabuf);
+		dma_buf_invalidate_mappings(priv->dmabuf);
 		dma_resv_unlock(priv->dmabuf->resv);
 		vfio_device_put_registration(&vdev->vdev);
 		fput(priv->dmabuf->file);
diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
index 1b397635c793..d5c3ce2b3aa4 100644
--- a/include/linux/dma-buf.h
+++ b/include/linux/dma-buf.h
@@ -600,7 +600,7 @@ struct sg_table *dma_buf_map_attachment(struct dma_buf_attachment *,
 					enum dma_data_direction);
 void dma_buf_unmap_attachment(struct dma_buf_attachment *, struct sg_table *,
 				enum dma_data_direction);
-void dma_buf_move_notify(struct dma_buf *dma_buf);
+void dma_buf_invalidate_mappings(struct dma_buf *dma_buf);
 int dma_buf_begin_cpu_access(struct dma_buf *dma_buf,
 			     enum dma_data_direction dir);
 int dma_buf_end_cpu_access(struct dma_buf *dma_buf,

-- 
2.52.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
