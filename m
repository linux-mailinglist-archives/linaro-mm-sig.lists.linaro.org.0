Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 787D173C248
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jun 2023 23:15:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 169FC401C4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jun 2023 21:15:27 +0000 (UTC)
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	by lists.linaro.org (Postfix) with ESMTPS id E64273EC47
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jun 2023 21:15:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=inria.fr header.s=dc header.b=PQ1b0Em2;
	spf=pass (lists.linaro.org: domain of Julia.Lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=Julia.Lawall@inria.fr;
	dmarc=pass (policy=none) header.from=inria.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=yokMEiNdELJzyHFQdE73QSq1qzFaQMznhY0/hFJPXdI=;
  b=PQ1b0Em2N9AUVeD/LpbU+ZN+rhktTH+Y6Q7VDw8Cf3pNA0l+BtcyhZxn
   ojeRsFjGxDD8u0+Y/YOKGSuPFSO6phFB8O6SWqeWn+vMMRvPryqL5bt/o
   lImhNqRZeaTWVm1/g7h+gT/Zhi5gA6YeaCo8RJpx27aob7O1b3mfST+O1
   0=;
X-IronPort-AV: E=Sophos;i="6.01,153,1684792800";
   d="scan'208";a="59686157"
Received: from i80.paris.inria.fr (HELO i80.paris.inria.fr.) ([128.93.90.48])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2023 23:15:09 +0200
From: Julia Lawall <Julia.Lawall@inria.fr>
To: linux-staging@lists.linux.dev
Date: Fri, 23 Jun 2023 23:14:31 +0200
Message-Id: <20230623211457.102544-1-Julia.Lawall@inria.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[inria.fr,none];
	R_DKIM_ALLOW(-0.20)[inria.fr:s=dc];
	R_SPF_ALLOW(-0.20)[+ip4:192.134.164.0/24];
	RWL_MAILSPIKE_GOOD(-0.10)[192.134.164.104:from];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:2200, ipnet:192.134.164.0/24, country:FR];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[inria.fr:+];
	FREEMAIL_CC(0.00)[chromium.org,vger.kernel.org,intel.com,zytor.com,linux.intel.com,googlegroups.com,gmail.com,google.com,lists.linux.dev,arm.com,nvidia.com,lists.freedesktop.org,collabora.com,codeaurora.org,redhat.com,lists.linaro.org,linux.alibaba.com,lists.linux-foundation.org,vmware.com];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E64273EC47
X-Spamd-Bar: --
Message-ID-Hash: BRHZPDU6VZAHIXYALP4BYG5OX7LWXY2S
X-Message-ID-Hash: BRHZPDU6VZAHIXYALP4BYG5OX7LWXY2S
X-MailFrom: Julia.Lawall@inria.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: keescook@chromium.org, kernel-janitors@vger.kernel.org, Tianshu Qiu <tian.shu.qiu@intel.com>, Bingbu Cao <bingbu.cao@intel.com>, linux-sgx@vger.kernel.org, "H. Peter Anvin" <hpa@zytor.com>, Dave Hansen <dave.hansen@linux.intel.com>, kasan-dev@googlegroups.com, Andrey Konovalov <andreyknvl@gmail.com>, Dmitry Vyukov <dvyukov@google.com>, iommu@lists.linux.dev, linux-tegra@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, Shailend Chand <shailend@google.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, virtualization@lists.linux-foundation.org, mhi@lists.linux.dev, linux-arm-msm@vger.kernel.
 org, linux-btrfs@vger.kernel.org, intel-gvt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, VMware Graphics Reviewers <linux-graphics-maintainer@vmware.com>, linux-hyperv@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 00/26] use array_size
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BRHZPDU6VZAHIXYALP4BYG5OX7LWXY2S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Use array_size to protect against multiplication overflows.

This follows up on the following patches by Kees Cook from 2018.

42bc47b35320 ("treewide: Use array_size() in vmalloc()")
fad953ce0b22 ("treewide: Use array_size() in vzalloc()")

The changes were done using the following Coccinelle semantic patch,
adapted from the one posted by Kees.

// Drop single-byte sizes and redundant parens.
@@
    expression COUNT;
    typedef u8;
    typedef __u8;
    type t = {u8,__u8,char,unsigned char};
    identifier alloc = {vmalloc,vzalloc};
@@
      alloc(
-           (sizeof(t)) * (COUNT)
+           COUNT
      , ...)

// 3-factor product with 2 sizeof(variable), with redundant parens removed.
@@
    expression COUNT;
    size_t e1, e2, e3;
    identifier alloc = {vmalloc,vzalloc};
@@

(    
      alloc(
-           (e1) * (e2) * (e3)
+           array3_size(e1, e2, e3)
      ,...)
|
      alloc(
-           (e1) * (e2) * (COUNT)
+           array3_size(COUNT, e1, e2)
      ,...)
)

// 3-factor product with 1 sizeof(type) or sizeof(expression), with
// redundant parens removed.
@@
    expression STRIDE, COUNT;
    size_t e;
    identifier alloc = {vmalloc,vzalloc};
@@

      alloc(
-           (e) * (COUNT) * (STRIDE)
+           array3_size(COUNT, STRIDE, e)
      ,...)

// Any remaining multi-factor products, first at least 3-factor products
// when they're not all constants...
@@
    expression E1, E2, E3;
    constant C1, C2, C3;
    identifier alloc = {vmalloc,vzalloc};
@@
    
(
      alloc(C1 * C2 * C3,...)
|
      alloc(
-           (E1) * (E2) * (E3)
+           array3_size(E1, E2, E3)
      ,...)
)

// 2-factor product with sizeof(type/expression) and identifier or constant.
@@
    size_t e1,e2;
    expression COUNT;
    identifier alloc = {vmalloc,vzalloc};
@@

(
      alloc(
-           (e1) * (e2)
+           array_size(e1, e2)
      ,...)
|
      alloc(
-           (e1) * (COUNT)
+           array_size(COUNT, e1)
      ,...)
)
    
// And then all remaining 2 factors products when they're not all constants.
@@
    expression E1, E2;
    constant C1, C2;
    identifier alloc = {vmalloc,vzalloc};
@@
    
(
      alloc(C1 * C2,...)
|
      alloc(
-           (E1) * (E2)
+           array_size(E1, E2)
      ,...)
)


---

 arch/x86/kernel/cpu/sgx/main.c                    |    3 ++-
 drivers/accel/habanalabs/common/device.c          |    3 ++-
 drivers/accel/habanalabs/common/state_dump.c      |    6 +++---
 drivers/bus/mhi/host/init.c                       |    4 ++--
 drivers/comedi/comedi_buf.c                       |    4 ++--
 drivers/dma-buf/heaps/system_heap.c               |    2 +-
 drivers/gpu/drm/gud/gud_pipe.c                    |    2 +-
 drivers/gpu/drm/i915/gvt/gtt.c                    |    6 ++++--
 drivers/gpu/drm/vmwgfx/vmwgfx_devcaps.c           |    2 +-
 drivers/infiniband/hw/bnxt_re/qplib_res.c         |    4 ++--
 drivers/infiniband/hw/erdma/erdma_verbs.c         |    4 ++--
 drivers/infiniband/sw/siw/siw_qp.c                |    4 ++--
 drivers/infiniband/sw/siw/siw_verbs.c             |    6 +++---
 drivers/iommu/tegra-gart.c                        |    4 ++--
 drivers/net/ethernet/amd/pds_core/core.c          |    4 ++--
 drivers/net/ethernet/freescale/enetc/enetc.c      |    4 ++--
 drivers/net/ethernet/google/gve/gve_tx.c          |    2 +-
 drivers/net/ethernet/marvell/octeon_ep/octep_rx.c |    2 +-
 drivers/net/ethernet/microsoft/mana/hw_channel.c  |    2 +-
 drivers/net/ethernet/pensando/ionic/ionic_lif.c   |    4 ++--
 drivers/scsi/fnic/fnic_trace.c                    |    2 +-
 drivers/scsi/qla2xxx/qla_init.c                   |    4 ++--
 drivers/staging/media/ipu3/ipu3-mmu.c             |    2 +-
 drivers/vdpa/vdpa_user/iova_domain.c              |    3 +--
 drivers/virtio/virtio_mem.c                       |    6 +++---
 fs/btrfs/zoned.c                                  |    5 +++--
 kernel/kcov.c                                     |    2 +-
 lib/test_vmalloc.c                                |   12 ++++++------
 28 files changed, 56 insertions(+), 52 deletions(-)
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
