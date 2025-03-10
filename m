Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C0110A59399
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 13:08:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DAD7044740
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 12:08:38 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 2B4B044740
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Mar 2025 12:06:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=jYajrhN2;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B1B80A45AF0;
	Mon, 10 Mar 2025 12:01:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41403C4CEE5;
	Mon, 10 Mar 2025 12:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741608400;
	bh=2NdYbFXqIu49ZMyAqVsyt9MyeVTM3FWe9Y2AJpwIrVQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=jYajrhN2FOK3TJWdSOSKnA5oMw9VDNtRvtBCins3Bmp0nNI7ucd/hvhBSHpBuqXnB
	 DZxNW1+a2aHyxnK0A9Fhi801grDQHgLQbP9q6YSvN3TyjhiipsaoEXi4iVGNfQITLV
	 z/f4jxpJmEAmk5mySweb9jjh8hKeTrCnr+SrE/WTTFy9N0QcT8yeoI77qcDcyCyy2E
	 vRAFsOF5L80KPBdeA+eL3rszThdAdsNd0ShRgdkd4DQaIabptpC91PIrJzNzl6Pr0F
	 DOm2EIZIbujiQev4qPzWpV6fKuoappVRYnSB2WD0v78u+e0i5g1HBvmQMQ9KMJUWuR
	 zRSpjxAyz59eg==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 10 Mar 2025 13:06:14 +0100
MIME-Version: 1.0
Message-Id: <20250310-dmem-cgroups-v1-8-2984c1bc9312@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2370; i=mripard@kernel.org;
 h=from:subject:message-id; bh=2NdYbFXqIu49ZMyAqVsyt9MyeVTM3FWe9Y2AJpwIrVQ=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDOnnrm75peFiuvT/C+0FG88Ve/+4tJ7nMofXWwHp6uCju
 0uFJq8621HKwiDGxSArpsgSI2y+JO7UrNedbHzzYOawMoEMYeDiFICJHOhgZPi5Vj9p5r1FnYXK
 4WFVDrwO+/8m2DX4nU/0zHXaXl8cMIuR4VS1X+61qKWurquOzrrzfObMiw++peSIhMTvsi6Keiw
 jzAUA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2B4B044740
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
Message-ID-Hash: YEO562CUGZCJCF4F3JRTVJDBMO7OMCYI
X-Message-ID-Hash: YEO562CUGZCJCF4F3JRTVJDBMO7OMCYI
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 08/12] dma: Provide accessor to dmem region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YEO562CUGZCJCF4F3JRTVJDBMO7OMCYI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Consumers of the DMA API will have to know which DMA region their device
allocate from in order for them to charge the memory allocation in the
right one.

Let's provide an accessor for that region.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 include/linux/dma-mapping.h | 11 +++++++++++
 kernel/dma/mapping.c        | 16 ++++++++++++++++
 2 files changed, 27 insertions(+)

diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
index b79925b1c4333ce25e66c57d8ac1dae5c7b7fe37..75f5ca1d11a6297720742cea1359c7f28c23d741 100644
--- a/include/linux/dma-mapping.h
+++ b/include/linux/dma-mapping.h
@@ -351,10 +351,21 @@ static inline bool dma_need_sync(struct device *dev, dma_addr_t dma_addr)
 {
 	return false;
 }
 #endif /* !CONFIG_HAS_DMA || !CONFIG_DMA_NEED_SYNC */
 
+#if IS_ENABLED(CONFIG_HAS_DMA) && IS_ENABLED(CONFIG_CGROUP_DMEM)
+struct dmem_cgroup_region *
+dma_get_dmem_cgroup_region(struct device *dev);
+#else
+static inline struct dmem_cgroup_region *
+dma_get_dmem_cgroup_region(struct device *dev)
+{
+	return NULL;
+}
+#endif
+
 struct page *dma_alloc_pages(struct device *dev, size_t size,
 		dma_addr_t *dma_handle, enum dma_data_direction dir, gfp_t gfp);
 void dma_free_pages(struct device *dev, size_t size, struct page *page,
 		dma_addr_t dma_handle, enum dma_data_direction dir);
 int dma_mmap_pages(struct device *dev, struct vm_area_struct *vma,
diff --git a/kernel/dma/mapping.c b/kernel/dma/mapping.c
index 7bc3957512fd84e0bf3a89c210338be72457b5c9..e45d63700183acb03c779f969ae33803dcf5cf1b 100644
--- a/kernel/dma/mapping.c
+++ b/kernel/dma/mapping.c
@@ -608,10 +608,26 @@ static int __init dma_init_dmem_cgroup(void)
 
 	default_dmem_cgroup_region = region;
 	return 0;
 }
 core_initcall(dma_init_dmem_cgroup);
+
+struct dmem_cgroup_region *
+dma_get_dmem_cgroup_region(struct device *dev)
+{
+	struct dmem_cgroup_region *region;
+
+	region = dma_coherent_get_dmem_cgroup_region(dev);
+	if (region)
+		return region;
+
+	if (dma_alloc_direct(dev, get_dma_ops(dev)))
+		return dma_direct_get_dmem_cgroup_region(dev);
+
+	return default_dmem_cgroup_region;
+}
+EXPORT_SYMBOL(dma_get_dmem_cgroup_region);
 #endif
 
 void *dma_alloc_attrs(struct device *dev, size_t size, dma_addr_t *dma_handle,
 		gfp_t flag, unsigned long attrs)
 {

-- 
2.48.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
