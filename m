Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCaAOhlQCGoMjAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:08:09 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 879D355B520
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:08:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85640404C7
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 11:08:08 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id 4F3E94049C
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 11:06:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=nx1GUPsE;
	spf=pass (lists.linaro.org: domain of ju.orth@gmail.com designates 209.85.128.46 as permitted sender) smtp.mailfrom=ju.orth@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-488a8ca4aadso6107285e9.3
        for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 04:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778929612; x=1779534412; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lfXCZmKhXGPb19F0Jw5wedNIT6lbmZvd88iLNzyg/OY=;
        b=nx1GUPsEePpBRpyUx81qfNa9Gld3VENck8gxDruYRdqjmSRpBOZd9Ep8YspP1sAO4f
         Ik/O755kxwURxHV3PIdRTGwDHNrYbjsP89P8Ay83tYWZ1nQSTco+03oCVtFEXN8HL+xN
         c6HSXmoVtCT1vIESihTXtOnrEovICiMaV+7Il8zGfsSdO4ykI72Q/N+SojWquZA2EyHO
         edblpN9hb+B5HdfyAPfLDXWZIO02Dtn2mQrEkiB3GLNef0d+/sIPrMeb5gJ5PKNi4WgS
         l/Af3qhZWZwAu4Hgf1F6qfhlrKNRF8uY0rMGlQi5/2V6b+xmOo5acrvYz27hw4C+DWMx
         1jwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778929612; x=1779534412;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lfXCZmKhXGPb19F0Jw5wedNIT6lbmZvd88iLNzyg/OY=;
        b=FqMTLegnHFB4in1oFD2lYjVxiRne+VRxIm2xxDOhajtk64yDnJKfNJYed3UY+TJkTH
         nKaIaB6PcqXJgeH5ahW60WDd1oohY8ElHb71DxoVVwzyHtr+JgrW1jzUjkLjnStPb9+K
         M8TlL1oxWNkJ+yzURXfnHpSwMIj9jJaF0pZ38aCh9tiXv+9VDaHQGtmreqINlmwOf5Jc
         S5apigQMnj3jYa+WUBVgScB9gfi8b3BZuOCvE4swBilgj+i/Hl2uPtVgsttj7cuil+8y
         XCo0zF4lDC5AEzk2sDoad2pjn2X7f2PbYRkZjGzRBC2D1ReOckTPWYILL+8sNFD/t8Rr
         YKiQ==
X-Forwarded-Encrypted: i=1; AFNElJ8PtKo2iYvxNH/tVZo7Ll4us4JvRsKR6T/1zEwC9sUdSdpczQKOKBIrWL1Mf22tToezZxDd8iemyDGyH053@lists.linaro.org
X-Gm-Message-State: AOJu0YybcCDWAVI+erypSGbKf5oLpsgIHx6AE8wZ9Xy6Lbt7bNz7TGUG
	vj326O7FUlV7Trpu9X4rreK8IwKQhVMPmYct7Q8tRH7HJIgWp0Sd6P/M
X-Gm-Gg: Acq92OEvP5yQDvQ4eiJtgGCisVyFerZp7vf+FOThOMm3e0lPpBiiK3uakpZVrlf2rZV
	pnPN2LpgVk05zMd0xRowgQvXj5IMXNkwz/gt7YiLgATP5OGd44b7z/DO22hN+Az8nVk1R4Nb2AD
	MHMjyD3PqJ2tUQ78Uw57n3iV/ILxblg5DhaJZY86lozL/YWoIfLXgE1Iw5ubZH0cAxWR4HiAFi3
	lIyukunpdwAK6vUKrr/YGQELIeuP777LHSWsbblSH1u1lT0q6uSG505bGZgP8QpuGQJQhnTqvbd
	yPVRSbMQeDUb6gH5rlhxH0jd9F1RvWs0a5wf/AMzvfVSmn7At0UYrYi9fp+mKaN7c2TtSFF14G/
	FSwwTX9Befu67bPaMX+TX/botVaxUKzMX6qEtBP7ijmhddGQyn3rkINCUoro0maCtcYvNO060cA
	G/z0NYhWutPYgY7Jc0+FjvbsZMu3mN86YYaAxYXVtXAD6yNDXZywNvQ02KsOKdt4tIaKWkh1XCB
	3FEgnw=
X-Received: by 2002:a05:600c:c494:b0:485:4388:3492 with SMTP id 5b1f17b1804b1-48fe60ed839mr106842125e9.11.1778929612138;
        Sat, 16 May 2026 04:06:52 -0700 (PDT)
Received: from [10.13.0.20] (ip87-106-117-14.pbiaas.com. [87.106.117.14])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48feb00e5easm36399545e9.13.2026.05.16.04.06.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 May 2026 04:06:51 -0700 (PDT)
From: Julian Orth <ju.orth@gmail.com>
Date: Sat, 16 May 2026 13:06:09 +0200
MIME-Version: 1.0
Message-Id: <20260516-jorth-syncobj-v1-6-88ede9d98a81@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778929602; l=2747;
 i=ju.orth@gmail.com; s=20251120; h=from:subject:message-id;
 bh=crfpaYowwqJxJnvwODKb3NMb9L0ciSXP5LaWzS0yZzY=;
 b=4LnJkSRcgHTRmc5hqP/RVVAq8z7NN5hqbrYXKUhKI6Ju4If09ezCwoSL5J4pmggyrT/r6k6gL
 MSWHYqto26NBUeuZWgCz0Yq5OF0t6VAVcTQcC9DTxb9GREciFiuCzd0
X-Developer-Key: i=ju.orth@gmail.com; a=ed25519;
 pk=uM2SS4lelkuIoYHc7v9N9bgBZ3hS632zJS2xjRJLPLI=
X-Spamd-Bar: ----
Message-ID-Hash: PY7XXFZ4GYOQVJNFI2MJKS34RNH2BZND
X-Message-ID-Hash: PY7XXFZ4GYOQVJNFI2MJKS34RNH2BZND
X-MailFrom: ju.orth@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, ju.orth@gmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 06/12] drm/syncobj: add drm_syncobj_transfer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PY7XXFZ4GYOQVJNFI2MJKS34RNH2BZND/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 879D355B520
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
	NEURAL_SPAM(0.00)[0.034];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

This makes the logic from drm_syncobj_transfer_ioctl available to
callers that already have two drm_syncobj.

Signed-off-by: Julian Orth <ju.orth@gmail.com>
---
 drivers/gpu/drm/drm_syncobj.c | 36 +++++++++++++++++++++++++++++-------
 include/drm/drm_syncobj.h     |  3 +++
 2 files changed, 32 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
index a746e787882d..8ccfbd972191 100644
--- a/drivers/gpu/drm/drm_syncobj.c
+++ b/drivers/gpu/drm/drm_syncobj.c
@@ -1031,13 +1031,9 @@ drm_syncobj_transfer_ioctl(struct drm_device *dev, void *data,
 		goto err_dst;
 	}
 
-	if (args->dst_point)
-		ret = drm_syncobj_transfer_to_timeline(src, args->src_point,
-						       dst, args->dst_point,
-						       args->flags);
-	else
-		ret = drm_syncobj_transfer_to_binary(src, args->src_point,
-						     dst, args->flags);
+	ret = drm_syncobj_transfer(src, args->src_point,
+				   dst, args->dst_point,
+				   args->flags);
 
 	drm_syncobj_put(dst);
 err_dst:
@@ -1046,6 +1042,32 @@ drm_syncobj_transfer_ioctl(struct drm_device *dev, void *data,
 	return ret;
 }
 
+/**
+ * drm_syncobj_transfer - transfer a fence between syncobjs
+ * @src: source syncobj
+ * @src_point: source point
+ * @dst: destination syncobj
+ * @dst_point: destination point
+ * @flags: DRM_SYNCOBJ_WAIT_FLAGS_WAIT_FOR_SUBMIT or 0
+ *
+ * Copies the fence at @src_point in @src to @dst_point in @dst.
+ *
+ * Returns 0 on success or a negative error value on failure.
+ */
+int drm_syncobj_transfer(struct drm_syncobj *src, u64 src_point,
+			 struct drm_syncobj *dst, u64 dst_point,
+			 u32 flags)
+{
+	if (dst_point)
+		return drm_syncobj_transfer_to_timeline(src, src_point,
+							dst, dst_point,
+							flags);
+	else
+		return drm_syncobj_transfer_to_binary(src, src_point,
+						      dst, flags);
+}
+EXPORT_SYMBOL(drm_syncobj_transfer);
+
 static void syncobj_wait_fence_func(struct dma_fence *fence,
 				    struct dma_fence_cb *cb)
 {
diff --git a/include/drm/drm_syncobj.h b/include/drm/drm_syncobj.h
index 85e7ca7f7896..ec8042d61466 100644
--- a/include/drm/drm_syncobj.h
+++ b/include/drm/drm_syncobj.h
@@ -136,6 +136,9 @@ signed long drm_syncobj_array_wait_timeout(struct drm_syncobj **syncobjs,
 					   ktime_t *deadline);
 int drm_syncobj_register_eventfd(struct drm_syncobj *syncobj,
 				 int ev_fd, u64 point, u32 flags);
+int drm_syncobj_transfer(struct drm_syncobj *src, u64 src_point,
+			 struct drm_syncobj *dst, u64 dst_point,
+			 u32 flags);
 void drm_syncobj_free(struct kref *kref);
 int drm_syncobj_create(struct drm_syncobj **out_syncobj, uint32_t flags,
 		       struct dma_fence *fence);

-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
