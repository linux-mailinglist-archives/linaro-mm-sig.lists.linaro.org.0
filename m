Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C73E5A718B2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Mar 2025 15:39:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A411D44295
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Mar 2025 14:39:22 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	by lists.linaro.org (Postfix) with ESMTPS id 332303F64F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Mar 2025 14:39:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="I/JobrYQ";
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.172 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2264aefc45dso132698055ad.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Mar 2025 07:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742999947; x=1743604747; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y6eqkhZ1Vwmt9gRQ04JNUAxBEvP0I4y2gPx1o8AAFWU=;
        b=I/JobrYQRX6iIvyG9KI37cRzWl4WDE7JvcBNGXhKKhNZUqYAn8lUnhbIjjAxxhPjYn
         GoXPIW5Cmt9C16K4kVwZcFgd6CpzAp08ptYDKgSwSvNVt8GJuA92rLZazINlxJCI98dd
         ZdcQLtbUR2NbvpEYpHHcOMyYRcQPFtzOA9mmmshnhGCsorlhoqFu1cqUYVud9gQ6Qq0s
         pW6dc8maq9eduhqKbZ26Aw7nP8FllqxgU4sBMuOrNxrw781Wq11xEEVlRAOvrjvnSjaM
         4lvIbs6VB4w2CvP5dza1BIsvAWK8tN2t2TCyFH6s/OCO6NW+rPxinhBNgTmE9NWcp4Ti
         Jhdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742999947; x=1743604747;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y6eqkhZ1Vwmt9gRQ04JNUAxBEvP0I4y2gPx1o8AAFWU=;
        b=fc8QOi9jllWkNyXLWK3ZZqUckTbpfjnTMNDDDU0tGmhANVKSh+nFD0hWVjAoWoaWWQ
         eGZ67V+PSdQL5QS4HYhkejIt/0YEjwA068+ZiywkHnskq6V/xbgEJuEVtVSokbxhfcB6
         gmXfs+YxUiozK61KXx4UsG/nCInP/BLIHdZi/oZOVRQbua7pQSA7jqfP33enBj1zSObH
         D9CXe+Cb+xOnKdafwBtxb45FKb3kJzgrNdyHaU9Hpou4cTkchI2MQTdpOj1vMSVMW7Gw
         xLLxRjek5TgASZhvpOK0K/HuUlX8+AP3I64nr8vXMDwNyAzMUOl0ggzfPN1GkRZLzMiV
         tFWA==
X-Forwarded-Encrypted: i=1; AJvYcCWkUbvFaM4YCOLohLBY5SwVX/TwI7VcqZxZw1lZ9VVZ5ALPAksNjQBQNX5ZiX3n8CiaQrR0kpY1+JzShlpu@lists.linaro.org
X-Gm-Message-State: AOJu0YxVP6q2AIXniFdo9eETDiSKButbYqlcxIdIBJDjHFNAVlAnAmZp
	Z1BVq//R26x+lO1oU24iV0tmswEP056O9HAy70NTp9NUrSkgovdR
X-Gm-Gg: ASbGncu+gH+8otnjadae0OiWzCpbfVtYUjjMDLOVAoyc/8O/Rn3ngBZS2ggpWCNbZCU
	rrq6HQ94MYyk375capaUAGayGDtEl1Ry23/LXzEPtiud5viy5f7P4fMizxiVJcfmvogBJvHhvPT
	TWk5Y5aOIb1XnCvfVpOerpHMolJvl7cu0V06CvIdt5QBskRgqhQxn6B/S/aGiv08n8TTfDg49P4
	XVBKXxrPtA0GkCROTr3STGwVqPm6VcR79sgIGMCpmX0Sdi9oLnaUWVQBSyf7FbKrBdoyc10Ayos
	Q+jG4tlSlQBTuELiIPMBdvVxWTKy3wTonEllgGKTMI7QOVWTPg6nAZDIM6hagQc+L+Dltnl1Uk6
	IW0lU24XBaur7xZkdrXs=
X-Google-Smtp-Source: AGHT+IEBdj4C54pk495ep9DblHTWWweUHbck96M9LKkZuKckCu/4LFHmW8yUHZCPndAEkbi38ZOc+w==
X-Received: by 2002:a17:902:db01:b0:223:5c33:56b4 with SMTP id d9443c01a7336-22780d77ee1mr278798465ad.20.1742999947013;
        Wed, 26 Mar 2025 07:39:07 -0700 (PDT)
Received: from localhost ([2a00:79e0:3e00:2601:3afc:446b:f0df:eadc])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-af8a2846270sm11011904a12.36.2025.03.26.07.39.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 07:39:06 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 26 Mar 2025 07:39:03 -0700
Message-ID: <20250326143903.24380-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 332303F64F
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_CC(0.00)[collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,vger.kernel.org,lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.214.172:from];
	NEURAL_HAM(-0.00)[-0.998];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.214.172:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: Z6SX63BCYZ2YPX2HOPUDXPJOXVE4XV6I
X-Message-ID-Hash: Z6SX63BCYZ2YPX2HOPUDXPJOXVE4XV6I
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Dmitry Osipenko <dmitry.osipenko@collabora.com>, Rob Clark <robdclark@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/syncobj: Extend EXPORT_SYNC_FILE for timeline syncobjs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z6SX63BCYZ2YPX2HOPUDXPJOXVE4XV6I/>
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
timeline.

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/drm_syncobj.c | 8 ++++++--
 include/uapi/drm/drm.h        | 2 ++
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
index 4f2ab8a7b50f..eb7a2dd2e261 100644
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
 
@@ -882,8 +882,12 @@ drm_syncobj_handle_to_fd_ioctl(struct drm_device *dev, void *data,
 
 	if (args->flags & DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_EXPORT_SYNC_FILE)
 		return drm_syncobj_export_sync_file(file_private, args->handle,
+						    args->point,
 						    &args->fd);
 
+	if (args->point)
+		return -EINVAL;
+
 	return drm_syncobj_handle_to_fd(file_private, args->handle,
 					&args->fd);
 }
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
