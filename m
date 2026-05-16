Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MKflECNQCGqDjAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:08:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F394F55B530
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:08:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0EC054062E
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 11:08:18 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by lists.linaro.org (Postfix) with ESMTPS id F23B74043C
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 11:06:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ddF2domR;
	spf=pass (lists.linaro.org: domain of ju.orth@gmail.com designates 209.85.128.43 as permitted sender) smtp.mailfrom=ju.orth@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-48e56c1bf5dso2685375e9.3
        for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 04:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778929614; x=1779534414; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6GkkTkJJ4gPDTN90NOOy2Oe9JOnAG88gTd5YGKnZHEk=;
        b=ddF2domR7yDbYaq40wIhVukOeEP4xglrQdoovVrrfTTg++VefTLXeKy7ZCQc4VMwG6
         56nDapNX6m4r9O9j3wFC58V0auEDcE7sJLErbG90AaIMZHpKL4AnIWRdj/GTDPDp6HzO
         dgQ7uAlWyLDaBYMd3nPrMGcteZYxvSpjqBZSs2+mrhwGXyIeRVOcMQME7Xonb+JG7OCV
         PRLXAT8KzeBeudbdBrM/fgmXRvaHtghNnCbsMpmj24unMwjftX2E04Dibsqp6DireDbY
         ohzM7CgVEGUAhMzbR5LTy5fD/FLcS3OTQAUlLdvYVGWSFvbFhVWEqU9SR5SkirXqsjg0
         OkIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778929614; x=1779534414;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6GkkTkJJ4gPDTN90NOOy2Oe9JOnAG88gTd5YGKnZHEk=;
        b=UnyTGNkVL2FudyBZQG4AF+oPGkBfPjbHUuVNyQ0/QyCuIeVNUcY2DnIyiiPYFspTJr
         oVBasHInAWRHSl38mgKSYwRBuOtFmoan7NKkYrb4LMnPf2aks8mK+7Ho0MQDrATFntkJ
         iUiVEkc4PPLnk6MgbkfK0xUYfAeWkrR9ML5GUH/DnLExQtrf2UytoU940Bof4odBFpqC
         bcb1bJkLyh779RvG23RG7EyBawISzld0na+CYSlZQmCL238EdqfoISUvvsIcwIJXqUtK
         eBjmpb8D8FaXUdPqF/O6cSxr48OT7vjr6dpYrX9zjtFSEtDbJxjkJ9SbSMQqe47mv7C2
         Gu/Q==
X-Forwarded-Encrypted: i=1; AFNElJ+MqVRQ5HoqmBfxBoIflI625iG61zy5cdpNso3Kf7wEkKMDI/O717dlvqdrzUQUk9z8NEk+i+T2/Sg4D6Nf@lists.linaro.org
X-Gm-Message-State: AOJu0YzykSiJqfBC/Y6yy5kwJJyPhH44zxiADQWe6RLzKrT0r9fqQTGv
	C+DsweiUx8+9BowrsMMb0Xoa2XYkYcpmpKLYcvXclo6eRPFM+M/ZQLs7
X-Gm-Gg: Acq92OHZ+C+pO2fsk8O6JJg0CfBsGL/AYQWJ0NXIyX1eOIRnYgUsCqas4ytOsxjgopy
	dKhkws7LTsufwQiBT2XXBPe8LnmRHMoD0LCCdomvnOi78IcYCIGpu7L34fPhiWPAULkxyZz7cLS
	NRhOeTK6si2Iokq7X36Zyh0Ps+jMwGtPZx3mP8L0LnKUeEJZX76yBGulWX7AbEc+INund5zguyJ
	oIXawM3XlSoNmtpDATgmqKuohxW4cPCvD/cknFgp8X9M6x2jZd5jfx6cN62S/gLVbwriRIfUjwC
	b+yi/hD7sZuyXsnpIPZgkjPn5NrmchuH5vHUmd2L7zeZFtnmAYX6DOzmhBoLJIRH0QH3m9dDw86
	Z1Q5aWa79LVqrHmEWJ4Ahd71vOj2S5LOdrZWLQ/rghTz+it/73lk/byRUMlRX2rVFpw4sJVJLmZ
	oS18vNL40eNo1sWPMExNckX2dQ6Uekep08usgEUw3/+9IkJ8Vn5NTmeAVqLqjBhIicPsAO+BTwF
	5S46J8W+Ivvlnh02w==
X-Received: by 2002:a05:600c:8b18:b0:48f:e230:1d13 with SMTP id 5b1f17b1804b1-48fe632a17cmr113820945e9.32.1778929613501;
        Sat, 16 May 2026 04:06:53 -0700 (PDT)
Received: from [10.13.0.20] (ip87-106-117-14.pbiaas.com. [87.106.117.14])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48feb00e5easm36399545e9.13.2026.05.16.04.06.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 May 2026 04:06:53 -0700 (PDT)
From: Julian Orth <ju.orth@gmail.com>
Date: Sat, 16 May 2026 13:06:10 +0200
MIME-Version: 1.0
Message-Id: <20260516-jorth-syncobj-v1-7-88ede9d98a81@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778929602; l=4123;
 i=ju.orth@gmail.com; s=20251120; h=from:subject:message-id;
 bh=GBWZLpTSQKwI1OU9IPw5ePXafftNdAo847uKMqv9qQs=;
 b=0gZo9A/tA5EbfMN54peF660OcWHUpqWJdekS7fQjA+fGOVO86M7bIbAQu7ODFDJVVH0bdcsvX
 oBVYQt/E6R0BsJf+sfH3PTEAIAKrD2RH29Jg6VWUMm3yc+y9LG9cMif
X-Developer-Key: i=ju.orth@gmail.com; a=ed25519;
 pk=uM2SS4lelkuIoYHc7v9N9bgBZ3hS632zJS2xjRJLPLI=
X-Spamd-Bar: ----
Message-ID-Hash: AUY7LHWHHG52ZNSH37BUT36DIGG6MXIR
X-Message-ID-Hash: AUY7LHWHHG52ZNSH37BUT36DIGG6MXIR
X-MailFrom: ju.orth@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, ju.orth@gmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 07/12] drm/syncobj: add drm_syncobj_timeline_signal
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AUY7LHWHHG52ZNSH37BUT36DIGG6MXIR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: F394F55B530
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
	NEURAL_SPAM(0.00)[0.033];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

This makes the logic from drm_syncobj_timeline_signal_ioctl available to
callers that already have an array of drm_syncobj.

Signed-off-by: Julian Orth <ju.orth@gmail.com>
---
 drivers/gpu/drm/drm_syncobj.c | 50 ++++++++++++++++++++++++++++++++-----------
 include/drm/drm_syncobj.h     |  2 ++
 2 files changed, 40 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
index 8ccfbd972191..948084f56c32 100644
--- a/drivers/gpu/drm/drm_syncobj.c
+++ b/drivers/gpu/drm/drm_syncobj.c
@@ -1675,9 +1675,6 @@ drm_syncobj_timeline_signal_ioctl(struct drm_device *dev, void *data,
 {
 	struct drm_syncobj_timeline_array *args = data;
 	struct drm_syncobj **syncobjs;
-	struct dma_fence_chain **chains;
-	uint64_t *points;
-	uint32_t i, j;
 	int ret;
 
 	if (!drm_core_check_feature(dev, DRIVER_SYNCOBJ_TIMELINE))
@@ -1696,26 +1693,55 @@ drm_syncobj_timeline_signal_ioctl(struct drm_device *dev, void *data,
 	if (ret < 0)
 		return ret;
 
-	points = kmalloc_array(args->count_handles, sizeof(*points),
+	ret = drm_syncobj_timeline_signal(syncobjs, args->points, args->count_handles);
+
+	drm_syncobj_array_free(syncobjs, args->count_handles);
+
+	return ret;
+}
+
+/**
+ * drm_syncobj_timeline_signal - signal timeline points on syncobjs
+ * @syncobjs: array of syncobjs
+ * @user_points: user pointer to array of timeline points
+ * @count: number of syncobjs
+ *
+ * Signals each syncobj at the corresponding timeline point.
+ *
+ * Returns 0 on success or a negative error value on failure.
+ */
+int
+drm_syncobj_timeline_signal(struct drm_syncobj **syncobjs,
+			    u64 user_points, u32 count)
+{
+	struct dma_fence_chain **chains;
+	uint64_t *points;
+	uint32_t i, j;
+	int ret = 0;
+
+	if (count == 0)
+		return -EINVAL;
+
+	points = kmalloc_array(count, sizeof(*points),
 			       GFP_KERNEL);
 	if (!points) {
 		ret = -ENOMEM;
 		goto out;
 	}
-	if (!u64_to_user_ptr(args->points)) {
-		memset(points, 0, args->count_handles * sizeof(uint64_t));
-	} else if (copy_from_user(points, u64_to_user_ptr(args->points),
-				  sizeof(uint64_t) * args->count_handles)) {
+	if (!u64_to_user_ptr(user_points)) {
+		memset(points, 0, count * sizeof(uint64_t));
+	} else if (copy_from_user(points, u64_to_user_ptr(user_points),
+				  sizeof(uint64_t) * count)) {
 		ret = -EFAULT;
 		goto err_points;
 	}
 
-	chains = kmalloc_array(args->count_handles, sizeof(void *), GFP_KERNEL);
+	chains = kmalloc_array(count, sizeof(void *), GFP_KERNEL);
 	if (!chains) {
 		ret = -ENOMEM;
 		goto err_points;
 	}
-	for (i = 0; i < args->count_handles; i++) {
+	for (i = 0; i < count; i++) {
 		chains[i] = dma_fence_chain_alloc();
 		if (!chains[i]) {
 			for (j = 0; j < i; j++)
@@ -1725,7 +1751,7 @@ drm_syncobj_timeline_signal_ioctl(struct drm_device *dev, void *data,
 		}
 	}
 
-	for (i = 0; i < args->count_handles; i++) {
+	for (i = 0; i < count; i++) {
 		struct dma_fence *fence = dma_fence_get_stub();
 
 		drm_syncobj_add_point(syncobjs[i], chains[i],
@@ -1737,10 +1763,10 @@ drm_syncobj_timeline_signal_ioctl(struct drm_device *dev, void *data,
 err_points:
 	kfree(points);
 out:
-	drm_syncobj_array_free(syncobjs, args->count_handles);
 
 	return ret;
 }
+EXPORT_SYMBOL(drm_syncobj_timeline_signal);
 
 int drm_syncobj_query_ioctl(struct drm_device *dev, void *data,
 			    struct drm_file *file_private)
diff --git a/include/drm/drm_syncobj.h b/include/drm/drm_syncobj.h
index ec8042d61466..a9216ea07946 100644
--- a/include/drm/drm_syncobj.h
+++ b/include/drm/drm_syncobj.h
@@ -139,6 +139,8 @@ int drm_syncobj_register_eventfd(struct drm_syncobj *syncobj,
 int drm_syncobj_transfer(struct drm_syncobj *src, u64 src_point,
 			 struct drm_syncobj *dst, u64 dst_point,
 			 u32 flags);
+int drm_syncobj_timeline_signal(struct drm_syncobj **syncobjs,
+				u64 user_points, u32 count);
 void drm_syncobj_free(struct kref *kref);
 int drm_syncobj_create(struct drm_syncobj **out_syncobj, uint32_t flags,
 		       struct dma_fence *fence);

-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
