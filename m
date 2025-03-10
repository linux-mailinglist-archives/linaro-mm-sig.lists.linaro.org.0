Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B86A593A7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 13:09:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 886D544637
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 12:09:43 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 1897844740
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Mar 2025 12:06:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=oEVjNg3f;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A4F2BA4599F;
	Mon, 10 Mar 2025 12:01:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B990C4CEE5;
	Mon, 10 Mar 2025 12:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741608411;
	bh=7pH3VC/kTZvZyXEwWyZXDmfZRfenpkkRjJncy/YaV3A=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=oEVjNg3fibaFagVdlIbk1zBQgRtK4seXDgW44TGzwkQ40PmG4N59lYT+i2hjQ5l03
	 NA6f1fLNP8lcsn9t2x7thW/+0wFqWl1lNQwn5emhsN+Qm5+zGTO8TqmVCBlLiZNaiF
	 OgPH/VIaPn14p9iOs4NrV5TAKskCUJoMdusz5wcDhMolyNdyGa1OnKb1njCHwNN+Wn
	 BtXSC8CYNyCjeNV/fE609L74FQslohr/mle3ggF1fH8TF2nA4YnRFcGyCVPmS4+Plf
	 xK+5UbDA3sytdfkGm4HmEcfHeLQdRJwFr4I+93ghEJCXwvZi1+K+ouJwqyEt/fcySB
	 tFZezpIY8/SOg==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 10 Mar 2025 13:06:18 +0100
MIME-Version: 1.0
Message-Id: <20250310-dmem-cgroups-v1-12-2984c1bc9312@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3070; i=mripard@kernel.org;
 h=from:subject:message-id; bh=7pH3VC/kTZvZyXEwWyZXDmfZRfenpkkRjJncy/YaV3A=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDOnnrm6/ZsdQ+MWVYVbt25WiJm9cVq1kbvIv1+nqNj8Uw
 cQw8Zh/RykLgxgXg6yYIkuMsPmSuFOzXney8c2DmcPKBDKEgYtTACaiH8jI8G9RwTMV4c9c83xf
 z/EMmLjgxVIR86M37d8sdLg43++uTQbDf9/VGd8tpSbXPHmhXr3q3hpj4wk3k392pC04ujVyhVh
 VDjsA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1897844740
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
Message-ID-Hash: OJ4ZUPUB7W64YWPE32AWK5DCNMFTLEW2
X-Message-ID-Hash: OJ4ZUPUB7W64YWPE32AWK5DCNMFTLEW2
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 12/12] media: videobuf2: Track buffer allocations through the dmem cgroup
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OJ4ZUPUB7W64YWPE32AWK5DCNMFTLEW2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The dmem cgroup allows to track any DMA memory allocation made by the
userspace. Let's charge our allocations in videobuf2 to enable proper
memory tracking.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/media/common/videobuf2/videobuf2-dma-contig.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/media/common/videobuf2/videobuf2-dma-contig.c b/drivers/media/common/videobuf2/videobuf2-dma-contig.c
index a13ec569c82f6da2d977222b94af32e74c6c6c82..48384e18030812f4f89f1c225c38def2ac6aa3ca 100644
--- a/drivers/media/common/videobuf2/videobuf2-dma-contig.c
+++ b/drivers/media/common/videobuf2/videobuf2-dma-contig.c
@@ -8,10 +8,11 @@
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation.
  */
 
+#include <linux/cgroup_dmem.h>
 #include <linux/dma-buf.h>
 #include <linux/module.h>
 #include <linux/refcount.h>
 #include <linux/scatterlist.h>
 #include <linux/sched.h>
@@ -40,10 +41,14 @@ struct vb2_dc_buf {
 	struct sg_table			*sgt_base;
 
 	/* DMABUF related */
 	struct dma_buf_attachment	*db_attach;
 
+#ifdef CONFIG_CGROUP_DMEM
+	struct dmem_cgroup_pool_state	*cgroup_pool_state;
+#endif
+
 	struct vb2_buffer		*vb;
 	bool				non_coherent_mem;
 };
 
 /*********************************************/
@@ -169,10 +174,14 @@ static void vb2_dc_put(void *buf_priv)
 	struct vb2_dc_buf *buf = buf_priv;
 
 	if (!refcount_dec_and_test(&buf->refcount))
 		return;
 
+#ifdef CONFIG_CGROUP_DMEM
+	dmem_cgroup_uncharge(buf->cgroup_pool_state, buf->size);
+#endif
+
 	if (buf->non_coherent_mem) {
 		if (buf->vaddr)
 			dma_vunmap_noncontiguous(buf->dev, buf->vaddr);
 		dma_free_noncontiguous(buf->dev, buf->size,
 				       buf->dma_sgt, buf->dma_dir);
@@ -230,10 +239,11 @@ static int vb2_dc_alloc_non_coherent(struct vb2_dc_buf *buf)
 
 static void *vb2_dc_alloc(struct vb2_buffer *vb,
 			  struct device *dev,
 			  unsigned long size)
 {
+	struct dmem_cgroup_pool_state *pool;
 	struct vb2_dc_buf *buf;
 	int ret;
 
 	if (WARN_ON(!dev))
 		return ERR_PTR(-EINVAL);
@@ -249,25 +259,34 @@ static void *vb2_dc_alloc(struct vb2_buffer *vb,
 
 	buf->size = size;
 	/* Prevent the device from being released while the buffer is used */
 	buf->dev = get_device(dev);
 
+	ret = dmem_cgroup_try_charge(dma_get_dmem_cgroup_region(dev), size, &pool, NULL);
+	if (ret)
+		return ret;
+
 	if (buf->non_coherent_mem)
 		ret = vb2_dc_alloc_non_coherent(buf);
 	else
 		ret = vb2_dc_alloc_coherent(buf);
 
 	if (ret) {
 		dev_err(dev, "dma alloc of size %lu failed\n", size);
+		dmem_cgroup_uncharge(pool, size);
 		kfree(buf);
 		return ERR_PTR(-ENOMEM);
 	}
 
 	buf->handler.refcount = &buf->refcount;
 	buf->handler.put = vb2_dc_put;
 	buf->handler.arg = buf;
 
+#ifdef CONFIG_CGROUP_DMEM
+	buf->cgroup_pool_state = pool;
+#endif
+
 	refcount_set(&buf->refcount, 1);
 
 	return buf;
 }
 

-- 
2.48.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
