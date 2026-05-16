Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDigN+tPCGoMjAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:07:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB5655B4D6
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:07:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0DB95405D4
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 11:07:22 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id F2999402B6
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 11:06:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=bOX4rf0B;
	spf=pass (lists.linaro.org: domain of ju.orth@gmail.com designates 209.85.128.54 as permitted sender) smtp.mailfrom=ju.orth@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-488ff90d6c7so4171925e9.2
        for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 04:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778929607; x=1779534407; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DZXH6WE6NwIFHcNfcXNqTsh8pXC1vp/igAOE1DEZDoU=;
        b=bOX4rf0BrJeKdQx7xV5wp1MJcWbrrPEcBBEmU9gjwM1oH3H0l2RdzYfaUYVtkbpScC
         BlC4Pj2iz3UAg5VRx1Gn9LCsijx6il0r+HWB0qlevwtLT4/8ZCYscxjvbCnlhjhxHjW0
         +X64QDSTQj3e94V1VEa0n89AR76nofrwytj8PGeMcRyicmlv5aX+tWNS4zodDFo6ujh7
         82i10DZ6Z1PbGrIXZjJSukU2mvexSXetlz8y7YExwEnatsTdgvc3CtdDuT6QeZujLMd5
         TC9khMLquf+wR7IQmmjLyI3aQD3c0VVt1/ZnXSLqLtq0qoiY5ulAmsVvZfC/7TnhM0rC
         wexA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778929607; x=1779534407;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DZXH6WE6NwIFHcNfcXNqTsh8pXC1vp/igAOE1DEZDoU=;
        b=UnLMUEeGWryivkrYIEnfOYrFdXCohXJg5cZRSkLVek9EHs8RtVaORYNSZOAdKeIoH4
         ZKUp9YGDvU3m4XDiV3kFjgbE7sY8g4gfBYS3NMFkvxiCqnRv9C4ewMo4B55tBERG32LA
         9iFIl2TGiBmrfwvQpoyxQyiq9AeMYFVPd9rwUbb3CQiLT2Tmryyqh1EkRzM7VUhxz34V
         y2pUYFPak8Hyxal+FwG07VijJNFEyrMx5KBgqxuPe+lGkNEVZNjbnvjkGwGfGRAfVQJt
         JIjrRWa72ABz2cRqoGyJWR7XiKSFxuRVH0hvoV35qI8fYyOCH8TY4am5ZUhJKUHti5XT
         y1PA==
X-Forwarded-Encrypted: i=1; AFNElJ/vAoe8U5XKOPMKICaTScxXALNCpq3VRRYqwfTe7EqsRz3nN9VYvrG3MRtOnOLa8TyV7PyCNgRBp9tER1ZG@lists.linaro.org
X-Gm-Message-State: AOJu0YzB+OuF4BtVfMU9SIQfcufmyHjPypBXYcjXK4CQ5bJruy+2TGZp
	r2qovkWkhlwPZVBEXBrNuVrUO8jtk5DXmNU5DBiBuR3H+Xyg47jkY2AP
X-Gm-Gg: Acq92OHPWIj3m943liqSyUmzb86OnxKxwHUFY8HLuMvndB9jFSjmkS5Rmz2YsIXrgvX
	IXf4ygzbj0Fnho6KqkGDnN3lFI1kypBRWilgteUk/8Gq3hvDRPQCZ32frHQvXtBOD8punfPnb6h
	sRTlKrP1VqafjrqRhkDPSHQ+bXcsqh2ng+fgaWRJIYUptbMXXZs0NPI22VQl4C6u4C3txdXYLLb
	gB8z4ks01FmN2KJ+0aV46IUizDdJ6oXb6wCE63Mo1gCxuCgsuLcV7VemaZv5PpFYOWGdLU7LVoh
	hChglEcOGc7bM+M1hKmVATRlTfFZ7Gwc3Obeime2l6NARWwXgpAZTNxp4/vhffY+sT88nwEs4LN
	nHH/l7YqRqN6dD170T+1tVsAhVIeQA5Hriq2i8abPHvqU+raYg6ImKIc4nVfPw3t+eAe9++I7+t
	/cvzxn93QsWcy6VHtiRuSJq+VVY07t86PuugvT9RuX9PAGO++kI70MwD0ItUGpaBwEzcByCLdgq
	M6XdZlqxqgi/9IeoA==
X-Received: by 2002:a05:600c:4692:b0:48f:d835:e104 with SMTP id 5b1f17b1804b1-48fe6325391mr108240075e9.16.1778929606890;
        Sat, 16 May 2026 04:06:46 -0700 (PDT)
Received: from [10.13.0.20] (ip87-106-117-14.pbiaas.com. [87.106.117.14])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48feb00e5easm36399545e9.13.2026.05.16.04.06.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 May 2026 04:06:46 -0700 (PDT)
From: Julian Orth <ju.orth@gmail.com>
Date: Sat, 16 May 2026 13:06:05 +0200
MIME-Version: 1.0
Message-Id: <20260516-jorth-syncobj-v1-2-88ede9d98a81@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778929602; l=3464;
 i=ju.orth@gmail.com; s=20251120; h=from:subject:message-id;
 bh=a9lG2nbpvJpNBTclhiNFI8DwaJzMN3KTgSfTJHOAb6U=;
 b=07+mwlPAmGj35N8dMENXh6PCoPSv2aMD6VxpSxRkS+KDubuwjlGqM09oILAMtWVMbSAEmf3Bp
 UZUi9wH3NLuA1L+LQNH3MdycdnESgn7NfT46epz4KcBbp+qwZvxkBy9
X-Developer-Key: i=ju.orth@gmail.com; a=ed25519;
 pk=uM2SS4lelkuIoYHc7v9N9bgBZ3hS632zJS2xjRJLPLI=
X-Spamd-Bar: ----
Message-ID-Hash: QRPNFRECURRJBUMOKNIPJIYT6G6HEBRN
X-Message-ID-Hash: QRPNFRECURRJBUMOKNIPJIYT6G6HEBRN
X-MailFrom: ju.orth@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, ju.orth@gmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 02/12] drm/syncobj: add drm_syncobj_fence_lookup
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QRPNFRECURRJBUMOKNIPJIYT6G6HEBRN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 7DB5655B4D6
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
	NEURAL_SPAM(0.00)[0.011];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

This makes the logic from drm_syncobj_find_fence available to callers
that have a drm_syncobj instead of a drm_file/handle pair.

Signed-off-by: Julian Orth <ju.orth@gmail.com>
---
 drivers/gpu/drm/drm_syncobj.c | 34 ++++++++++++++++++++++++++++------
 include/drm/drm_syncobj.h     |  2 ++
 2 files changed, 30 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
index d992aa082ace..8df438fe0807 100644
--- a/drivers/gpu/drm/drm_syncobj.c
+++ b/drivers/gpu/drm/drm_syncobj.c
@@ -427,7 +427,7 @@ static int drm_syncobj_assign_null_handle(struct drm_syncobj *syncobj)
  * @fence: out parameter for the fence
  *
  * This is just a convenience function that combines drm_syncobj_find() and
- * drm_syncobj_fence_get().
+ * drm_syncobj_fence_lookup().
  *
  * Returns 0 on success or a negative error value on failure. On success @fence
  * contains a reference to the fence, which must be released by calling
@@ -438,8 +438,6 @@ int drm_syncobj_find_fence(struct drm_file *file_private,
 			   struct dma_fence **fence)
 {
 	struct drm_syncobj *syncobj = drm_syncobj_find(file_private, handle);
-	struct syncobj_wait_entry wait;
-	u64 timeout = nsecs_to_jiffies64(DRM_SYNCOBJ_WAIT_FOR_SUBMIT_TIMEOUT);
 	int ret;
 
 	if (flags & ~DRM_SYNCOBJ_WAIT_FLAGS_WAIT_FOR_SUBMIT)
@@ -448,6 +446,32 @@ int drm_syncobj_find_fence(struct drm_file *file_private,
 	if (!syncobj)
 		return -ENOENT;
 
+	ret = drm_syncobj_fence_lookup(syncobj, point, flags, fence);
+
+	drm_syncobj_put(syncobj);
+
+	return ret;
+}
+EXPORT_SYMBOL(drm_syncobj_find_fence);
+
+/**
+ * drm_syncobj_fence_lookup - lookup and reference the fence in a sync object
+ * @syncobj: sync object to lookup.
+ * @point: timeline point
+ * @flags: DRM_SYNCOBJ_WAIT_FLAGS_WAIT_FOR_SUBMIT or not
+ * @fence: out parameter for the fence
+ *
+ * Returns 0 on success or a negative error value on failure. On success @fence
+ * contains a reference to the fence, which must be released by calling
+ * dma_fence_put().
+ */
+int drm_syncobj_fence_lookup(struct drm_syncobj *syncobj, u64 point,
+			     u64 flags, struct dma_fence **fence)
+{
+	struct syncobj_wait_entry wait;
+	u64 timeout = nsecs_to_jiffies64(DRM_SYNCOBJ_WAIT_FOR_SUBMIT_TIMEOUT);
+	int ret;
+
 	/* Waiting for userspace with locks help is illegal cause that can
 	 * trivial deadlock with page faults for example. Make lockdep complain
 	 * about it early on.
@@ -511,11 +535,9 @@ int drm_syncobj_find_fence(struct drm_file *file_private,
 		drm_syncobj_remove_wait(syncobj, &wait);
 
 out:
-	drm_syncobj_put(syncobj);
-
 	return ret;
 }
-EXPORT_SYMBOL(drm_syncobj_find_fence);
+EXPORT_SYMBOL(drm_syncobj_fence_lookup);
 
 /**
  * drm_syncobj_free - free a sync object.
diff --git a/include/drm/drm_syncobj.h b/include/drm/drm_syncobj.h
index 5da9988834b5..580a967ae364 100644
--- a/include/drm/drm_syncobj.h
+++ b/include/drm/drm_syncobj.h
@@ -124,6 +124,8 @@ void drm_syncobj_add_point(struct drm_syncobj *syncobj,
 			   uint64_t point);
 void drm_syncobj_replace_fence(struct drm_syncobj *syncobj,
 			       struct dma_fence *fence);
+int drm_syncobj_fence_lookup(struct drm_syncobj *syncobj, u64 point,
+			     u64 flags, struct dma_fence **fence);
 int drm_syncobj_find_fence(struct drm_file *file_private,
 			   u32 handle, u64 point, u64 flags,
 			   struct dma_fence **fence);

-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
