Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 234AFD0E9A3
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 11 Jan 2026 11:38:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D46B3F827
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 11 Jan 2026 10:38:06 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 97BE9401BB
	for <linaro-mm-sig@lists.linaro.org>; Sun, 11 Jan 2026 10:37:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=PC42vNtx;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 57E4860010;
	Sun, 11 Jan 2026 10:37:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 765CFC4CEF7;
	Sun, 11 Jan 2026 10:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768127852;
	bh=EB9u2XyG8hOfqiXwLDjNViUG+l4zFMBtygFVUbtOvI0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PC42vNtxB+Qd9ZpYwFqWTPv1WbKwV1tsnlIUQNxK5JuKhr9Vc21PG2xz4+W9kyClA
	 WoqlZgKqI0PHqeEVkRivzUP8XZ7SshOloidqrN0ZZpsj9ZrTgDPJS85qXdFv3JhHmW
	 V3Mci8NLX4GRg06Z5m8BGmdBHQtXs1x6NBs3gmZL7ktD1DExEQnQHmhRJQWJIRL/Ju
	 t6UqhjElh0DIHKDFKNojNutSZWoEXYBCOhFvDNxy23odPoV4+h75gMGrHOfd5mMoPv
	 7KTB07gzSHWC3i+YtyvnLIahfUBEybflkhhjM+7s8cnjj5DtJYiuZHsGu7uGBh/dXf
	 vGneu5dryOpgw==
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
Date: Sun, 11 Jan 2026 12:37:11 +0200
Message-ID: <20260111-dmabuf-revoke-v1-4-fb4bcc8c259b@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260111-dmabuf-revoke-v1-0-fb4bcc8c259b@nvidia.com>
References: <20260111-dmabuf-revoke-v1-0-fb4bcc8c259b@nvidia.com>
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-a6db3
X-Rspamd-Queue-Id: 97BE9401BB
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
Message-ID-Hash: REY47S5WYMDTCBH6XVNOTRDW2RWPPB4B
X-Message-ID-Hash: REY47S5WYMDTCBH6XVNOTRDW2RWPPB4B
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 4/4] iommufd/selftest: Reuse dma-buf revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/REY47S5WYMDTCBH6XVNOTRDW2RWPPB4B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Leon Romanovsky <leonro@nvidia.com>

Test iommufd_test_dmabuf_revoke() with dma-buf revoke primitives.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/iommu/iommufd/selftest.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/iommu/iommufd/selftest.c b/drivers/iommu/iommufd/selftest.c
index 550ff36dec3a..523dfac44ff8 100644
--- a/drivers/iommu/iommufd/selftest.c
+++ b/drivers/iommu/iommufd/selftest.c
@@ -1958,7 +1958,6 @@ void iommufd_selftest_destroy(struct iommufd_object *obj)
 struct iommufd_test_dma_buf {
 	void *memory;
 	size_t length;
-	bool revoked;
 };
 
 static int iommufd_test_dma_buf_attach(struct dma_buf *dmabuf,
@@ -2011,9 +2010,6 @@ int iommufd_test_dma_buf_iommufd_map(struct dma_buf_attachment *attachment,
 	if (attachment->dmabuf->ops != &iommufd_test_dmabuf_ops)
 		return -EOPNOTSUPP;
 
-	if (priv->revoked)
-		return -ENODEV;
-
 	phys->paddr = virt_to_phys(priv->memory);
 	phys->len = priv->length;
 	return 0;
@@ -2065,7 +2061,6 @@ static int iommufd_test_dmabuf_get(struct iommufd_ucmd *ucmd,
 static int iommufd_test_dmabuf_revoke(struct iommufd_ucmd *ucmd, int fd,
 				      bool revoked)
 {
-	struct iommufd_test_dma_buf *priv;
 	struct dma_buf *dmabuf;
 	int rc = 0;
 
@@ -2078,10 +2073,11 @@ static int iommufd_test_dmabuf_revoke(struct iommufd_ucmd *ucmd, int fd,
 		goto err_put;
 	}
 
-	priv = dmabuf->priv;
 	dma_resv_lock(dmabuf->resv, NULL);
-	priv->revoked = revoked;
-	dma_buf_move_notify(dmabuf);
+	if (revoked)
+		dma_buf_move_notify(dmabuf);
+	else
+		dma_buf_mark_valid(dmabuf);
 	dma_resv_unlock(dmabuf->resv);
 
 err_put:

-- 
2.52.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
