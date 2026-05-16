Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JiiDgFQCGoMjAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:07:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC5B55B4F3
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:07:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E7DF405D4
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 11:07:44 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id 85EA2404C6
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 11:06:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=bjHwnIsl;
	spf=pass (lists.linaro.org: domain of ju.orth@gmail.com designates 209.85.128.49 as permitted sender) smtp.mailfrom=ju.orth@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-488b0046078so5482825e9.1
        for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 04:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778929609; x=1779534409; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3zYhR3PGwQ+MjR6b0xjhfz0ypo71/qwlvJbXPw+XJwc=;
        b=bjHwnIslsIdUXgi9nOzf0ZYD/jNVnRiCdeSFhDp7tbFlZNbl+6seD5GBSf87I0RX6l
         wLMjdPVJlY/oKFTrFhtiZJtZmfTgk23bLm+BjPs+lCcx7+WNkdAcH5sZTh8n1C4AgdBR
         9qnw41uzEwJ8ej/D+zZQkEysXQ05X91xkPS52+bywqV8IlSkfGMGDdZPJGI4+48i/blk
         +h0Zf/605Z1G4IKrQpaphhyfwlYG0K/Z08Lil+802mjhT46pq99rfX8Ok0YtQO2sCO9L
         Tg+hDSq8OSuTJ+oGWtpKgkNRTptRmbQXRH3rOon1FUDogmcLMgThH1g1osoqBAGIIWbm
         fx2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778929609; x=1779534409;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3zYhR3PGwQ+MjR6b0xjhfz0ypo71/qwlvJbXPw+XJwc=;
        b=W2OlIKkTRh+AT9Dw2JXvyFN25HUj6MAPvV0FhRcG1ZYOvGpMZxNxt2y9MLBuT9sQ8p
         AdY7KlwOQPwO/X07gEcvZaAFt0h7l+z5AT1A0klpRndnoAJhmI4B76U9zCgSkdS8dbba
         5nmKcDgHivaFoJW9WcV2b0VqbGmnwkVt822HiM/cjDf/5dIfUWx7UNazTncnvuyf58SG
         zErEKZ1+dYy6GZ2GBw+k1ry52afZ8Mgh+B/21GrBdutPS7nc4LwZpCLhMPD6uFenQwLV
         Xad+3BuId9xDOcFilSNMgo1D10Ayl2E9+XQoQkrfGxgFgALFZ2gs1oVhr5WoNcL1m2os
         He6g==
X-Forwarded-Encrypted: i=1; AFNElJ82GYUnGxVAwdnmExrZVcosIPfCgWa256tsARpC5/NWXDSNDRMaYiCKmab8MLSn5PwcCvDG7DgQxqCmkutc@lists.linaro.org
X-Gm-Message-State: AOJu0YxCYBKb9OO3Vr2CRj8He3JLv7usyKAAuiiSVR0mpvxZsaoC4s1w
	sbLIZVDMxcRwI0VD3LNQOEismMF/TZDzyTF3sfkV2DavXVOBAyBqj6Fz
X-Gm-Gg: Acq92OGTWpzsWiCuJcqO1Cpp5RS20ROleEu4w9aycIkZPLINhmmachQa+uFkFIJ7e+n
	j+LXlCAVA17eqWfQcFLdHUKhd0qpE3DctLM/I6vdLbXAp64+MEdqPT/B6yRFPIq/4KQjOw/cYDS
	x3i8+t69eRtTuEbp0mZgiiU7RaraU0JbcJst1LlJCCpYxWhr3m8JEZn5/fVRIdyHl+dSLGDwWZe
	tR+49jjsUwecLo7qM3thZA3bhoz6A5De3ydJLiLnkEwUuhv50AzLh4Gc4T+0WlKhO6v4FH9eIY2
	8IRnexdRnFBTPP1MrTXu51bdvDInApOFiD+9JfToBcItG/wCyIFJLZlVrCtLDj4RjYMT0oo8cth
	iairiptoHO3ef5ymvA3cyybcpS336hSGthy0xQd4A/N4FTz9hMPGRb13wasitcwK2VLs0IM8fgR
	gMXmq7+pge8CJZ2iVHbWZ2G9cseGb4SIlTyNSxCe2FENTT24YUWmI5k2N/4LB6iISF7M/cBkNID
	CMRuww=
X-Received: by 2002:a05:600c:4e47:b0:488:a977:8de with SMTP id 5b1f17b1804b1-48fe61ed3b3mr113720245e9.16.1778929609523;
        Sat, 16 May 2026 04:06:49 -0700 (PDT)
Received: from [10.13.0.20] (ip87-106-117-14.pbiaas.com. [87.106.117.14])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48feb00e5easm36399545e9.13.2026.05.16.04.06.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 May 2026 04:06:49 -0700 (PDT)
From: Julian Orth <ju.orth@gmail.com>
Date: Sat, 16 May 2026 13:06:07 +0200
MIME-Version: 1.0
Message-Id: <20260516-jorth-syncobj-v1-4-88ede9d98a81@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778929602; l=3158;
 i=ju.orth@gmail.com; s=20251120; h=from:subject:message-id;
 bh=E8KFRmAvFwSHl3US+f+37kFcs+Zh1TZlm/HDUacqWIY=;
 b=bWpzKA+XEX3J2UNOYwj8QCncPGUIt1EclXXwvNyI/mmaQH21mYNpvhjIrkkFE7rAGXoJvJuvr
 uSj76PriSooBBU33M65Bq/uYq41w4a4tjHiYN/O/IE29Xyc6bLuV1Yr
X-Developer-Key: i=ju.orth@gmail.com; a=ed25519;
 pk=uM2SS4lelkuIoYHc7v9N9bgBZ3hS632zJS2xjRJLPLI=
X-Spamd-Bar: ----
Message-ID-Hash: QRDE4JS75NT7HXTMNLEAUAV35GQYBDCD
X-Message-ID-Hash: QRDE4JS75NT7HXTMNLEAUAV35GQYBDCD
X-MailFrom: ju.orth@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, ju.orth@gmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 04/12] drm/syncobj: add drm_syncobj_register_eventfd
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QRDE4JS75NT7HXTMNLEAUAV35GQYBDCD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 0EC5B55B4F3
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

This makes the logic from drm_syncobj_eventfd_ioctl available to callers
that already have a drm_syncobj.

Signed-off-by: Julian Orth <ju.orth@gmail.com>
---
 drivers/gpu/drm/drm_syncobj.c | 37 ++++++++++++++++++++++++++++++-------
 include/drm/drm_syncobj.h     |  2 ++
 2 files changed, 32 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
index 648afd1f4fdd..3e8fb7e0cace 100644
--- a/drivers/gpu/drm/drm_syncobj.c
+++ b/drivers/gpu/drm/drm_syncobj.c
@@ -1502,8 +1502,6 @@ drm_syncobj_eventfd_ioctl(struct drm_device *dev, void *data,
 {
 	struct drm_syncobj_eventfd *args = data;
 	struct drm_syncobj *syncobj;
-	struct eventfd_ctx *ev_fd_ctx;
-	struct syncobj_eventfd_entry *entry;
 	int ret;
 
 	if (!drm_core_check_feature(dev, DRIVER_SYNCOBJ_TIMELINE))
@@ -1519,7 +1517,33 @@ drm_syncobj_eventfd_ioctl(struct drm_device *dev, void *data,
 	if (!syncobj)
 		return -ENOENT;
 
-	ev_fd_ctx = eventfd_ctx_fdget(args->fd);
+	ret = drm_syncobj_register_eventfd(syncobj, args->fd, args->point, args->flags);
+
+	drm_syncobj_put(syncobj);
+
+	return ret;
+}
+
+/**
+ * drm_syncobj_register_eventfd - register an eventfd for a syncobj
+ * @syncobj: sync object to add the eventfd to
+ * @ev_fd: eventfd file descriptor to signal
+ * @point: timeline point to wait for
+ * @flags: DRM_SYNCOBJ_WAIT_FLAGS_WAIT_AVAILABLE or 0
+ *
+ * Registers an eventfd that will be signaled when the point is
+ * signaled or available.
+ *
+ * Returns 0 on success or a negative error value on failure.
+ */
+int drm_syncobj_register_eventfd(struct drm_syncobj *syncobj,
+				 int ev_fd, u64 point, u32 flags)
+{
+	struct eventfd_ctx *ev_fd_ctx;
+	struct syncobj_eventfd_entry *entry;
+	int ret;
+
+	ev_fd_ctx = eventfd_ctx_fdget(ev_fd);
 	if (IS_ERR(ev_fd_ctx)) {
 		ret = PTR_ERR(ev_fd_ctx);
 		goto err_fdget;
@@ -1532,20 +1556,19 @@ drm_syncobj_eventfd_ioctl(struct drm_device *dev, void *data,
 	}
 	entry->syncobj = syncobj;
 	entry->ev_fd_ctx = ev_fd_ctx;
-	entry->point = args->point;
-	entry->flags = args->flags;
+	entry->point = point;
+	entry->flags = flags;
 
 	drm_syncobj_add_eventfd(syncobj, entry);
-	drm_syncobj_put(syncobj);
 
 	return 0;
 
 err_kzalloc:
 	eventfd_ctx_put(ev_fd_ctx);
 err_fdget:
-	drm_syncobj_put(syncobj);
 	return ret;
 }
+EXPORT_SYMBOL(drm_syncobj_register_eventfd);
 
 int
 drm_syncobj_reset_ioctl(struct drm_device *dev, void *data,
diff --git a/include/drm/drm_syncobj.h b/include/drm/drm_syncobj.h
index 7677fd995be0..85e7ca7f7896 100644
--- a/include/drm/drm_syncobj.h
+++ b/include/drm/drm_syncobj.h
@@ -134,6 +134,8 @@ signed long drm_syncobj_array_wait_timeout(struct drm_syncobj **syncobjs,
 					   uint32_t count, uint32_t flags,
 					   signed long timeout, uint32_t *idx,
 					   ktime_t *deadline);
+int drm_syncobj_register_eventfd(struct drm_syncobj *syncobj,
+				 int ev_fd, u64 point, u32 flags);
 void drm_syncobj_free(struct kref *kref);
 int drm_syncobj_create(struct drm_syncobj **out_syncobj, uint32_t flags,
 		       struct dma_fence *fence);

-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
