Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0D4A736EC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Mar 2025 17:36:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91C6A43FCE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Mar 2025 16:36:24 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	by lists.linaro.org (Postfix) with ESMTPS id C75A445F4F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Mar 2025 16:36:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=PDOj2jh5;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.171 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-226185948ffso27553855ad.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Mar 2025 09:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743093368; x=1743698168; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LmxjHPEoAvJ9V++u0ZZKt2L66dWQUhIJPZo7wO/C09Q=;
        b=PDOj2jh5AvFngSxbIS7ndB0Os2GXM6oeT7Z9Nf5X/ajbYrQ974+c9I81PzB5D5kFVj
         +0cNhJeLqrGDiTpG8d0Qly5vL80yY0FUEVsLLkLiEvvnrPoszG4WgOuDicVGpyNf67FC
         X4SefEF+/UlFNiYXYEc2DYa18zPs7YjwNOvEZRVNxUPDfPu90TusoT2MvnZfjnUE25yn
         QIx67TmAaHanz1q+AjlDhAHzHSjkf5WHMBaGKOvskO/1I8InlW98rbhs4/+kkNx3fFSb
         phrAPjFpL9nU7i1cDsFhXwUr/7iqV2ZY1fuDmpCx3muWf6rxdkvbJv+pzA6xB0ZYe4+A
         LypQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743093368; x=1743698168;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LmxjHPEoAvJ9V++u0ZZKt2L66dWQUhIJPZo7wO/C09Q=;
        b=G+2NzGrMFt2JmM6PUC7lqBSEtROD2ulOLrBdkX7dA0UtrQKF+v1uqbPgw8jqVykjl5
         dLMKXYS38i5VzTjwcmOpI+hYkG9jIEe4WdXhA3nxYuPVImTyGqvpA4IANGw0RX4pkvzH
         iWGv9kDYyWKirG70TZ2wlrT6WWtEHuQywcNUH2O8CmlMOOws6jmT1I5UbdMNND+eWOzW
         GlST2M7jbCxStNBYykkawmfk+Um987mk6J9XnJdrQLXnWP6WXJGmG3Oql6o0LKXRkPyp
         ckhfig9WfbvME7t08EfxdMsh748uLMkEh45ytFioSj7RC27WYUlvasb7aPDAeQHPNZJk
         mbvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVboMoyl/z6J5cDDqgoLOJYLXT3DtyKlVmIzlNZ+a3dM/M4MbRGhnMgtTQgp0eTBU1PbjEP3JhLYy2rjoEA@lists.linaro.org
X-Gm-Message-State: AOJu0YwmpxSb9S5Z/ngreYW3YOATnDxClN25lRWP15eYxHV7e7xXUIAL
	9uf/DrnMz8ss1gUESjQhSTGiHFgbOfVGrVvWUW65Fp65GEGa9FPZ
X-Gm-Gg: ASbGncsrlocYshJGPRsskIMHpI4fuCN0AqDnIkM/2JcA1sQgnfitQ0u60bnbq7AADpD
	wva6OJUPNmm+n+B6ndp91jlCjqyO5IdySB+uJs81VVQajq0SjHJhtbtqPUSoA7FztU5AdHBi+U5
	nNozZSiKlUS8DAzyXi2V8DasF06h/pes69klpx7+2FA0WuUOArNTlx4Vb+Iz3zn2VoAGniRLBnT
	eZGLlvbL+sXcb1vSh596HGIaK20Xbx5VLYAuNbdZVKmXqMdVR3q03Ect86AdFk+o/ncJoAVeWKp
	KXKSOsP7zMJMRWCfwZ1w5J+Tf2Fhwd8amGs/obtQhmTM+WxvI0C/Yd8jgeyH450NGAj11dXSvll
	ghDehKYQmzTxaMprUuN4=
X-Google-Smtp-Source: AGHT+IHWZDl5zkqZIwHY29NR0GM8Q+CqAF9P42JqdFTTVI0DfFTzZMOYU6wY0UHJwzx2ehMvee/T6w==
X-Received: by 2002:a17:902:db0f:b0:223:525b:2a7 with SMTP id d9443c01a7336-228048b23ccmr63535595ad.15.1743093367707;
        Thu, 27 Mar 2025 09:36:07 -0700 (PDT)
Received: from localhost ([2a00:79e0:3e00:2601:3afc:446b:f0df:eadc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291f1dece6sm1539855ad.192.2025.03.27.09.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 09:36:07 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 27 Mar 2025 09:36:05 -0700
Message-ID: <20250327163605.54760-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C75A445F4F
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.214.171:from];
	NEURAL_HAM(-0.00)[-0.995];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.214.171:from]
X-Rspamd-Action: no action
Message-ID-Hash: 2KQMXWAFUZ7XXTJFTCWYMVFZZHKTT7AG
X-Message-ID-Hash: 2KQMXWAFUZ7XXTJFTCWYMVFZZHKTT7AG
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Rob Clark <robdclark@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3] drm/syncobj: Extend EXPORT_SYNC_FILE for timeline syncobjs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2KQMXWAFUZ7XXTJFTCWYMVFZZHKTT7AG/>
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

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/drm_syncobj.c | 18 +++++++++++++-----
 include/uapi/drm/drm.h        |  3 +++
 2 files changed, 16 insertions(+), 5 deletions(-)

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
index 7fba37b94401..dd0fd13eadbd 100644
--- a/include/uapi/drm/drm.h
+++ b/include/uapi/drm/drm.h
@@ -906,12 +906,15 @@ struct drm_syncobj_destroy {
 
 #define DRM_SYNCOBJ_FD_TO_HANDLE_FLAGS_IMPORT_SYNC_FILE (1 << 0)
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
