Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E4126A735EF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Mar 2025 16:49:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DD53243FDB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Mar 2025 15:49:18 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	by lists.linaro.org (Postfix) with ESMTPS id D18B343F84
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Mar 2025 15:49:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=bGJXaUtD;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.174 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-22548a28d0cso34096395ad.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Mar 2025 08:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743090542; x=1743695342; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=R+WkWznMaXIwTB3ZZo2m17BC/os/l608815ZqRblsww=;
        b=bGJXaUtDv9AC2wO/Ch5maFfsBcV921D1sIeaBY80N6uVqK56gad1uwllVG0i6bapEU
         6FLbExmGzm4XJxvqKN1QfDodhZUzgadLjEyiF5z1UCLcBwLDK0GJt1nEk68gaQ8gAqCn
         AGA/wrWl3bqjrlMbv83KRHTarbwdHf7lBgY8p2cRBScQvpOoCbVJ3oW5ljNZKnOnpLpU
         67St0aU+HRDBlW/WywDwtpe0kxUXZ98Y6F3EvxrED+ISdakO+9zsJHTh5vNwCQMzwEjp
         yoO1S/ohlC8wSgjcgfr3aE4CvmzsdCs81pjJpHX1TXWA/4WbAzQrmb02vVljMIgwLZ45
         i4bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743090542; x=1743695342;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R+WkWznMaXIwTB3ZZo2m17BC/os/l608815ZqRblsww=;
        b=YA/T+LcN2hQHAkgZ5w5a84Dt3TmcTrH7MdLT/kmNJ7dTQBLIJLc/D4ZHtDdq1VB78U
         GTwQ6PTFsTjab9uLmStqx/isNujNOs6DSGKSFqOTbd42PnGKA32n5fcTgtmklabgFpYd
         uzU4Hnadf8j1zhfIakfe6YI+JRaGv51Sq/ZP3zIYPGK1f/A9hA74C9An+XFRDICur7nn
         bt8QYVMoohT0/cAcLmgwWyJXvRtht8kX8faf4QGb+/ie6037+oKOTRaaRDg8Lg5yabrl
         iMtxwOjSnFbSWkfkiKkN5wOoaToFgyVGw1fR8gfcH7ojDRhZjXK6egHKHQrz4EJQkamU
         emUw==
X-Forwarded-Encrypted: i=1; AJvYcCW2rzKt9znCz6Plhnw4wen5nszYVQFhVduB8yB7x2WiNrAEBMFkP/G2rN+LNUZFs7JpO508q7R49KaG392o@lists.linaro.org
X-Gm-Message-State: AOJu0YxwJmrgz4s8BS9y3sfJijDLaRU4+NRyuccXfkmOUA4XBvQxyqrz
	PXfrlmo6QMgHmZcT7DO64YgSDAS+Bt5jlVVAPl7nVjja/bJHmIjd
X-Gm-Gg: ASbGncsnylkkUfR+ZFyUzxroMIHmUbNJun1QE1RKTch9biZoXIQbTQ2vU2rBmbd9k4u
	3uHaib5UF7HnenlGxkKdmWMApbi1gLghWy7GUZVLe3x+8og5ifnCVFsIfEtAKZlzQMFNxEF82Nt
	hBwAYuHj45xZFbrng4HbsU/n8dcbjBF2jEo3PFTBUwP7snw8bk+YOOFKyN+toxDgFSsp/ZiJ7Ij
	zuq0a6Z+ebPFEPIg4nlzFu9lrlnWp3XgxL+N99/fkTXy4tZTeOFpumk+DnK0x/ckUPUqyXJW/Dl
	DRqwt4Vm8Y50JTWhAjmCZXpM25lPsALni2XoFVe+L+uGMI90aSQeLq87zEQujIfRZqB0tXKozxJ
	AixNPzkwgWTvBVHVPQlA=
X-Google-Smtp-Source: AGHT+IF7lVVDeWONYnV60fwShndweA3eQmej77IbeLpBdfzNQHqiYnWKtVJhAFL9WRt9+k+RKBEwHw==
X-Received: by 2002:a17:902:d2d0:b0:224:76f:9e45 with SMTP id d9443c01a7336-22804840efdmr53269545ad.21.1743090541726;
        Thu, 27 Mar 2025 08:49:01 -0700 (PDT)
Received: from localhost ([2a00:79e0:3e00:2601:3afc:446b:f0df:eadc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291f1df032sm962005ad.175.2025.03.27.08.49.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 08:49:00 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 27 Mar 2025 08:48:57 -0700
Message-ID: <20250327154858.52308-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D18B343F84
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.174:from];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: ITYFZOMESSZ4344ET423PLBVYS32YHKF
X-Message-ID-Hash: ITYFZOMESSZ4344ET423PLBVYS32YHKF
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Rob Clark <robdclark@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] drm/syncobj: Extend EXPORT_SYNC_FILE for timeline syncobjs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ITYFZOMESSZ4344ET423PLBVYS32YHKF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

Add support for exporting a dma_fence fd for a specific point on a
timeline.  This is needed for vtest/vpipe[1][2] to implement timeline
syncobj support, as it needs a way to turn a point on a timeline back
into a dma_fence fd.  It also closes an odd omission from the syncobj
UAPI.

[1] https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/33433
[2] https://gitlab.freedesktop.org/virgl/virglrenderer/-/merge_requests/805

v2: Add DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_TIMELINE

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/drm_syncobj.c | 18 +++++++++++++-----
 include/uapi/drm/drm.h        |  2 ++
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
index 4f2ab8a7b50f..bc57d6f1a22e 100644
--- a/drivers/gpu/drm/drm_syncobj.c
+++ b/drivers/gpu/drm/drm_syncobj.c
@@ -762,7 +762,7 @@ static int drm_syncobj_import_sync_file_fence(struct drm_file *file_private,
 }
 
 static int drm_syncobj_export_sync_file(struct drm_file *file_private,
-					int handle, int *p_fd)
+					int handle, u64 point, int *p_fd)
 {
 	int ret;
 	struct dma_fence *fence;
@@ -772,7 +772,7 @@ static int drm_syncobj_export_sync_file(struct drm_file *file_private,
 	if (fd < 0)
 		return fd;
 
-	ret = drm_syncobj_find_fence(file_private, handle, 0, 0, &fence);
+	ret = drm_syncobj_find_fence(file_private, handle, point, 0, &fence);
 	if (ret)
 		goto err_put_fd;
 
@@ -869,6 +869,9 @@ drm_syncobj_handle_to_fd_ioctl(struct drm_device *dev, void *data,
 				   struct drm_file *file_private)
 {
 	struct drm_syncobj_handle *args = data;
+	unsigned valid_flags = DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_TIMELINE |
+			       DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_EXPORT_SYNC_FILE;
+	u64 point = 0;
 
 	if (!drm_core_check_feature(dev, DRIVER_SYNCOBJ))
 		return -EOPNOTSUPP;
@@ -876,13 +879,18 @@ drm_syncobj_handle_to_fd_ioctl(struct drm_device *dev, void *data,
 	if (args->pad)
 		return -EINVAL;
 
-	if (args->flags != 0 &&
-	    args->flags != DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_EXPORT_SYNC_FILE)
+	if (args->flags != 0 && (args->flags & ~valid_flags))
 		return -EINVAL;
 
+	if (args->flags & DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_TIMELINE)
+		point = args->point;
+
 	if (args->flags & DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_EXPORT_SYNC_FILE)
 		return drm_syncobj_export_sync_file(file_private, args->handle,
-						    &args->fd);
+						    point, &args->fd);
+
+	if (args->point)
+		return -EINVAL;
 
 	return drm_syncobj_handle_to_fd(file_private, args->handle,
 					&args->fd);
diff --git a/include/uapi/drm/drm.h b/include/uapi/drm/drm.h
index 7fba37b94401..c71a8f4439f2 100644
--- a/include/uapi/drm/drm.h
+++ b/include/uapi/drm/drm.h
@@ -912,6 +912,8 @@ struct drm_syncobj_handle {
 
 	__s32 fd;
 	__u32 pad;
+
+	__u64 point;
 };
 
 struct drm_syncobj_transfer {
-- 
2.49.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
