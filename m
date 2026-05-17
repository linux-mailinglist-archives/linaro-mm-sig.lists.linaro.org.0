Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MA1MEkg/DGqqawUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:45:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C9457CB6B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:45:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB8CA401E2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:45:26 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by lists.linaro.org (Postfix) with ESMTPS id 7EAE43F79E
	for <linaro-mm-sig@lists.linaro.org>; Sun, 17 May 2026 13:18:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="qg/MMoWj";
	spf=pass (lists.linaro.org: domain of michael.bommarito@gmail.com designates 209.85.219.54 as permitted sender) smtp.mailfrom=michael.bommarito@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-8acb3daf2aaso30543086d6.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 17 May 2026 06:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779023880; x=1779628680; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8qmzV4OG/gwgrFg2WjVRa5yFfeYJiaj+u8zvgWP2oxA=;
        b=qg/MMoWjAPMCAA3GSj3Vsnv8vU/iuwrC/ytQoKcmdlVTb/RYJ2Zk6A/aHDPXhDH3+o
         gKcQ8i+i581a997rYM3+/Vo2iI3PD33z2lbmB+5BUL5EayO4g1mUSh6zsGYZiRrZ5Vn0
         lorZB8Tw1AWQLB6qw/Ji5sb2BvYNGai+Xa5mqqdFb/k6W1xc86Ifh4QqL6LbekNZ32dO
         1pT5xxpshwhdgLwaMJxIJaaq34rDvO5mmxsAgYCpA31QGwEB4P14pi7qJkbpssBH81AU
         IVjPjS0pM7F6xD366THOcukZd5hFiMMS7VTAtR7JMwyTBDfvHnbUfsYrjqonrgZj+7u7
         A9WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779023880; x=1779628680;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8qmzV4OG/gwgrFg2WjVRa5yFfeYJiaj+u8zvgWP2oxA=;
        b=pDx55cC0tWekUFxMv8ueP0lBA5t33QbrI6Iux5Ld9r3Achv0lemyhyhZNicSc6sG5b
         JEODPHZLIY9vIZ5Q3mGKsBfA3RBwBu/1poPG5cjkcZsbdjJii0/sDArpRPT0/W7Klf5y
         y8A6UhzU/W2Deu04FkUsg2teEeKofaR1xagP55OvfrsypH78JlDP7nHKLkubgqQ/TiFB
         El86dfgeNVIzRwq8PQrw7Ddxrbxr0OiCpUVgOWEQjSm7wsAUWPAOSdYuowOFc6eaM6vX
         ZEWi0Epdhrgw6ngOqavY3U5kWw2/r0gxoPyX6H5e/PhJLizU3jb7rCIm3r6lLjaT3KCL
         9Jpw==
X-Forwarded-Encrypted: i=1; AFNElJ/61Yz0d44XyvO4z/86HhVNH0nWfYuHVze6zpBSiIdYV4rezfdKJ37jTqVGUlfzIS415oN82gxKYWo/VOie@lists.linaro.org
X-Gm-Message-State: AOJu0YwdITh+OZV2Z+nvNS300/sYXm1uETX2oUBGvRKoobJ7KJsNDmX1
	KK8+uKIjNes4ZW2cLv9sMwJi8k1FLmHJKJheKublXpUgMnerlTRZ/y6n
X-Gm-Gg: Acq92OHmAh8oyjOXN8NechMURTzaQOu+6rYob7xTV3wDzV+22H/QpDTm5G0XUp2xKu0
	J/QjH3n3E6duBrNTOo1k+BVPRu7x6LkR3m/7nWWrSpxgJr6U4TwEGAXlPPDfOFLwV/TNSEF288D
	a1j1Ksd3eWyAnLNM9lC5bb6YhpIZ8JhH8B5zxGeaeDDsQpUPk2wd4QhLuUE2w1aK5/TGVLIeanS
	CIsc+iNtZqaQdgLXm2T3K7vu4i28qUpr6eirHRYYqIU2lRQ9ljhaW0aucCdK8NDSJrLc0FvKQFU
	g4ZXI/0B8FNyWGHCrG+RnaohfbJ33Yz9acbXYBhVas12Q97NVhMREieSopOikfQBC1rsAdZj6kI
	2erQMo/DvKBizn9AL7yTM6PX8DY6G9OAhhmudWswGtPm6GJaRsUHMCaMQxjDEaMs7s/VsC5wkaD
	W+izacIIy9tke85g6NZBTRKuhIYq/KPh8e9cX5qkKeTCynscmxSRyraI9Xb3JGTMNfWxM7gThFt
	rL/yK0iW6sJ68pPmyaING6QWr5Dg+QYOr4eZT29LPc=
X-Received: by 2002:ad4:4211:0:b0:8bd:6baa:6a0c with SMTP id 6a1803df08f44-8ca0f611b62mr138164296d6.11.1779023879979;
        Sun, 17 May 2026 06:17:59 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8ca3619c703sm22268846d6.33.2026.05.17.06.17.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 May 2026 06:17:59 -0700 (PDT)
From: Michael Bommarito <michael.bommarito@gmail.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	Christian Koenig <christian.koenig@amd.com>,
	David Francis <David.Francis@amd.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org
Date: Sun, 17 May 2026 09:17:42 -0400
Message-ID: <20260517131742.3435209-1-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: michael.bommarito@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YKH3HWRF4TDUOADHHN4YJ2ZRZABUCW6E
X-Message-ID-Hash: YKH3HWRF4TDUOADHHN4YJ2ZRZABUCW6E
X-Mailman-Approved-At: Tue, 19 May 2026 10:44:46 +0000
CC: Ziyi Guo <n7l8m4@u.northwestern.edu>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/amdgpu: fix lock leak on ENOMEM in AMDGPU_GEM_OP_GET_MAPPING_INFO
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YKH3HWRF4TDUOADHHN4YJ2ZRZABUCW6E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.59 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	DATE_IN_PAST(1.00)[45];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[amd.com,linaro.org,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michaelbommarito@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email]
X-Rspamd-Queue-Id: D6C9457CB6B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The AMDGPU_GEM_OP_GET_MAPPING_INFO branch of amdgpu_gem_op_ioctl()
holds three cleanup-tracked resources before calling kvcalloc():
the drm_gem_object reference from drm_gem_object_lookup(), the
drm_exec lock on the looked-up GEM via drm_exec_lock_obj(), and
the drm_exec lock on the per-process VM root page directory via
amdgpu_vm_lock_pd().  All three are released by the out_exec
label that every other error path in this function jumps to.
The kvcalloc() failure path returns -ENOMEM directly, skipping
out_exec and leaking all three.

The leaked per-process VM root PD dma_resv lock is the
load-bearing leak: any subsequent operation on the same VM
(further GEM ops, command-submission, eviction, TTM shrinker
callbacks) blocks on the held lock.  DRM_IOCTL_AMDGPU_GEM_OP is
DRM_AUTH | DRM_RENDER_ALLOW, so this is an unprivileged-local
denial of service against the caller's GPU context, reachable
by any process with /dev/dri/renderD* access.

Route the failure through out_exec so drm_exec_fini() and
drm_gem_object_put() run.

Reproduced on stock 7.0.0-10, Ryzen 7 5700U / Radeon Vega
(Lucienne): the failing ioctl returns -ENOMEM and a second
GET_MAPPING_INFO on the same fd then blocks in
drm_exec_lock_obj() on the leaked dma_resv.  SIGKILL on the
caller does not reap the task; the fd-release path during
process exit goes through amdgpu_gem_object_close() ->
drm_exec_prepare_obj() on the same lock, leaving the task in D
state until the box is rebooted.  The patched kernel was not
rebuilt and re-tested on this hardware; the fix is mechanical.
Tested on a single Lucienne / Vega box only.

Ziyi Guo posted an independent INT_MAX-bound check for
args->num_entries in the same branch [1]; the two patches are
complementary and can land in either order.

Fixes: 4d82724f7f2b ("drm/amdgpu: Add mapping info option for GEM_OP ioctl")
Cc: stable@vger.kernel.org
Link: https://lore.kernel.org/all/20260208000255.4073363-1-n7l8m4@u.northwestern.edu/ # [1]
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
Assisted-by: Claude:claude-opus-4-7
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
index 9ef80bca4102..8224fb499fdf 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
@@ -1091,8 +1091,10 @@ int amdgpu_gem_op_ioctl(struct drm_device *dev, void *data,
 		 * be retried.
 		 */
 		vm_entries = kvcalloc(args->num_entries, sizeof(*vm_entries), GFP_KERNEL);
-		if (!vm_entries)
-			return -ENOMEM;
+		if (!vm_entries) {
+			r = -ENOMEM;
+			goto out_exec;
+		}
 
 		amdgpu_vm_bo_va_for_each_valid_mapping(bo_va, mapping) {
 			if (num_mappings < args->num_entries) {
-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
