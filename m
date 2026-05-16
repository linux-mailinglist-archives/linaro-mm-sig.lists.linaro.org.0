Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHZzBQ1QCGqDjAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:07:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D3255B502
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:07:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CD414404F4
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 11:07:55 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id DE6434044F
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 11:06:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=VTLkqFUp;
	spf=pass (lists.linaro.org: domain of ju.orth@gmail.com designates 209.85.128.46 as permitted sender) smtp.mailfrom=ju.orth@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-488b8bc6bc9so3182695e9.3
        for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 04:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778929611; x=1779534411; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W2kX0D85vKgrMTrfAaShnpioKYHS8IrhnFr9X3CmECA=;
        b=VTLkqFUpEy6dzDc/hklZvxc+gJRUvP3RDcta2W2PhWlvCuPDJEtP3mqBt+Sj/ts7C3
         r2xtr0DSJPLFbHGFrwLqPfHSR1kN2k3tCijPBalVydXobpI2FNkpxvIPiGEL5UBqNa4L
         eJvDnyFs0U+GWd/HKGF0abjEOEGNY9KWMyL0E/jwMGkLJ3JP+K1s71MEOM334c4nmZGU
         PTEHck7a2/3N3Czb1U9GekdfjinVWr2VIp4fNJGP029rmyXK95+jvfzxhRTwpSmJXvyK
         Zix2DuaFwA1bU3acz/PhBjE2bz8f1h3aZL4CE0i0ZhkwAPd48c6Jtqjy+EPkfOGCeP7v
         QHtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778929611; x=1779534411;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=W2kX0D85vKgrMTrfAaShnpioKYHS8IrhnFr9X3CmECA=;
        b=kfae8D033+wTDScdHxbc3JuyL1sioj9d3GBdaD2A2zPSE40PLt3lp7legY38NrkQug
         RHo0ZsAw+8V/Yinfq6UIMpXTMHoDoKs5ool4ZHln+Ku93aJjLgSKTIZioEUEz9o69/7N
         eKUv9lCSNqqAPjzRr/45Mms9O5lLPidHtw7ICE639bSXiaZFE73yas+CVoD8YNTPAo8B
         OPhY8doqF9xFzsB/clrcM71xCEhoz2epdvLJjvSxcOP6vSsDVZi3Z5Mqski9mLI1zyPb
         EzfsKofrrd6yVjOyRXN1U0t1EPrVaWUu0upX+Ql6R3dC/F64deAxEK/kKX4AU1KLIzH+
         bO/Q==
X-Forwarded-Encrypted: i=1; AFNElJ8Gwn8/aWoClf2poKwOFQWyj6F4xRE2U9anXd/cfGWLSBgqbTHujDuA3kWbVBjZe+HWdO+vncDhy4xrl7eT@lists.linaro.org
X-Gm-Message-State: AOJu0YxeFgv8Zngo7VVSmdOx3zR+a2R10ubKxJhwPMzycmZRR85zm4E7
	YdpMQZj0Kg/QvKbNMtFiIPQFO3XliP1qLvkTxvnzWjlUDFf/rmZX+Qve
X-Gm-Gg: Acq92OHAroDyka6XaOFRfgONVPmYfIpTC+8YZWJOausKVbeVgr4WPi+UTHWQSL3tntD
	UaEptVoi+opfDmKLLlsPMWFSpzZZkrbP5HBgaPCqQv70oY37Qu+8WD/lDRegvKT2Rot/QrARSce
	Scc7zKZqMsKx2jzU+WxtmyzK9lFNc+6EH77tkFa1roXWZoVg6JR4S4fHVrqzZyzxqXZSZI4orRN
	kcGFC7T2aCcn33cK+xhq7rrVVkhqT6inw5WVs6l+gaGVtTMoVArJDLwJc4rby+xuLJugqeVFl0f
	DFoHXXIBH4l0DxmB/F8HHTj517GBAjkoAhy1QBaqTJOEBhkgFp3fEwZzXiBMsAlkyi6pj3gwS5Q
	OL46OD7WhtfKKynlnDpLn8mSwChvT+WB9bE3n0TtJJItdsIVL9+D3/D0aejWPUkZBPBmCkoL9F7
	uNsfP49nWO2cO6WnMYDbJgiZXRKC9NFoFVaR7U45QY8NLWOXOKZ//Tzkaf7MbsbWNQkYT3urGuX
	ECPA3ZpBu2r9dVYUQ==
X-Received: by 2002:a05:600c:1512:b0:48f:e26a:1744 with SMTP id 5b1f17b1804b1-48fe60ecd67mr61949075e9.9.1778929610832;
        Sat, 16 May 2026 04:06:50 -0700 (PDT)
Received: from [10.13.0.20] (ip87-106-117-14.pbiaas.com. [87.106.117.14])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48feb00e5easm36399545e9.13.2026.05.16.04.06.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 May 2026 04:06:50 -0700 (PDT)
From: Julian Orth <ju.orth@gmail.com>
Date: Sat, 16 May 2026 13:06:08 +0200
MIME-Version: 1.0
Message-Id: <20260516-jorth-syncobj-v1-5-88ede9d98a81@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778929602; l=3982;
 i=ju.orth@gmail.com; s=20251120; h=from:subject:message-id;
 bh=Mb8lX2KhvsBJbZLZbGjpbAUq1f7hQxcuF5oQ0+pOVFk=;
 b=BeGkMWuyeX/aZRp2H0hfoW2AxnZOC2lzk8MPd8PsvJlWTvAKosg1c1JQKJEBD/6j1xtsYYLN2
 hnZSkrLB1TOAJz2SwH4GedXgfD0gdUZ4ygDmsn2lzPUAFQlwflz007b
X-Developer-Key: i=ju.orth@gmail.com; a=ed25519;
 pk=uM2SS4lelkuIoYHc7v9N9bgBZ3hS632zJS2xjRJLPLI=
X-Spamd-Bar: ---
Message-ID-Hash: 5ASFONDI6XLA766FXB6X53DR62OL3FCB
X-Message-ID-Hash: 5ASFONDI6XLA766FXB6X53DR62OL3FCB
X-MailFrom: ju.orth@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, ju.orth@gmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 05/12] drm/syncobj: have transfer functions accept drm_syncobj directly
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5ASFONDI6XLA766FXB6X53DR62OL3FCB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: C2D3255B502
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
	NEURAL_SPAM(0.00)[0.041];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

This removes the implicit flags check from drm_syncobj_find_fence. The
check is moved to the only caller drm_syncobj_transfer_ioctl.

Signed-off-by: Julian Orth <ju.orth@gmail.com>
---
 drivers/gpu/drm/drm_syncobj.c | 62 ++++++++++++++++++++++++-------------------
 1 file changed, 35 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
index 3e8fb7e0cace..a746e787882d 100644
--- a/drivers/gpu/drm/drm_syncobj.c
+++ b/drivers/gpu/drm/drm_syncobj.c
@@ -955,29 +955,23 @@ drm_syncobj_fd_to_handle_ioctl(struct drm_device *dev, void *data,
 					&args->handle);
 }
 
-static int drm_syncobj_transfer_to_timeline(struct drm_file *file_private,
-					    struct drm_syncobj_transfer *args)
+static int drm_syncobj_transfer_to_timeline(struct drm_syncobj *src, u64 src_point,
+					    struct drm_syncobj *dst, u64 dst_point,
+					    u32 flags)
 {
-	struct drm_syncobj *timeline_syncobj = NULL;
 	struct dma_fence *fence, *tmp;
 	struct dma_fence_chain *chain;
 	int ret;
 
-	timeline_syncobj = drm_syncobj_find(file_private, args->dst_handle);
-	if (!timeline_syncobj) {
-		return -ENOENT;
-	}
-	ret = drm_syncobj_find_fence(file_private, args->src_handle,
-				     args->src_point, args->flags,
-				     &tmp);
+	ret = drm_syncobj_fence_lookup(src, src_point, flags, &tmp);
 	if (ret)
-		goto err_put_timeline;
+		goto out;
 
 	fence = dma_fence_unwrap_merge(tmp);
 	dma_fence_put(tmp);
 	if (!fence) {
 		ret = -ENOMEM;
-		goto err_put_timeline;
+		goto out;
 	}
 
 	chain = dma_fence_chain_alloc();
@@ -986,34 +980,27 @@ static int drm_syncobj_transfer_to_timeline(struct drm_file *file_private,
 		goto err_free_fence;
 	}
 
-	drm_syncobj_add_point(timeline_syncobj, chain, fence, args->dst_point);
+	drm_syncobj_add_point(dst, chain, fence, dst_point);
 err_free_fence:
 	dma_fence_put(fence);
-err_put_timeline:
-	drm_syncobj_put(timeline_syncobj);
+out:
 
 	return ret;
 }
 
 static int
-drm_syncobj_transfer_to_binary(struct drm_file *file_private,
-			       struct drm_syncobj_transfer *args)
+drm_syncobj_transfer_to_binary(struct drm_syncobj *src, u64 src_point,
+			       struct drm_syncobj *dst, u32 flags)
 {
-	struct drm_syncobj *binary_syncobj = NULL;
 	struct dma_fence *fence;
 	int ret;
 
-	binary_syncobj = drm_syncobj_find(file_private, args->dst_handle);
-	if (!binary_syncobj)
-		return -ENOENT;
-	ret = drm_syncobj_find_fence(file_private, args->src_handle,
-				     args->src_point, args->flags, &fence);
+	ret = drm_syncobj_fence_lookup(src, src_point, flags, &fence);
 	if (ret)
 		goto err;
-	drm_syncobj_replace_fence(binary_syncobj, fence);
+	drm_syncobj_replace_fence(dst, fence);
 	dma_fence_put(fence);
 err:
-	drm_syncobj_put(binary_syncobj);
 
 	return ret;
 }
@@ -1022,18 +1009,39 @@ drm_syncobj_transfer_ioctl(struct drm_device *dev, void *data,
 			   struct drm_file *file_private)
 {
 	struct drm_syncobj_transfer *args = data;
+	struct drm_syncobj *src, *dst;
 	int ret;
 
 	if (!drm_core_check_feature(dev, DRIVER_SYNCOBJ_TIMELINE))
 		return -EOPNOTSUPP;
 
+	if (args->flags & ~DRM_SYNCOBJ_WAIT_FLAGS_WAIT_FOR_SUBMIT)
+		return -EINVAL;
+
 	if (args->pad)
 		return -EINVAL;
 
+	src = drm_syncobj_find(file_private, args->src_handle);
+	if (!src)
+		return -ENOENT;
+
+	dst = drm_syncobj_find(file_private, args->dst_handle);
+	if (!dst) {
+		ret = -ENOENT;
+		goto err_dst;
+	}
+
 	if (args->dst_point)
-		ret = drm_syncobj_transfer_to_timeline(file_private, args);
+		ret = drm_syncobj_transfer_to_timeline(src, args->src_point,
+						       dst, args->dst_point,
+						       args->flags);
 	else
-		ret = drm_syncobj_transfer_to_binary(file_private, args);
+		ret = drm_syncobj_transfer_to_binary(src, args->src_point,
+						     dst, args->flags);
+
+	drm_syncobj_put(dst);
+err_dst:
+	drm_syncobj_put(src);
 
 	return ret;
 }

-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
