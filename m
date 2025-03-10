Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4255FA59393
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 13:08:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F8814474C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 12:08:24 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 11C684474F
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Mar 2025 12:06:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=mYulIu1z;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 81425A45AAF;
	Mon, 10 Mar 2025 12:01:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97C23C4CEF0;
	Mon, 10 Mar 2025 12:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741608398;
	bh=WpLKbe0/o+ohbkFGUscUlJWaO731RUjLbL+Wu9pvI1U=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=mYulIu1z9ZEz5XkKZ5ATnLojzzD1yagpF3IUFzymoYKt1M64RhIURBCwQz6UGL9jx
	 dk6SmnsmVNg7Ya2ZC8vhkX5HICDga1QdItNg2jKcZmRbM3Dvf6zEZ6FlXL88g4Pxhe
	 9hCpWzILTutINy+exPSa+BRv3t1IjGB1EMZy+SOiEXOEAm2vXSiaC0D7npv0EN+FS7
	 cyc49Rq6YCERbGqwe/I2kU3FX6yw62UbzY5H/PP2Smt77flePvWsu/3tOiRNiJzE+0
	 ASC5Nns3DUof7bktIcF4B6u3Z9uLN8X4wCyQfupoMhCvY37rSccXvJ5zGeZt/RfBI3
	 agHoPHP+GrWlA==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 10 Mar 2025 13:06:13 +0100
MIME-Version: 1.0
Message-Id: <20250310-dmem-cgroups-v1-7-2984c1bc9312@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2077; i=mripard@kernel.org;
 h=from:subject:message-id; bh=WpLKbe0/o+ohbkFGUscUlJWaO731RUjLbL+Wu9pvI1U=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDOnnrm6xM/5i39P7QfPABed6dt2fzyxeLHihdV/S9tw9B
 dnH5m/EOkpZGMS4GGTFFFlihM2XxJ2a9bqTjW8ezBxWJpAhDFycAjCRTeUM/73LJk6x+PrwzCb3
 CAWZ6DNLu2dcEL352d8z2iVgslmKngEjwxudlx/MBE50LEqRPi0r8LcjVG/iNCV3ptV2gT4ydX2
 m/AA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 11C684474F
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
Message-ID-Hash: MG2QDPDMR7UJYGNZMERALMRXULXJNE75
X-Message-ID-Hash: MG2QDPDMR7UJYGNZMERALMRXULXJNE75
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 07/12] dma: Create default dmem region for DMA allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MG2QDPDMR7UJYGNZMERALMRXULXJNE75/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Some DMA allocations are not going to be performed through dedicated
sub-allocators but using the default path. We need to create a default
region to track those as well.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 kernel/dma/mapping.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/kernel/dma/mapping.c b/kernel/dma/mapping.c
index cda127027e48a757f2d9fb04a49249d2b0238871..7bc3957512fd84e0bf3a89c210338be72457b5c9 100644
--- a/kernel/dma/mapping.c
+++ b/kernel/dma/mapping.c
@@ -5,10 +5,11 @@
  * Copyright (c) 2006  SUSE Linux Products GmbH
  * Copyright (c) 2006  Tejun Heo <teheo@suse.de>
  */
 #include <linux/memblock.h> /* for max_pfn */
 #include <linux/acpi.h>
+#include <linux/cgroup_dmem.h>
 #include <linux/dma-map-ops.h>
 #include <linux/export.h>
 #include <linux/gfp.h>
 #include <linux/iommu-dma.h>
 #include <linux/kmsan.h>
@@ -25,10 +26,14 @@
 	defined(CONFIG_ARCH_HAS_SYNC_DMA_FOR_CPU) || \
 	defined(CONFIG_ARCH_HAS_SYNC_DMA_FOR_CPU_ALL)
 bool dma_default_coherent = IS_ENABLED(CONFIG_ARCH_DMA_DEFAULT_COHERENT);
 #endif
 
+#if IS_ENABLED(CONFIG_CGROUP_DMEM)
+static struct dmem_cgroup_region *default_dmem_cgroup_region;
+#endif
+
 /*
  * Managed DMA API
  */
 struct dma_devres {
 	size_t		size;
@@ -587,10 +592,28 @@ u64 dma_get_required_mask(struct device *dev)
 	 */
 	return DMA_BIT_MASK(32);
 }
 EXPORT_SYMBOL_GPL(dma_get_required_mask);
 
+#if IS_ENABLED(CONFIG_CGROUP_DMEM)
+static int __init dma_init_dmem_cgroup(void)
+{
+	struct dmem_cgroup_region *region;
+
+	if (default_dmem_cgroup_region)
+		return -EBUSY;
+
+	region = dmem_cgroup_register_region(U64_MAX, "dma/global");
+	if (IS_ERR(region))
+		return PTR_ERR(region);
+
+	default_dmem_cgroup_region = region;
+	return 0;
+}
+core_initcall(dma_init_dmem_cgroup);
+#endif
+
 void *dma_alloc_attrs(struct device *dev, size_t size, dma_addr_t *dma_handle,
 		gfp_t flag, unsigned long attrs)
 {
 	const struct dma_map_ops *ops = get_dma_ops(dev);
 	void *cpu_addr;

-- 
2.48.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
