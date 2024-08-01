Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 116C5944ACD
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Aug 2024 14:05:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1EF684118B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Aug 2024 12:05:51 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 5905C40F65
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Aug 2024 12:05:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=bTvg8+OZ;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4D58FCE18E6;
	Thu,  1 Aug 2024 12:05:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23627C32786;
	Thu,  1 Aug 2024 12:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722513930;
	bh=xrmm8vq48Turuhl+MYV5VwfRqiYgHDIYm72LgCbH1lU=;
	h=From:To:Cc:Subject:Date:From;
	b=bTvg8+OZJV69EIq4IxRBqp9dfc6y/u9kWm+xw9EFbJQjCtGm/UcFRMTsSiul0eqRA
	 G1uDAZfhZ9TUmV4dy8tbbbxXhLFGDT9lrOc+bymDfNJGT+beG7sHBHtBQk0rOJW3zH
	 yQTqXwxCvOn8I43hDhUDD2l+9gOqREEUYMHgZ2c7tkTViB+iu6RePr0NnnB27Annav
	 +eP333ZCtfBXqo8qAegZ9RYVEm7YKemBWXwieFxVdf/xYmF2vWuSCSzvjkyvd6A+SY
	 tIjsSrZg5VceoSgba2wOLQsmlPbHo1+s8lGZ6WajKsWqmWfHgl8Dp88597sOWlI8lk
	 vC2KwTjZBx2lg==
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Date: Thu,  1 Aug 2024 15:05:09 +0300
Message-ID: <cover.1722512548.git.leon@kernel.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5905C40F65
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
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
	URIBL_BLOCKED(0.00)[sin.source.kernel.org:helo,sin.source.kernel.org:rdns];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 2LFI75CEULGM5SFGKJSTM2XNZML646PL
X-Message-ID-Hash: 2LFI75CEULGM5SFGKJSTM2XNZML646PL
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Leon Romanovsky <leonro@nvidia.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rdma@vger.kernel.org, Michael Margolin <mrgolin@amazon.com>, Mustafa Ismail <mustafa.ismail@intel.com>, netdev@vger.kernel.org, Saeed Mahameed <saeedm@nvidia.com>, Selvin Xavier <selvin.xavier@broadcom.com>, Sumit Semwal <sumit.semwal@linaro.org>, Tariq Toukan <tariqt@nvidia.com>, Tatyana Nikolova <tatyana.e.nikolova@intel.com>, Yishai Hadas <yishaih@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH rdma-next 0/8] Introducing Multi-Path DMA Support for mlx5 RDMA Driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2LFI75CEULGM5SFGKJSTM2XNZML646PL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Leon Romanovsky <leonro@nvidia.com>

From Yishai,

Overview
--------
This patch series aims to enable multi-path DMA support, allowing an
mlx5 RDMA device to issue DMA commands through multiple paths. This
feature is critical for improving performance and reaching line rate
in certain environments where issuing PCI transactions over one path
may be significantly faster than over another. These differences can
arise from various PCI generations in the system or the specific system
topology.

To achieve this functionality, we introduced a data direct DMA device
that can serve the RDMA device by issuing DMA transactions on its behalf.

The main key features and changes are described below.

Multi-Path Discovery
--------------------
API Implementation:
 * Introduced an API to discover multiple paths for a given mlx5 RDMA device.
IOCTL Command: 
 * Added a new IOCTL command, MLX5_IB_METHOD_GET_DATA_DIRECT_SYSFS_PATH, to
   the DEVICE object. When an affiliated Data-Direct/DMA device is present,
   its sysfs path is returned.

Feature Activation by mlx5 RDMA Application
-------------------------------------------
UVERBS Extension:
 * Extended UVERBS_METHOD_REG_DMABUF_MR over UVERBS_OBJECT_MR to include
   mlx5 extended flags.
Access Flag: 
 * Introduced the MLX5_IB_UAPI_REG_DMABUF_ACCESS_DATA_DIRECT flag, allowing
   applications to request the use of the affiliated DMA device for DMABUF
   registration.

Data-Direct/DMA Device
----------------------
New Driver:
 * Introduced a new driver to manage the new DMA PF device ID (0x2100).
   Its registration/un-registration is handled as part of the mlx5_ib init/exit
   flows, with mlx5 IB devices as its clients.
Functionality: 
 * The driver does not interface directly with the firmware (no command interface,
   no caps, etc.) but works over PCI to activate its DMA functionality. It serves
   as the DMA device for efficiently accessing other PCI devices (e.g., GPU PF) and
   reads its VUID over PCI to handle NICs registrations with the same VUID.

mlx5 IB RDMA Device
---------------------------
VUID Query: 
 * Reads its affiliated DMA PF VUID via the QUERY_VUID command with the data_direct
   bit set.
Driver Registration:
 * Registers with the DMA PF driver to be notified upon bind/unbind.
Application Request Handling: 
 * Uses the DMA PF device upon application request as described above.

DMABUF over Umem
----------------
Introduced an option to obtain a DMABUF UMEM using a different DMA
device instead of the IB device, allowing the device to register over
IOMMU with the expected DMA device for a given buffer registration.

Further details are provided in the commit logs of the patches in this
series.

Thanks

Yishai Hadas (8):
  net/mlx5: Add IFC related stuff for data direct
  RDMA/mlx5: Introduce the 'data direct' driver
  RDMA/mlx5: Add the initialization flow to utilize the 'data direct'
    device
  RDMA/umem: Add support for creating pinned DMABUF umem with a given
    dma device
  RDMA/umem: Introduce an option to revoke DMABUF umem
  RDMA: Pass uverbs_attr_bundle as part of '.reg_user_mr_dmabuf' API
  RDMA/mlx5: Add support for DMABUF MR registrations with Data-direct
  RDMA/mlx5: Introduce GET_DATA_DIRECT_SYSFS_PATH ioctl

 drivers/infiniband/core/umem_dmabuf.c         |  66 +++-
 drivers/infiniband/core/uverbs_std_types_mr.c |   2 +-
 drivers/infiniband/hw/bnxt_re/ib_verbs.c      |   3 +-
 drivers/infiniband/hw/bnxt_re/ib_verbs.h      |   2 +-
 drivers/infiniband/hw/efa/efa.h               |   2 +-
 drivers/infiniband/hw/efa/efa_verbs.c         |   4 +-
 drivers/infiniband/hw/irdma/verbs.c           |   2 +-
 drivers/infiniband/hw/mlx5/Makefile           |   1 +
 drivers/infiniband/hw/mlx5/cmd.c              |  21 ++
 drivers/infiniband/hw/mlx5/cmd.h              |   2 +
 drivers/infiniband/hw/mlx5/data_direct.c      | 227 +++++++++++++
 drivers/infiniband/hw/mlx5/data_direct.h      |  23 ++
 drivers/infiniband/hw/mlx5/main.c             | 125 +++++++
 drivers/infiniband/hw/mlx5/mlx5_ib.h          |  22 +-
 drivers/infiniband/hw/mlx5/mr.c               | 304 +++++++++++++++---
 drivers/infiniband/hw/mlx5/odp.c              |   5 +-
 drivers/infiniband/hw/mlx5/std_types.c        |  55 +++-
 drivers/infiniband/hw/mlx5/umr.c              |  93 ++++--
 drivers/infiniband/hw/mlx5/umr.h              |   1 +
 include/linux/mlx5/mlx5_ifc.h                 |  51 ++-
 include/rdma/ib_umem.h                        |  18 ++
 include/rdma/ib_verbs.h                       |   2 +-
 include/uapi/rdma/mlx5_user_ioctl_cmds.h      |   9 +
 include/uapi/rdma/mlx5_user_ioctl_verbs.h     |   4 +
 24 files changed, 944 insertions(+), 100 deletions(-)
 create mode 100644 drivers/infiniband/hw/mlx5/data_direct.c
 create mode 100644 drivers/infiniband/hw/mlx5/data_direct.h

-- 
2.45.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
