Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBAAA59381
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 13:07:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE51C44787
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 12:07:21 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 7F14144A00
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Mar 2025 12:06:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=h1Zf+ZM4;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 173FFA45AB9;
	Mon, 10 Mar 2025 12:00:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94331C4CEEE;
	Mon, 10 Mar 2025 12:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741608387;
	bh=/UAL0ad49jcngOkD0mAWDzGa0d7QjTxM4lCTP33f5+4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=h1Zf+ZM4Dqtwu1U4J20iOEAVrrphW+yhBnDr5d+g3qRKv+nXi4+U4z+zGiscHqgIJ
	 jDUbDDfaU0xN3s3IiJ5iYy/hVOmEzoC1iGGqEHNpCp8k0y3nWsV/3ZM9vHvXRwVPo1
	 2fPoTnlS3G3ZT7vefqxhxsjm0yC480gMCoBAP0CQzdHflDKowuMalbQpcBBFbJZR64
	 fHQHlaX7dk9rale95FWC1Laqog0FtGsZ3ujKmR1n5j79GfIaWO7FkejT1/Y5sUk/61
	 WwaKkKvQBPqb1WZjg6GrWJF4c5AgBt/pcVmc1nSiiEMRyE4HaNlngnYtHlQ3A2gPmA
	 h8d4CfRauzyXQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 10 Mar 2025 13:06:09 +0100
MIME-Version: 1.0
Message-Id: <20250310-dmem-cgroups-v1-3-2984c1bc9312@kernel.org>
References: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
In-Reply-To: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Tomasz Figa <tfiga@chromium.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1940; i=mripard@kernel.org;
 h=from:subject:message-id; bh=/UAL0ad49jcngOkD0mAWDzGa0d7QjTxM4lCTP33f5+4=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDOnnrm7clPp7wa7PzbMebqtakmhdV8Nk65B7SrPty7XjK
 546TVoQ31HKwiDGxSArpsgSI2y+JO7UrNedbHzzYOawMoEMYeDiFICJ6D9lZLjvfGnBE4fJ51rT
 XGQSXjNW8Zds/rg3XKTr0/Zcla3x38sZ/nsuda/5n79f3Cd/QfOtqvsy1hW2Zwvk/Y8uXZIpX33
 FnAkA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7F14144A00
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[147.75.193.91:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91:c];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[renesas];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linux-foundation.org,samsung.com,arm.com,linaro.org,amd.com,collabora.com,google.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,chromium.org,kernel.org];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[xs4all.nl,ideasonboard.com,kvack.org,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,lists.linaro.org,kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: HWNRZYE3BUOKCFOBWIVIXV5O7VTQNVQB
X-Message-ID-Hash: HWNRZYE3BUOKCFOBWIVIXV5O7VTQNVQB
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 03/12] dma: coherent: Register dmem region for each coherent region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HWNRZYE3BUOKCFOBWIVIXV5O7VTQNVQB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

There can be several coherent memory region in the system, and all of
them might end up being used to allocate a DMA buffer.

Let's register a dmem region for each of them to make sure we can track
those allocations.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 kernel/dma/coherent.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/kernel/dma/coherent.c b/kernel/dma/coherent.c
index 3b2bdca9f1d4b0274bf4874892b94730cd05c5df..2a2d515e43acbdef19c14d8840ed90e48e7ebb43 100644
--- a/kernel/dma/coherent.c
+++ b/kernel/dma/coherent.c
@@ -5,10 +5,11 @@
  */
 #include <linux/io.h>
 #include <linux/slab.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
+#include <linux/cgroup_dmem.h>
 #include <linux/dma-direct.h>
 #include <linux/dma-map-ops.h>
 
 struct dma_coherent_mem {
 	void		*virt_base;
@@ -16,10 +17,12 @@ struct dma_coherent_mem {
 	unsigned long	pfn_base;
 	int		size;
 	unsigned long	*bitmap;
 	spinlock_t	spinlock;
 	bool		use_dev_dma_pfn_offset;
+
+	struct dmem_cgroup_region *dmem_cgroup_region;
 };
 
 static inline struct dma_coherent_mem *dev_get_coherent_memory(struct device *dev)
 {
 	if (dev && dev->dma_mem)
@@ -335,16 +338,25 @@ static phys_addr_t dma_reserved_default_memory_size __initdata;
 #endif
 
 static int rmem_dma_device_init(struct reserved_mem *rmem, struct device *dev)
 {
 	if (!rmem->priv) {
+		struct dmem_cgroup_region *region;
 		struct dma_coherent_mem *mem;
 
 		mem = dma_init_coherent_memory(rmem->base, rmem->base,
 					       rmem->size, true);
 		if (IS_ERR(mem))
 			return PTR_ERR(mem);
+
+		region = dmem_cgroup_register_region(rmem->size,
+						     "dma/coherent/%s",
+						     rmem->name);
+		if (IS_ERR(region))
+			return PTR_ERR(region);
+
+		mem->dmem_cgroup_region = region;
 		rmem->priv = mem;
 	}
 	dma_assign_coherent_memory(dev, rmem->priv);
 	return 0;
 }

-- 
2.48.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
