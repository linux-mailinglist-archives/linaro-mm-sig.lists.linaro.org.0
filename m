Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 57036A7405A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Mar 2025 22:36:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1B51C4484A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Mar 2025 21:36:50 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	by lists.linaro.org (Postfix) with ESMTPS id A047643F1D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Mar 2025 21:36:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=S528Wm78;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.182 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-226185948ffso33186595ad.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Mar 2025 14:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743111396; x=1743716196; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Vt+RjYIF5jBbl4jDavT5AkEfIOndEZDQELaBJfix0fM=;
        b=S528Wm78rIdqlk1qiWeISI6t8D0SPRst285xLrLJHlTrV+pdzDEIMmX1obXfbumCSK
         PyRvqtzkZOYiFmlPGB/L5VVQbFKPk9KOR6KnuS9OJTVMD29KYCsm4/BGjPRADwG/9AHC
         KJQHwEbOZ1yieWF2d1gc6PvjJsta2mefRPMtDNhEcZKwvw8CxCVabLuVG5xzCPdHSqm2
         LdcUf1Ge+a7FCHkvJ5CnG5pvglu9yTIMnJAdH0Au8S2nx8BXi2AVSzyyaUN2+DdlaiVB
         ufA83M3ATMj/5pB7Vrh8WpfuxoM7SvCCX2tOcJRjkRcbATQdYNj0WZNJRmiNm2nsDvL+
         RMig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743111396; x=1743716196;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vt+RjYIF5jBbl4jDavT5AkEfIOndEZDQELaBJfix0fM=;
        b=HFaxgNs0gjpDKBO0IQjVscxgXOBUWLKBTkJNWcFS9G5Ofp+IIckTyYCHL3Q6s+SmEl
         2cdPvK5JONdU9qlGxPxy18sTFhLzVRBmuZP3jPbwCrmbuF6NldaoNus8J/VyhjJI2cad
         9Fc6VzJTJRfMRLN5LnGCNk+9MzCKJqgie+05XUnM+rlk2JGsgJyiuX55Lhzs5cjADAcK
         pJ8yG1sah0HnTqURbN7l0vDaYrc9lvzFNIyYdkddrPCYTAUHceOho97uDH5nMyHKZNkD
         eCMhCKCCkbBp+EdoHg3iAwrdvU136hVCn3jFcsEZmdUZ1brFkTGbP9/AXzw3Mc1BHk8O
         xV1g==
X-Forwarded-Encrypted: i=1; AJvYcCWXyoJVuVbI70f3hXmX+Z2TvGySzUV4l4QWUhmsGct1RnIWiDm0zNDgEPOUeJ5ogA3Q1HyCRdx+l0lvfnYO@lists.linaro.org
X-Gm-Message-State: AOJu0YxXuOyJmp/77K/Mwx+fQaCRn6tDdlRL3UYAGaLbSX7js484F7xM
	eywk3mQ7Lf5ypFQkPqK/UcODw+uwheCCa3qhUcB8SRD0lejuz6j+
X-Gm-Gg: ASbGncsNR1oCcPDgdtLp8qhGar1zcdxIxHRQHFpdbNUCpDC3svY+fZzp+y+9sesbiLg
	ozyQEpl7gEzrSOS7bp8bIRfyOIHhX09DKHot6jeYL0sZ6hjxdTnqmxHSbYN9gCYQWR/RCx5lXYn
	wdMVYHyQQKzSgUZ9q/UFy6fW0G2hAk4Svgq7LF014pmhBiDCXgK2vxN2PszU3dJjz+woWkq/AVE
	mDTx04+Jkv2YNASfSiHv/Fz33AbKxnjTQLbzMF9Y9FH1O5SOruy1fN+SzDnew6DeFpeOC31hby1
	H0hzVAVVbdawYJEKlVCG6JmH76yfC9oWT/hPZ8Gjh+Hevv9U1iOYZ6Aff+2us6u7UiQSeh3S8VR
	d+tUbGJ0hggYwAWZGmtY=
X-Google-Smtp-Source: AGHT+IE/TvMoCvEldYyvJ56ojLgJ9oJM2lccu4CA0dZo8Nu6+T4LJbrERdbFlF3GeV84s+HWM5AJeQ==
X-Received: by 2002:a17:902:e745:b0:227:e980:919d with SMTP id d9443c01a7336-22804968a98mr64293775ad.47.1743111395511;
        Thu, 27 Mar 2025 14:36:35 -0700 (PDT)
Received: from localhost ([2a00:79e0:3e00:2601:3afc:446b:f0df:eadc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291eee0d37sm4823235ad.91.2025.03.27.14.36.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 14:36:34 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 27 Mar 2025 14:36:31 -0700
Message-ID: <20250327213632.7903-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A047643F1D
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.182:from];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.214.182:from]
X-Rspamd-Action: no action
Message-ID-Hash: UGAZPNI3Y4FD7GEFSPO3DC236UU6D32G
X-Message-ID-Hash: UGAZPNI3Y4FD7GEFSPO3DC236UU6D32G
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Rob Clark <robdclark@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4] drm/syncobj: Extend EXPORT_SYNC_FILE for timeline syncobjs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UGAZPNI3Y4FD7GEFSPO3DC236UU6D32G/>
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
v3: Add unstaged uabi header hunk
v4: Also handle IMPORT_SYNC_FILE case

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/drm_syncobj.c | 41 ++++++++++++++++++++++++++---------
 include/uapi/drm/drm.h        |  4 ++++
 2 files changed, 35 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
index 4f2ab8a7b50f..58d8a9035f7d 100644
--- a/drivers/gpu/drm/drm_syncobj.c
+++ b/drivers/gpu/drm/drm_syncobj.c
@@ -741,7 +741,7 @@ static int drm_syncobj_fd_to_handle(struct drm_file *file_private,
 }
 
 static int drm_syncobj_import_sync_file_fence(struct drm_file *file_private,
-					      int fd, int handle)
+					      int fd, int handle, u64 point)
 {
 	struct dma_fence *fence = sync_file_get_fence(fd);
 	struct drm_syncobj *syncobj;
@@ -755,14 +755,18 @@ static int drm_syncobj_import_sync_file_fence(struct drm_file *file_private,
 		return -ENOENT;
 	}
 
-	drm_syncobj_replace_fence(syncobj, fence);
+	if (point) {
+		drm_syncobj_add_point(syncobj, dma_fence_chain_alloc(), fence, point);
+	} else {
+		drm_syncobj_replace_fence(syncobj, fence);
+	}
 	dma_fence_put(fence);
 	drm_syncobj_put(syncobj);
 	return 0;
 }
 
 static int drm_syncobj_export_sync_file(struct drm_file *file_private,
-					int handle, int *p_fd)
+					int handle, u64 point, int *p_fd)
 {
 	int ret;
 	struct dma_fence *fence;
@@ -772,7 +776,7 @@ static int drm_syncobj_export_sync_file(struct drm_file *file_private,
 	if (fd < 0)
 		return fd;
 
-	ret = drm_syncobj_find_fence(file_private, handle, 0, 0, &fence);
+	ret = drm_syncobj_find_fence(file_private, handle, point, 0, &fence);
 	if (ret)
 		goto err_put_fd;
 
@@ -869,6 +873,9 @@ drm_syncobj_handle_to_fd_ioctl(struct drm_device *dev, void *data,
 				   struct drm_file *file_private)
 {
 	struct drm_syncobj_handle *args = data;
+	unsigned valid_flags = DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_TIMELINE |
+			       DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_EXPORT_SYNC_FILE;
+	u64 point = 0;
 
 	if (!drm_core_check_feature(dev, DRIVER_SYNCOBJ))
 		return -EOPNOTSUPP;
@@ -876,13 +883,18 @@ drm_syncobj_handle_to_fd_ioctl(struct drm_device *dev, void *data,
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
@@ -893,6 +905,9 @@ drm_syncobj_fd_to_handle_ioctl(struct drm_device *dev, void *data,
 				   struct drm_file *file_private)
 {
 	struct drm_syncobj_handle *args = data;
+	unsigned valid_flags = DRM_SYNCOBJ_FD_TO_HANDLE_FLAGS_TIMELINE |
+			       DRM_SYNCOBJ_FD_TO_HANDLE_FLAGS_IMPORT_SYNC_FILE;
+	u64 point = 0;
 
 	if (!drm_core_check_feature(dev, DRIVER_SYNCOBJ))
 		return -EOPNOTSUPP;
@@ -900,14 +915,20 @@ drm_syncobj_fd_to_handle_ioctl(struct drm_device *dev, void *data,
 	if (args->pad)
 		return -EINVAL;
 
-	if (args->flags != 0 &&
-	    args->flags != DRM_SYNCOBJ_FD_TO_HANDLE_FLAGS_IMPORT_SYNC_FILE)
+	if (args->flags != 0 && (args->flags & ~valid_flags))
 		return -EINVAL;
 
+	if (args->flags & DRM_SYNCOBJ_FD_TO_HANDLE_FLAGS_TIMELINE)
+		point = args->point;
+
 	if (args->flags & DRM_SYNCOBJ_FD_TO_HANDLE_FLAGS_IMPORT_SYNC_FILE)
 		return drm_syncobj_import_sync_file_fence(file_private,
 							  args->fd,
-							  args->handle);
+							  args->handle,
+							  point);
+
+	if (args->point)
+		return -EINVAL;
 
 	return drm_syncobj_fd_to_handle(file_private, args->fd,
 					&args->handle);
diff --git a/include/uapi/drm/drm.h b/include/uapi/drm/drm.h
index 7fba37b94401..e63a71d3c607 100644
--- a/include/uapi/drm/drm.h
+++ b/include/uapi/drm/drm.h
@@ -905,13 +905,17 @@ struct drm_syncobj_destroy {
 };
 
 #define DRM_SYNCOBJ_FD_TO_HANDLE_FLAGS_IMPORT_SYNC_FILE (1 << 0)
+#define DRM_SYNCOBJ_FD_TO_HANDLE_FLAGS_TIMELINE         (1 << 1)
 #define DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_EXPORT_SYNC_FILE (1 << 0)
+#define DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_TIMELINE         (1 << 1)
 struct drm_syncobj_handle {
 	__u32 handle;
 	__u32 flags;
 
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
