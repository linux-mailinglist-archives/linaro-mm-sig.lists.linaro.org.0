Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E861537DDF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 May 2022 15:43:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C072E3F2D2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 May 2022 13:43:26 +0000 (UTC)
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by lists.linaro.org (Postfix) with ESMTPS id 0CFE53EF82
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 May 2022 23:55:20 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: dmitry.osipenko)
	with ESMTPSA id 73A211F459FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1653609319;
	bh=e7WawsCreQZA6oq9juG2n98bdBThV2TqnbrdmbGR/iM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZDjpXRH1m6FKUcq+BXCWaqIO/5RtOY9SMw67juPPt67p9qIENyjxZio3RG2eXtbIU
	 EFxCTrqqkl2e/2bubVhWZ7DGgqpjrW4mi9eXtLce1ntgPuqWZslCqVdudNCN7C8SgX
	 nkxR08+/Du4jh2tfvHMAuzjd1RKrErCYTuBd96vgRxyegNdSegbJmT54xlrS8kkj70
	 KDeTWHTi2CTu3cS6m+kc/AQaRyCFLKFZJYXeSOe1zhEnTdVzXqlHBNynf7tG6lANHw
	 pYOb1K4aWEKDCzYQUNSSd06+CPx3hsEc4BhNLfjm4BSrZh+o+b7OVw+ICTgQ1bLHKn
	 wDHwAPmaNjcBA==
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
Date: Fri, 27 May 2022 02:50:39 +0300
Message-Id: <20220526235040.678984-22-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
References: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IKDNY7B6WY7BXCTXN3XEMKHUFGBIEI6G
X-Message-ID-Hash: IKDNY7B6WY7BXCTXN3XEMKHUFGBIEI6G
X-Mailman-Approved-At: Mon, 30 May 2022 13:42:30 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org, Dmitry Osipenko <digetx@gmail.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, linux-tegra@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 21/22] drm/virtio: Return proper error codes instead of -1
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IKDNY7B6WY7BXCTXN3XEMKHUFGBIEI6G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Don't return -1 in error cases, return proper error code. The returned
error codes propagate to error messages and to userspace and it's always
good to have a meaningful error number for debugging purposes.

Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 drivers/gpu/drm/virtio/virtgpu_vq.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/virtio/virtgpu_vq.c b/drivers/gpu/drm/virtio/virtgpu_vq.c
index 2a04dad1ae89..40402367d593 100644
--- a/drivers/gpu/drm/virtio/virtgpu_vq.c
+++ b/drivers/gpu/drm/virtio/virtgpu_vq.c
@@ -320,7 +320,7 @@ static int virtio_gpu_queue_ctrl_sgs(struct virtio_gpu_device *vgdev,
 		if (fence && vbuf->objs)
 			virtio_gpu_array_unlock_resv(vbuf->objs);
 		free_vbuf(vgdev, vbuf);
-		return -1;
+		return -ENODEV;
 	}
 
 	if (vgdev->has_indirect)
@@ -384,7 +384,7 @@ static int virtio_gpu_queue_fenced_ctrl_buffer(struct virtio_gpu_device *vgdev,
 			if (!sgt) {
 				if (fence && vbuf->objs)
 					virtio_gpu_array_unlock_resv(vbuf->objs);
-				return -1;
+				return -ENOMEM;
 			}
 
 			elemcnt += sg_ents;
@@ -750,7 +750,7 @@ static int virtio_get_edid_block(void *data, u8 *buf,
 	size_t start = block * EDID_LENGTH;
 
 	if (start + len > le32_to_cpu(resp->size))
-		return -1;
+		return -EINVAL;
 	memcpy(buf, resp->edid + start, len);
 	return 0;
 }
-- 
2.35.3

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
