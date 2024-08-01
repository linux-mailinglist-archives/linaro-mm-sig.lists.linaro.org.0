Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D27944AF2
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Aug 2024 14:07:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 02EFA410EA
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Aug 2024 12:07:52 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 2F85242526
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Aug 2024 12:06:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=F8jiYAD+;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E942DCE1939;
	Thu,  1 Aug 2024 12:05:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B57CAC4AF0A;
	Thu,  1 Aug 2024 12:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722513959;
	bh=Vz6K0CseR2CvsnyMziB3zHBkOhk2OUVB/Qm9uhyU7F4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=F8jiYAD+/8dE1YMWeRzW41azT2Hb3buByI2zt4jSSEsUYzeYaKnzbzOdoMwLYX09i
	 bV9wu6XZQIvCUyvVvpms63V5cBYtisC11FpT/G+LU2psIw724ofxKru6pj44P4A4Xi
	 HWLwg3w3bCW6T7ScasgQxzL2f3A3bGihpysPMt4TioDA2gT9g7lSW4wEpopUEDp93m
	 lsZIzOOw04cTwVr8WJ+qkF2SWcnHL0XnfQwXDjOptvnIT3uG140de3bFQT5ll3YjPP
	 vwnB7qBqneAWK6h6KjWlvKHgURnZsh76LCF4KRvAhzRFbPKAHsi0+NCswmZE5ou/jU
	 Xfpc08G1A0tag==
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Date: Thu,  1 Aug 2024 15:05:17 +0300
Message-ID: <403745463e0ef52adbef681ff09aa6a29a756352.1722512548.git.leon@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cover.1722512548.git.leon@kernel.org>
References: <cover.1722512548.git.leon@kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2F85242526
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
	URIBL_BLOCKED(0.00)[sin.source.kernel.org:helo,sin.source.kernel.org:rdns,nvidia.com:email];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: QWSEGGVJGXNDVP544FNRVYQGZR4YS4WT
X-Message-ID-Hash: QWSEGGVJGXNDVP544FNRVYQGZR4YS4WT
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Yishai Hadas <yishaih@nvidia.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-rdma@vger.kernel.org, Michael Margolin <mrgolin@amazon.com>, Mustafa Ismail <mustafa.ismail@intel.com>, netdev@vger.kernel.org, Saeed Mahameed <saeedm@nvidia.com>, Selvin Xavier <selvin.xavier@broadcom.com>, Sumit Semwal <sumit.semwal@linaro.org>, Tariq Toukan <tariqt@nvidia.com>, Tatyana Nikolova <tatyana.e.nikolova@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH rdma-next 8/8] RDMA/mlx5: Introduce GET_DATA_DIRECT_SYSFS_PATH ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QWSEGGVJGXNDVP544FNRVYQGZR4YS4WT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Yishai Hadas <yishaih@nvidia.com>

Introduce the 'GET_DATA_DIRECT_SYSFS_PATH' ioctl to return the sysfs
path of the affiliated 'data direct' device for a given device.

Signed-off-by: Yishai Hadas <yishaih@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/infiniband/hw/mlx5/std_types.c   | 55 +++++++++++++++++++++++-
 include/uapi/rdma/mlx5_user_ioctl_cmds.h |  5 +++
 2 files changed, 59 insertions(+), 1 deletion(-)

diff --git a/drivers/infiniband/hw/mlx5/std_types.c b/drivers/infiniband/hw/mlx5/std_types.c
index bbfcce3bdc84..ffeb1e1a1538 100644
--- a/drivers/infiniband/hw/mlx5/std_types.c
+++ b/drivers/infiniband/hw/mlx5/std_types.c
@@ -10,6 +10,7 @@
 #include <linux/mlx5/eswitch.h>
 #include <linux/mlx5/vport.h>
 #include "mlx5_ib.h"
+#include "data_direct.h"
 
 #define UVERBS_MODULE_NAME mlx5_ib
 #include <rdma/uverbs_named_ioctl.h>
@@ -183,6 +184,50 @@ static int UVERBS_HANDLER(MLX5_IB_METHOD_QUERY_PORT)(
 					     sizeof(info));
 }
 
+static int UVERBS_HANDLER(MLX5_IB_METHOD_GET_DATA_DIRECT_SYSFS_PATH)(
+	struct uverbs_attr_bundle *attrs)
+{
+	struct mlx5_data_direct_dev *data_direct_dev;
+	struct mlx5_ib_ucontext *c;
+	struct mlx5_ib_dev *dev;
+	int out_len = uverbs_attr_get_len(attrs,
+			MLX5_IB_ATTR_GET_DATA_DIRECT_SYSFS_PATH);
+	u32 dev_path_len;
+	char *dev_path;
+	int ret;
+
+	c = to_mucontext(ib_uverbs_get_ucontext(attrs));
+	if (IS_ERR(c))
+		return PTR_ERR(c);
+	dev = to_mdev(c->ibucontext.device);
+	mutex_lock(&dev->data_direct_lock);
+	data_direct_dev = dev->data_direct_dev;
+	if (!data_direct_dev) {
+		ret = -ENODEV;
+		goto end;
+	}
+
+	dev_path = kobject_get_path(&data_direct_dev->device->kobj, GFP_KERNEL);
+	if (!dev_path) {
+		ret = -ENOMEM;
+		goto end;
+	}
+
+	dev_path_len = strlen(dev_path) + 1;
+	if (dev_path_len > out_len) {
+		ret = -ENOSPC;
+		goto end;
+	}
+
+	ret = uverbs_copy_to(attrs, MLX5_IB_ATTR_GET_DATA_DIRECT_SYSFS_PATH, dev_path,
+			     dev_path_len);
+	kfree(dev_path);
+
+end:
+	mutex_unlock(&dev->data_direct_lock);
+	return ret;
+}
+
 DECLARE_UVERBS_NAMED_METHOD(
 	MLX5_IB_METHOD_QUERY_PORT,
 	UVERBS_ATTR_PTR_IN(MLX5_IB_ATTR_QUERY_PORT_PORT_NUM,
@@ -193,9 +238,17 @@ DECLARE_UVERBS_NAMED_METHOD(
 				   reg_c0),
 		UA_MANDATORY));
 
+DECLARE_UVERBS_NAMED_METHOD(
+	MLX5_IB_METHOD_GET_DATA_DIRECT_SYSFS_PATH,
+	UVERBS_ATTR_PTR_OUT(
+		MLX5_IB_ATTR_GET_DATA_DIRECT_SYSFS_PATH,
+		UVERBS_ATTR_MIN_SIZE(0),
+		UA_MANDATORY));
+
 ADD_UVERBS_METHODS(mlx5_ib_device,
 		   UVERBS_OBJECT_DEVICE,
-		   &UVERBS_METHOD(MLX5_IB_METHOD_QUERY_PORT));
+		   &UVERBS_METHOD(MLX5_IB_METHOD_QUERY_PORT),
+		   &UVERBS_METHOD(MLX5_IB_METHOD_GET_DATA_DIRECT_SYSFS_PATH));
 
 DECLARE_UVERBS_NAMED_METHOD(
 	MLX5_IB_METHOD_PD_QUERY,
diff --git a/include/uapi/rdma/mlx5_user_ioctl_cmds.h b/include/uapi/rdma/mlx5_user_ioctl_cmds.h
index 106276a4cce7..fd2e4a3a56b3 100644
--- a/include/uapi/rdma/mlx5_user_ioctl_cmds.h
+++ b/include/uapi/rdma/mlx5_user_ioctl_cmds.h
@@ -348,6 +348,7 @@ enum mlx5_ib_pd_methods {
 
 enum mlx5_ib_device_methods {
 	MLX5_IB_METHOD_QUERY_PORT = (1U << UVERBS_ID_NS_SHIFT),
+	MLX5_IB_METHOD_GET_DATA_DIRECT_SYSFS_PATH,
 };
 
 enum mlx5_ib_query_port_attrs {
@@ -355,4 +356,8 @@ enum mlx5_ib_query_port_attrs {
 	MLX5_IB_ATTR_QUERY_PORT,
 };
 
+enum mlx5_ib_get_data_direct_sysfs_path_attrs {
+	MLX5_IB_ATTR_GET_DATA_DIRECT_SYSFS_PATH = (1U << UVERBS_ID_NS_SHIFT),
+};
+
 #endif
-- 
2.45.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
