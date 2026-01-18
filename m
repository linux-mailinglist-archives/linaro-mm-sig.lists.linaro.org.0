Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3427BD394C7
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 Jan 2026 13:10:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 559E040141
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 Jan 2026 12:10:03 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 91F9940160
	for <linaro-mm-sig@lists.linaro.org>; Sun, 18 Jan 2026 12:09:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=qmFx0xYr;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 50F286000A;
	Sun, 18 Jan 2026 12:09:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 670ACC116D0;
	Sun, 18 Jan 2026 12:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768738153;
	bh=zoYsMrm1rjNa0PY8BZkc8G3M4wgcf/AwcE0GTUAFzBg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qmFx0xYrLhiCoTyr27YOjREc26M9s0f9UnpkBsDc5PYOT/t7lnouVm8sM8UhPobW3
	 GGspx43c9S9cMWUTDtYZaTGpzTIwOSQ6HFiloRqxoH1GyxbwrkLl8QY3fT0ANwBLnk
	 mnHPOB5ynxhv3SI9MbskUQ2uFktlq1ldP3K1hzBjsG/XAkFyfG7YvLvUF4J/PQmCcR
	 u0kEC4y8iQNC9pZRJuqAITvFazRttA5hZmm4quyQqXcFzT6VtfWlM9f1FKwTW64Wr/
	 5Ib8uJQhX+8/zM4l/M3BaKXf09VpjopHkwJdRyv6CSk3Lpen4DFAh+sZRhLlRUDOfz
	 duIHSuBnBQFCA==
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
	Alex Williamson <alex@shazbot.org>
Date: Sun, 18 Jan 2026 14:08:48 +0200
Message-ID: <20260118-dmabuf-revoke-v2-4-a03bb27c0875@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-a6db3
X-Rspamd-Queue-Id: 91F9940160
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[nvidia.com:email,nvidia.com:mid,tor.source.kernel.org:helo,tor.source.kernel.org:rdns];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: SC3RDMLKKB36XI4625H3474ETGNB5J6L
X-Message-ID-Hash: SC3RDMLKKB36XI4625H3474ETGNB5J6L
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 4/4] vfio: Add pinned interface to perform revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SC3RDMLKKB36XI4625H3474ETGNB5J6L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Leon Romanovsky <leonro@nvidia.com>

DMABUF ->pin() interface is called when the DMABUF importer perform
its DMA mapping, so let's use this opportunity to check if DMABUF
exporter revoked its buffer or not.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/vfio/pci/vfio_pci_dmabuf.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_pci_dmabuf.c
index d4d0f7d08c53..af9c315ddf71 100644
--- a/drivers/vfio/pci/vfio_pci_dmabuf.c
+++ b/drivers/vfio/pci/vfio_pci_dmabuf.c
@@ -20,6 +20,20 @@ struct vfio_pci_dma_buf {
 	u8 revoked : 1;
 };
 
+static int vfio_pci_dma_buf_pin(struct dma_buf_attachment *attachment)
+{
+	struct vfio_pci_dma_buf *priv = attachment->dmabuf->priv;
+
+	dma_resv_assert_held(priv->dmabuf->resv);
+
+	return dma_buf_attachment_is_revoke(attachment) ? 0 : -EOPNOTSUPP;
+}
+
+static void vfio_pci_dma_buf_unpin(struct dma_buf_attachment *attachment)
+{
+	/* Do nothing */
+}
+
 static int vfio_pci_dma_buf_attach(struct dma_buf *dmabuf,
 				   struct dma_buf_attachment *attachment)
 {
@@ -76,6 +90,8 @@ static void vfio_pci_dma_buf_release(struct dma_buf *dmabuf)
 }
 
 static const struct dma_buf_ops vfio_pci_dmabuf_ops = {
+	.pin = vfio_pci_dma_buf_pin,
+	.unpin = vfio_pci_dma_buf_unpin,
 	.attach = vfio_pci_dma_buf_attach,
 	.map_dma_buf = vfio_pci_dma_buf_map,
 	.unmap_dma_buf = vfio_pci_dma_buf_unmap,

-- 
2.52.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
