Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D757537CCA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 May 2022 15:41:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F9073F2C1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 May 2022 13:41:29 +0000 (UTC)
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by lists.linaro.org (Postfix) with ESMTPS id 028D33E80E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 May 2022 23:54:19 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: dmitry.osipenko)
	with ESMTPSA id 7343C1F4088D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1653609258;
	bh=5Mavp4oALIXdPN+ziHKcCdoikrrk4yQKrexW04s8O+A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GCNfDyHwva3jnk23dJ6QCm8KOFAi1gjRCYP9xvOs94W2p7deUvj44P68aLsjE/7u4
	 yfwcfvNQr4nmbq52kvoniOE8I9kqYDxW3E/zJsq0wztbyxUJoWfBM+sGz5sj1vP3H1
	 2vGOjrTvEf1oTtWzvBJYCeI30H+IFh8vs5cf8GYlVPtAuYsIX/4NOWwLNjQpHii/el
	 xpF91QL9vdycQFlnx5rTQyBbB8eKCgGWzed9YAwG2heRHBLbIhmlReZDCc5gSLh54+
	 qewVvEolbc/vSS/eRiv+h9jFugsNQsuaCSWUqlG3uE3J5QZULCTn9GPAlkp9ZR9mS8
	 1NxdCkIbiyuoQ==
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: David Airlie <airlied@linux.ie>,
	Gerd Hoffmann <kraxel@redhat.com>,
	Gurchetan Singh <gurchetansingh@chromium.org>,
	Chia-I Wu <olvaffe@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Gert Wollny <gert.wollny@collabora.com>,
	Gustavo Padovan <gustavo.padovan@collabora.com>,
	Daniel Stone <daniel@fooishbar.org>,
	Tomeu Vizoso <tomeu.vizoso@collabora.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Steven Price <steven.price@arm.com>,
	Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
	Rob Clark <robdclark@gmail.com>,
	Emil Velikov <emil.l.velikov@gmail.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Qiang Yu <yuq825@gmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"Pan, Xinhui" <Xinhui.Pan@amd.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Tomasz Figa <tfiga@chromium.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Alex Deucher <alexander.deucher@amd.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Fri, 27 May 2022 02:50:21 +0300
Message-Id: <20220526235040.678984-4-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
References: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JORKTIT646K3QDYZYF326G3Y2QJFJTTR
X-Message-ID-Hash: JORKTIT646K3QDYZYF326G3Y2QJFJTTR
X-Mailman-Approved-At: Mon, 30 May 2022 13:41:17 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org, Dmitry Osipenko <digetx@gmail.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, linux-tegra@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 03/22] drm/panfrost: Put mapping instead of shmem obj on panfrost_mmu_map_fault_addr() error
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JORKTIT646K3QDYZYF326G3Y2QJFJTTR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

When panfrost_mmu_map_fault_addr() fails, the BO's mapping should be
unreferenced and not the shmem object which backs the mapping.

Cc: stable@vger.kernel.org
Fixes: bdefca2d8dc0 ("drm/panfrost: Add the panfrost_gem_mapping concept")
Reviewed-by: Steven Price <steven.price@arm.com>
Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 drivers/gpu/drm/panfrost/panfrost_mmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_mmu.c b/drivers/gpu/drm/panfrost/panfrost_mmu.c
index d3f82b26a631..b285a8001b1d 100644
--- a/drivers/gpu/drm/panfrost/panfrost_mmu.c
+++ b/drivers/gpu/drm/panfrost/panfrost_mmu.c
@@ -518,7 +518,7 @@ static int panfrost_mmu_map_fault_addr(struct panfrost_device *pfdev, int as,
 err_pages:
 	drm_gem_shmem_put_pages(&bo->base);
 err_bo:
-	drm_gem_object_put(&bo->base.base);
+	panfrost_gem_mapping_put(bomapping);
 	return ret;
 }
 
-- 
2.35.3

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
