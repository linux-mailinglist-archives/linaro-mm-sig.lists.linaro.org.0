Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B91973FE9B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jun 2023 16:44:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C51E3EF35
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jun 2023 14:44:08 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	by lists.linaro.org (Postfix) with ESMTPS id A0C9C3EF35
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jun 2023 14:43:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=inria.fr header.s=dc header.b=YpuufV72;
	spf=pass (lists.linaro.org: domain of Julia.Lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=Julia.Lawall@inria.fr;
	dmarc=pass (policy=none) header.from=inria.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=lz+eaKXjltZfgC96+KOEH+DiV357kqzsKaP1ME9j9JM=;
  b=YpuufV72ER5dSm9wrYSnJ+nyISX1oQx33v1s2pGZoMDoTbTZApc/Qnr+
   jWRuBVmLvwZwmibFQ5jrR1vtZ5noOKi7DSKRNrP0U1BZ9FCltFGcibx6p
   ck1ThN0OMstSb7PrPLh1Mq91rYGjkQ4mlVR9Zej3KEIn+kL4eNkAXPzxE
   c=;
X-IronPort-AV: E=Sophos;i="6.01,162,1684792800";
   d="scan'208";a="114936315"
Received: from i80.paris.inria.fr (HELO i80.paris.inria.fr.) ([128.93.90.48])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jun 2023 16:43:51 +0200
From: Julia Lawall <Julia.Lawall@inria.fr>
To: linux-hyperv@vger.kernel.org
Date: Tue, 27 Jun 2023 16:43:15 +0200
Message-Id: <20230627144339.144478-1-Julia.Lawall@inria.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spamd-Result: default: False [-6.00 / 15.00];
	DWL_DNSWL_HI(-3.50)[inria.fr:dkim];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[inria.fr,none];
	R_SPF_ALLOW(-0.20)[+ip4:192.134.164.0/24];
	R_DKIM_ALLOW(-0.20)[inria.fr:s=dc];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:2200, ipnet:192.134.164.0/24, country:FR];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[35];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[inria.fr:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,chromium.org,wanadoo.fr,kernel.org,googlegroups.com,gmail.com,google.com,lists.linux.dev,arm.com,nvidia.com,lists.linux-foundation.org,linux.alibaba.com,lists.linaro.org,redhat.com,codeaurora.org,collabora.com,lists.freedesktop.org,linux.intel.com,zytor.com];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A0C9C3EF35
X-Spamd-Bar: ------
Message-ID-Hash: WW2XHUPMEOHMVVR3ABKUBN46RIU5ATS6
X-Message-ID-Hash: WW2XHUPMEOHMVVR3ABKUBN46RIU5ATS6
X-MailFrom: Julia.Lawall@inria.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: kernel-janitors@vger.kernel.org, keescook@chromium.org, christophe.jaillet@wanadoo.fr, kuba@kernel.org, kasan-dev@googlegroups.com, Andrey Konovalov <andreyknvl@gmail.com>, Dmitry Vyukov <dvyukov@google.com>, iommu@lists.linux.dev, linux-tegra@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, virtualization@lists.linux-foundation.org, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, linux-scsi@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, John Stultz <jstultz@google.com>, Brian Starkey <Brian.Starkey@arm.com>, Laura Abbott <labbott@redhat.com>, Liam Mark <lmark@codeaurora.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, Shailend Chand <shailend@google.com>, linux-rdma@vger.kernel.org, mhi@lists.linux.dev, linux-arm-msm@vger.kernel.org, linux-btrfs@vger.kernel.org, intel-gvt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Dave Hansen <dave.hansen@
 linux.intel.com>, "H. Peter Anvin" <hpa@zytor.com>, linux-sgx@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 00/24] use vmalloc_array and vcalloc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WW2XHUPMEOHMVVR3ABKUBN46RIU5ATS6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The functions vmalloc_array and vcalloc were introduced in

commit a8749a35c399 ("mm: vmalloc: introduce array allocation functions")

but are not used much yet.  This series introduces uses of
these functions, to protect against multiplication overflows.

The changes were done using the following Coccinelle semantic
patch.

@initialize:ocaml@
@@

let rename alloc =
  match alloc with
    "vmalloc" -> "vmalloc_array"
  | "vzalloc" -> "vcalloc"
  | _ -> failwith "unknown"

@@
    size_t e1,e2;
    constant C1, C2;
    expression E1, E2, COUNT, x1, x2, x3;
    typedef u8;
    typedef __u8;
    type t = {u8,__u8,char,unsigned char};
    identifier alloc = {vmalloc,vzalloc};
    fresh identifier realloc = script:ocaml(alloc) { rename alloc };
@@

(
      alloc(x1*x2*x3)
|
      alloc(C1 * C2)
|
      alloc((sizeof(t)) * (COUNT), ...)
|
-     alloc((e1) * (e2))
+     realloc(e1, e2)
|
-     alloc((e1) * (COUNT))
+     realloc(COUNT, e1)
|
-     alloc((E1) * (E2))
+     realloc(E1, E2)
)

v2: This series uses vmalloc_array and vcalloc instead of
array_size.  It also leaves a multiplication of a constant by a
sizeof as is.  Two patches are thus dropped from the series.

---

 arch/x86/kernel/cpu/sgx/main.c                    |    2 +-
 drivers/accel/habanalabs/common/device.c          |    3 ++-
 drivers/accel/habanalabs/common/state_dump.c      |    7 ++++---
 drivers/bus/mhi/host/init.c                       |    2 +-
 drivers/comedi/comedi_buf.c                       |    4 ++--
 drivers/dma-buf/heaps/system_heap.c               |    2 +-
 drivers/gpu/drm/gud/gud_pipe.c                    |    2 +-
 drivers/gpu/drm/i915/gvt/gtt.c                    |    6 ++++--
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
 drivers/vdpa/vdpa_user/iova_domain.c              |    4 ++--
 drivers/virtio/virtio_mem.c                       |    6 +++---
 fs/btrfs/zoned.c                                  |    4 ++--
 kernel/kcov.c                                     |    2 +-
 lib/test_vmalloc.c                                |    9 +++++----
 26 files changed, 52 insertions(+), 47 deletions(-)
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
