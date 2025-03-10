Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 62707A5936F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 13:06:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1706C4474C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 12:06:37 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id D628743C89
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Mar 2025 12:06:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=BLAyd9RZ;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 2D4BCA458B2;
	Mon, 10 Mar 2025 12:00:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82263C4CEE5;
	Mon, 10 Mar 2025 12:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741608379;
	bh=KGA4bM77hVjjtDjQ2JV/Z0dy4gGhmqSc97R1mS2xb1M=;
	h=From:Subject:Date:To:Cc:From;
	b=BLAyd9RZHbM20BHFMAOkhZ1xa4HAbPJAgTsUShkU4nH4oDrB2KmmeYB+TR6U6cxMG
	 wBygh8fTKR/2TFFLZ8pe1DWUALnlAtu6yIyWC/nh0ppRJTiEZJ+kaUfOjb11zcmHQi
	 Wk6onFaab8DVOe544ZyTkqAe4HjkH46O4GTw6177WJXEsw+awOBXpu+koebZAHMYoR
	 0tNtAM/khWFx6/vOxn33GavtH/yiEtFDTs2Wtcu9ERwB7HlvErFPsbxPTcwEBn1ZWZ
	 KaJJzb5mTP6uUbgl9G+pXzX8omVq8hnmFE/ytak+/zCfJ6GHkz67siXkpCStPjDdWL
	 WxMWzUYLd5fTA==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 10 Mar 2025 13:06:06 +0100
Message-Id: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAK7VzmcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDYwNz3ZTc1Fzd5PSi/NKCYl1z47TUpOTUFANLC0sloJaCotS0zAqwcdF
 KQW7OSrG1tQBhlpIoYwAAAA==
X-Change-ID: 20250307-dmem-cgroups-73febced0989
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3616; i=mripard@kernel.org;
 h=from:subject:message-id; bh=KGA4bM77hVjjtDjQ2JV/Z0dy4gGhmqSc97R1mS2xb1M=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDOnnrm6I3B71zO3k9rdXbl4P0CvZEZRvHjKx739T6+WGh
 7uZq74bdpSyMIhxMciKKbLECJsviTs163UnG988mDmsTCBDGLg4BWAigkoM/zM5ImbmNqrYlUix
 LTn14GPJ3H2q8saW91X6ly6U3v7bczEjwwLhfe77V07sVM6Z9HWjtPdGbctV/8zYn2tYvBSK/cW
 +ihUA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D628743C89
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[147.75.193.91:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
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
Message-ID-Hash: Y2T6VGDZWVZYOKWXKTZKBV2WVMP6XVDB
X-Message-ID-Hash: Y2T6VGDZWVZYOKWXKTZKBV2WVMP6XVDB
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 00/12] dma: Enable dmem cgroup tracking
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y2T6VGDZWVZYOKWXKTZKBV2WVMP6XVDB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Here's preliminary work to enable dmem tracking for heavy users of DMA
allocations on behalf of userspace: v4l2, DRM, and dma-buf heaps.

It's not really meant for inclusion at the moment, because I really
don't like it that much, and would like to discuss solutions on how to
make it nicer.

In particular, the dma dmem region accessors don't feel that great to
me. It duplicates the logic to select the proper accessor in
dma_alloc_attrs(), and it looks fragile and potentially buggy to me.

One solution I tried is to do the accounting in dma_alloc_attrs()
directly, depending on a flag being set, similar to what __GFP_ACCOUNT
is doing.

It didn't work because dmem initialises a state pointer when charging an
allocation to a region, and expects that state pointer to be passed back
when uncharging. Since dma_alloc_attrs() returns a void pointer to the
allocated buffer, we need to put that state into a higher-level
structure, such as drm_gem_object, or dma_buf.

Since we can't share the region selection logic, we need to get the
region through some other mean. Another thing I consider was to return
the region as part of the allocated buffer (through struct page or
folio), but those are lost across the calls and dma_alloc_attrs() will
only get a void pointer. So that's not doable without some heavy
rework, if it's a good idea at all.

So yeah, I went for the dumbest possible solution with the accessors,
hoping you could suggest a much smarter idea :)

Thanks,
Maxime

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
Maxime Ripard (12):
      cma: Register dmem region for each cma region
      cma: Provide accessor to cma dmem region
      dma: coherent: Register dmem region for each coherent region
      dma: coherent: Provide accessor to dmem region
      dma: contiguous: Provide accessor to dmem region
      dma: direct: Provide accessor to dmem region
      dma: Create default dmem region for DMA allocations
      dma: Provide accessor to dmem region
      dma-buf: Clear cgroup accounting on release
      dma-buf: cma: Account for allocations in dmem cgroup
      drm/gem: Add cgroup memory accounting
      media: videobuf2: Track buffer allocations through the dmem cgroup

 drivers/dma-buf/dma-buf.c                          |  7 ++++
 drivers/dma-buf/heaps/cma_heap.c                   | 18 ++++++++--
 drivers/gpu/drm/drm_gem.c                          |  5 +++
 drivers/gpu/drm/drm_gem_dma_helper.c               |  6 ++++
 .../media/common/videobuf2/videobuf2-dma-contig.c  | 19 +++++++++++
 include/drm/drm_device.h                           |  1 +
 include/drm/drm_gem.h                              |  2 ++
 include/linux/cma.h                                |  9 +++++
 include/linux/dma-buf.h                            |  5 +++
 include/linux/dma-direct.h                         |  2 ++
 include/linux/dma-map-ops.h                        | 32 ++++++++++++++++++
 include/linux/dma-mapping.h                        | 11 ++++++
 kernel/dma/coherent.c                              | 26 +++++++++++++++
 kernel/dma/direct.c                                |  8 +++++
 kernel/dma/mapping.c                               | 39 ++++++++++++++++++++++
 mm/cma.c                                           | 21 +++++++++++-
 mm/cma.h                                           |  3 ++
 17 files changed, 211 insertions(+), 3 deletions(-)
---
base-commit: 55a2aa61ba59c138bd956afe0376ec412a7004cf
change-id: 20250307-dmem-cgroups-73febced0989

Best regards,
-- 
Maxime Ripard <mripard@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
