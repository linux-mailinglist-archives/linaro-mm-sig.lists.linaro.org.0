Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CA771480B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 May 2023 12:40:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D789A3E923
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 May 2023 10:40:04 +0000 (UTC)
Received: from mail.nfschina.com (unknown [42.101.60.195])
	by lists.linaro.org (Postfix) with SMTP id 401143EE6A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 26 May 2023 03:33:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of suhui@nfschina.com designates 42.101.60.195 as permitted sender) smtp.mailfrom=suhui@nfschina.com;
	dmarc=none
Received: from localhost.localdomain (unknown [180.167.10.98])
	by mail.nfschina.com (Maildata Gateway V2.8.8) with ESMTPA id B711818010A35A;
	Fri, 26 May 2023 11:32:27 +0800 (CST)
X-MD-Sfrom: suhui@nfschina.com
X-MD-SrcIP: 180.167.10.98
From: Su Hui <suhui@nfschina.com>
To: Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>,
	Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	christian.koenig@amd.com,
	Xinhui.Pan@amd.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	evan.quan@amd.com,
	l.stach@pengutronix.de,
	linux+etnaviv@armlinux.org.uk,
	christian.gmeiner@gmail.com,
	bskeggs@redhat.com,
	kherbst@redhat.com,
	lyude@redhat.com,
	tomba@kernel.org,
	emma@anholt.net,
	airlied@redhat.com,
	kraxel@redhat.com,
	abrodkin@synopsys.com,
	ray.huang@amd.com,
	gurchetansingh@chromium.org,
	olvaffe@gmail.com,
	zackr@vmware.com,
	linux-graphics-maintainer@vmware.com,
	sumit.semwal@linaro.org
Date: Fri, 26 May 2023 11:32:25 +0800
Message-Id: <20230526033225.1310824-1-suhui@nfschina.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Spamd-Result: default: False [3.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	RDNS_NONE(1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:42.101.60.195];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	ONCE_RECEIVED(0.10)[];
	NEURAL_HAM(-0.00)[-0.539];
	DMARC_NA(0.00)[nfschina.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	TAGGED_RCPT(0.00)[etnaviv];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:137698, ipnet:42.101.60.0/22, country:CN];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,ffwll.ch,pengutronix.de,armlinux.org.uk,redhat.com,kernel.org,anholt.net,synopsys.com,chromium.org,vmware.com,linaro.org];
	FROM_EQ_ENVFROM(0.00)[];
	DIRECT_TO_MX(0.00)[git-send-email 2.30.2];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spam-Level: ***
X-Rspamd-Queue-Id: 401143EE6A
X-Spamd-Bar: +++
X-MailFrom: suhui@nfschina.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VKQLZNIFJEP5XQI3XVZUGTOGY7SL6UKI
X-Message-ID-Hash: VKQLZNIFJEP5XQI3XVZUGTOGY7SL6UKI
X-Mailman-Approved-At: Mon, 29 May 2023 10:40:01 +0000
CC: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, etnaviv@lists.freedesktop.org, nouveau@lists.freedesktop.org, virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, kernel-janitors@vger.kernel.org, Su Hui <suhui@nfschina.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm: Remove unnecessary (void*) conversions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VKQLZNIFJEP5XQI3XVZUGTOGY7SL6UKI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Pointer variables of (void*) type do not require type cast.

Signed-off-by: Su Hui <suhui@nfschina.com>
---
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c | 2 +-
 drivers/gpu/drm/amd/pm/amdgpu_pm.c                        | 2 +-
 drivers/gpu/drm/etnaviv/etnaviv_drv.c                     | 4 ++--
 drivers/gpu/drm/nouveau/nouveau_debugfs.c                 | 2 +-
 drivers/gpu/drm/omapdrm/omap_debugfs.c                    | 6 +++---
 drivers/gpu/drm/pl111/pl111_debugfs.c                     | 2 +-
 drivers/gpu/drm/qxl/qxl_debugfs.c                         | 4 ++--
 drivers/gpu/drm/tiny/arcpgu.c                             | 2 +-
 drivers/gpu/drm/ttm/ttm_resource.c                        | 3 +--
 drivers/gpu/drm/virtio/virtgpu_debugfs.c                  | 6 +++---
 drivers/gpu/drm/vmwgfx/ttm_object.c                       | 5 ++---
 drivers/gpu/drm/vmwgfx/vmwgfx_gem.c                       | 2 +-
 12 files changed, 19 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c
index 827fcb4fb3b3..8a2c39927167 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c
@@ -3312,7 +3312,7 @@ static ssize_t dtn_log_write(
 
 static int mst_topo_show(struct seq_file *m, void *unused)
 {
-	struct amdgpu_device *adev = (struct amdgpu_device *)m->private;
+	struct amdgpu_device *adev = m->private;
 	struct drm_device *dev = adev_to_drm(adev);
 	struct drm_connector *connector;
 	struct drm_connector_list_iter conn_iter;
diff --git a/drivers/gpu/drm/amd/pm/amdgpu_pm.c b/drivers/gpu/drm/amd/pm/amdgpu_pm.c
index 58c2246918fd..e6c870bd307b 100644
--- a/drivers/gpu/drm/amd/pm/amdgpu_pm.c
+++ b/drivers/gpu/drm/amd/pm/amdgpu_pm.c
@@ -3671,7 +3671,7 @@ static void amdgpu_parse_cg_state(struct seq_file *m, u64 flags)
 
 static int amdgpu_debugfs_pm_info_show(struct seq_file *m, void *unused)
 {
-	struct amdgpu_device *adev = (struct amdgpu_device *)m->private;
+	struct amdgpu_device *adev = m->private;
 	struct drm_device *dev = adev_to_drm(adev);
 	u64 flags = 0;
 	int r;
diff --git a/drivers/gpu/drm/etnaviv/etnaviv_drv.c b/drivers/gpu/drm/etnaviv/etnaviv_drv.c
index 31a7f59ccb49..dd57f7164e9a 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_drv.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_drv.c
@@ -198,7 +198,7 @@ static int etnaviv_ring_show(struct etnaviv_gpu *gpu, struct seq_file *m)
 
 static int show_unlocked(struct seq_file *m, void *arg)
 {
-	struct drm_info_node *node = (struct drm_info_node *) m->private;
+	struct drm_info_node *node = m->private;
 	struct drm_device *dev = node->minor->dev;
 	int (*show)(struct drm_device *dev, struct seq_file *m) =
 			node->info_ent->data;
@@ -208,7 +208,7 @@ static int show_unlocked(struct seq_file *m, void *arg)
 
 static int show_each_gpu(struct seq_file *m, void *arg)
 {
-	struct drm_info_node *node = (struct drm_info_node *) m->private;
+	struct drm_info_node *node = m->private;
 	struct drm_device *dev = node->minor->dev;
 	struct etnaviv_drm_private *priv = dev->dev_private;
 	struct etnaviv_gpu *gpu;
diff --git a/drivers/gpu/drm/nouveau/nouveau_debugfs.c b/drivers/gpu/drm/nouveau/nouveau_debugfs.c
index 2a36d1ca8fda..96b59d5d68ed 100644
--- a/drivers/gpu/drm/nouveau/nouveau_debugfs.c
+++ b/drivers/gpu/drm/nouveau/nouveau_debugfs.c
@@ -37,7 +37,7 @@
 static int
 nouveau_debugfs_vbios_image(struct seq_file *m, void *data)
 {
-	struct drm_info_node *node = (struct drm_info_node *) m->private;
+	struct drm_info_node *node = m->private;
 	struct nouveau_drm *drm = nouveau_drm(node->minor->dev);
 	int i;
 
diff --git a/drivers/gpu/drm/omapdrm/omap_debugfs.c b/drivers/gpu/drm/omapdrm/omap_debugfs.c
index a3d470468e5b..a94ce502e152 100644
--- a/drivers/gpu/drm/omapdrm/omap_debugfs.c
+++ b/drivers/gpu/drm/omapdrm/omap_debugfs.c
@@ -19,7 +19,7 @@
 
 static int gem_show(struct seq_file *m, void *arg)
 {
-	struct drm_info_node *node = (struct drm_info_node *) m->private;
+	struct drm_info_node *node = m->private;
 	struct drm_device *dev = node->minor->dev;
 	struct omap_drm_private *priv = dev->dev_private;
 
@@ -33,7 +33,7 @@ static int gem_show(struct seq_file *m, void *arg)
 
 static int mm_show(struct seq_file *m, void *arg)
 {
-	struct drm_info_node *node = (struct drm_info_node *) m->private;
+	struct drm_info_node *node = m->private;
 	struct drm_device *dev = node->minor->dev;
 	struct drm_printer p = drm_seq_file_printer(m);
 
@@ -45,7 +45,7 @@ static int mm_show(struct seq_file *m, void *arg)
 #ifdef CONFIG_DRM_FBDEV_EMULATION
 static int fb_show(struct seq_file *m, void *arg)
 {
-	struct drm_info_node *node = (struct drm_info_node *) m->private;
+	struct drm_info_node *node = m->private;
 	struct drm_device *dev = node->minor->dev;
 	struct drm_fb_helper *helper = dev->fb_helper;
 	struct drm_framebuffer *fb;
diff --git a/drivers/gpu/drm/pl111/pl111_debugfs.c b/drivers/gpu/drm/pl111/pl111_debugfs.c
index 6744fa16f464..4df03ec5d368 100644
--- a/drivers/gpu/drm/pl111/pl111_debugfs.c
+++ b/drivers/gpu/drm/pl111/pl111_debugfs.c
@@ -32,7 +32,7 @@ static const struct {
 
 static int pl111_debugfs_regs(struct seq_file *m, void *unused)
 {
-	struct drm_info_node *node = (struct drm_info_node *)m->private;
+	struct drm_info_node *node = m->private;
 	struct drm_device *dev = node->minor->dev;
 	struct pl111_drm_dev_private *priv = dev->dev_private;
 	int i;
diff --git a/drivers/gpu/drm/qxl/qxl_debugfs.c b/drivers/gpu/drm/qxl/qxl_debugfs.c
index 2d9ed3b94574..5b4fe3049529 100644
--- a/drivers/gpu/drm/qxl/qxl_debugfs.c
+++ b/drivers/gpu/drm/qxl/qxl_debugfs.c
@@ -38,7 +38,7 @@
 static int
 qxl_debugfs_irq_received(struct seq_file *m, void *data)
 {
-	struct drm_info_node *node = (struct drm_info_node *) m->private;
+	struct drm_info_node *node = m->private;
 	struct qxl_device *qdev = to_qxl(node->minor->dev);
 
 	seq_printf(m, "%d\n", atomic_read(&qdev->irq_received));
@@ -52,7 +52,7 @@ qxl_debugfs_irq_received(struct seq_file *m, void *data)
 static int
 qxl_debugfs_buffers_info(struct seq_file *m, void *data)
 {
-	struct drm_info_node *node = (struct drm_info_node *) m->private;
+	struct drm_info_node *node = m->private;
 	struct qxl_device *qdev = to_qxl(node->minor->dev);
 	struct qxl_bo *bo;
 
diff --git a/drivers/gpu/drm/tiny/arcpgu.c b/drivers/gpu/drm/tiny/arcpgu.c
index e5b10e41554a..09f728355aba 100644
--- a/drivers/gpu/drm/tiny/arcpgu.c
+++ b/drivers/gpu/drm/tiny/arcpgu.c
@@ -338,7 +338,7 @@ static int arcpgu_unload(struct drm_device *drm)
 #ifdef CONFIG_DEBUG_FS
 static int arcpgu_show_pxlclock(struct seq_file *m, void *arg)
 {
-	struct drm_info_node *node = (struct drm_info_node *)m->private;
+	struct drm_info_node *node = m->private;
 	struct drm_device *drm = node->minor->dev;
 	struct arcpgu_drm_private *arcpgu = dev_to_arcpgu(drm);
 	unsigned long clkrate = clk_get_rate(arcpgu->clk);
diff --git a/drivers/gpu/drm/ttm/ttm_resource.c b/drivers/gpu/drm/ttm/ttm_resource.c
index 7333f7a87a2f..540faabcf8a4 100644
--- a/drivers/gpu/drm/ttm/ttm_resource.c
+++ b/drivers/gpu/drm/ttm/ttm_resource.c
@@ -727,9 +727,8 @@ ttm_kmap_iter_linear_io_fini(struct ttm_kmap_iter_linear_io *iter_io,
 
 static int ttm_resource_manager_show(struct seq_file *m, void *unused)
 {
-	struct ttm_resource_manager *man =
-		(struct ttm_resource_manager *)m->private;
 	struct drm_printer p = drm_seq_file_printer(m);
+	struct ttm_resource_manager *man = m->private;
 	ttm_resource_manager_debug(man, &p);
 	return 0;
 }
diff --git a/drivers/gpu/drm/virtio/virtgpu_debugfs.c b/drivers/gpu/drm/virtio/virtgpu_debugfs.c
index 853dd9aa397e..577691af9707 100644
--- a/drivers/gpu/drm/virtio/virtgpu_debugfs.c
+++ b/drivers/gpu/drm/virtio/virtgpu_debugfs.c
@@ -43,7 +43,7 @@ static void virtio_gpu_add_int(struct seq_file *m, const char *name, int value)
 
 static int virtio_gpu_features(struct seq_file *m, void *data)
 {
-	struct drm_info_node *node = (struct drm_info_node *)m->private;
+	struct drm_info_node *node = m->private;
 	struct virtio_gpu_device *vgdev = node->minor->dev->dev_private;
 
 	virtio_gpu_add_bool(m, "virgl", vgdev->has_virgl_3d);
@@ -68,7 +68,7 @@ static int virtio_gpu_features(struct seq_file *m, void *data)
 static int
 virtio_gpu_debugfs_irq_info(struct seq_file *m, void *data)
 {
-	struct drm_info_node *node = (struct drm_info_node *) m->private;
+	struct drm_info_node *node = m->private;
 	struct virtio_gpu_device *vgdev = node->minor->dev->dev_private;
 
 	seq_printf(m, "fence %llu %lld\n",
@@ -80,7 +80,7 @@ virtio_gpu_debugfs_irq_info(struct seq_file *m, void *data)
 static int
 virtio_gpu_debugfs_host_visible_mm(struct seq_file *m, void *data)
 {
-	struct drm_info_node *node = (struct drm_info_node *)m->private;
+	struct drm_info_node *node = m->private;
 	struct virtio_gpu_device *vgdev = node->minor->dev->dev_private;
 	struct drm_printer p;
 
diff --git a/drivers/gpu/drm/vmwgfx/ttm_object.c b/drivers/gpu/drm/vmwgfx/ttm_object.c
index ddf8373c1d77..e9e3cc8f5b49 100644
--- a/drivers/gpu/drm/vmwgfx/ttm_object.c
+++ b/drivers/gpu/drm/vmwgfx/ttm_object.c
@@ -513,8 +513,7 @@ static void ttm_prime_refcount_release(struct ttm_base_object **p_base)
  */
 static void ttm_prime_dmabuf_release(struct dma_buf *dma_buf)
 {
-	struct ttm_prime_object *prime =
-		(struct ttm_prime_object *) dma_buf->priv;
+	struct ttm_prime_object *prime = dma_buf->priv;
 	struct ttm_base_object *base = &prime->base;
 	struct ttm_object_device *tdev = base->tfile->tdev;
 
@@ -554,7 +553,7 @@ int ttm_prime_fd_to_handle(struct ttm_object_file *tfile,
 	if (dma_buf->ops != &tdev->ops)
 		return -ENOSYS;
 
-	prime = (struct ttm_prime_object *) dma_buf->priv;
+	prime = dma_buf->priv;
 	base = &prime->base;
 	*handle = base->handle;
 	ret = ttm_ref_object_add(tfile, base, NULL, false);
diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_gem.c b/drivers/gpu/drm/vmwgfx/vmwgfx_gem.c
index c0da89e16e6f..3267a4e61382 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_gem.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_gem.c
@@ -220,7 +220,7 @@ static void vmw_bo_print_info(int id, struct vmw_bo *bo, struct seq_file *m)
 
 static int vmw_debugfs_gem_info_show(struct seq_file *m, void *unused)
 {
-	struct vmw_private *vdev = (struct vmw_private *)m->private;
+	struct vmw_private *vdev = m->private;
 	struct drm_device *dev = &vdev->drm;
 	struct drm_file *file;
 	int r;
-- 
2.30.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
