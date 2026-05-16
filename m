Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFRlBi1QCGoMjAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:08:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BB36355B546
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:08:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4AF27406AE
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 11:08:27 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id 4AC48405D3
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 11:06:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=lApzLEUd;
	spf=pass (lists.linaro.org: domain of ju.orth@gmail.com designates 209.85.128.54 as permitted sender) smtp.mailfrom=ju.orth@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-48e82c23840so4329365e9.3
        for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 04:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778929615; x=1779534415; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=30Q99PLuQeVhsFXIYdjo6aYJwvFzoWXm4HGv+NrFQtM=;
        b=lApzLEUd/QrgLdBYOXpCBEYTg1r3GW9Sqz9uahKJakx04a3PEsddyY09Wgk6HYYp7T
         ZEGFLrWmZ/ydDnuuDF8YipgqiIEXVFVoUOnh2YJYRK/IwPAWyjjWri++1Cxb08vHBi/e
         4OcC73xjCuQ6xaYD4g5E7sFfy9ve19hPkKe3kkRfZucLjqhJIXYGsOsemC5rudCiHxIJ
         CdJV6eP624sQQXLIiBliMybCEO32RfOiE60KdX1xKkImvvxBBWV2DrZrJ5Qx5tj+VjSU
         eWCOcxYlOOUb/PslzTRpEZ1KMUxrymiC5f1VeVDAixrNxPNqrKbDvhSL3kDXUFbEFTAG
         LLaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778929615; x=1779534415;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=30Q99PLuQeVhsFXIYdjo6aYJwvFzoWXm4HGv+NrFQtM=;
        b=JEWI391atEO65c9xNgAFMr3g4snZ6sZON8Tsd5eKVmPV8udDwHlIjwWW29VbwuQttb
         4wvnl5zzrsq8Gn/0xYRb6cqzTs+J12+BJBnVZgmr0+w+9zuyNsu9NcsFnE1jK7XEO69s
         cAjVrWRXdc9ZGutIY2YQqBDJk5sQGiL5QREKwu6yNdTJVachpqj2cDVNqcocBUpdQfAB
         LObF97gtsKMOmruIzsmBHjkAXUSStOe872Qk4T3DRrF24vyLqQebZ23WahyxUIxyGIqq
         MWd2ttN5ZI0GpElrjwC3SCSHvvlNeoXeXhnAX6FpiwNTQUtBq0o7cE0PQcQ+CTb+s4cO
         65iQ==
X-Forwarded-Encrypted: i=1; AFNElJ+Pe9hoYHw1uvbDzI5HE3HQ4V/7rgQwZGolF+6U2BMKdAroev9TX1bdB982iHJFeOjqu8o+7h8bME/NRNCD@lists.linaro.org
X-Gm-Message-State: AOJu0YxqWt6xyPQyyiE6bZz42y4Ipxm+mCvOiEpSGY6EsIYVrgrJ3TED
	kIndLnF+gcNChXcIaA5qjaE+1wC6J76RKK2+SoeGfWUJVcK4SZYtoGMs
X-Gm-Gg: Acq92OFsBd9a6/x7WlGvFRCgpIt85DW6Y/i7Vz/reMry+eSF1OJcuwNq36jIK1qlHDa
	QZGnephYNoU6YjkzvP1HTHL+3yNqSdvvPKOvEiajsSCq+xuJPFtlBIqna8qX+2ByKzsYn0W+Rmy
	q3bMWZYMnF0vrb1JPqr1srRLXbo3CfO48wk1mU45ZpU2YRS/g6Lw0moaGd0hEYE67KbKz8R4iJE
	GKTCnFOvNJJgC/+qcEXRC6YQhhpYB2bjoSNud8GeCC0lyC7R2tkPj4uliyVJe4H42Y0k6fMnWWO
	3O/+Dw6ZOS91+/d2tLIRPaCMufLTbvi16Vnd/We0u+g1A3FKUkg8B3mvSPlUnW+7Pk3fXc8alPh
	yk+/1D08JFft1PTO61o8v1byeC+Lj2w6jIqsLzqA+0mriL3ISoADyiAhzzW1nxgnejtIeDU4ip1
	w0vSN5k46ZUaP6nid4UNdKW3y09jaRMO9UJHLUBgZZfQmPxmfilqSjHq/q9zK47M0+2C9VfGQ/g
	H4WqBU=
X-Received: by 2002:a05:600c:8189:b0:48e:89f9:9408 with SMTP id 5b1f17b1804b1-48fe632374fmr115018775e9.20.1778929614964;
        Sat, 16 May 2026 04:06:54 -0700 (PDT)
Received: from [10.13.0.20] (ip87-106-117-14.pbiaas.com. [87.106.117.14])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48feb00e5easm36399545e9.13.2026.05.16.04.06.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 May 2026 04:06:54 -0700 (PDT)
From: Julian Orth <ju.orth@gmail.com>
Date: Sat, 16 May 2026 13:06:11 +0200
MIME-Version: 1.0
Message-Id: <20260516-jorth-syncobj-v1-8-88ede9d98a81@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778929602; l=3038;
 i=ju.orth@gmail.com; s=20251120; h=from:subject:message-id;
 bh=u/7AwpljxtH4IVP0O+P5dyfoAPoN+qqc7x1nJCbL2qA=;
 b=Z99DZxu195EeP3vO6X1kysFQ8YqTJJCA0BtkhBQFSClYANqqlJRzUiJ2Mte4dsbxSoaJ7uZfc
 SeQCmRzeltDByjvV1yhoKMIXpDXzFzH7PGzJ6lguaIs7JV/fN5LYMoH
X-Developer-Key: i=ju.orth@gmail.com; a=ed25519;
 pk=uM2SS4lelkuIoYHc7v9N9bgBZ3hS632zJS2xjRJLPLI=
X-Spamd-Bar: ----
Message-ID-Hash: A4XPISTY3H67CWQYHEYJ3N4K2NB6GOMN
X-Message-ID-Hash: A4XPISTY3H67CWQYHEYJ3N4K2NB6GOMN
X-MailFrom: ju.orth@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, ju.orth@gmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 08/12] drm/syncobj: add drm_syncobj_query
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A4XPISTY3H67CWQYHEYJ3N4K2NB6GOMN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: BB36355B546
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
	NEURAL_SPAM(0.00)[0.015];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

This makes the logic from drm_syncobj_query_ioctl available to callers
that already have an array of drm_syncobj.

Signed-off-by: Julian Orth <ju.orth@gmail.com>
---
 drivers/gpu/drm/drm_syncobj.c | 32 +++++++++++++++++++++++++++-----
 include/drm/drm_syncobj.h     |  2 ++
 2 files changed, 29 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
index 948084f56c32..9b7ecc2978f5 100644
--- a/drivers/gpu/drm/drm_syncobj.c
+++ b/drivers/gpu/drm/drm_syncobj.c
@@ -1773,8 +1773,6 @@ int drm_syncobj_query_ioctl(struct drm_device *dev, void *data,
 {
 	struct drm_syncobj_timeline_array *args = data;
 	struct drm_syncobj **syncobjs;
-	uint64_t __user *points = u64_to_user_ptr(args->points);
-	uint32_t i;
 	int ret;
 
 	if (!drm_core_check_feature(dev, DRIVER_SYNCOBJ_TIMELINE))
@@ -1793,7 +1791,31 @@ int drm_syncobj_query_ioctl(struct drm_device *dev, void *data,
 	if (ret < 0)
 		return ret;
 
-	for (i = 0; i < args->count_handles; i++) {
+	ret = drm_syncobj_query(syncobjs, args->points,
+				args->count_handles, args->flags);
+
+	drm_syncobj_array_free(syncobjs, args->count_handles);
+
+	return ret;
+}
+
+/**
+ * drm_syncobj_query - query timeline points of syncobjs
+ * @syncobjs: array of syncobjs
+ * @user_points: user pointer to array of timeline points
+ * @count: number of syncobjs
+ * @flags: DRM_SYNCOBJ_QUERY_FLAGS_LAST_SUBMITTED or 0
+ *
+ * Queries the timeline point of each syncobj and writes it to @points.
+ */
+int drm_syncobj_query(struct drm_syncobj **syncobjs, u64 user_points,
+		      u32 count, u32 flags)
+{
+	uint64_t __user *points = u64_to_user_ptr(user_points);
+	uint32_t i;
+	int ret = 0;
+
+	for (i = 0; i < count; i++) {
 		struct dma_fence_chain *chain;
 		struct dma_fence *fence;
 		uint64_t point;
@@ -1804,7 +1826,7 @@ int drm_syncobj_query_ioctl(struct drm_device *dev, void *data,
 			struct dma_fence *iter, *last_signaled =
 				dma_fence_get(fence);
 
-			if (args->flags &
+			if (flags &
 			    DRM_SYNCOBJ_QUERY_FLAGS_LAST_SUBMITTED) {
 				point = fence->seqno;
 			} else {
@@ -1832,7 +1854,7 @@ int drm_syncobj_query_ioctl(struct drm_device *dev, void *data,
 		if (ret)
 			break;
 	}
-	drm_syncobj_array_free(syncobjs, args->count_handles);
 
 	return ret;
 }
+EXPORT_SYMBOL(drm_syncobj_query);
diff --git a/include/drm/drm_syncobj.h b/include/drm/drm_syncobj.h
index a9216ea07946..da237ca3e61f 100644
--- a/include/drm/drm_syncobj.h
+++ b/include/drm/drm_syncobj.h
@@ -141,6 +141,8 @@ int drm_syncobj_transfer(struct drm_syncobj *src, u64 src_point,
 			 u32 flags);
 int drm_syncobj_timeline_signal(struct drm_syncobj **syncobjs,
 				u64 user_points, u32 count);
+int drm_syncobj_query(struct drm_syncobj **syncobjs, u64 user_points,
+		      u32 count, u32 flags);
 void drm_syncobj_free(struct kref *kref);
 int drm_syncobj_create(struct drm_syncobj **out_syncobj, uint32_t flags,
 		       struct dma_fence *fence);

-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
