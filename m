Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC3BA59386
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 13:07:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 579F244760
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 12:07:39 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id B73464474C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Mar 2025 12:06:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Fd8MwOI6;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 64EAB5C6122;
	Mon, 10 Mar 2025 12:04:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59344C4CEED;
	Mon, 10 Mar 2025 12:06:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741608389;
	bh=MHX69KTowxgUBaIq2U0nJk1Dh2Qpf931EJ3Gm20lDzU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Fd8MwOI6Gr4g8BxyrBDoPe5CkR6LxWSS86cWJnaVKQOIKhwpyInBkAsVLEqZkg+Wb
	 92kysW/uU1DvJxhXvHDYryxQcl3F3RW8iCg7E3r49YcFoC0joeuTsIlwEf2tyc1CNQ
	 bm5BMdZG6Wdemat7usQFs9xfPoIcoavti+dtm/KPA+l8DVWGohgUkhECakNgp7YyGk
	 skf2qKyhtWb0v7FHzEEToVkb+KYzmvqOptZkOO/efesCe/PhU/vWxW3fznUnDzM+TC
	 4fJfyO59HAxcIcLLolGaqV65cB2wXS0MRBKmBdOFpi+X98F+pVQCGw+kCDg250k8t5
	 HlmHQEHBVHCbQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 10 Mar 2025 13:06:10 +0100
MIME-Version: 1.0
Message-Id: <20250310-dmem-cgroups-v1-4-2984c1bc9312@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2413; i=mripard@kernel.org;
 h=from:subject:message-id; bh=MHX69KTowxgUBaIq2U0nJk1Dh2Qpf931EJ3Gm20lDzU=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDOnnrm56E/7yxj4HNfHYzFPqWVsnsExuXHlz2uHEp0wf5
 4tcjNRa11HCwiDGxSArpsgSI2y+JO7UrNedbHzzYOawMoEMYeDiFICJCF9k+B899/qseSLBUSsv
 u3VNuPdaYHmEpcNpV5fGg7++GJWmq6sx/LgUnqF8xVvbKyHQrUnf1ZLllVSE0cWvT9SnbvsRnOj
 NCAA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B73464474C
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[139.178.84.217:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217:c];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[renesas];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linux-foundation.org,samsung.com,arm.com,linaro.org,amd.com,collabora.com,google.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,chromium.org,kernel.org];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
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
Message-ID-Hash: DNE775XJJ7NM4VGF5HH3ZHWQJSTAER7Z
X-Message-ID-Hash: DNE775XJJ7NM4VGF5HH3ZHWQJSTAER7Z
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 04/12] dma: coherent: Provide accessor to dmem region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DNE775XJJ7NM4VGF5HH3ZHWQJSTAER7Z/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Consumers of the coherent DMA API will have to know which coherent
region their device allocate from in order for them to charge the memory
allocation in the right one.

Let's provide an accessor for that region.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 include/linux/dma-map-ops.h | 11 +++++++++++
 kernel/dma/coherent.c       | 14 ++++++++++++++
 2 files changed, 25 insertions(+)

diff --git a/include/linux/dma-map-ops.h b/include/linux/dma-map-ops.h
index e172522cd93651594607e16461fac56e4d67cbce..a2c10ed186efb6e08f64df0954b4d389589b6e35 100644
--- a/include/linux/dma-map-ops.h
+++ b/include/linux/dma-map-ops.h
@@ -199,10 +199,21 @@ static inline int dma_mmap_from_global_coherent(struct vm_area_struct *vma,
 {
 	return 0;
 }
 #endif /* CONFIG_DMA_GLOBAL_POOL */
 
+#if IS_ENABLED(CONFIG_CGROUP_DMEM) && IS_ENABLED(CONFIG_DMA_DECLARE_COHERENT)
+struct dmem_cgroup_region *
+dma_coherent_get_dmem_cgroup_region(struct device *dev);
+#else /* CONFIG_CGROUP_DMEM && CONFIG_DMA_DECLARE_COHERENT */
+static inline struct dmem_cgroup_region *
+dma_coherent_get_dmem_cgroup_region(struct device *dev)
+{
+	return NULL;
+}
+#endif /* CONFIG_CGROUP_DMEM && CONFIG_DMA_DECLARE_COHERENT */
+
 int dma_common_get_sgtable(struct device *dev, struct sg_table *sgt,
 		void *cpu_addr, dma_addr_t dma_addr, size_t size,
 		unsigned long attrs);
 int dma_common_mmap(struct device *dev, struct vm_area_struct *vma,
 		void *cpu_addr, dma_addr_t dma_addr, size_t size,
diff --git a/kernel/dma/coherent.c b/kernel/dma/coherent.c
index 2a2d515e43acbdef19c14d8840ed90e48e7ebb43..74c5ff5105110487770c1b73812eefe8b3d7eb3c 100644
--- a/kernel/dma/coherent.c
+++ b/kernel/dma/coherent.c
@@ -28,10 +28,24 @@ static inline struct dma_coherent_mem *dev_get_coherent_memory(struct device *de
 	if (dev && dev->dma_mem)
 		return dev->dma_mem;
 	return NULL;
 }
 
+#if IS_ENABLED(CONFIG_CGROUP_DMEM)
+struct dmem_cgroup_region *
+dma_coherent_get_dmem_cgroup_region(struct device *dev)
+{
+	struct dma_coherent_mem *mem;
+
+	mem = dev_get_coherent_memory(dev);
+	if (!mem)
+		return NULL;
+
+	return mem->dmem_cgroup_region;
+}
+#endif
+
 static inline dma_addr_t dma_get_device_base(struct device *dev,
 					     struct dma_coherent_mem * mem)
 {
 	if (mem->use_dev_dma_pfn_offset)
 		return phys_to_dma(dev, PFN_PHYS(mem->pfn_base));

-- 
2.48.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
