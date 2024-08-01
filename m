Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1C6944ADB
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Aug 2024 14:06:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E619410EA
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Aug 2024 12:06:26 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 1E9D6434DC
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Aug 2024 12:05:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=i2fIT0Ue;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BBE95626EE;
	Thu,  1 Aug 2024 12:05:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DB47C4AF12;
	Thu,  1 Aug 2024 12:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722513938;
	bh=4+zvJheZBxArcPGen/lVnVGy2SZe0eVmEnWE+k/DFek=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=i2fIT0Uerago63KAdzKvUmR44i3jX30NFQbUny4OTnawb9JzIBvQSX1O7bUGQYZhk
	 ntug4roJPlh8gCt1c51H/T05ON9CNk7eThfdR/MihasyvwAGRAprYnbO2NvcHiSj7S
	 jzP9pVpto4rkBnkA5Bv5HYSpETclvr8acR0xqAEMoPjzb0m/FpRMyYEF7UVa2K8yys
	 y2vfoAs4k2FDRP4a2YtSi6l2BSIYBM0G9Ogam+4ao00IFS1f25yDRQ1Ey2aFvBfGvc
	 AO4sy+S2mW/5F8IRiIt9g1CYEcKRqDj5g1r76CeuK7jt/eFFfLAU6Jl3dQl8733aLP
	 xA3X9hcu+tsvg==
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Date: Thu,  1 Aug 2024 15:05:12 +0300
Message-ID: <b11fa87b2a65bce4db8d40341bb6cee490fa4d06.1722512548.git.leon@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cover.1722512548.git.leon@kernel.org>
References: <cover.1722512548.git.leon@kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1E9D6434DC
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: RS7HGA3RMKLWYJHU422M5QINNTT5EFN7
X-Message-ID-Hash: RS7HGA3RMKLWYJHU422M5QINNTT5EFN7
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Yishai Hadas <yishaih@nvidia.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-rdma@vger.kernel.org, Michael Margolin <mrgolin@amazon.com>, Mustafa Ismail <mustafa.ismail@intel.com>, netdev@vger.kernel.org, Saeed Mahameed <saeedm@nvidia.com>, Selvin Xavier <selvin.xavier@broadcom.com>, Sumit Semwal <sumit.semwal@linaro.org>, Tariq Toukan <tariqt@nvidia.com>, Tatyana Nikolova <tatyana.e.nikolova@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH rdma-next 3/8] RDMA/mlx5: Add the initialization flow to utilize the 'data direct' device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RS7HGA3RMKLWYJHU422M5QINNTT5EFN7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Yishai Hadas <yishaih@nvidia.com>

Add the NET device initialization flow to utilize the 'data
direct' device.

When a NET mlx5_ib device is capable of 'data direct', the following
sequence of actions will occur:
- Find its affiliated 'data direct' VUID via a firmware command.
- Create its own private PD and 'data direct' mkey.
- Register to be notified when its 'data direct' driver is probed or removed.

The DMA device of the affiliated 'data direct' device, including the
private PD and the 'data direct' mkey, will be used later during MR
registrations that request the data direct functionality.

Signed-off-by: Yishai Hadas <yishaih@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/infiniband/hw/mlx5/cmd.c     | 21 +++++++
 drivers/infiniband/hw/mlx5/cmd.h     |  2 +
 drivers/infiniband/hw/mlx5/main.c    | 90 ++++++++++++++++++++++++++++
 drivers/infiniband/hw/mlx5/mlx5_ib.h |  6 ++
 4 files changed, 119 insertions(+)

diff --git a/drivers/infiniband/hw/mlx5/cmd.c b/drivers/infiniband/hw/mlx5/cmd.c
index 895b62cc528d..7c08e3008927 100644
--- a/drivers/infiniband/hw/mlx5/cmd.c
+++ b/drivers/infiniband/hw/mlx5/cmd.c
@@ -245,3 +245,24 @@ int mlx5_cmd_uar_dealloc(struct mlx5_core_dev *dev, u32 uarn, u16 uid)
 	MLX5_SET(dealloc_uar_in, in, uid, uid);
 	return mlx5_cmd_exec_in(dev, dealloc_uar, in);
 }
+
+int mlx5_cmd_query_vuid(struct mlx5_core_dev *dev, bool data_direct,
+			char *out_vuid)
+{
+	u8 out[MLX5_ST_SZ_BYTES(query_vuid_out) +
+		MLX5_ST_SZ_BYTES(array1024_auto)] = {};
+	u8 in[MLX5_ST_SZ_BYTES(query_vuid_in)] = {};
+	char *vuid;
+	int err;
+
+	MLX5_SET(query_vuid_in, in, opcode, MLX5_CMD_OPCODE_QUERY_VUID);
+	MLX5_SET(query_vuid_in, in, vhca_id, MLX5_CAP_GEN(dev, vhca_id));
+	MLX5_SET(query_vuid_in, in, data_direct, data_direct);
+	err = mlx5_cmd_exec(dev, in, sizeof(in), out, sizeof(out));
+	if (err)
+		return err;
+
+	vuid = MLX5_ADDR_OF(query_vuid_out, out, vuid);
+	memcpy(out_vuid, vuid, MLX5_ST_SZ_BYTES(array1024_auto));
+	return 0;
+}
diff --git a/drivers/infiniband/hw/mlx5/cmd.h b/drivers/infiniband/hw/mlx5/cmd.h
index e5cd31270443..e6c88b6ebd0d 100644
--- a/drivers/infiniband/hw/mlx5/cmd.h
+++ b/drivers/infiniband/hw/mlx5/cmd.h
@@ -58,4 +58,6 @@ int mlx5_cmd_mad_ifc(struct mlx5_ib_dev *dev, const void *inb, void *outb,
 		     u16 opmod, u8 port);
 int mlx5_cmd_uar_alloc(struct mlx5_core_dev *dev, u32 *uarn, u16 uid);
 int mlx5_cmd_uar_dealloc(struct mlx5_core_dev *dev, u32 uarn, u16 uid);
+int mlx5_cmd_query_vuid(struct mlx5_core_dev *dev, bool data_direct,
+			char *out_vuid);
 #endif /* MLX5_IB_CMD_H */
diff --git a/drivers/infiniband/hw/mlx5/main.c b/drivers/infiniband/hw/mlx5/main.c
index de254cf03173..fc0562f07249 100644
--- a/drivers/infiniband/hw/mlx5/main.c
+++ b/drivers/infiniband/hw/mlx5/main.c
@@ -3025,6 +3025,59 @@ static void mlx5_ib_dev_res_cleanup(struct mlx5_ib_dev *dev)
 	mutex_destroy(&devr->srq_lock);
 }
 
+static int
+mlx5_ib_create_data_direct_resources(struct mlx5_ib_dev *dev)
+{
+	int inlen = MLX5_ST_SZ_BYTES(create_mkey_in);
+	struct mlx5_core_dev *mdev = dev->mdev;
+	void *mkc;
+	u32 mkey;
+	u32 pdn;
+	u32 *in;
+	int err;
+
+	err = mlx5_core_alloc_pd(mdev, &pdn);
+	if (err)
+		return err;
+
+	in = kvzalloc(inlen, GFP_KERNEL);
+	if (!in) {
+		err = -ENOMEM;
+		goto err;
+	}
+
+	MLX5_SET(create_mkey_in, in, data_direct, 1);
+	mkc = MLX5_ADDR_OF(create_mkey_in, in, memory_key_mkey_entry);
+	MLX5_SET(mkc, mkc, access_mode_1_0, MLX5_MKC_ACCESS_MODE_PA);
+	MLX5_SET(mkc, mkc, lw, 1);
+	MLX5_SET(mkc, mkc, lr, 1);
+	MLX5_SET(mkc, mkc, rw, 1);
+	MLX5_SET(mkc, mkc, rr, 1);
+	MLX5_SET(mkc, mkc, a, 1);
+	MLX5_SET(mkc, mkc, pd, pdn);
+	MLX5_SET(mkc, mkc, length64, 1);
+	MLX5_SET(mkc, mkc, qpn, 0xffffff);
+	err = mlx5_core_create_mkey(mdev, &mkey, in, inlen);
+	kvfree(in);
+	if (err)
+		goto err;
+
+	dev->ddr.mkey = mkey;
+	dev->ddr.pdn = pdn;
+	return 0;
+
+err:
+	mlx5_core_dealloc_pd(mdev, pdn);
+	return err;
+}
+
+static void
+mlx5_ib_free_data_direct_resources(struct mlx5_ib_dev *dev)
+{
+	mlx5_core_destroy_mkey(dev->mdev, dev->ddr.mkey);
+	mlx5_core_dealloc_pd(dev->mdev, dev->ddr.pdn);
+}
+
 static u32 get_core_cap_flags(struct ib_device *ibdev,
 			      struct mlx5_hca_vport_context *rep)
 {
@@ -3421,6 +3474,38 @@ static bool mlx5_ib_bind_slave_port(struct mlx5_ib_dev *ibdev,
 	return false;
 }
 
+static int mlx5_ib_data_direct_init(struct mlx5_ib_dev *dev)
+{
+	char vuid[MLX5_ST_SZ_BYTES(array1024_auto) + 1] = {};
+	int ret;
+
+	if (!MLX5_CAP_GEN(dev->mdev, data_direct))
+		return 0;
+
+	ret = mlx5_cmd_query_vuid(dev->mdev, true, vuid);
+	if (ret)
+		return ret;
+
+	ret = mlx5_ib_create_data_direct_resources(dev);
+	if (ret)
+		return ret;
+
+	ret = mlx5_data_direct_ib_reg(dev, vuid);
+	if (ret)
+		mlx5_ib_free_data_direct_resources(dev);
+
+	return ret;
+}
+
+static void mlx5_ib_data_direct_cleanup(struct mlx5_ib_dev *dev)
+{
+	if (!MLX5_CAP_GEN(dev->mdev, data_direct))
+		return;
+
+	mlx5_data_direct_ib_unreg(dev);
+	mlx5_ib_free_data_direct_resources(dev);
+}
+
 static int mlx5_ib_init_multiport_master(struct mlx5_ib_dev *dev)
 {
 	u32 port_num = mlx5_core_native_port_num(dev->mdev) - 1;
@@ -3814,6 +3899,7 @@ static const struct uapi_definition mlx5_ib_defs[] = {
 
 static void mlx5_ib_stage_init_cleanup(struct mlx5_ib_dev *dev)
 {
+	mlx5_ib_data_direct_cleanup(dev);
 	mlx5_ib_cleanup_multiport_master(dev);
 	WARN_ON(!xa_empty(&dev->odp_mkeys));
 	mutex_destroy(&dev->cap_mask_mutex);
@@ -3876,6 +3962,10 @@ static int mlx5_ib_stage_init_init(struct mlx5_ib_dev *dev)
 
 	spin_lock_init(&dev->dm.lock);
 	dev->dm.dev = mdev;
+	err = mlx5_ib_data_direct_init(dev);
+	if (err)
+		goto err_mp;
+
 	return 0;
 err_mp:
 	mlx5_ib_cleanup_multiport_master(dev);
diff --git a/drivers/infiniband/hw/mlx5/mlx5_ib.h b/drivers/infiniband/hw/mlx5/mlx5_ib.h
index b0d7d8b9e672..b2ebea173547 100644
--- a/drivers/infiniband/hw/mlx5/mlx5_ib.h
+++ b/drivers/infiniband/hw/mlx5/mlx5_ib.h
@@ -835,6 +835,11 @@ struct mlx5_ib_port_resources {
 	struct work_struct pkey_change_work;
 };
 
+struct mlx5_data_direct_resources {
+	u32 pdn;
+	u32 mkey;
+};
+
 struct mlx5_ib_resources {
 	struct ib_cq	*c0;
 	struct mutex cq_lock;
@@ -1188,6 +1193,7 @@ struct mlx5_ib_dev {
 	u16 pkey_table_len;
 	u8 lag_ports;
 	struct mlx5_special_mkeys mkeys;
+	struct mlx5_data_direct_resources ddr;
 
 #ifdef CONFIG_MLX5_MACSEC
 	struct mlx5_macsec macsec;
-- 
2.45.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
