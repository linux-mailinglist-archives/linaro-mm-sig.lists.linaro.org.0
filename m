Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGvTIhfcBmoxogIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 10:40:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D2E54B8D5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 10:40:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3C544043C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 08:40:53 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	by lists.linaro.org (Postfix) with ESMTPS id E2C523F7FD
	for <linaro-mm-sig@lists.linaro.org>; Fri, 15 May 2026 08:40:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=jjgGfopJ;
	spf=pass (lists.linaro.org: domain of kartikey406@gmail.com designates 209.85.216.51 as permitted sender) smtp.mailfrom=kartikey406@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-369576666d5so237655a91.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 15 May 2026 01:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778834442; x=1779439242; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BcNd3ITFWzMqmrli28Wy6nyBCrJ36rIyJ26nJuqd1AM=;
        b=jjgGfopJS216QUChIrb9vhWWVvABI2dJW9tyznA0gFs1zizvqnhxZv6QXP4+cR4uE4
         2A4FMKorjKuttjdYa+UGeMlxkWFBT3X79Tqocov/aclG++VUpNm0f4kTmfew1DUqtMQ8
         2Zahn4vx/tT33NF7RGt2cAV1or5r1DRFe22QYYsMqPMlEYLkegP0tyk4BNdFJKsg9+RD
         +ipb+kUiAat9a10dAEdf9sDiwaPPVx1CHs6pS9QALeBJLwH7K1ZwmhPnlFkHR9c0cWT4
         n7xrNTBUvC5NTnZ5mmoFQzkzHJZ7J8WPK+XZP3eEWC2p87v1Yw/RxAg6/iN5/O3z/EL2
         5Naw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778834442; x=1779439242;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BcNd3ITFWzMqmrli28Wy6nyBCrJ36rIyJ26nJuqd1AM=;
        b=OUdXwcuXpIyXaHEdbx5fwL0bjbRqHYxBMH+/8Sdlbz+UvcejQ7ukJoe0r5kM6Zv5KI
         Vq2zksoEMosVQjhJITfoAH9s3JM5x08RfEyo0vajmvBCAPrVzD4MDFBUTZ2slbyyF2Uh
         X906FWc8OFNsIhBUCFvVl7CdK1GafAHJS1T1vssCoZD6ggRAX16ii78QlHVHA1FkrNAW
         w1hGKf/PO7r83cm8LSiAy0COuhiuI9tWkZRCqUyjZCikJwbCPnBlFbPT4OpEOT4sGnGE
         4/ZreglX7R8U3xF3DcnKpgr2VCXRdFzxrS2rPee0zmwWJzpUuzZxE9gIVtrWidOJbBgV
         30hg==
X-Forwarded-Encrypted: i=1; AFNElJ+x3vvXcp6oLv9xXQNGYkvJKsnGfAVbGKi2abNpZ9dtvWxXvJpHj+vfPMCC4xIVAiJG3ERqs8jDDzTSDS7N@lists.linaro.org
X-Gm-Message-State: AOJu0YyAtv99U76L38/gnfyKvjvPGhqSvL9ii8eF6ydAcIfGXk4iSG2J
	Rok6pFuOPHIo+EcoXRJiClbN7pElLWLbmDUK3RQpELFGyLN/CI46oTJt
X-Gm-Gg: Acq92OHPdR+aLrklnU8zwuw2fjC6FF40YgfWypHqjEBL8bRVItAlCIizhmKb0gj+N4S
	M3myp0/OHUCYe35zmM6U6207tBQnMpJfIKUr2uCj0FnLONvvyEPmM5tsQymKGQ7F3C9s6nkhz1S
	ET433r6YtL2icHQNNJyfUF9xaNy1ldzwPwoL0s8khBeQ9WOTNyU8kDcEQvE1f0wjGW5KedgHbpl
	d3pAmdtWF4/Bwqz+gyRV+sRUVnUjx6Ul2RMSdWKAopJboRLkQ7zv7YnIoSTlmxHOKlunstTyweH
	c1Xheq1Z9W0r5eokApgg6ZwsXqZKYHgOka3QwD/VAPMo/RulyH1X6QpNOHiyHZZ+fcH9ITsNd4J
	y2lqH6aujIyYdTKTj0osxTG5Myu4Ce71YNqlZbxcMvX9YGlmEYkX+kO0kLKpYSgpnXRtyNuAwUj
	71p/JzX2m4LYulS+AsAyyxn7FpyfHkE1gL69NTE0nE/bH2OP7HFceRO4INForKMQpA09wv0tZDA
	ij5vMY=
X-Received: by 2002:a17:90b:134b:b0:368:78da:803 with SMTP id 98e67ed59e1d1-36951a01748mr3017625a91.12.1778834441878;
        Fri, 15 May 2026 01:40:41 -0700 (PDT)
Received: from deepanshu-kernel-hacker.. ([2405:201:682f:383f:ad23:b1a5:6537:1208])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36956535742sm637091a91.3.2026.05.15.01.40.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 01:40:41 -0700 (PDT)
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
Date: Fri, 15 May 2026 14:10:30 +0530
Message-ID: <20260515084030.21986-1-kartikey406@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spamd-Bar: --
Message-ID-Hash: IDHD4AHLUKXC2RWYGE3AOD2XX3ARXK5W
X-Message-ID-Hash: IDHD4AHLUKXC2RWYGE3AOD2XX3ARXK5W
X-MailFrom: kartikey406@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, virtualization@lists.linux.dev, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Deepanshu Kartikey <kartikey406@gmail.com>, syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3] drm/virtio: use uninterruptible resv lock for plane updates
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IDHD4AHLUKXC2RWYGE3AOD2XX3ARXK5W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 14D2E54B8D5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,amd.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,lists.linux.dev,vger.kernel.org,lists.linaro.org,gmail.com,syzkaller.appspotmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	NEURAL_HAM(-0.00)[-0.933];
	FROM_NEQ_ENVFROM(0.00)[kartikey406@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,72bd3dd3a5d5f39a0271];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,appspotmail.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

virtio_gpu_cursor_plane_update() and virtio_gpu_resource_flush() lock
the framebuffer BO's dma_resv via virtio_gpu_array_lock_resv() and
ignore its return value. The function can fail with -EINTR from
dma_resv_lock_interruptible() (signal during lock wait) or with
-ENOMEM from dma_resv_reserve_fences() (fence slot allocation),
leaving the resv lock not held. The queue path then walks the object
array and calls dma_resv_add_fence(), which requires the lock held;
with lockdep enabled this trips dma_resv_assert_held():

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

Both call sites run inside the .atomic_update plane callback, which
DRM atomic helpers do not allow to fail (by the time it runs, the
commit has been signed off to userspace and there is no clean
rollback path). Moving the lock acquisition to .prepare_fb (v2) was
rejected because the broader lock scope deadlocks against other
BO locking paths in the same atomic commit.

Introduce virtio_gpu_array_lock_resv_uninterruptible() that uses
dma_resv_lock() instead of dma_resv_lock_interruptible() on the
nents==1 path. This eliminates the -EINTR failure mode -- the
realistic syzbot trigger -- without extending the lock hold across
the commit. Use it from both virtio_gpu_cursor_plane_update() and
virtio_gpu_resource_flush(); check the return value to handle the
remaining -ENOMEM case by freeing the objs and skipping the plane
update for that frame. The framebuffer BOs touched here are not
shared with other contexts and lock contention is expected to be
brief, so the loss of signal-interruptibility is acceptable.

Other callers of virtio_gpu_array_lock_resv() (the ioctl paths)
continue to use the interruptible variant.

The bug was reported by syzbot, triggered via fault injection
(fail_nth) on the DRM_IOCTL_MODE_CURSOR path, which forces the
-ENOMEM branch in dma_resv_reserve_fences().

Reported-by: syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=72bd3dd3a5d5f39a0271
Fixes: 5cfd31c5b3a3 ("drm/virtio: fix virtio_gpu_cursor_plane_update().")
Cc: stable@vger.kernel.org
Signed-off-by: Deepanshu Kartikey <kartikey406@gmail.com>
---
v3: Per maintainer feedback on v2 (lockup caused by the broader
    lock scope in prepare_fb conflicting with other BO locking in
    the same atomic commit): drop the prepare_fb/cleanup_fb
    approach, introduce an uninterruptible variant of
    virtio_gpu_array_lock_resv(), and use it in both
    virtio_gpu_cursor_plane_update() and virtio_gpu_resource_flush().
v2: Move resv lock acquisition from .atomic_update (which must not
    fail) to .prepare_fb (which may), per maintainer review of v1.
    The previous approach of silently skipping the cursor update on
    lock failure violated the atomic-commit contract with userspace.
---
 drivers/gpu/drm/virtio/virtgpu_drv.h   |  1 +
 drivers/gpu/drm/virtio/virtgpu_gem.c   | 24 ++++++++++++++++++++++++
 drivers/gpu/drm/virtio/virtgpu_plane.c | 10 ++++++++--
 3 files changed, 33 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/virtio/virtgpu_drv.h b/drivers/gpu/drm/virtio/virtgpu_drv.h
index f17660a71a3e..43a7eb568e15 100644
--- a/drivers/gpu/drm/virtio/virtgpu_drv.h
+++ b/drivers/gpu/drm/virtio/virtgpu_drv.h
@@ -317,6 +317,7 @@ virtio_gpu_array_from_handles(struct drm_file *drm_file, u32 *handles, u32 nents
 void virtio_gpu_array_add_obj(struct virtio_gpu_object_array *objs,
 			      struct drm_gem_object *obj);
 int virtio_gpu_array_lock_resv(struct virtio_gpu_object_array *objs);
+int virtio_gpu_array_lock_resv_uninterruptible(struct virtio_gpu_object_array *objs);
 void virtio_gpu_array_unlock_resv(struct virtio_gpu_object_array *objs);
 void virtio_gpu_array_add_fence(struct virtio_gpu_object_array *objs,
 				struct dma_fence *fence);
diff --git a/drivers/gpu/drm/virtio/virtgpu_gem.c b/drivers/gpu/drm/virtio/virtgpu_gem.c
index f22dc5c21cd4..08c4b7ef8d44 100644
--- a/drivers/gpu/drm/virtio/virtgpu_gem.c
+++ b/drivers/gpu/drm/virtio/virtgpu_gem.c
@@ -238,6 +238,30 @@ int virtio_gpu_array_lock_resv(struct virtio_gpu_object_array *objs)
 	return ret;
 }
 
+int virtio_gpu_array_lock_resv_uninterruptible(struct virtio_gpu_object_array *objs)
+{
+	unsigned int i;
+	int ret = 0;
+
+	if (objs->nents == 1) {
+		dma_resv_lock(objs->objs[0]->resv, NULL);
+	} else {
+		ret = drm_gem_lock_reservations(objs->objs, objs->nents,
+						&objs->ticket);
+		if (ret)
+			return ret;
+	}
+
+	for (i = 0; i < objs->nents; ++i) {
+		ret = dma_resv_reserve_fences(objs->objs[i]->resv, 1);
+		if (ret) {
+			virtio_gpu_array_unlock_resv(objs);
+			return ret;
+		}
+	}
+	return 0;
+}
+
 void virtio_gpu_array_unlock_resv(struct virtio_gpu_object_array *objs)
 {
 	if (objs->nents == 1) {
diff --git a/drivers/gpu/drm/virtio/virtgpu_plane.c b/drivers/gpu/drm/virtio/virtgpu_plane.c
index a126d1b25f46..ef118cb4f0fa 100644
--- a/drivers/gpu/drm/virtio/virtgpu_plane.c
+++ b/drivers/gpu/drm/virtio/virtgpu_plane.c
@@ -215,7 +215,10 @@ static void virtio_gpu_resource_flush(struct drm_plane *plane,
 		if (!objs)
 			return;
 		virtio_gpu_array_add_obj(objs, vgfb->base.obj[0]);
-		virtio_gpu_array_lock_resv(objs);
+		if (virtio_gpu_array_lock_resv_uninterruptible(objs)) {
+			virtio_gpu_array_put_free(objs);
+			return;
+		}
 		virtio_gpu_cmd_resource_flush(vgdev, bo->hw_res_handle, x, y,
 					      width, height, objs,
 					      vgplane_st->fence);
@@ -459,7 +462,10 @@ static void virtio_gpu_cursor_plane_update(struct drm_plane *plane,
 		if (!objs)
 			return;
 		virtio_gpu_array_add_obj(objs, vgfb->base.obj[0]);
-		virtio_gpu_array_lock_resv(objs);
+		if (virtio_gpu_array_lock_resv_uninterruptible(objs)) {
+			virtio_gpu_array_put_free(objs);
+			return;
+		}
 		virtio_gpu_cmd_transfer_to_host_2d
 			(vgdev, 0,
 			 plane->state->crtc_w,
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
