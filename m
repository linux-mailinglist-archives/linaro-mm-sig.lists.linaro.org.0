Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAjbIxVhBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:31:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 243305324FE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:31:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31C1D401DA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:31:32 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	by lists.linaro.org (Postfix) with ESMTPS id 4BB113F75A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 02:07:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=QavhM2Ar;
	spf=pass (lists.linaro.org: domain of kartikey406@gmail.com designates 209.85.210.176 as permitted sender) smtp.mailfrom=kartikey406@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-8353c9f24d2so2595940b3a.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 19:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778551652; x=1779156452; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/QiKU/+m/deMkZnUgiMPX7icRFO8sAPHl3F/zxCh9ig=;
        b=QavhM2Ar9bQ9kPOH6dP1PcY2XP3jcwBEligfW6CuCnQwn7RqKOPlvfs9Kf9mftk2qw
         6meGSoSsNWlvHd3fQ/AgbtKN5ogEcYZLD78axr5RuaUiQIj7JC4sHGlR4xKquUZAD+xH
         92IJFzEQ8zfmfqSHpDU4JZ47slJqBPVHbKP/1IG+iRx+i0K+OvqvovZqUFEDQAdNWoFW
         fiqFt8PlCvIOVOCQWNYNN4nM8w0tZ6oW/m/YvG4psjqRs2KUjoSaNp43eEJkIHsoNWy2
         TWzfoaiqjYushWQghY15R5fNKeRGHGbcSoXIiP031NvH/CcIh6NxLd8uf3tlk/54kp1p
         L7Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778551652; x=1779156452;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/QiKU/+m/deMkZnUgiMPX7icRFO8sAPHl3F/zxCh9ig=;
        b=rC9qzkt5zDpcfFD4BgvmKKrRs39iRmZ232Mw8+vxDJ1YL8J5Xb/btMwr+PPwmyytJ2
         +Y8JtKVGPggHKgu41D33YtAVHnPWHntyHk/Xaz3VHpMsbbBV8lpZ1mgKDbJLy0Fk+t4A
         orKie34mXxUz0iFGMwu0Qfd2CYbtxZYBHU/a9F5FKkpiLXLCFPTV9ZtvqQKMFqESyukL
         +YTQO+DfQrvH+WNOsI6icF6DpqFKJKYU7FIpyprlTOCvPAM8wQluEdHbPONGowjGj1cp
         7V8iZTQL99LKIrzoO28gjfimRvU49pPclw/yQrrHtXcLzUGJeUXt5n1augFYr7X6/UWc
         OV0A==
X-Forwarded-Encrypted: i=1; AFNElJ8lvTDFl9114xQIRA0CF1/3xsiem0Ky4y0W9mogjNLht+0pCADd0APHRSnWy30thLPUQooSTlSOjHI8Ywia@lists.linaro.org
X-Gm-Message-State: AOJu0YyXfBycY4uSvleR67GNpffAuUONSHSbXHeS93qtgD+iGdUJglyv
	3fPl25rIkNRGaBA22mR/aEDcbwOlpqkqRX6oRbS+STC2tilieDcoCu5n
X-Gm-Gg: Acq92OFJXJvqyJCjeebW5eJoCRGOdXk50ZhC+E78wsWdZ40sLXuLOAnEsM3xV8MUUNj
	QCYKuEdMSFlamFDE4RKsZ2UAejpGQ+tq3iGr90+K6Vui8MacSdUR3dBy1+02i89h7f+0/cxW8+d
	mhO1qD0zZ0OiFcizfFK/RScPeswvY1+sowUpF9f4+DC42jF6cA7Fy/P5k71CXeC5kij9JvXsoQ/
	6Ugn5fqtHdt6qEFByUrX2TRbb+hLIvs/VsL/OtSAeYcdg31ZRyPshmK15Djv7StNbt1sW1iEb8z
	pudf+VKQDAY7w1P1lnAz4TtFOUZFpgnHkO40xq2ypv7jVIKsccGZi4jaEYbCmUHAAKnFcUWd72k
	qrqsZoYXa49nfkxAq8QFaZ5w4W4JihPE0yz0YSgfHCehX9He5zUdn9IzN+MAC+spVjtf8mRvvCu
	obChEXDfZ+3LMpAOMNweStzLXfUsLCw+YUvjyoNGiYfs0I2yRj3GoJKcXUSeUYc0NtMR6OHtdmA
	lvCA3c=
X-Received: by 2002:a05:6a00:ad8a:b0:82a:17b8:1474 with SMTP id d2e1a72fcca58-83eeb9f0e34mr977275b3a.1.1778551652212;
        Mon, 11 May 2026 19:07:32 -0700 (PDT)
Received: from deepanshu-kernel-hacker.. ([2405:201:682f:383f:b0ab:8219:937d:e207])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-83967dbf7d2sm28966425b3a.49.2026.05.11.19.07.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 19:07:31 -0700 (PDT)
From: Deepanshu Kartikey <kartikey406@gmail.com>
To: airlied@redhat.com,
	kraxel@redhat.com,
	dmitry.osipenko@collabora.com,
	gurchetansingh@chromium.org,
	olvaffe@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	simona@ffwll.ch,
	sumit.semwal@linaro.org,
	christian.koenig@amd.com
Date: Tue, 12 May 2026 07:37:18 +0530
Message-ID: <20260512020718.108044-1-kartikey406@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: kartikey406@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YW64Z227BOGN34X6ONDMGSKTGZXNQDB2
X-Message-ID-Hash: YW64Z227BOGN34X6ONDMGSKTGZXNQDB2
X-Mailman-Approved-At: Wed, 13 May 2026 11:25:10 +0000
CC: dri-devel@lists.freedesktop.org, virtualization@lists.linux.dev, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Deepanshu Kartikey <kartikey406@gmail.com>, syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] drm/virtio: move cursor resv lock acquisition to prepare_fb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YW64Z227BOGN34X6ONDMGSKTGZXNQDB2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 243305324FE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[33];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,amd.com];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,lists.linux.dev,vger.kernel.org,lists.linaro.org,gmail.com,syzkaller.appspotmail.com];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.907];
	FROM_NEQ_ENVFROM(0.00)[kartikey406@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig,72bd3dd3a5d5f39a0271];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,appspotmail.com:email]
X-Rspamd-Action: no action

virtio_gpu_cursor_plane_update() allocates a virtio_gpu_object_array,
locks its dma_resv, and queues a fenced transfer to the host. The
lock acquisition can fail in two ways:

  - dma_resv_lock_interruptible() returns -EINTR when a signal is
    delivered while waiting for the reservation lock.
  - dma_resv_reserve_fences() returns -ENOMEM if it fails to allocate
    a fence slot; in this case lock_resv unlocks before returning.

The return value was ignored, so the cursor path could proceed with
the resv lock not held. The queue path then walks the object array
and calls dma_resv_add_fence(), which requires the lock; with lockdep
enabled this trips dma_resv_assert_held():

  WARNING: drivers/dma-buf/dma-resv.c:296 at dma_resv_add_fence+0x71e/0x840
  Call Trace:
   virtio_gpu_array_add_fence
   virtio_gpu_queue_ctrl_sgs
   virtio_gpu_queue_fenced_ctrl_buffer
   virtio_gpu_cursor_plane_update
   drm_atomic_helper_commit_planes
   drm_atomic_helper_commit_tail
   commit_tail
   drm_atomic_helper_commit
   drm_atomic_commit
   drm_atomic_helper_update_plane
   __setplane_atomic
   drm_mode_cursor_universal
   drm_mode_cursor_common
   drm_mode_cursor_ioctl
   drm_ioctl
   __x64_sys_ioctl

Beyond the WARN, mutating the dma_resv fence list without the lock
races with concurrent readers/writers and can corrupt the list.

The DRM atomic helpers do not allow .atomic_update to fail: by the
time it runs, the commit has been signed off to userspace and there
is no clean rollback path. Move the fallible work -- objs allocation,
dma_resv locking, and fence slot reservation -- into
virtio_gpu_plane_prepare_fb, which is the designated callback for
resource acquisition and may return errors that the framework
handles by rolling back the commit. Stash the prepared object array
on virtio_gpu_plane_state so the update step can consume it.

Make virtio_gpu_plane_cleanup_fb release the objs if the commit was
rolled back before update ran (i.e., objs not consumed). The queue
path already unlocks the resv after attaching the fence (vq.c:411)
and frees the array via put_free_delayed after host completion
(vq.c:271), so the update step only needs to clear vgplane_st->objs
to transfer ownership.

Simplify virtio_gpu_cursor_plane_update to a no-fail queue submission
that hands the prepared, locked objs to the queue path.

The bug was reported by syzbot, triggered via fault injection
(fail_nth) on the DRM_IOCTL_MODE_CURSOR path, which forces the
-ENOMEM branch in dma_resv_reserve_fences().

Reported-by: syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=72bd3dd3a5d5f39a0271
Fixes: 5cfd31c5b3a3 ("drm/virtio: fix virtio_gpu_cursor_plane_update().")
Cc: stable@vger.kernel.org
Link: https://lore.kernel.org/all/20260510053025.100224-1-kartikey406@gmail.com/T/ [v1]
Signed-off-by: Deepanshu Kartikey <kartikey406@gmail.com>
---
v2: Move resv lock acquisition from .atomic_update (which must not
    fail) to .prepare_fb (which may), per maintainer review of v1.
    The previous approach of silently skipping the cursor update on
    lock failure violated the atomic-commit contract with userspace.
---
 drivers/gpu/drm/virtio/virtgpu_drv.h   |  1 +
 drivers/gpu/drm/virtio/virtgpu_plane.c | 38 ++++++++++++++++++++------
 2 files changed, 30 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/virtio/virtgpu_drv.h b/drivers/gpu/drm/virtio/virtgpu_drv.h
index f17660a71a3e..e51f959dce46 100644
--- a/drivers/gpu/drm/virtio/virtgpu_drv.h
+++ b/drivers/gpu/drm/virtio/virtgpu_drv.h
@@ -198,6 +198,7 @@ struct virtio_gpu_framebuffer {
 struct virtio_gpu_plane_state {
 	struct drm_plane_state base;
 	struct virtio_gpu_fence *fence;
+	struct virtio_gpu_object_array *objs;
 };
 #define to_virtio_gpu_plane_state(x) \
 	container_of(x, struct virtio_gpu_plane_state, base)
diff --git a/drivers/gpu/drm/virtio/virtgpu_plane.c b/drivers/gpu/drm/virtio/virtgpu_plane.c
index a126d1b25f46..b0511ace89e6 100644
--- a/drivers/gpu/drm/virtio/virtgpu_plane.c
+++ b/drivers/gpu/drm/virtio/virtgpu_plane.c
@@ -381,6 +381,23 @@ static int virtio_gpu_plane_prepare_fb(struct drm_plane *plane,
 			goto err_fence;
 	}
 
+	if (plane->type == DRM_PLANE_TYPE_CURSOR && bo->dumb) {
+		struct virtio_gpu_object_array *objs;
+
+		objs = virtio_gpu_array_alloc(1);
+		if (!objs) {
+			ret = -ENOMEM;
+			goto err_fence;
+		}
+		virtio_gpu_array_add_obj(objs, vgfb->base.obj[0]);
+		ret = virtio_gpu_array_lock_resv(objs);
+		if (ret) {
+			virtio_gpu_array_put_free(objs);
+			goto err_fence;
+		}
+		vgplane_st->objs = objs;
+	}
+
 	return 0;
 
 err_fence:
@@ -417,6 +434,12 @@ static void virtio_gpu_plane_cleanup_fb(struct drm_plane *plane,
 		vgplane_st->fence = NULL;
 	}
 
+	if (vgplane_st->objs) {
+		virtio_gpu_array_unlock_resv(vgplane_st->objs);
+		virtio_gpu_array_put_free(vgplane_st->objs);
+		vgplane_st->objs = NULL;
+	}
+
 	obj = state->fb->obj[0];
 	if (drm_gem_is_imported(obj))
 		virtio_gpu_cleanup_imported_obj(obj);
@@ -452,21 +475,18 @@ static void virtio_gpu_cursor_plane_update(struct drm_plane *plane,
 	}
 
 	if (bo && bo->dumb && (plane->state->fb != old_state->fb)) {
-		/* new cursor -- update & wait */
-		struct virtio_gpu_object_array *objs;
-
-		objs = virtio_gpu_array_alloc(1);
-		if (!objs)
-			return;
-		virtio_gpu_array_add_obj(objs, vgfb->base.obj[0]);
-		virtio_gpu_array_lock_resv(objs);
+		/* objs and fence were prepared in virtio_gpu_plane_prepare_fb;
+		 * the resv is already locked. The queue path takes ownership
+		 * of objs and unlocks the resv after attaching the fence.
+		 */
 		virtio_gpu_cmd_transfer_to_host_2d
 			(vgdev, 0,
 			 plane->state->crtc_w,
 			 plane->state->crtc_h,
-			 0, 0, objs, vgplane_st->fence);
+			 0, 0, vgplane_st->objs, vgplane_st->fence);
 		virtio_gpu_notify(vgdev);
 		dma_fence_wait(&vgplane_st->fence->f, true);
+		vgplane_st->objs = NULL;
 	}
 
 	if (plane->state->fb != old_state->fb) {
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
