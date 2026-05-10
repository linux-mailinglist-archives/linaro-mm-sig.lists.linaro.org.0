Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNM3GexgBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:30:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEB85324DA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:30:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0CFC5401F8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:30:51 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by lists.linaro.org (Postfix) with ESMTPS id E68EB3F726
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 09:04:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=XcdTjQuT;
	spf=pass (lists.linaro.org: domain of kartikey406@gmail.com designates 209.85.222.182 as permitted sender) smtp.mailfrom=kartikey406@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-8eab809593cso435764485a.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 02:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778490269; x=1779095069; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HiZtT3KiED6Ar39Wsw4WFRof7QOLYq294txhwcfCtho=;
        b=XcdTjQuTBvlY0HmWaVtW4qTGpGhp127dVLLwCcsiT90fv3LfDODnacWtgkRRONP1+3
         jNeyCcDRFiQ1amjWG6bSza8Y+XbfABiuToY+jcQuNX2BzrWJcP5RcqlEx3K5DT3i4gC4
         4P+trhfPDjq33Cvh/Qw8xwWkf5Q18ZY5PIpndi9iUE4J6fuQGVhJJAb6TilRLelU6MHc
         VD9vo5j1sWPrT5cP/nH78GqDjkZVhh7HbFWVCmQu1R1pwBEL+DgKJn7s0X3JT4AXHxbl
         v01HHoFBJoAudQeZXWEbogNO+kG2QCN+PAROWDpEfxgGUyfwzNr/h4vxYRE0Z/EQ8Y8R
         heeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778490269; x=1779095069;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HiZtT3KiED6Ar39Wsw4WFRof7QOLYq294txhwcfCtho=;
        b=sPH8fRXCsff7KvyepJcr6ESyv4mgdk51HcMUwQev81fgWvzN3C/symBn61a9/2hNYa
         JNfo7zcV6tHS32jBOswWrDVL7GRZsfIXpZh9OiXNoMHo46ub6DzesVa+ze2oOBj2ifr7
         cmvZVGXElW4swhUQ94Srhg6iSRgUb/UROLAgO6ACUA7m6y1Lgftdss02dM9ozLu8mA99
         lNlnA++JyLWK8TzIJHWWaw29kcJoRaLICsGNYd0ebYuNhOBNserSuBg/UoKBBIrv7wMk
         QS7ZYrrv85jqGTX8khv5STqDig3s9j3AeFeG5dRTQ1fERbAPZhClVjlE0Iv2vaLSp0lG
         MvIQ==
X-Forwarded-Encrypted: i=1; AFNElJ8ux4NqaAkq9XUQ/syogaSqmLeaNiMmODuW+uOkvSMZldvYkydxxpcQzvc73J4ULKmRa06lMHSMqOhFU5em@lists.linaro.org
X-Gm-Message-State: AOJu0Yw0nHiA7KEGxxfIkBzAOgxvEaLb451zDLgxrdWaj8cUPeevidsr
	MfSwRpa38+WaC0SubA3o4cUvSOoDOMlw/wg9FoyybJ+UENRThmmkN+ugI2K0Jh+J
X-Gm-Gg: Acq92OFb+Q/VMoej6uoi0cd29hxMgGiPksJIwTNY7fE8atOeVjjtVVmYeu4pW8yQtXl
	jc6L1I9qs7iw8Zs5uGTPsR58fbgQE6AkJi1l5eQ4dmcBe0cABWQwbulrFetAS4/+sfIuxQSbi/3
	cYYx0Z6JuSg1QD2tkI2wiBN6k/882JYZ+zlVXr5VwPpRtkUSHVNKCxkBwNaWRHGwJ1yzNRJGSJa
	sR+rWRdIDKcea4dyzUl9IbyhzB0J4tyCXzwj/qIU74JQX81W1ArGb9zUtqS5ghhljftuxycZRj5
	qN/pTe1DFCYorKom9fspqPEooEPUEFwo6IsnxXIZN9IUZy4OD/4XpigdNJFPxJEqZPOc8vjyR+L
	gUmdXYW/BbXLwHz9vEfFBwqATNKkbB3SSs0qIpapaLjYiqCQmaFW+Y7Vu392Pw4dyHY5RtwwoND
	uGsxrCXCt4kkIMIPX8VrOR3e74c5UeAjUaxTlB+cN9pTy31DwSg0enG+N0WPqx+cUDnDVNkK7ty
	ygdZZk=
X-Received: by 2002:a17:903:388c:b0:2ba:307:4584 with SMTP id d9443c01a7336-2bc7aa40967mr50895195ad.32.1778391036502;
        Sat, 09 May 2026 22:30:36 -0700 (PDT)
Received: from deepanshu-kernel-hacker.. ([2405:201:682f:383f:5d23:3a35:10d1:5ed6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1ebea72sm67859095ad.77.2026.05.09.22.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 May 2026 22:30:36 -0700 (PDT)
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
Date: Sun, 10 May 2026 11:00:25 +0530
Message-ID: <20260510053025.100224-1-kartikey406@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spamd-Bar: -
X-MailFrom: kartikey406@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UIVSQARVWUU65FDA3RWCA26XVTUBHA54
X-Message-ID-Hash: UIVSQARVWUU65FDA3RWCA26XVTUBHA54
X-Mailman-Approved-At: Wed, 13 May 2026 11:23:48 +0000
CC: dri-devel@lists.freedesktop.org, virtualization@lists.linux.dev, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Deepanshu Kartikey <kartikey406@gmail.com>, syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/virtio: check virtio_gpu_array_lock_resv() return in cursor update
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UIVSQARVWUU65FDA3RWCA26XVTUBHA54/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: ECEB85324DA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[78];
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
	NEURAL_HAM(-0.00)[-0.952];
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

virtio_gpu_cursor_plane_update() calls virtio_gpu_array_lock_resv()
but ignores its return value. The function can fail in two ways:

  - dma_resv_lock_interruptible() returns -ERESTARTSYS when a signal
    is delivered while waiting for the reservation lock.
  - dma_resv_reserve_fences() returns -ENOMEM if it fails to allocate
    a fence slot; in this case lock_resv unlocks before returning.

In both cases the resv lock is not held on return. The cursor path
proceeds to queue a fenced transfer command. The queue path then
walks the object array and calls dma_resv_add_fence() on the cursor
BO's reservation. dma_resv_add_fence() requires the resv lock to be
held; with lockdep enabled the missing lock trips
dma_resv_assert_held():

  WARNING: drivers/dma-buf/dma-resv.c:296 at dma_resv_add_fence+0x71e/0x840
  Call Trace:
   virtio_gpu_array_add_fence+0xcd/0x140
   virtio_gpu_queue_ctrl_sgs
   virtio_gpu_queue_fenced_ctrl_buffer+0x578/0xfb0
   virtio_gpu_cursor_plane_update+0x411/0xbc0
   drm_atomic_helper_commit_planes+0x497/0xf10
   ...
   drm_mode_cursor_ioctl+0xd4/0x110
   drm_ioctl+0x5e6/0xc60
   __x64_sys_ioctl+0x18e/0x210

Beyond the WARN, mutating the dma_resv fence list without the lock
races with concurrent readers/writers and can corrupt the list.

Check the return value of virtio_gpu_array_lock_resv(). On failure,
drop the references taken by virtio_gpu_array_add_obj() with
virtio_gpu_array_put_free() (which does not unlock, matching the
not-locked state) and return without queueing the command. A
skipped cursor frame is harmless; the WARN and the underlying race
are not.

The bug was reported by syzbot, triggered via fault injection
(fail_nth) on the DRM_IOCTL_MODE_CURSOR path, which forces the
-ENOMEM branch in dma_resv_reserve_fences().

Reported-by: syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=72bd3dd3a5d5f39a0271
Fixes: 5cfd31c5b3a3 ("drm/virtio: fix virtio_gpu_cursor_plane_update().")
Cc: stable@vger.kernel.org
Signed-off-by: Deepanshu Kartikey <kartikey406@gmail.com>
---
 drivers/gpu/drm/virtio/virtgpu_plane.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/virtio/virtgpu_plane.c b/drivers/gpu/drm/virtio/virtgpu_plane.c
index a126d1b25f46..ca379b08b9ec 100644
--- a/drivers/gpu/drm/virtio/virtgpu_plane.c
+++ b/drivers/gpu/drm/virtio/virtgpu_plane.c
@@ -459,7 +459,10 @@ static void virtio_gpu_cursor_plane_update(struct drm_plane *plane,
 		if (!objs)
 			return;
 		virtio_gpu_array_add_obj(objs, vgfb->base.obj[0]);
-		virtio_gpu_array_lock_resv(objs);
+		if (virtio_gpu_array_lock_resv(objs)) {
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
