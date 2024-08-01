Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB4F944AF5
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Aug 2024 14:08:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06DCA410EA
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Aug 2024 12:08:11 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id BD6DF42B37
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Aug 2024 12:06:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=jV92yMrR;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 95B11CE1939;
	Thu,  1 Aug 2024 12:06:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36A51C32786;
	Thu,  1 Aug 2024 12:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722513963;
	bh=HNVP9vMEpgCGw1ZvFBEVtXJyQ/wcj87OJIJ4nBHuuus=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jV92yMrRJw6sPhUT18QCfVFYgI1RwBqV25HBO64e2xwh/paz0J66h47xW0JYgU9e3
	 0P0Dwq8v0yP6qJBSjpW54O5TSH8lQRWNXJkC6vlJrJmmIFmg+3XYGUsjSZR9riLwhE
	 v5flOgNn7Oe3Xej/rJRzQhBF2rPBxVDCGDGbG65VignzqISgMwFaJr17LvQDzoXyUH
	 BdtqqVAbBe2CF2URGnAp0I+xstnDIstNEKiieHnrUpRnJMX6N5zoCWyr46dhsmpuaJ
	 r1LBK4qvwA8X3Y+/B0ZMNUjtTahPtRi747SISrdDBdMh5W9uMVkgZ894EXRr8cXCU4
	 c5qoeuLTrXpXQ==
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Date: Thu,  1 Aug 2024 15:05:15 +0300
Message-ID: <9a25b2fc02443f7c36c2d93499ae25252b6afd40.1722512548.git.leon@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cover.1722512548.git.leon@kernel.org>
References: <cover.1722512548.git.leon@kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BD6DF42B37
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[nvidia.com:email,sin.source.kernel.org:helo,sin.source.kernel.org:rdns];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: HRCQFADAYTSK7FXSGKRIHPGMFPYJXXY2
X-Message-ID-Hash: HRCQFADAYTSK7FXSGKRIHPGMFPYJXXY2
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Yishai Hadas <yishaih@nvidia.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-rdma@vger.kernel.org, Michael Margolin <mrgolin@amazon.com>, Mustafa Ismail <mustafa.ismail@intel.com>, netdev@vger.kernel.org, Saeed Mahameed <saeedm@nvidia.com>, Selvin Xavier <selvin.xavier@broadcom.com>, Sumit Semwal <sumit.semwal@linaro.org>, Tariq Toukan <tariqt@nvidia.com>, Tatyana Nikolova <tatyana.e.nikolova@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH rdma-next 6/8] RDMA: Pass uverbs_attr_bundle as part of '.reg_user_mr_dmabuf' API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HRCQFADAYTSK7FXSGKRIHPGMFPYJXXY2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Yishai Hadas <yishaih@nvidia.com>

Pass uverbs_attr_bundle as part of '.reg_user_mr_dmabuf' API instead of
udata.

This enables passing some new ioctl attributes to the drivers, as will
be introduced in the next patches for mlx5 driver.

Change the involved drivers accordingly.

Signed-off-by: Yishai Hadas <yishaih@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/infiniband/core/uverbs_std_types_mr.c | 2 +-
 drivers/infiniband/hw/bnxt_re/ib_verbs.c      | 3 ++-
 drivers/infiniband/hw/bnxt_re/ib_verbs.h      | 2 +-
 drivers/infiniband/hw/efa/efa.h               | 2 +-
 drivers/infiniband/hw/efa/efa_verbs.c         | 4 ++--
 drivers/infiniband/hw/irdma/verbs.c           | 2 +-
 drivers/infiniband/hw/mlx5/mlx5_ib.h          | 2 +-
 drivers/infiniband/hw/mlx5/mr.c               | 2 +-
 include/rdma/ib_verbs.h                       | 2 +-
 9 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/infiniband/core/uverbs_std_types_mr.c b/drivers/infiniband/core/uverbs_std_types_mr.c
index 03e1db5d1e8c..7ebc7bd3caae 100644
--- a/drivers/infiniband/core/uverbs_std_types_mr.c
+++ b/drivers/infiniband/core/uverbs_std_types_mr.c
@@ -239,7 +239,7 @@ static int UVERBS_HANDLER(UVERBS_METHOD_REG_DMABUF_MR)(
 
 	mr = pd->device->ops.reg_user_mr_dmabuf(pd, offset, length, iova, fd,
 						access_flags,
-						&attrs->driver_udata);
+						attrs);
 	if (IS_ERR(mr))
 		return PTR_ERR(mr);
 
diff --git a/drivers/infiniband/hw/bnxt_re/ib_verbs.c b/drivers/infiniband/hw/bnxt_re/ib_verbs.c
index 7c757351a016..43a68e7de02a 100644
--- a/drivers/infiniband/hw/bnxt_re/ib_verbs.c
+++ b/drivers/infiniband/hw/bnxt_re/ib_verbs.c
@@ -4122,7 +4122,8 @@ struct ib_mr *bnxt_re_reg_user_mr(struct ib_pd *ib_pd, u64 start, u64 length,
 
 struct ib_mr *bnxt_re_reg_user_mr_dmabuf(struct ib_pd *ib_pd, u64 start,
 					 u64 length, u64 virt_addr, int fd,
-					 int mr_access_flags, struct ib_udata *udata)
+					 int mr_access_flags,
+					 struct uverbs_attr_bundle *attrs)
 {
 	struct bnxt_re_pd *pd = container_of(ib_pd, struct bnxt_re_pd, ib_pd);
 	struct bnxt_re_dev *rdev = pd->rdev;
diff --git a/drivers/infiniband/hw/bnxt_re/ib_verbs.h b/drivers/infiniband/hw/bnxt_re/ib_verbs.h
index e98cb1717338..3ddeda312376 100644
--- a/drivers/infiniband/hw/bnxt_re/ib_verbs.h
+++ b/drivers/infiniband/hw/bnxt_re/ib_verbs.h
@@ -242,7 +242,7 @@ struct ib_mr *bnxt_re_reg_user_mr(struct ib_pd *pd, u64 start, u64 length,
 struct ib_mr *bnxt_re_reg_user_mr_dmabuf(struct ib_pd *ib_pd, u64 start,
 					 u64 length, u64 virt_addr,
 					 int fd, int mr_access_flags,
-					 struct ib_udata *udata);
+					 struct uverbs_attr_bundle *attrs);
 int bnxt_re_alloc_ucontext(struct ib_ucontext *ctx, struct ib_udata *udata);
 void bnxt_re_dealloc_ucontext(struct ib_ucontext *context);
 int bnxt_re_mmap(struct ib_ucontext *context, struct vm_area_struct *vma);
diff --git a/drivers/infiniband/hw/efa/efa.h b/drivers/infiniband/hw/efa/efa.h
index e580e087e9da..d7fc9d5eeefd 100644
--- a/drivers/infiniband/hw/efa/efa.h
+++ b/drivers/infiniband/hw/efa/efa.h
@@ -168,7 +168,7 @@ struct ib_mr *efa_reg_mr(struct ib_pd *ibpd, u64 start, u64 length,
 struct ib_mr *efa_reg_user_mr_dmabuf(struct ib_pd *ibpd, u64 start,
 				     u64 length, u64 virt_addr,
 				     int fd, int access_flags,
-				     struct ib_udata *udata);
+				     struct uverbs_attr_bundle *attrs);
 int efa_dereg_mr(struct ib_mr *ibmr, struct ib_udata *udata);
 int efa_get_port_immutable(struct ib_device *ibdev, u32 port_num,
 			   struct ib_port_immutable *immutable);
diff --git a/drivers/infiniband/hw/efa/efa_verbs.c b/drivers/infiniband/hw/efa/efa_verbs.c
index b1e0a1b7c59d..cc13415ff7e7 100644
--- a/drivers/infiniband/hw/efa/efa_verbs.c
+++ b/drivers/infiniband/hw/efa/efa_verbs.c
@@ -1684,14 +1684,14 @@ static int efa_register_mr(struct ib_pd *ibpd, struct efa_mr *mr, u64 start,
 struct ib_mr *efa_reg_user_mr_dmabuf(struct ib_pd *ibpd, u64 start,
 				     u64 length, u64 virt_addr,
 				     int fd, int access_flags,
-				     struct ib_udata *udata)
+				     struct uverbs_attr_bundle *attrs)
 {
 	struct efa_dev *dev = to_edev(ibpd->device);
 	struct ib_umem_dmabuf *umem_dmabuf;
 	struct efa_mr *mr;
 	int err;
 
-	mr = efa_alloc_mr(ibpd, access_flags, udata);
+	mr = efa_alloc_mr(ibpd, access_flags, &attrs->driver_udata);
 	if (IS_ERR(mr)) {
 		err = PTR_ERR(mr);
 		goto err_out;
diff --git a/drivers/infiniband/hw/irdma/verbs.c b/drivers/infiniband/hw/irdma/verbs.c
index fc0ce35da14e..6a107decb704 100644
--- a/drivers/infiniband/hw/irdma/verbs.c
+++ b/drivers/infiniband/hw/irdma/verbs.c
@@ -3085,7 +3085,7 @@ static struct ib_mr *irdma_reg_user_mr(struct ib_pd *pd, u64 start, u64 len,
 static struct ib_mr *irdma_reg_user_mr_dmabuf(struct ib_pd *pd, u64 start,
 					      u64 len, u64 virt,
 					      int fd, int access,
-					      struct ib_udata *udata)
+					      struct uverbs_attr_bundle *attrs)
 {
 	struct irdma_device *iwdev = to_iwdev(pd->device);
 	struct ib_umem_dmabuf *umem_dmabuf;
diff --git a/drivers/infiniband/hw/mlx5/mlx5_ib.h b/drivers/infiniband/hw/mlx5/mlx5_ib.h
index b2ebea173547..e915a62da49c 100644
--- a/drivers/infiniband/hw/mlx5/mlx5_ib.h
+++ b/drivers/infiniband/hw/mlx5/mlx5_ib.h
@@ -1354,7 +1354,7 @@ struct ib_mr *mlx5_ib_reg_user_mr(struct ib_pd *pd, u64 start, u64 length,
 struct ib_mr *mlx5_ib_reg_user_mr_dmabuf(struct ib_pd *pd, u64 start,
 					 u64 length, u64 virt_addr,
 					 int fd, int access_flags,
-					 struct ib_udata *udata);
+					 struct uverbs_attr_bundle *attrs);
 int mlx5_ib_advise_mr(struct ib_pd *pd,
 		      enum ib_uverbs_advise_mr_advice advice,
 		      u32 flags,
diff --git a/drivers/infiniband/hw/mlx5/mr.c b/drivers/infiniband/hw/mlx5/mr.c
index 98bd8eaa393e..1dfd9124bdd1 100644
--- a/drivers/infiniband/hw/mlx5/mr.c
+++ b/drivers/infiniband/hw/mlx5/mr.c
@@ -1513,7 +1513,7 @@ static struct dma_buf_attach_ops mlx5_ib_dmabuf_attach_ops = {
 struct ib_mr *mlx5_ib_reg_user_mr_dmabuf(struct ib_pd *pd, u64 offset,
 					 u64 length, u64 virt_addr,
 					 int fd, int access_flags,
-					 struct ib_udata *udata)
+					 struct uverbs_attr_bundle *attrs)
 {
 	struct mlx5_ib_dev *dev = to_mdev(pd->device);
 	struct mlx5_ib_mr *mr = NULL;
diff --git a/include/rdma/ib_verbs.h b/include/rdma/ib_verbs.h
index 6c5712ae559d..a1dcf812d787 100644
--- a/include/rdma/ib_verbs.h
+++ b/include/rdma/ib_verbs.h
@@ -2476,7 +2476,7 @@ struct ib_device_ops {
 	struct ib_mr *(*reg_user_mr_dmabuf)(struct ib_pd *pd, u64 offset,
 					    u64 length, u64 virt_addr, int fd,
 					    int mr_access_flags,
-					    struct ib_udata *udata);
+					    struct uverbs_attr_bundle *attrs);
 	struct ib_mr *(*rereg_user_mr)(struct ib_mr *mr, int flags, u64 start,
 				       u64 length, u64 virt_addr,
 				       int mr_access_flags, struct ib_pd *pd,
-- 
2.45.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
