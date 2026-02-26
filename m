Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6A3ODgIV4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:57:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C59954122B2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:57:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D71A5406EA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:57:36 +0000 (UTC)
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
	by lists.linaro.org (Postfix) with ESMTPS id EBBA03F7E4
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 13:40:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=pass (policy=none) header.from=nxp.com;
	spf=pass (lists.linaro.org: domain of ruxandra.radulescu@nxp.com designates 92.121.34.21 as permitted sender) smtp.mailfrom=ruxandra.radulescu@nxp.com
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 32821201553;
	Thu, 26 Feb 2026 14:40:59 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 101AA201509;
	Thu, 26 Feb 2026 14:40:59 +0100 (CET)
Received: from lsv15149.swis.ro-buh01.nxp.com (lsv15149.swis.ro-buh01.nxp.com [10.162.246.145])
	by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 56D7A2035B;
	Thu, 26 Feb 2026 14:40:57 +0100 (CET)
From: Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
Date: Thu, 26 Feb 2026 15:40:40 +0200
MIME-Version: 1.0
Message-Id: <20260226-neutron-v1-1-46eccb3bb50a@nxp.com>
References: <20260226-neutron-v1-0-46eccb3bb50a@nxp.com>
In-Reply-To: <20260226-neutron-v1-0-46eccb3bb50a@nxp.com>
To: Oded Gabbay <ogabbay@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772113256; l=2892;
 i=ruxandra.radulescu@nxp.com; s=20260204; h=from:subject:message-id;
 bh=t5jOCwYs4a0qJx+g0j9jr/ql5g59uodTYfBmURX7TLI=;
 b=FuK2EVogBLiKqAWSpQj/VvRmlxkqGBRQdPtOI6DDSNPrrj8FO4pZ0CErQ51iQLLpeRvWIydJH
 0NCLiSNBTUhBnS9S4+7LuX+o93vLCiofdPsrriBRdgeEv0BJykkTJWe
X-Developer-Key: i=ruxandra.radulescu@nxp.com; a=ed25519;
 pk=zoq4b4OYR0c4faAH97xoTxdr6vfR8OvPbS+Cx0XhIBY=
X-Virus-Scanned: ClamAV using ClamSMTP
X-Spamd-Bar: ---
X-MailFrom: ruxandra.radulescu@nxp.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: P6CW54JORNR53W6GMXHEWDWN2QWDIEC4
X-Message-ID-Hash: P6CW54JORNR53W6GMXHEWDWN2QWDIEC4
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:47:24 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jiwei Fu <jiwei.fu@nxp.com>, Forrest Shi <xuelin.shi@nxp.com>, Alexandru Taran <alexandru.taran@nxp.com>, Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/9] drm/gem-dma: Add flag for bidirectional mapping of non-coherent GEM DMA buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P6CW54JORNR53W6GMXHEWDWN2QWDIEC4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[1179];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,nxp.com,amd.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ruxandra.radulescu@nxp.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:mid,nxp.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: C59954122B2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Introduce a flag that allows a user to request non-coherent buffers
allocated via the GEM DMA helper for bidirectional use.

Keep current behaviour (DMA_TO_DEVICE mapping) as default, with no change
required for existing GEM DMA users.

While it hasn't been the case until now, some devices like NXP's Neutron
Neural Processing Unit (NPU) require contiguous, non-coherent DMA buffers
they can both read from and write to. Unlike traditional DRM devices,
Neutron uses the same DMA buffer both for reading model data and for
writing inference output.

Neutron's usage scenario is a good match for the GEM DMA helpers, except
for the fact that current implementation only considers the DMA_TO_DEVICE
direction.

Signed-off-by: Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
---
 drivers/gpu/drm/drm_gem_dma_helper.c | 6 ++++--
 include/drm/drm_gem_dma_helper.h     | 3 +++
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem_dma_helper.c b/drivers/gpu/drm/drm_gem_dma_helper.c
index ecb9746f4da8..dbf5ad4426d3 100644
--- a/drivers/gpu/drm/drm_gem_dma_helper.c
+++ b/drivers/gpu/drm/drm_gem_dma_helper.c
@@ -148,7 +148,8 @@ struct drm_gem_dma_object *drm_gem_dma_create(struct drm_device *drm,
 	if (dma_obj->map_noncoherent) {
 		dma_obj->vaddr = dma_alloc_noncoherent(drm->dev, size,
 						       &dma_obj->dma_addr,
-						       DMA_TO_DEVICE,
+						       dma_obj->map_bidirectional ?
+						       DMA_BIDIRECTIONAL : DMA_TO_DEVICE,
 						       GFP_KERNEL | __GFP_NOWARN);
 	} else {
 		dma_obj->vaddr = dma_alloc_wc(drm->dev, size,
@@ -238,7 +239,8 @@ void drm_gem_dma_free(struct drm_gem_dma_object *dma_obj)
 		if (dma_obj->map_noncoherent)
 			dma_free_noncoherent(gem_obj->dev->dev, dma_obj->base.size,
 					     dma_obj->vaddr, dma_obj->dma_addr,
-					     DMA_TO_DEVICE);
+					     dma_obj->map_bidirectional ?
+					     DMA_BIDIRECTIONAL : DMA_TO_DEVICE);
 		else
 			dma_free_wc(gem_obj->dev->dev, dma_obj->base.size,
 				    dma_obj->vaddr, dma_obj->dma_addr);
diff --git a/include/drm/drm_gem_dma_helper.h b/include/drm/drm_gem_dma_helper.h
index f2678e7ecb98..e0022f2fdfef 100644
--- a/include/drm/drm_gem_dma_helper.h
+++ b/include/drm/drm_gem_dma_helper.h
@@ -17,6 +17,8 @@ struct drm_mode_create_dumb;
  *       DMA addresses.
  * @vaddr: kernel virtual address of the backing memory
  * @map_noncoherent: if true, the GEM object is backed by non-coherent memory
+ * @map_bidirectional: valid only if map_noncoherent flag is set. If true, allow
+ *                     bidirectional use of the non-coherent memory buffer
  */
 struct drm_gem_dma_object {
 	struct drm_gem_object base;
@@ -27,6 +29,7 @@ struct drm_gem_dma_object {
 	void *vaddr;
 
 	bool map_noncoherent;
+	bool map_bidirectional;
 };
 
 #define to_drm_gem_dma_obj(gem_obj) \

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
