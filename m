Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMykKfwdDGqXWgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:23:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3518E579ECD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:23:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4001040964
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 08:23:23 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	by lists.linaro.org (Postfix) with ESMTPS id 46D4F40501
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 08:23:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=CYb0jfd6;
	spf=pass (lists.linaro.org: domain of kartikey406@gmail.com designates 209.85.216.46 as permitted sender) smtp.mailfrom=kartikey406@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-368f25ff4c4so1559484a91.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 01:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779178992; x=1779783792; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Cw+HXkNbB/u5QBrnahLqduKfToHyIm0xf5S3V5dfPlI=;
        b=CYb0jfd6whlbbs4RHXVDHhV2VqkKj/3KsUd8WH1N0NCys3cB/FWF+MeoFOP8i9LWBt
         6crXEHuOAsLEG4V/Cq3GxIjhhvHE4MfD/ZCHRqqlcotv0a3pTiaCM1fiZfw2h7r4RIW2
         39QPqVqy/98/oy9PU95z4Eevgc9x0I+b2sZJEw7wp84QeSgV5Jp82D8KxGsMAyxjT4K3
         QqUyPKj4nVD8XOZG3dX9AtAPglVA+lXvAXCXDQeac1ZElzvPITYuOjGdkCM0lh/eA8G5
         82mgzR9lQjHwzcVotQshp9Fe4MPWLreRcj09pbOKD7U9rDFsn7I2m57BNLJTqDC2k/De
         kr/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779178992; x=1779783792;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cw+HXkNbB/u5QBrnahLqduKfToHyIm0xf5S3V5dfPlI=;
        b=aLtSibNPyYms5x//vXGuG6lUg89NhRzzdQnS2Jx2BR7oQXUTTo92blIxGKLxcMNv2x
         z2ZphwKOD3Uj0hYAYlReccI3hWDVE+K2+BCGPwYbTS7Xa91WbYt3GheU9dAr0uXpnBIi
         DrUp51s4bPe0t/sUxLukqC6yxnqiVLpLrsunQfOcNCAPgXUpGp2Wu4e5ZAUJZT/mCeb9
         zlqMiG6p/AgACkM1zW4prUtxFVB6S5jbr97XXMGma+VIFCU75677Kp9I/X1YsRoNXcS0
         OcA5qJZmDmxrYdf3hBI2dDltSukc2xSEYL4IQRXuZDEpXVt7Q2KuG7r081mvFQkurXcV
         7kNA==
X-Forwarded-Encrypted: i=1; AFNElJ8/LM7Zo+YeVpETxeA7Q0Zckjw2gjQhUZgIaxNnxnafkxUr75yRwvKmK3b3zFgshqFXZp5nvagvlKLBY4qN@lists.linaro.org
X-Gm-Message-State: AOJu0Yye4537z1AxeS+YReygS5uz8ynbvrhcQFNybQwCyb/VSYVfD/r+
	Ud1u2GZREi0xOhmjppADOia56FBM4S3lVvOUHZskRQxeF/AgJIGCVQ4r
X-Gm-Gg: Acq92OFp0JhfGKPMBjA5l8PjCVqt6b4pCQCVGb7MgK9F2MbUshTfMVuCIsnNdD7AsO3
	FCGh5LYCP+gcWav4GCLDkvbEAywGp4oWF8v0WVKl3n1ERjk2xIbm5r3mpKkt9hyqUW40WWrPFtF
	kHzE4Jqg6NYOTsI4fBq5vhrL1QH0aO0my0UUSZ1jZNpxCtLuCgKZK7Ky5Sqr5KrFtmyfSN/ew3k
	9J+Wz5JGcuXAushsZRO4Z+GQiR52sDLomzI0TmljDvHD4IC4ErUqzrG+QlcFs44vSPIKZKQ9JJB
	6xySiimMFQaAR8gxO/QexJr/DK0VsSkxBDY4RzV6A+Hx8RZ3JTCiTNpXG7f+IYoVld7QKjlyaiZ
	5I5Cl9KddiiROnXugZdtRRPQeHPFaE8HxRW2+K8hXpce8totSGLv6Y14OiirXT1Qd1jowa/b8uF
	KIsuCNQrUArMsjWET+dXCd9Aa4pAswIPbkib0bfwCfD5nhzUumATeyVijVDD/vEk9Mw92XE3bi1
	qSytPfHIhX39iU=
X-Received: by 2002:a17:90b:4b8c:b0:359:87a8:e65c with SMTP id 98e67ed59e1d1-36951b8280dmr18284305a91.17.1779178992328;
        Tue, 19 May 2026 01:23:12 -0700 (PDT)
Received: from deepanshu-kernel-hacker.. ([2405:201:682f:383f:d693:97f:df7:b062])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3695126feabsm13019156a91.6.2026.05.19.01.23.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2026 01:23:11 -0700 (PDT)
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
Date: Tue, 19 May 2026 13:52:47 +0530
Message-ID: <20260519082247.34470-1-kartikey406@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spamd-Bar: --
Message-ID-Hash: KBWHRVJRD3SZ3JVO36JDXXZQW4LO4CAN
X-Message-ID-Hash: KBWHRVJRD3SZ3JVO36JDXXZQW4LO4CAN
X-MailFrom: kartikey406@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, virtualization@lists.linux.dev, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Deepanshu Kartikey <kartikey406@gmail.com>, syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4] drm/virtio: use uninterruptible resv lock for plane updates
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KBWHRVJRD3SZ3JVO36JDXXZQW4LO4CAN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,amd.com];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,lists.linux.dev,vger.kernel.org,lists.linaro.org,gmail.com,syzkaller.appspotmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,72bd3dd3a5d5f39a0271];
	FROM_NEQ_ENVFROM(0.00)[kartikey406@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[gmail.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo,appspotmail.com:email,syzkaller.appspot.com:url]
X-Rspamd-Queue-Id: 3518E579ECD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
rollback path). Moving the lock acquisition to .prepare_fb was
rejected because the broader lock scope deadlocks against other BO
locking paths in the same atomic commit.

Introduce virtio_gpu_lock_one_resv_uninterruptible() that uses
dma_resv_lock() instead of dma_resv_lock_interruptible(). This
eliminates the -EINTR failure mode -- the realistic syzbot trigger
-- without extending the lock hold across the commit. The helper
locks a single BO and rejects nents > 1 with -EINVAL; both fix
sites lock exactly one BO.

Use it from virtio_gpu_cursor_plane_update() and
virtio_gpu_resource_flush(); check the return value to handle the
remaining -ENOMEM case from dma_resv_reserve_fences() by freeing
the objs and skipping the plane update for that frame. The
framebuffer BOs touched here are not shared with other contexts
and lock contention is expected to be brief, so the loss of
signal-interruptibility is acceptable.

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
v4: Rename the helper to virtio_gpu_lock_one_resv_uninterruptible()
    and reject objs->nents > 1 with -EINVAL. The v3 helper's
    multi-object branch used drm_gem_lock_reservations(), which is
    interruptible, contradicting the "uninterruptible" name; both
    fix sites lock a single BO so the multi-object path is dropped.
    (Dmitry Osipenko)
v3: Drop the prepare_fb/cleanup_fb approach from v2 (it deadlocked
    against virtio_gpu_resource_flush(), which also locks the BO in
    the same atomic commit). Instead add an uninterruptible variant
    of the resv lock helper and use it in both
    virtio_gpu_cursor_plane_update() and virtio_gpu_resource_flush().
    (Dmitry Osipenko)
v2: Move resv lock acquisition from .atomic_update (which must not
    fail) to .prepare_fb (which may), per maintainer review of v1.
    The v1 approach of silently skipping the cursor update on lock
    failure violated the atomic-commit contract with userspace.
---
 drivers/gpu/drm/virtio/virtgpu_drv.h   |  1 +
 drivers/gpu/drm/virtio/virtgpu_gem.c   | 17 +++++++++++++++++
 drivers/gpu/drm/virtio/virtgpu_plane.c | 10 ++++++++--
 3 files changed, 26 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/virtio/virtgpu_drv.h b/drivers/gpu/drm/virtio/virtgpu_drv.h
index f17660a71a3e..2f3531950aa4 100644
--- a/drivers/gpu/drm/virtio/virtgpu_drv.h
+++ b/drivers/gpu/drm/virtio/virtgpu_drv.h
@@ -317,6 +317,7 @@ virtio_gpu_array_from_handles(struct drm_file *drm_file, u32 *handles, u32 nents
 void virtio_gpu_array_add_obj(struct virtio_gpu_object_array *objs,
 			      struct drm_gem_object *obj);
 int virtio_gpu_array_lock_resv(struct virtio_gpu_object_array *objs);
+int virtio_gpu_lock_one_resv_uninterruptible(struct virtio_gpu_object_array *objs);
 void virtio_gpu_array_unlock_resv(struct virtio_gpu_object_array *objs);
 void virtio_gpu_array_add_fence(struct virtio_gpu_object_array *objs,
 				struct dma_fence *fence);
diff --git a/drivers/gpu/drm/virtio/virtgpu_gem.c b/drivers/gpu/drm/virtio/virtgpu_gem.c
index f22dc5c21cd4..435d37d36034 100644
--- a/drivers/gpu/drm/virtio/virtgpu_gem.c
+++ b/drivers/gpu/drm/virtio/virtgpu_gem.c
@@ -238,6 +238,23 @@ int virtio_gpu_array_lock_resv(struct virtio_gpu_object_array *objs)
 	return ret;
 }
 
+int virtio_gpu_lock_one_resv_uninterruptible(struct virtio_gpu_object_array *objs)
+{
+	int ret;
+
+	if (objs->nents != 1)
+		return -EINVAL;
+
+	dma_resv_lock(objs->objs[0]->resv, NULL);
+
+	ret = dma_resv_reserve_fences(objs->objs[0]->resv, 1);
+	if (ret) {
+		virtio_gpu_array_unlock_resv(objs);
+		return ret;
+	}
+	return 0;
+}
+
 void virtio_gpu_array_unlock_resv(struct virtio_gpu_object_array *objs)
 {
 	if (objs->nents == 1) {
diff --git a/drivers/gpu/drm/virtio/virtgpu_plane.c b/drivers/gpu/drm/virtio/virtgpu_plane.c
index a126d1b25f46..652352424744 100644
--- a/drivers/gpu/drm/virtio/virtgpu_plane.c
+++ b/drivers/gpu/drm/virtio/virtgpu_plane.c
@@ -215,7 +215,10 @@ static void virtio_gpu_resource_flush(struct drm_plane *plane,
 		if (!objs)
 			return;
 		virtio_gpu_array_add_obj(objs, vgfb->base.obj[0]);
-		virtio_gpu_array_lock_resv(objs);
+		if (virtio_gpu_lock_one_resv_uninterruptible(objs)) {
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
+		if (virtio_gpu_lock_one_resv_uninterruptible(objs)) {
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
