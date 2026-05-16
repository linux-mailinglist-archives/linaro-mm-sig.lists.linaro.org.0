Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGbtMlBQCGqDjAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:09:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C7A55B57B
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:09:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 67BFD404E5
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 11:09:03 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id E6D064044F
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 11:06:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=OKdNQ7u4;
	spf=pass (lists.linaro.org: domain of ju.orth@gmail.com designates 209.85.128.47 as permitted sender) smtp.mailfrom=ju.orth@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-48909558b3aso6969755e9.0
        for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 04:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778929619; x=1779534419; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dVfs+wqDh2APf8gPwREvGpcVhgxv7KkNQvxDWgzbhy8=;
        b=OKdNQ7u4tVQkBjwf9BaERrLe+60ZJCFqKsq5ZRXmQ2J0+x+ZHVxRDKZX0I7hofSj0M
         5XP/jT2xYuchqYTgmJ6TIAqdd5iNAif2SAhHo312SwHBunWoUrZWp9vLTFOahYB3kSua
         zktzxoNmiskT3hq3c0tOQIckqvvDNcbCQk2wkR7A5t7JU+a8xW06eYbjffByFsjaSLXS
         eBuhhIO0ZCo81EVLSo7se/g4e8jsZ3EL/BOHHjnzXywhjZ4WMSvBX+ZLI+DOn1nCp1Bv
         u7MTpBkuB7bYcxCfkWfdSjBb5MAGqqGF2mQtcG5U2UDJufPoC6NI12cCzBvsNYr1uoDW
         wQ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778929619; x=1779534419;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dVfs+wqDh2APf8gPwREvGpcVhgxv7KkNQvxDWgzbhy8=;
        b=XrLXR1VKdkxSnkMpVZKZg9nUet0aD0xmcI9fepxflK6dWruV0wJ69scfHlsTuz2bsF
         cmtslCiZ9c0E4qfB2JmzA5D51O/eeqq24B8IAuAsKeuSXx0fl//ILTkyieXeQZwAk4ql
         Pu1VtwmqIj1od78QPcA8VCbGQqGhoB2Nx/7HY98eRzqCNmnLB/E/a4abE6MtL7thz+g3
         MwlcFSlMo9eF6H8h9vJR6Uymxh1/5Ii90rQr2n64tzoAKvK+IyNN00cjbUmBAKhrs/lt
         BFrK9yZ0J46T3CWN+te15+GhyAefycBc+McjSxsDuHjJF9Qwdf7viAj9Me4RU3LoaUqo
         HvGw==
X-Forwarded-Encrypted: i=1; AFNElJ9UPdFiYIyH7VLj4kPbuZ1BAEVYO6FKS3eurLwt1bX0sEllkvK2Gtae7tnLDYn99DDKb9WizNh6VlvzNQ1B@lists.linaro.org
X-Gm-Message-State: AOJu0Yylg/IUAXPpHsuKK3MJ/TaLIf7UcSWerYNlTTZS04BPL0qTna0I
	W67UTuhtexCySKhMLXoiQwwlpgpIciucW71dJeNMq5VHNwc0lnYZFLR3
X-Gm-Gg: Acq92OHwSRbjsNZMgFR8vveF3pIUHQWcoprD4vTc78kJmviBz2tR39kLC5KzBDGi7xb
	jG9nv5hZ1HDyu7HYIiamDzTzGwKsxpunjVETDsGG2YYvKHsofVMYvCMK3XzDGCsUXxomDVxWyeS
	qgZ3U8xRC2r8QkXEf0SG6EKAPbmnXPBVXS+l+aoobc/Vmdls8qdqJRn/VZRu9TZ0Ev7voca8p1/
	DgBtsVKD8H6usKAlrN6HQc58SdAw2kzZBOPC+yLYFqK86hTgTIHnA1Tnwh/yJcanymKzwpU3wxD
	vQ3jDUsfsVSBWXueFDi0noWOY4YDmG5J0Mey5qXnyHmFYPxSN0NHOEPOfXsIJW6PNGG4mgMlxyk
	KRbOuIeLIlmWEkUoq824g44T0l9iuQaOl6jAv/oXZkswALLg9reAFXcAOD1zcEuXAcK29liY/hE
	PXTdt6bh3OWVXuq3INgSL50JHyen852hCeG4eAPCS/8mPFrIvtO62mP2rA3BEfRzuZb/zzJd/Ol
	LJQmUM=
X-Received: by 2002:a05:600c:c4a1:b0:48a:5363:8cac with SMTP id 5b1f17b1804b1-48fe63268eemr108045305e9.22.1778929618884;
        Sat, 16 May 2026 04:06:58 -0700 (PDT)
Received: from [10.13.0.20] (ip87-106-117-14.pbiaas.com. [87.106.117.14])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48feb00e5easm36399545e9.13.2026.05.16.04.06.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 May 2026 04:06:58 -0700 (PDT)
From: Julian Orth <ju.orth@gmail.com>
Date: Sat, 16 May 2026 13:06:14 +0200
MIME-Version: 1.0
Message-Id: <20260516-jorth-syncobj-v1-11-88ede9d98a81@gmail.com>
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
In-Reply-To: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778929602; l=3389;
 i=ju.orth@gmail.com; s=20251120; h=from:subject:message-id;
 bh=9xL4k8P4OzDmeuDyBCak9cYfAMz/kFZpIBcu/tKVYxQ=;
 b=IyP6KTEg/nnToCAtPFKyKdeoh+C+VT61maR9YZkQriDB2BckEZMqDGD+hg82OZFoyq8W/t5dM
 UcduM0gEp0VDuV8slfvoJd+B0QiHGRqTA8TF5AMzoWTfDIVoRvYYEyG
X-Developer-Key: i=ju.orth@gmail.com; a=ed25519;
 pk=uM2SS4lelkuIoYHc7v9N9bgBZ3hS632zJS2xjRJLPLI=
X-Spamd-Bar: ----
Message-ID-Hash: LBJDJQE5EUJAFXNYETESWNXDL2FZIEDL
X-Message-ID-Hash: LBJDJQE5EUJAFXNYETESWNXDL2FZIEDL
X-MailFrom: ju.orth@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, ju.orth@gmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 11/12] drm/syncobj: add drm_syncobj_export_sync_file
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LBJDJQE5EUJAFXNYETESWNXDL2FZIEDL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 71C7A55B57B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lwn.net,linuxfoundation.org,arndb.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[juorth@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.linaro.org,gmail.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.029];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

This makes the logic from drm_syncobj_export_sync_file_by_handle
available to callers that have a drm_syncobj instead of a
drm_file/handle pair.

Signed-off-by: Julian Orth <ju.orth@gmail.com>
---
 drivers/gpu/drm/drm_syncobj.c | 39 ++++++++++++++++++++++++++++++++++-----
 include/drm/drm_syncobj.h     |  2 ++
 2 files changed, 36 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
index 4c1667c67cb7..d5e633738730 100644
--- a/drivers/gpu/drm/drm_syncobj.c
+++ b/drivers/gpu/drm/drm_syncobj.c
@@ -815,8 +815,34 @@ int drm_syncobj_import_sync_file(struct drm_syncobj *syncobj,
 }
 EXPORT_SYMBOL(drm_syncobj_import_sync_file);
 
-static int drm_syncobj_export_sync_file(struct drm_file *file_private,
-					int handle, u64 point, int *p_fd)
+static int drm_syncobj_export_sync_file_by_handle(struct drm_file *file_private,
+						   int handle, u64 point,
+						   int *p_fd)
+{
+	struct drm_syncobj *syncobj;
+	int ret;
+
+	syncobj = drm_syncobj_find(file_private, handle);
+	if (!syncobj)
+		return -ENOENT;
+
+	ret = drm_syncobj_export_sync_file(syncobj, point, p_fd);
+
+	drm_syncobj_put(syncobj);
+
+	return ret;
+}
+
+/**
+ * drm_syncobj_export_sync_file - export a syncobj fence as a sync_file fd
+ * @syncobj: syncobj to export from
+ * @point: timeline point or 0
+ * @p_fd: out parameter for the new file descriptor
+ *
+ * Returns 0 on success or a negative error value on failure.
+ */
+int drm_syncobj_export_sync_file(struct drm_syncobj *syncobj,
+				 u64 point, int *p_fd)
 {
 	int ret;
 	struct dma_fence *fence;
@@ -826,7 +852,7 @@ static int drm_syncobj_export_sync_file(struct drm_file *file_private,
 	if (fd < 0)
 		return fd;
 
-	ret = drm_syncobj_find_fence(file_private, handle, point, 0, &fence);
+	ret = drm_syncobj_fence_lookup(syncobj, point, 0, &fence);
 	if (ret)
 		goto err_put_fd;
 
@@ -847,6 +873,8 @@ static int drm_syncobj_export_sync_file(struct drm_file *file_private,
 	put_unused_fd(fd);
 	return ret;
 }
+EXPORT_SYMBOL(drm_syncobj_export_sync_file);
+
 /**
  * drm_syncobj_open - initializes syncobj file-private structures at devnode open time
  * @file_private: drm file-private structure to set up
@@ -933,8 +961,9 @@ drm_syncobj_handle_to_fd_ioctl(struct drm_device *dev, void *data,
 		point = args->point;
 
 	if (args->flags & DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_EXPORT_SYNC_FILE)
-		return drm_syncobj_export_sync_file(file_private, args->handle,
-						    point, &args->fd);
+		return drm_syncobj_export_sync_file_by_handle(file_private,
+							      args->handle,
+							      point, &args->fd);
 
 	if (args->point)
 		return -EINVAL;
diff --git a/include/drm/drm_syncobj.h b/include/drm/drm_syncobj.h
index 1571ffa12a5c..48476c570595 100644
--- a/include/drm/drm_syncobj.h
+++ b/include/drm/drm_syncobj.h
@@ -145,6 +145,8 @@ int drm_syncobj_query(struct drm_syncobj **syncobjs, u64 user_points,
 		      u32 count, u32 flags);
 int drm_syncobj_import_sync_file(struct drm_syncobj *syncobj,
 				 int sync_file_fd, u64 point);
+int drm_syncobj_export_sync_file(struct drm_syncobj *syncobj,
+				 u64 point, int *p_fd);
 void drm_syncobj_free(struct kref *kref);
 int drm_syncobj_create(struct drm_syncobj **out_syncobj, uint32_t flags,
 		       struct dma_fence *fence);

-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
