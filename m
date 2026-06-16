Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rOFXHzFfPWpY2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:02:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CFE6C7A9B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:02:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5A9CB441C3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:02:39 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by lists.linaro.org (Postfix) with ESMTPS id 15AF340A79
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 18:20:08 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-36bcbd7821fso2492926a91.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 11:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781634007; x=1782238807; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UwpVureg07QbjRnL27mIYEGwVaOJw7DuUq/siGYlqU4=;
        b=XkLnnbyMWxnEb6+x6aHIkLtJDbG5oMpXXnewT9g+IrQxPPts7I64135K1ozmyNOimn
         NMC/EbKVSi7YvfckbZ1/5h8eNrsT7xkY15PIpT8H2JXi9GYB26TEVUybwF2mIAWsLBZ1
         HuwHB3X4fFB69zQfXip3eNQAvz7CKFPOy5wyLKUmZJq4kk7Ff7eJD2BZBaT+FWirGR8X
         bm+mQQjZ6DX9t1edGznAjFZPp20iAkS3KxRw6XW5pBD4L4vfiV48IiXUK+A7OUBfqajk
         myapL3xxIEfZVATqSBTKvRyGkUUh1tuJq+7PnCoISPCSwL7iCSvEAyHuq4/FeSzQlzpN
         Y5Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781634007; x=1782238807;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UwpVureg07QbjRnL27mIYEGwVaOJw7DuUq/siGYlqU4=;
        b=ArkjOW5aK++J3rAu+lV9LuEEw0PirxnyILQ4FP60FvhGPKDUOeID/fmiHx4FAORA+s
         j1F25OIV9moP1OkwBxQMAmA82DrKfBmrLptYt6eYpi4xm4z5Cn1Amygld+W+XNjmSsQX
         qqJ3eXKTW6WkPFOsNsyqowbK7029KBc7h8e5gViTnHWPFkxyqfAlR9WMmu0yu9sSVcn0
         KKvgZP448uS21w57O7O8nl/E9iIUTDHQckQiqk46dc5LGnm9shJnqAQbYNzHnKfJbP2W
         K5iIvRsak6m3ssryjjKNpqikhNQ5aYdXI1/iderL+nmaCdix2fqsByawmXPv38h8jDWH
         rJ8w==
X-Forwarded-Encrypted: i=1; AFNElJ8FhENPHDNMiFZpPvljcs97TkaD44CnByV92lZ7Rl+uBmWzCp+lj9sZ81qEs1rfR/GFX08qdhLvs0JUcffZ@lists.linaro.org
X-Gm-Message-State: AOJu0Ywk+tTkq8cHRysxjPHgKgSvysLp1ubhHtOSwv30STN4BZfwPzCL
	GmotYzrgs6tNewJah/nSPyU/55GzXdnawTY5CTioxPqGADifqcszqoP5
X-Gm-Gg: AfdE7cnmybeD/CvixYHioY20ufPs6/kffeCI7Yk/QJjYyEWYFwuthaqYg82inpLWW/9
	IV7XVsUv8wroMcASu8guJDxwxJZ3kbjgl0lYqJdldISPwetZgHMjyVjghbfnefxAM6xMyu8y5HC
	zlMhkfjbOesrLWGVq14+QbaNx/ZmDFodSLTOxXAwwRxFBQdmwn3EaUQffpzn1lKftPVklCSyPyX
	O9oSNzUEztHzukynqP83D3Juy/ANQIJPqHpZabX6AwEKDBcRA38gWZGtj6IwFV57x4MiYFmfZuM
	6KA1/AGAiHc1MQyW1OVdGf0emQNb10lC8PAPA/x4Fmi7oyZ5wdC9N7IGhu+0bx+vSs0iqXBhE9s
	CyT+q8BqVvNnptdasag5GEZNSGHmi7jWn6r9JyhTBAf+BxP9MCQf9pDyXQ5py1RUZRP9m9sDa9F
	8nwNQg1yskYxpkeABnu2XyDFAcpfuOyA6JJZSSww/GHpHhZ684vrF2D/Xg0+sqUJA=
X-Received: by 2002:a17:90b:4ac7:b0:36b:7c2a:263e with SMTP id 98e67ed59e1d1-37c9e9d408dmr178965a91.20.1781634007158;
        Tue, 16 Jun 2026 11:20:07 -0700 (PDT)
Received: from localhost.localdomain ([49.207.217.37])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37c521ef803sm3605560a91.11.2026.06.16.11.20.02
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Tue, 16 Jun 2026 11:20:06 -0700 (PDT)
From: Biren Pandya <birenpandya@gmail.com>
To: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch
Date: Tue, 16 Jun 2026 23:49:57 +0530
Message-ID: <20260616181956.61476-2-birenpandya@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: birenpandya@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VRNI23RSV27KBNLRDPJ2FEEFPDULWZNZ
X-Message-ID-Hash: VRNI23RSV27KBNLRDPJ2FEEFPDULWZNZ
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:01:20 +0000
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Biren Pandya <birenpandya@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/gem: modernize locks to use scoped_guard()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VRNI23RSV27KBNLRDPJ2FEEFPDULWZNZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.59 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[214];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:birenpandya@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[birenpandya@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[birenpandya@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 46CFE6C7A9B

Several GEM core functions manually managed mutex_lock() and
mutex_unlock() over single scopes or error paths. This adds boilerplate
and carries the risk of lock leaks if error paths are refactored.

Modernize these locks by deploying the <linux/cleanup.h> scoped_guard()
macro. This ensures that the locks are reliably dropped when the block
exits, cleanly removing goto out_unlock paths and tightening the
lifecycle.

Signed-off-by: Biren Pandya <birenpandya@gmail.com>

Compiled locally, but requires IGT validation by the DRM CI.
---
 drivers/gpu/drm/drm_gem.c | 66 ++++++++++++++++++---------------------
 1 file changed, 30 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index 891c3bff5ae0..d3a061d42ba7 100644
--- a/drivers/gpu/drm/drm_gem.c
+++ b/drivers/gpu/drm/drm_gem.c
@@ -346,13 +346,13 @@ void drm_gem_object_handle_put_unlocked(struct drm_gem_object *obj)
 	 * we checked for a name.
 	 */
 
-	mutex_lock(&dev->object_name_lock);
-	if (--obj->handle_count == 0) {
-		drm_gem_object_handle_free(obj);
-		drm_gem_object_exported_dma_buf_free(obj);
-		final = true;
+	scoped_guard(mutex, &dev->object_name_lock) {
+		if (--obj->handle_count == 0) {
+			drm_gem_object_handle_free(obj);
+			drm_gem_object_exported_dma_buf_free(obj);
+			final = true;
+		}
 	}
-	mutex_unlock(&dev->object_name_lock);
 
 	if (final)
 		drm_gem_object_put(obj);
@@ -374,11 +374,8 @@ drm_gem_object_release_handle(int id, void *ptr, void *data)
 	if (obj->funcs->close)
 		obj->funcs->close(obj, file_priv);
 
-	mutex_lock(&file_priv->prime.lock);
-
-	drm_prime_remove_buf_handle(&file_priv->prime, id);
-
-	mutex_unlock(&file_priv->prime.lock);
+	scoped_guard(mutex, &file_priv->prime.lock)
+		drm_prime_remove_buf_handle(&file_priv->prime, id);
 
 	drm_vma_node_revoke(&obj->vma_node, file_priv);
 
@@ -1021,37 +1018,34 @@ int drm_gem_change_handle_ioctl(struct drm_device *dev, void *data,
 		goto out;
 	}
 
-	mutex_lock(&file_priv->prime.lock);
+	scoped_guard(mutex, &file_priv->prime.lock) {
+		spin_lock(&file_priv->table_lock);
+		ret = idr_alloc(&file_priv->object_idr, obj, handle, handle + 1,
+				GFP_NOWAIT);
+		spin_unlock(&file_priv->table_lock);
 
-	spin_lock(&file_priv->table_lock);
-	ret = idr_alloc(&file_priv->object_idr, obj, handle, handle + 1,
-			GFP_NOWAIT);
-	spin_unlock(&file_priv->table_lock);
+		if (ret < 0)
+			break;
 
-	if (ret < 0)
-		goto out_unlock;
+		if (obj->dma_buf) {
+			ret = drm_prime_add_buf_handle(&file_priv->prime, obj->dma_buf,
+						       handle);
+			if (ret < 0) {
+				spin_lock(&file_priv->table_lock);
+				idr_remove(&file_priv->object_idr, handle);
+				spin_unlock(&file_priv->table_lock);
+				break;
+			}
 
-	if (obj->dma_buf) {
-		ret = drm_prime_add_buf_handle(&file_priv->prime, obj->dma_buf,
-					       handle);
-		if (ret < 0) {
-			spin_lock(&file_priv->table_lock);
-			idr_remove(&file_priv->object_idr, handle);
-			spin_unlock(&file_priv->table_lock);
-			goto out_unlock;
+			drm_prime_remove_buf_handle(&file_priv->prime, args->handle);
 		}
 
-		drm_prime_remove_buf_handle(&file_priv->prime, args->handle);
-	}
-
-	ret = 0;
-
-	spin_lock(&file_priv->table_lock);
-	idr_remove(&file_priv->object_idr, args->handle);
-	spin_unlock(&file_priv->table_lock);
+		ret = 0;
 
-out_unlock:
-	mutex_unlock(&file_priv->prime.lock);
+		spin_lock(&file_priv->table_lock);
+		idr_remove(&file_priv->object_idr, args->handle);
+		spin_unlock(&file_priv->table_lock);
+	}
 out:
 	drm_gem_object_put(obj);
 

base-commit: 72c25183cac9bc584c9de21797a5883af44bcc7a
-- 
2.50.1 (Apple Git-155)

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
