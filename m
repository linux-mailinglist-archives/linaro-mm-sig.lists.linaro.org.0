Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A1BBD42FD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Oct 2025 17:28:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C12A46357
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Oct 2025 15:28:45 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id A8F5946354
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Oct 2025 15:26:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=VBFGKDqN;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 622B161E0C;
	Mon, 13 Oct 2025 15:26:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D7D4C116B1;
	Mon, 13 Oct 2025 15:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760369219;
	bh=gP55VKbohdKUFjUIbdAFjXKOGHoX+x5EdhnEOLcQ7QQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VBFGKDqNBy0xJePjSPwIh5MtWNEQFwHsevMHmHcBV5qcPGuvqZid9em7RPLMiGq4F
	 qMKY9SyKL0NciEAq/rYuF6EbgGRndYQPjYeO1iksCcDIkldZu3fY3/LHnrcZfqiUoI
	 NdYO1nup+k9vZEqA6weRmQgJwydWGadQODFVV3DfW67xHpUiNJBRwdhnymVPvrcTSR
	 tH5XSM9HsbPSrJ6uJQ3dBSx6Ibw2Ntpo6Zp+cD3Tq6UbfdvZYV2gC2qOeqaw+Y0Z1A
	 aQxgK4+gGQdcDvgKLXN5LdMAbgH60H5UulKgzaY0+9s2yaAome6GXMye0HSqbEAOEj
	 ulYUgjpNsmsMw==
From: Leon Romanovsky <leon@kernel.org>
To: Alex Williamson <alex.williamson@redhat.com>
Date: Mon, 13 Oct 2025 18:26:07 +0300
Message-ID: <b520e4a2b7b6e0c873d4787aca400ca03821f8aa.1760368250.git.leon@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <cover.1760368250.git.leon@kernel.org>
References: <cover.1760368250.git.leon@kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: A8F5946354
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[23];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
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
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: D6QPFWZAQXDZJV2T4MC5OSAYSUUHRIFN
X-Message-ID-Hash: D6QPFWZAQXDZJV2T4MC5OSAYSUUHRIFN
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Leon Romanovsky <leonro@nvidia.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 5/9] types: move phys_vec definition to common header
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D6QPFWZAQXDZJV2T4MC5OSAYSUUHRIFN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Leon Romanovsky <leonro@nvidia.com>

Move the struct phys_vec definition from block/blk-mq-dma.c to
include/linux/types.h to make it available for use across the kernel.

The phys_vec structure represents a physical address range with a
length, which is used by the new physical address-based DMA mapping
API. This structure is already used by the block layer and will be
needed by upcoming VFIO patches for dma-buf operations.

Moving this definition to types.h provides a centralized location
for this common data structure and eliminates code duplication
across subsystems that need to work with physical address ranges.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 block/blk-mq-dma.c    | 5 -----
 include/linux/types.h | 5 +++++
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/block/blk-mq-dma.c b/block/blk-mq-dma.c
index badef1d925b2..38f5c34ca223 100644
--- a/block/blk-mq-dma.c
+++ b/block/blk-mq-dma.c
@@ -6,11 +6,6 @@
 #include <linux/blk-mq-dma.h>
 #include "blk.h"
 
-struct phys_vec {
-	phys_addr_t	paddr;
-	u32		len;
-};
-
 static bool __blk_map_iter_next(struct blk_map_iter *iter)
 {
 	if (iter->iter.bi_size)
diff --git a/include/linux/types.h b/include/linux/types.h
index 6dfdb8e8e4c3..2bc56681b2e6 100644
--- a/include/linux/types.h
+++ b/include/linux/types.h
@@ -170,6 +170,11 @@ typedef u64 phys_addr_t;
 typedef u32 phys_addr_t;
 #endif
 
+struct phys_vec {
+	phys_addr_t	paddr;
+	u32		len;
+};
+
 typedef phys_addr_t resource_size_t;
 
 /*
-- 
2.51.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
