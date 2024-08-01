Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B61C0944AD4
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Aug 2024 14:06:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C92CA410EA
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Aug 2024 12:06:07 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 28966410EA
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Aug 2024 12:05:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=f8tlBfJo;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C012962857;
	Thu,  1 Aug 2024 12:05:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16003C32786;
	Thu,  1 Aug 2024 12:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722513934;
	bh=yHsuGHxiLjgWyN5xswDwNMl+wTJR3b2GStP/fjg5kt4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=f8tlBfJo2NqAZZS65pSrGZVWv9Qzy47YMB34cU0sxgOaihlTEZdZKqm2VEHPgGkDm
	 YBtp5Ezayj34aO17JzWcQiD5bNmVM89D5Vgbz5cZ9uwEhjfAaIQU5b5OuUECtL9ApT
	 wAtu1mg0zSnUHuEM9YvjVumzl2TjaxbdZKYycWliUZZ3YVm2ndz6zkklroAVWWFGKC
	 q90fY+es675tl6BfcZEXSK7eu7fl0o5nzAw6ZFbNsAKMp0fFvFVZEcnD5eo0a6DErx
	 3HH2Rp+5F2L+uEvv7OTpE6xyg/0UExPdXLn2TUoERC8loOHJ+SUz742M8AmjqjIKjX
	 KNZEXveWw24yg==
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Date: Thu,  1 Aug 2024 15:05:10 +0300
Message-ID: <82da7f578a567909bb5858a64ba844fe4cc298fa.1722512548.git.leon@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cover.1722512548.git.leon@kernel.org>
References: <cover.1722512548.git.leon@kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 28966410EA
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
Message-ID-Hash: FJRXR4WFB4LEH2C3FBLDDI6ZJQRUMFGW
X-Message-ID-Hash: FJRXR4WFB4LEH2C3FBLDDI6ZJQRUMFGW
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Yishai Hadas <yishaih@nvidia.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-rdma@vger.kernel.org, Michael Margolin <mrgolin@amazon.com>, Mustafa Ismail <mustafa.ismail@intel.com>, netdev@vger.kernel.org, Saeed Mahameed <saeedm@nvidia.com>, Selvin Xavier <selvin.xavier@broadcom.com>, Sumit Semwal <sumit.semwal@linaro.org>, Tariq Toukan <tariqt@nvidia.com>, Tatyana Nikolova <tatyana.e.nikolova@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH mlx5-next 1/8] net/mlx5: Add IFC related stuff for data direct
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FJRXR4WFB4LEH2C3FBLDDI6ZJQRUMFGW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Yishai Hadas <yishaih@nvidia.com>

Add IFC related stuff for data direct.

Signed-off-by: Yishai Hadas <yishaih@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 include/linux/mlx5/mlx5_ifc.h | 51 +++++++++++++++++++++++++++++++----
 1 file changed, 46 insertions(+), 5 deletions(-)

diff --git a/include/linux/mlx5/mlx5_ifc.h b/include/linux/mlx5/mlx5_ifc.h
index cab228cf51c6..970c9d8473ef 100644
--- a/include/linux/mlx5/mlx5_ifc.h
+++ b/include/linux/mlx5/mlx5_ifc.h
@@ -313,6 +313,7 @@ enum {
 	MLX5_CMD_OP_MODIFY_VHCA_STATE             = 0xb0e,
 	MLX5_CMD_OP_SYNC_CRYPTO                   = 0xb12,
 	MLX5_CMD_OP_ALLOW_OTHER_VHCA_ACCESS       = 0xb16,
+	MLX5_CMD_OPCODE_QUERY_VUID                = 0xb22,
 	MLX5_CMD_OP_MAX
 };
 
@@ -1885,7 +1886,8 @@ struct mlx5_ifc_cmd_hca_cap_bits {
 
 	u8         reserved_at_5a0[0x10];
 	u8         enhanced_cqe_compression[0x1];
-	u8         reserved_at_5b1[0x2];
+	u8         reserved_at_5b1[0x1];
+	u8         crossing_vhca_mkey[0x1];
 	u8         log_max_dek[0x5];
 	u8         reserved_at_5b8[0x4];
 	u8         mini_cqe_resp_stride_index[0x1];
@@ -1954,7 +1956,9 @@ struct mlx5_ifc_cmd_hca_cap_bits {
 	u8	   dynamic_msix_table_size[0xc];
 	u8	   reserved_at_740[0xc];
 	u8	   min_dynamic_vf_msix_table_size[0x4];
-	u8	   reserved_at_750[0x4];
+	u8	   reserved_at_750[0x2];
+	u8	   data_direct[0x1];
+	u8	   reserved_at_753[0x1];
 	u8	   max_dynamic_vf_msix_table_size[0xc];
 
 	u8         reserved_at_760[0x3];
@@ -1982,7 +1986,9 @@ struct mlx5_ifc_cmd_hca_cap_2_bits {
 	u8	   reserved_at_0[0x80];
 
 	u8         migratable[0x1];
-	u8         reserved_at_81[0x1f];
+	u8         reserved_at_81[0x11];
+	u8         query_vuid[0x1];
+	u8         reserved_at_93[0xd];
 
 	u8	   max_reformat_insert_size[0x8];
 	u8	   max_reformat_insert_offset[0x8];
@@ -4154,6 +4160,7 @@ enum {
 	MLX5_MKC_ACCESS_MODE_KSM   = 0x3,
 	MLX5_MKC_ACCESS_MODE_SW_ICM = 0x4,
 	MLX5_MKC_ACCESS_MODE_MEMIC = 0x5,
+	MLX5_MKC_ACCESS_MODE_CROSSING = 0x6,
 };
 
 struct mlx5_ifc_mkc_bits {
@@ -4196,7 +4203,10 @@ struct mlx5_ifc_mkc_bits {
 
 	u8         bsf_octword_size[0x20];
 
-	u8         reserved_at_120[0x80];
+	u8         reserved_at_120[0x60];
+
+	u8         crossing_target_vhca_id[0x10];
+	u8         reserved_at_190[0x10];
 
 	u8         translations_octword_size[0x20];
 
@@ -5124,6 +5134,36 @@ struct mlx5_ifc_query_vport_state_out_bits {
 	u8         state[0x4];
 };
 
+struct mlx5_ifc_array1024_auto_bits {
+	u8         array1024_auto[32][0x20];
+};
+
+struct mlx5_ifc_query_vuid_in_bits {
+	u8         opcode[0x10];
+	u8         uid[0x10];
+
+	u8         reserved_at_20[0x40];
+
+	u8         query_vfs_vuid[0x1];
+	u8         data_direct[0x1];
+	u8         reserved_at_62[0xe];
+	u8         vhca_id[0x10];
+};
+
+struct mlx5_ifc_query_vuid_out_bits {
+	u8        status[0x8];
+	u8        reserved_at_8[0x18];
+
+	u8        syndrome[0x20];
+
+	u8        reserved_at_40[0x1a0];
+
+	u8        reserved_at_1e0[0x10];
+	u8        num_of_entries[0x10];
+
+	struct mlx5_ifc_array1024_auto_bits vuid[];
+};
+
 enum {
 	MLX5_VPORT_STATE_OP_MOD_VNIC_VPORT  = 0x0,
 	MLX5_VPORT_STATE_OP_MOD_ESW_VPORT   = 0x1,
@@ -8989,7 +9029,8 @@ struct mlx5_ifc_create_mkey_in_bits {
 
 	u8         pg_access[0x1];
 	u8         mkey_umem_valid[0x1];
-	u8         reserved_at_62[0x1e];
+	u8         data_direct[0x1];
+	u8         reserved_at_63[0x1d];
 
 	struct mlx5_ifc_mkc_bits memory_key_mkey_entry;
 
-- 
2.45.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
