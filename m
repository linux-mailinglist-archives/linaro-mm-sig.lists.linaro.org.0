Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHfgK/dPCGoMjAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:07:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 850D555B4EC
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:07:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9BB4A405D3
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 11:07:34 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id 739D24049C
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 11:06:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=TalX55k5;
	spf=pass (lists.linaro.org: domain of ju.orth@gmail.com designates 209.85.128.46 as permitted sender) smtp.mailfrom=ju.orth@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-488af96f6b2so7680515e9.0
        for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 04:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778929608; x=1779534408; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iLr2U6KkG2Uu+VOL8E6/tXdIBWCkFd/7X9q/HfFlgP8=;
        b=TalX55k5UWqGOpQ1dS/IucX8lwAjUMtsaKU2ebDU/mwqesK8QIUoEWWUMWhotfg5VG
         mr3f2y5/i3XrbTDxOLhl27TEQKfExSSOVakMsid6M9vc1gSSlDpAU0Xbp4B9cTKTnTDB
         Rb3TicKLaMaN1dl+UBvR3Zd/2pWWBHpIGiutROX5dfkVcZRivitQtlGmwkGbVCMzOb37
         7P4yvgS0FBlaVP32rSGFUQF7szz19edWIbZ3epIdvhBaDZ31Ti0Vsx4TMFytrSoMF61R
         85/M9Ed44jF8TtlUE8VuAsWkRV5EpzqxYYjlgzk//SwfSBfsAa7R3WqbB1i1QpOonL5Y
         9LrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778929608; x=1779534408;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iLr2U6KkG2Uu+VOL8E6/tXdIBWCkFd/7X9q/HfFlgP8=;
        b=TpLWSvjJ5cJZxGIq1rwkAJNl7e5Wqamg5QIcQNfvll+2r5/bzkM4sxj+GvJZd2mkPi
         oCGN1Ozzname8dNP8kwFuREI+z+aSu4JdXpkArXEt7vxwdzFb/ZJLyAk9oyLsJEOxB8N
         IqSJVEtjUVPJNRuRk9woKUVf9iUVPLZOTuhuPunsmGN+jUYIjXjbTAjfIiQcNH1znZNT
         YkVWUZ3JuexM1zP4cSmoUyWOMvaZBbCmNn+RWLAl2CUMBy1KuWQUx96ZN/uCX+jqpUEC
         lwQ6tHIcgoB0IgNI48lLd+xqKSJf7uiRTZFChZFU7qE+I0tqYvoBMneclxkPLLdjciWZ
         qvYw==
X-Forwarded-Encrypted: i=1; AFNElJ9EZu01HXEyCNHCXawQnZqccVX1mhCSqoYoU+AoXhk/kkYEhWSQVrEkBX/qNXzOJDas8o553Sj1f4Q2dmD6@lists.linaro.org
X-Gm-Message-State: AOJu0YzzXDCNKHyqxABRGMX+K74FrYnQ5KrbNpn/j6M9KNBxYI1WLJ4X
	D0aM+a7lNoGh5QwssEvKhgOwHVCbNZx11ER8ESY4VF60Q/AYI0fY9rYk
X-Gm-Gg: Acq92OHjJTLmEc30g3imXxGLQiMBvsHBYd3ox8op08Ubg9fsh+24WLcUWHqzQOE88y6
	HCFx68pTzFcm1Axf7HsVeyhppBSgDcr2vuFG/Sgj2XvGZq6ZTU17bOxpPYs0ctSDHKFp5fHB459
	xzoeoZCqPjkOg6i6ZF2VNY9AMQvJsaJx9oo+7F8yBUy3Y9b7IVelPBDaBykIRJWjHrrXF5nJflu
	oiSc2NnSLJqxTKUZWufzmhkYN1FLtoRSSdPu8WV/tz4cF2hiko1cWYbrcO6LnESMXkOAK38asP5
	pBa11OdW2lI6YWbaJyeVtzLu9TsCoxmjNzfpWyRs2IuEgTx6mRxsS/2xxKs46GUlameh7iTxUQo
	BSWCoCia7sSlaHhTYK4LTVWl71z0qgrBeQwLHRyDot3A+o9b+qFxrcMKMjFRRrsQMaVCAtYdVMG
	GQ8K0TuPk5sUTc2bwKwJiqxdMXowRAnxuEdXH5gDPJUF5txQrdvQ32FbLFfeIGnsMpOTjWbA4f5
	ATr43s=
X-Received: by 2002:a05:600c:13ca:b0:48f:eb8b:9988 with SMTP id 5b1f17b1804b1-48feb8b9a84mr53458715e9.23.1778929608240;
        Sat, 16 May 2026 04:06:48 -0700 (PDT)
Received: from [10.13.0.20] (ip87-106-117-14.pbiaas.com. [87.106.117.14])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48feb00e5easm36399545e9.13.2026.05.16.04.06.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 May 2026 04:06:47 -0700 (PDT)
From: Julian Orth <ju.orth@gmail.com>
Date: Sat, 16 May 2026 13:06:06 +0200
MIME-Version: 1.0
Message-Id: <20260516-jorth-syncobj-v1-3-88ede9d98a81@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778929602; l=2220;
 i=ju.orth@gmail.com; s=20251120; h=from:subject:message-id;
 bh=NwwauNPJiO1PfXNWR0Tt78KBCxqLRi4CSj0dLIMDu4c=;
 b=L70W+WfFJyxFbr6yV3GcY0+dLZ8/RrrjQI0perIlwa2ryxcj58Yc3uwASbkpuihDpL+gB9Dvu
 iClDpDWu5qLAvShl4cuWM8lV4UGkRD1RQm8k8xpOhVcZK9uExSKR7MT
X-Developer-Key: i=ju.orth@gmail.com; a=ed25519;
 pk=uM2SS4lelkuIoYHc7v9N9bgBZ3hS632zJS2xjRJLPLI=
X-Spamd-Bar: ---
Message-ID-Hash: EFSQGMQMABTXEA4HD3YTZY6KINF4OEBH
X-Message-ID-Hash: EFSQGMQMABTXEA4HD3YTZY6KINF4OEBH
X-MailFrom: ju.orth@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, ju.orth@gmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 03/12] drm/syncobj: make drm_syncobj_array_wait_timeout public
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EFSQGMQMABTXEA4HD3YTZY6KINF4OEBH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 850D555B4EC
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
	NEURAL_SPAM(0.00)[0.044];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

For use by the upcoming misc/syncobj module.

Signed-off-by: Julian Orth <ju.orth@gmail.com>
---
 drivers/gpu/drm/drm_syncobj.c | 15 ++++++++-------
 include/drm/drm_syncobj.h     |  5 +++++
 2 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
index 8df438fe0807..648afd1f4fdd 100644
--- a/drivers/gpu/drm/drm_syncobj.c
+++ b/drivers/gpu/drm/drm_syncobj.c
@@ -1069,13 +1069,13 @@ static void syncobj_wait_syncobj_func(struct drm_syncobj *syncobj,
 	list_del_init(&wait->node);
 }
 
-static signed long drm_syncobj_array_wait_timeout(struct drm_syncobj **syncobjs,
-						  void __user *user_points,
-						  uint32_t count,
-						  uint32_t flags,
-						  signed long timeout,
-						  uint32_t *idx,
-						  ktime_t *deadline)
+signed long drm_syncobj_array_wait_timeout(struct drm_syncobj **syncobjs,
+					   void __user *user_points,
+					   uint32_t count,
+					   uint32_t flags,
+					   signed long timeout,
+					   uint32_t *idx,
+					   ktime_t *deadline)
 {
 	struct syncobj_wait_entry *entries;
 	struct dma_fence *fence;
@@ -1229,6 +1229,7 @@ static signed long drm_syncobj_array_wait_timeout(struct drm_syncobj **syncobjs,
 
 	return timeout;
 }
+EXPORT_SYMBOL(drm_syncobj_array_wait_timeout);
 
 /**
  * drm_timeout_abs_to_jiffies - calculate jiffies timeout from absolute value
diff --git a/include/drm/drm_syncobj.h b/include/drm/drm_syncobj.h
index 580a967ae364..7677fd995be0 100644
--- a/include/drm/drm_syncobj.h
+++ b/include/drm/drm_syncobj.h
@@ -129,6 +129,11 @@ int drm_syncobj_fence_lookup(struct drm_syncobj *syncobj, u64 point,
 int drm_syncobj_find_fence(struct drm_file *file_private,
 			   u32 handle, u64 point, u64 flags,
 			   struct dma_fence **fence);
+signed long drm_syncobj_array_wait_timeout(struct drm_syncobj **syncobjs,
+					   void __user *user_points,
+					   uint32_t count, uint32_t flags,
+					   signed long timeout, uint32_t *idx,
+					   ktime_t *deadline);
 void drm_syncobj_free(struct kref *kref);
 int drm_syncobj_create(struct drm_syncobj **out_syncobj, uint32_t flags,
 		       struct dma_fence *fence);

-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
