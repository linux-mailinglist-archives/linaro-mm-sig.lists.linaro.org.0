Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCtjMjVQCGoMjAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:08:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A114B55B55E
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:08:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFC94402B6
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 11:08:36 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by lists.linaro.org (Postfix) with ESMTPS id 4F2CD4062E
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 11:06:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=LIuvFU0v;
	spf=pass (lists.linaro.org: domain of ju.orth@gmail.com designates 209.85.128.41 as permitted sender) smtp.mailfrom=ju.orth@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-488af96f6b2so7681335e9.0
        for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 04:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778929616; x=1779534416; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GUzK0JUispp8nMHz/jfrYyUsKO3YYZqffLIW7XXNsp8=;
        b=LIuvFU0vCtMvEL1ogh6z3Cvc9TgpTWsB3+MyHoWWw9tJwlTBgUiKQjH59zTT3korJx
         FIN5BcLZfhCP6LDw+gMMAZb6d5Vknq47I8EUQvUqroy4UvsSfAb5HS7ecZDKxmqXxd1v
         0SbTFmjkGwgabsyauPuQc30mqpr9M0PY6hyAN6uF0FSbtBqeEu4ATOb3/wLXCwL085B8
         T+PtvZegxTK2ivVvaiObHdZhk6yqbJMz55qNll5J7to2rFwiK/9o8ANoikjuPnSSBqVB
         xzeBqgkxoCJ9jP2Fg6aqzvN+QEaHJ60MsF0F6BfsHYXQdevm9mZlDzHl7AO7e8E1rHHB
         i6Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778929616; x=1779534416;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GUzK0JUispp8nMHz/jfrYyUsKO3YYZqffLIW7XXNsp8=;
        b=rIW4CcMn4UJh+lYre6glPhyCPwVQPByeJSYXbwF2vbLJxwDN5bRE8qVdfl+NM81P2I
         6mvtakHbAanN83f44PU4DzCIMzLth/btYbOHEgmNeaNtqd+krIxBjOtutbnVs4PZtg0i
         hWuAftLRhH7N01782kNoOa9UL++yNtgFy4T8q+aTirCS42/zcc3Q89A4QmdowV6yMbZT
         cqC5nvXjNjCLDc9KTlGutWfEccqVXDtP0iEUOyeNBukxgC6fFRYdQZNB5KJ08V5j94dF
         n1ebsohzM9EJVEeOhzJsatx64RDT54AW2Qaf4SxFJ+yO8e2/rvkX77CzdILcjBHDMijw
         uxjQ==
X-Forwarded-Encrypted: i=1; AFNElJ9HHUMXhd+xOLSdPEu0A2uW+aEe5HJXl/DOTodYZUrf8XKSZO8YHX/zC2kjafPtbHVYnaAGAuDp1UBvMm5T@lists.linaro.org
X-Gm-Message-State: AOJu0YyINM1oLoOE8HYgD3wYibCwN9EQcSCsoHDdKW9AxkGzcQJ5K8Cf
	0xWKqgZz6OLd2a0DGW9Hb0AzAp4h8s4tOjrb2Av7486Z3uB0sqWsF3ZB
X-Gm-Gg: Acq92OGnCempLlEjtZbzU1lo3stu5kaCaUM9OZVQRNPgYPAD/L9TQGIp5WUaVkEADAZ
	fE59ssJ8AA3Q28efxG0pnK2lNpZgjOnkp0mbBYNfoX4I5bQS9vEWmdKL+2cWkjKLgRbU5vcLkgN
	Bht1j0NaExQoLEiuMefJs4QRiFLFNrvgEJUiCHfc/D2LM3atXBg13MMhHAKgk6BaPbiF/3oNLJt
	IrjmQC632obF5A3AJVAGXC9CwctIqO+svigS1js1rf5KHtWvAPE1t9rxeffrywPumSwpdx47DFW
	4VY3cayBWKp4IKN4Zm0Mk8/r4ObauQ+NDfyHhA+sTsN8BLooL+lXiw+3rPlbGMgR2b/vrOdsi9W
	Sk6gxV2qfmevCRGoWa7nWGawPFWmos+NB9p69NG7sYPR2Ccqe3xhJHQ6mJ0TMBBRFUNoRyzdJB9
	ZVdk7QKGBrypNqwloLUu6LtBkpjJR9RP9LG8Esl3qx1K53iJ1ANwDP1pLt/ZhDjknGAfGI3QUat
	cFya5E=
X-Received: by 2002:a05:600c:c087:b0:48a:7b55:12a6 with SMTP id 5b1f17b1804b1-48fe5cb36aamr88176225e9.0.1778929616265;
        Sat, 16 May 2026 04:06:56 -0700 (PDT)
Received: from [10.13.0.20] (ip87-106-117-14.pbiaas.com. [87.106.117.14])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48feb00e5easm36399545e9.13.2026.05.16.04.06.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 May 2026 04:06:55 -0700 (PDT)
From: Julian Orth <ju.orth@gmail.com>
Date: Sat, 16 May 2026 13:06:12 +0200
MIME-Version: 1.0
Message-Id: <20260516-jorth-syncobj-v1-9-88ede9d98a81@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778929602; l=1383;
 i=ju.orth@gmail.com; s=20251120; h=from:subject:message-id;
 bh=5APNMtl2NCstrrwoxtWKTvFVItf0IqBmltZkdCTjBxU=;
 b=uBiahrAmREDZy7Fj07y8SVauSH9GmZFa2clMwUB1MLOYdGIifgpx+NgONorTf5/6Z4hk84rCI
 KXcKOq9bDW9D2GMf5/UEmHT+/8WQoDxsc8BjwHF2qniEf5cY8txk1A8
X-Developer-Key: i=ju.orth@gmail.com; a=ed25519;
 pk=uM2SS4lelkuIoYHc7v9N9bgBZ3hS632zJS2xjRJLPLI=
X-Spamd-Bar: ----
Message-ID-Hash: FZUQF2FWT63SWFQ4OEK4SGA664XTL53U
X-Message-ID-Hash: FZUQF2FWT63SWFQ4OEK4SGA664XTL53U
X-MailFrom: ju.orth@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, ju.orth@gmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 09/12] drm/syncobj: fix resource leak in drm_syncobj_import_sync_file_fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FZUQF2FWT63SWFQ4OEK4SGA664XTL53U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: A114B55B55E
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
	NEURAL_SPAM(0.00)[0.027];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

Previously, if dma_fence_chain_alloc() failed, the syncobj and fence
would be leaked.

Signed-off-by: Julian Orth <ju.orth@gmail.com>
---
 drivers/gpu/drm/drm_syncobj.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
index 9b7ecc2978f5..1da96e23dfc0 100644
--- a/drivers/gpu/drm/drm_syncobj.c
+++ b/drivers/gpu/drm/drm_syncobj.c
@@ -767,30 +767,35 @@ static int drm_syncobj_import_sync_file_fence(struct drm_file *file_private,
 {
 	struct dma_fence *fence = sync_file_get_fence(fd);
 	struct drm_syncobj *syncobj;
+	int ret = 0;
 
 	if (!fence)
 		return -EINVAL;
 
 	syncobj = drm_syncobj_find(file_private, handle);
 	if (!syncobj) {
-		dma_fence_put(fence);
-		return -ENOENT;
+		ret = -ENOENT;
+		goto err_syncobj;
 	}
 
 	if (point) {
 		struct dma_fence_chain *chain = dma_fence_chain_alloc();
 
-		if (!chain)
-			return -ENOMEM;
+		if (!chain) {
+			ret = -ENOMEM;
+			goto err;
+		}
 
 		drm_syncobj_add_point(syncobj, chain, fence, point);
 	} else {
 		drm_syncobj_replace_fence(syncobj, fence);
 	}
 
-	dma_fence_put(fence);
+err:
 	drm_syncobj_put(syncobj);
-	return 0;
+err_syncobj:
+	dma_fence_put(fence);
+	return ret;
 }
 
 static int drm_syncobj_export_sync_file(struct drm_file *file_private,

-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
