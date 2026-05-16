Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SAeCEEJQCGqDjAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:08:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B4A55B56C
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:08:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB6944044F
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 11:08:48 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by lists.linaro.org (Postfix) with ESMTPS id B1096405D3
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 11:06:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=IVRq3JTY;
	spf=pass (lists.linaro.org: domain of ju.orth@gmail.com designates 209.85.128.43 as permitted sender) smtp.mailfrom=ju.orth@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4891c0620bcso3322445e9.1
        for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 04:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778929618; x=1779534418; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mZxaw3u6g9gSQgxhivb/aQTd6ZH6WM8J0IbrlUd06os=;
        b=IVRq3JTYQcAvfs/kB6GQjG6TEUG1OOaZQiN5LVVyadTp3iIIJcrni0JbzfDH7wiZQB
         Pty80NenPAJsUAD/qBAaupxgIAHn/zItytIBS4uBUmLdyCrEYLYEDI6NfQWfvAzNC5sw
         F99PENVhnYGSFb/q/285Hgt2Zsq5deun3V1o87kdkqnIr3pjpoUaGHrnuxB5xd5WhQvG
         +0VbwN3rMnTL8SI9kIq2imbKdY2c2n4c+VXuJqzfkcHaXlP/LJuDM12JYV2Q/9o1FfYx
         D9aex9WUCte0efjKeU0vY0xFNtWrAkV0Zc7G6jWETSICXLOdwqTbo7lHx51lkVxTG+vg
         TY2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778929618; x=1779534418;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mZxaw3u6g9gSQgxhivb/aQTd6ZH6WM8J0IbrlUd06os=;
        b=pd76t1esfnmO21stB8NGHr6Dx8zPBKXjkB4hcLWhT9LlVLDKLZVBBUSM62f36OWP83
         8myqyOiS2sXwYlCcdBQR9Gafk6PebmI8+6q8trSoKfYkl2g7mv1T+QsMhiMvJ7FpgWba
         xoOgqmYaWpXyOKJ24iH30W35NADAhN6M9JVNyPlfPgR0IAdO7CVgUpLCyw8ELfKC/FYU
         RszgSd/VfuNdGLrIQVPy6WLJq7B9YuN6RlZWlD2GnpcAzpBkCmMe9GvEFGBIyzmxovRa
         i/KnDAjufXdB6RnPymirHXEh6zy/FCAC1jEMe2wU5N0i6LANUdtKagm5JwrxxrSRKcAj
         xU5w==
X-Forwarded-Encrypted: i=1; AFNElJ+cNQfCfd+ukRRFBAEjR2BrvO6KPuh803HXXOTz/kf5dtiKEbP6HNnXGfh03fhSmcOlVD8xuCEwB+BdWlCs@lists.linaro.org
X-Gm-Message-State: AOJu0Ywn4HeY7E2MpCwLXawE9VLVkDnlorROpp7F7KMlCpucoF6xVmid
	0c580YXoOZrLs1sn1kdT/5aqQPRE31+KoxjE3ommOyJv9B7v1mkkKHjf
X-Gm-Gg: Acq92OEHsG4x7lqBrEKNmBR/y+JlwiMMU05u2exKkRBwALCiJYwQ5eljIFvAe2waBky
	pruDPfCnLP6zow7ixrZIqsZtRBQ2gbDRC2FUUsu/ZTzhNvxhudRZOOHjZqDtfGwwCziHv4Dww1r
	LqRFrwBLwip3UQNj2juaFE5oBsKu3uQKuCDhnaEAR8YVS2y4HlkLKYcSaS6IrL+XrNwUXMJ5lly
	sxkX8BVIIFiRj4V5MMZmpp8Hedkg6h9/oeUUyLLzpjVxOe98Hb24+hWi9kqDaIeqrce3UDLB4v/
	2Ojg7/rAx/5LO4lSENccxc+RrmBazLoqC55mGZqY79gpQBEOFXRHsoBHgmB33y4yxoWXReKTjBr
	0E5ue4V6rJJsoiKWOE3nPRyCT3FMKMlAdvslbJHCONAEZ98bFjZwqKgfcJYPl3pKSUxiXEsSdNo
	6isr9/k1VZ1aJRuvB5fLAz8ZyU9lQhxkvg1XHJsXNGaM5ENyyRUgC+3HPGsIHzs2arGPCLAU+Zt
	DP1d0yIbsij2CLMAQ==
X-Received: by 2002:a05:600c:2d09:b0:48f:e1ac:c96d with SMTP id 5b1f17b1804b1-48fe61f2bcemr60030905e9.20.1778929617614;
        Sat, 16 May 2026 04:06:57 -0700 (PDT)
Received: from [10.13.0.20] (ip87-106-117-14.pbiaas.com. [87.106.117.14])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48feb00e5easm36399545e9.13.2026.05.16.04.06.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 May 2026 04:06:57 -0700 (PDT)
From: Julian Orth <ju.orth@gmail.com>
Date: Sat, 16 May 2026 13:06:13 +0200
MIME-Version: 1.0
Message-Id: <20260516-jorth-syncobj-v1-10-88ede9d98a81@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778929602; l=2792;
 i=ju.orth@gmail.com; s=20251120; h=from:subject:message-id;
 bh=gccEkxb9Fgxq3kICRGFzS2yuH2T+EBoB3hEcASoUfk4=;
 b=LfciDdq+01NiK3gXOUbCymlEM3K+nuuGo3VhuhjLND4T9QDwYUXe2UHMMsjDrtokyTzc+edKE
 S+PE8qGatMuDQ8hyiPBhAhZK6ObHL0ljbFX8Do8xYlPgTokSZvXJnCB
X-Developer-Key: i=ju.orth@gmail.com; a=ed25519;
 pk=uM2SS4lelkuIoYHc7v9N9bgBZ3hS632zJS2xjRJLPLI=
X-Spamd-Bar: ----
Message-ID-Hash: ZPMY6CISELRFFIENDDFPNMGNZ7JSDL6M
X-Message-ID-Hash: ZPMY6CISELRFFIENDDFPNMGNZ7JSDL6M
X-MailFrom: ju.orth@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, ju.orth@gmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 10/12] drm/syncobj: add drm_syncobj_import_sync_file
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZPMY6CISELRFFIENDDFPNMGNZ7JSDL6M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: D6B4A55B56C
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
	NEURAL_SPAM(0.00)[0.038];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

This makes the logic from drm_syncobj_import_sync_file_fence available
to callers that have a drm_syncobj instead of a drm_file/handle pair.

Signed-off-by: Julian Orth <ju.orth@gmail.com>
---
 drivers/gpu/drm/drm_syncobj.c | 35 ++++++++++++++++++++++++++---------
 include/drm/drm_syncobj.h     |  2 ++
 2 files changed, 28 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
index 1da96e23dfc0..4c1667c67cb7 100644
--- a/drivers/gpu/drm/drm_syncobj.c
+++ b/drivers/gpu/drm/drm_syncobj.c
@@ -765,19 +765,37 @@ static int drm_syncobj_fd_to_handle(struct drm_file *file_private,
 static int drm_syncobj_import_sync_file_fence(struct drm_file *file_private,
 					      int fd, int handle, u64 point)
 {
-	struct dma_fence *fence = sync_file_get_fence(fd);
 	struct drm_syncobj *syncobj;
 	int ret = 0;
 
+	syncobj = drm_syncobj_find(file_private, handle);
+	if (!syncobj)
+		return -ENOENT;
+
+	ret = drm_syncobj_import_sync_file(syncobj, fd, point);
+
+	drm_syncobj_put(syncobj);
+
+	return ret;
+}
+
+/**
+ * drm_syncobj_import_sync_file - import a sync_file fd into a syncobj
+ * @syncobj: syncobj to import into
+ * @fd: sync_file file descriptor
+ * @point: timeline point or 0
+ *
+ * Returns 0 on success or a negative error value on failure.
+ */
+int drm_syncobj_import_sync_file(struct drm_syncobj *syncobj,
+				 int fd, u64 point)
+{
+	struct dma_fence *fence = sync_file_get_fence(fd);
+	int ret = 0;
+
 	if (!fence)
 		return -EINVAL;
 
-	syncobj = drm_syncobj_find(file_private, handle);
-	if (!syncobj) {
-		ret = -ENOENT;
-		goto err_syncobj;
-	}
-
 	if (point) {
 		struct dma_fence_chain *chain = dma_fence_chain_alloc();
 
@@ -792,11 +810,10 @@ static int drm_syncobj_import_sync_file_fence(struct drm_file *file_private,
 	}
 
 err:
-	drm_syncobj_put(syncobj);
-err_syncobj:
 	dma_fence_put(fence);
 	return ret;
 }
+EXPORT_SYMBOL(drm_syncobj_import_sync_file);
 
 static int drm_syncobj_export_sync_file(struct drm_file *file_private,
 					int handle, u64 point, int *p_fd)
diff --git a/include/drm/drm_syncobj.h b/include/drm/drm_syncobj.h
index da237ca3e61f..1571ffa12a5c 100644
--- a/include/drm/drm_syncobj.h
+++ b/include/drm/drm_syncobj.h
@@ -143,6 +143,8 @@ int drm_syncobj_timeline_signal(struct drm_syncobj **syncobjs,
 				u64 user_points, u32 count);
 int drm_syncobj_query(struct drm_syncobj **syncobjs, u64 user_points,
 		      u32 count, u32 flags);
+int drm_syncobj_import_sync_file(struct drm_syncobj *syncobj,
+				 int sync_file_fd, u64 point);
 void drm_syncobj_free(struct kref *kref);
 int drm_syncobj_create(struct drm_syncobj **out_syncobj, uint32_t flags,
 		       struct dma_fence *fence);

-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
