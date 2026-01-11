Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6CFD0E98A
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 11 Jan 2026 11:37:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 65003401B6
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 11 Jan 2026 10:37:39 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 74932401BB
	for <linaro-mm-sig@lists.linaro.org>; Sun, 11 Jan 2026 10:37:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=PiXYJHFl;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 262DF60122;
	Sun, 11 Jan 2026 10:37:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 558FFC4CEF7;
	Sun, 11 Jan 2026 10:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768127843;
	bh=bVMuAERSBlKdzhLxVaQlP3hzLMvLvZAcJTcCJIC68T8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PiXYJHFlcIoC/JoZ3ceH4yWSeLVsDm8VlgrAF92ZCEZxttSm9JnrPYWffKu4e/rvF
	 0e1BR1toZVAHOc0NxeaZQtlKIWYDLkjYlQxpd+XHLGAQG7CC0Gkvevxh5V7S2esfVQ
	 VjESTxhMJdrw9rMKLkziQuuROWp4fDnP+cnF6i8y620MbZcvk5koKkbbpN4GAiijfK
	 jqNfg0dv1ncnpPlC7kpKAfz1xdZ+0wgQC38s1ynVTcSU4BIrJI0z6Fg9RXDmAx7xnj
	 vdZgkO86I1XvaAerLFBFYAsQ5o9pxWSgREEfAMHGhUaof748wCuF0DJ2HNeACb5iLG
	 JhZC5kzgmjb3g==
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>,
	Leon Romanovsky <leon@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	Alex Williamson <alex@shazbot.org>,
	Kevin Tian <kevin.tian@intel.com>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>
Date: Sun, 11 Jan 2026 12:37:08 +0200
Message-ID: <20260111-dmabuf-revoke-v1-1-fb4bcc8c259b@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260111-dmabuf-revoke-v1-0-fb4bcc8c259b@nvidia.com>
References: <20260111-dmabuf-revoke-v1-0-fb4bcc8c259b@nvidia.com>
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-a6db3
X-Rspamd-Queue-Id: 74932401BB
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[tor.source.kernel.org:helo,tor.source.kernel.org:rdns,nvidia.com:email,nvidia.com:mid];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: MPJ3ZAKTW3HS4FM7JWA6VRKPTM4XTLPT
X-Message-ID-Hash: MPJ3ZAKTW3HS4FM7JWA6VRKPTM4XTLPT
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/4] dma-buf: Introduce revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MPJ3ZAKTW3HS4FM7JWA6VRKPTM4XTLPT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Leon Romanovsky <leonro@nvidia.com>

Add a dma-buf revoke mechanism that allows an exporter to explicitly
invalidate ("kill") a shared buffer after it has been handed out to
importers. Once revoked, all further CPU and device access is blocked, and
importers consistently observe failure.

This requires both importers and exporters to honor the revoke contract.
For importers, this means no page faults are delivered after the buffer is
invalidated. For exporters, the dma-buf core prevents attaching new
importers and remapping existing ones once revocation has occurred.

The proposed mechanism allows binding importers that do not require revoke
support, and they shall continue using the existing .move_notify() API.
However, importers that cannot handle page faults to remap buffers will
fail to bind to exporters that do not support revoke.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/dma-buf/dma-buf.c | 36 ++++++++++++++++++++++++++++++++----
 include/linux/dma-buf.h   | 31 +++++++++++++++++++++++++++++++
 2 files changed, 63 insertions(+), 4 deletions(-)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index edaa9e4ee4ae..4d31fba792ee 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -697,6 +697,9 @@ struct dma_buf *dma_buf_export(const struct dma_buf_export_info *exp_info)
 	if (WARN_ON(!exp_info->ops->pin != !exp_info->ops->unpin))
 		return ERR_PTR(-EINVAL);
 
+	if (WARN_ON(exp_info->revoke_semantics && exp_info->ops->pin))
+		return ERR_PTR(-EINVAL);
+
 	if (!try_module_get(exp_info->owner))
 		return ERR_PTR(-ENOENT);
 
@@ -727,6 +730,7 @@ struct dma_buf *dma_buf_export(const struct dma_buf_export_info *exp_info)
 	dmabuf->cb_in.poll = dmabuf->cb_out.poll = &dmabuf->poll;
 	dmabuf->cb_in.active = dmabuf->cb_out.active = 0;
 	INIT_LIST_HEAD(&dmabuf->attachments);
+	dmabuf->revoke_semantics = exp_info->revoke_semantics;
 
 	if (!resv) {
 		dmabuf->resv = (struct dma_resv *)&dmabuf[1];
@@ -948,8 +952,21 @@ dma_buf_dynamic_attach(struct dma_buf *dmabuf, struct device *dev,
 	if (WARN_ON(!dmabuf || !dev))
 		return ERR_PTR(-EINVAL);
 
-	if (WARN_ON(importer_ops && !importer_ops->move_notify))
-		return ERR_PTR(-EINVAL);
+	if (dmabuf->invalidate)
+		return ERR_PTR(-ENODEV);
+
+	if (importer_ops) {
+		if (WARN_ON(!importer_ops->move_notify &&
+			    !importer_ops->revoke_notify))
+			return ERR_PTR(-EINVAL);
+
+		if (WARN_ON(importer_ops->move_notify &&
+			    importer_ops->revoke_notify))
+			return ERR_PTR(-EINVAL);
+
+		if (!dmabuf->revoke_semantics && importer_ops->revoke_notify)
+			return ERR_PTR(-EINVAL);
+	}
 
 	attach = kzalloc(sizeof(*attach), GFP_KERNEL);
 	if (!attach)
@@ -1102,6 +1119,9 @@ struct sg_table *dma_buf_map_attachment(struct dma_buf_attachment *attach,
 	if (WARN_ON(!attach || !attach->dmabuf))
 		return ERR_PTR(-EINVAL);
 
+	if (attach->dmabuf->invalidate)
+		return ERR_PTR(-ENODEV);
+
 	dma_resv_assert_held(attach->dmabuf->resv);
 
 	if (dma_buf_pin_on_map(attach)) {
@@ -1261,8 +1281,16 @@ void dma_buf_move_notify(struct dma_buf *dmabuf)
 	dma_resv_assert_held(dmabuf->resv);
 
 	list_for_each_entry(attach, &dmabuf->attachments, node)
-		if (attach->importer_ops)
-			attach->importer_ops->move_notify(attach);
+		if (attach->importer_ops) {
+			if (attach->importer_ops->move_notify)
+				attach->importer_ops->move_notify(attach);
+
+			if (attach->importer_ops->revoke_notify)
+				attach->importer_ops->revoke_notify(attach);
+		}
+
+	if (dmabuf->revoke_semantics)
+		dmabuf->invalidate = true;
 }
 EXPORT_SYMBOL_NS_GPL(dma_buf_move_notify, "DMA_BUF");
 
diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
index 0bc492090237..e198ee490151 100644
--- a/include/linux/dma-buf.h
+++ b/include/linux/dma-buf.h
@@ -23,6 +23,7 @@
 #include <linux/dma-fence.h>
 #include <linux/wait.h>
 #include <linux/pci-p2pdma.h>
+#include <linux/dma-resv.h>
 
 struct device;
 struct dma_buf;
@@ -441,6 +442,15 @@ struct dma_buf {
 		struct dma_buf *dmabuf;
 	} *sysfs_entry;
 #endif
+	/**
+	 * @revoke_semantics:
+	 *
+	 * This exporter implements revoke semantics.
+	 */
+	bool revoke_semantics;
+
+	/** @invalidate: this buffer was revoked and invalidated */
+	bool invalidate;
 };
 
 /**
@@ -476,6 +486,18 @@ struct dma_buf_attach_ops {
 	 * point to the new location of the DMA-buf.
 	 */
 	void (*move_notify)(struct dma_buf_attachment *attach);
+
+	/**
+	 * @revoke_notify: [optional] notification that the DMA-buf is revoking
+	 *
+	 * If this callback is provided the importer will invildate the mappings.
+	 *
+	 * This callback is called with the lock of the reservation object
+	 * associated with the dma_buf held.
+	 *
+	 * New mappings shouldn't be created after this callback returns.
+	 */
+	void (*revoke_notify)(struct dma_buf_attachment *attach);
 };
 
 /**
@@ -516,6 +538,7 @@ struct dma_buf_attachment {
  * @size:	Size of the buffer - invariant over the lifetime of the buffer
  * @flags:	mode flags for the file
  * @resv:	reservation-object, NULL to allocate default one
+ * @revoke_semantics: support revoke semantics
  * @priv:	Attach private data of allocator to this buffer
  *
  * This structure holds the information required to export the buffer. Used
@@ -528,6 +551,7 @@ struct dma_buf_export_info {
 	size_t size;
 	int flags;
 	struct dma_resv *resv;
+	bool revoke_semantics;
 	void *priv;
 };
 
@@ -620,4 +644,11 @@ int dma_buf_vmap_unlocked(struct dma_buf *dmabuf, struct iosys_map *map);
 void dma_buf_vunmap_unlocked(struct dma_buf *dmabuf, struct iosys_map *map);
 struct dma_buf *dma_buf_iter_begin(void);
 struct dma_buf *dma_buf_iter_next(struct dma_buf *dmbuf);
+
+static inline void dma_buf_mark_valid(struct dma_buf *dma_buf)
+{
+	dma_resv_assert_held(dma_buf->resv);
+
+	dma_buf->invalidate = false;
+}
 #endif /* __DMA_BUF_H__ */

-- 
2.52.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
