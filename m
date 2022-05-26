Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D78F537D58
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 May 2022 15:42:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 701D73EC28
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 May 2022 13:42:26 +0000 (UTC)
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by lists.linaro.org (Postfix) with ESMTPS id 35C093EF82
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 May 2022 23:54:37 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: dmitry.osipenko)
	with ESMTPSA id A34931F40887
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1653609276;
	bh=yzbiLRskhwUnKi8FuSZ/Li8as+mXkO3KrAAU56S2aFI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Af352/Ponwfde8alC1lYZz/ODMV/pdk2FiMi8cKYhruO+snZP/fcdv8DtPSyIEPkX
	 C1NG915yozGxnkojZrMnDlnj5C27toqp2ZJpeVSvcRYUxbcaEfjThosEKK85jBMN1w
	 fAsLdL6H+f2EflalAZPwIwhwEFKJUWsvUL9DLuriWb4HSVRiPVgVfZFSjE619sOqli
	 G25+CcmWgHfVtCbTMGKjjlIEQqZF9iTLv5sgnF2DB9ug0DcrXa9cuogSjOfVSTF2Pp
	 n7o6ra1QeQB/8XMHMuxYJ8lqET2Bk+X+agYoE3cglAqFCsOU1BNXL48zdmy4l+WeN2
	 NcZLjif3gYXfg==
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
Date: Fri, 27 May 2022 02:50:27 +0300
Message-Id: <20220526235040.678984-10-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
References: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LZBYHA2FUID5WZRJRVFTED5BBRRIFA7X
X-Message-ID-Hash: LZBYHA2FUID5WZRJRVFTED5BBRRIFA7X
X-Mailman-Approved-At: Mon, 30 May 2022 13:41:44 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org, Dmitry Osipenko <digetx@gmail.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, linux-tegra@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 09/22] drm/virtio: Use appropriate atomic state in virtio_gpu_plane_cleanup_fb()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LZBYHA2FUID5WZRJRVFTED5BBRRIFA7X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Make virtio_gpu_plane_cleanup_fb() to clean the state which DRM core
wants to clean up and not the current plane's state. Normally the older
atomic state is cleaned up, but the newer state could also be cleaned up
in case of aborted commits.

Cc: stable@vger.kernel.org
Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 drivers/gpu/drm/virtio/virtgpu_plane.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/virtio/virtgpu_plane.c b/drivers/gpu/drm/virtio/virtgpu_plane.c
index 6d3cc9e238a4..7148f3813d8b 100644
--- a/drivers/gpu/drm/virtio/virtgpu_plane.c
+++ b/drivers/gpu/drm/virtio/virtgpu_plane.c
@@ -266,14 +266,14 @@ static int virtio_gpu_plane_prepare_fb(struct drm_plane *plane,
 }
 
 static void virtio_gpu_plane_cleanup_fb(struct drm_plane *plane,
-					struct drm_plane_state *old_state)
+					struct drm_plane_state *state)
 {
 	struct virtio_gpu_framebuffer *vgfb;
 
-	if (!plane->state->fb)
+	if (!state->fb)
 		return;
 
-	vgfb = to_virtio_gpu_framebuffer(plane->state->fb);
+	vgfb = to_virtio_gpu_framebuffer(state->fb);
 	if (vgfb->fence) {
 		dma_fence_put(&vgfb->fence->f);
 		vgfb->fence = NULL;
-- 
2.35.3

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
