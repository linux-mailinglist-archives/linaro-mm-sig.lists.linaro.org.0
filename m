Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /BCmA+JPCGqDjAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:07:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC3955B4C8
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:07:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A23894049C
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 11:07:12 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id A3A1140154
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 11:06:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=E39mcjeO;
	spf=pass (lists.linaro.org: domain of ju.orth@gmail.com designates 209.85.128.47 as permitted sender) smtp.mailfrom=ju.orth@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-48a563e4ef7so5009775e9.0
        for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 04:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778929606; x=1779534406; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lYlLPOH4yVQW/c+VIhwYHIXyYVIQiO3ciiQAaKF6Jpo=;
        b=E39mcjeOufRr+30Kb6kjyjsj3MOLsrmy+Kt2/CH8H8C2cQe9Iju7eUb1bqyy1Rtbnd
         jZwi1roBcRvmG8F+fMJM1x98NT9d3kMoN+YaNZd/u/5Y2vJv3yiRhsJOzYo98QlAGAVt
         HcMWtzGrX+xHAnBI39xFgC+XIFGueuTr5h+SyxRVsj+dVqVBXXyiJm5PftRU3HlzgVsF
         gOmfPtXrM3GXHMHqyKyeYsjJ48htqM0Y+p5Qjv8Sc8uDnl/59gb0EEAhcMiVgCwGlXJJ
         DB5VG0FtxWV5orUNEKUlrRxwDsKM6Q0DYKv9zHZPtI6R5+rNKdnTlfLrcW9PwJxXHjbk
         rwQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778929606; x=1779534406;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lYlLPOH4yVQW/c+VIhwYHIXyYVIQiO3ciiQAaKF6Jpo=;
        b=kxxRQvs48xdQF7Gh7N4xcHuWAHQVQ5wZQib1IXQeqD3D6/rvW+YutL6W+O/7RIVk/k
         48Q+CdgkQDx9xVRkOK5UomqR7dyyK+DvgwhOIjw0xPW1LjFBzxk5gnIfWda2cEmKtYMd
         rKLPt2liElqyTQSsUuLtcpJl/LIY3jeQHzQLKsWmBP7VLrQGPyrmN/2mRFKcFmeEZQOA
         CpsX1TYDsfsuju9MY+Zfy1ci8ABvorbIbt7YbNowZ4Trafbv+jh1SZQiZBmKzDKRF/Go
         y0l2a6WXnLTGKIGp1EBmKiPKEyr87/IiDKBU5WtHoL6JXT3roI423uq89/Z0JLXErH+/
         8+ow==
X-Forwarded-Encrypted: i=1; AFNElJ9sXk+cv0Ev/crp6WlGdvecu0DegTL46a+9DmQfGJT2rLU/R67fvMNwHRQaN78XrFw+Rfq0JKlqWjJY6Owf@lists.linaro.org
X-Gm-Message-State: AOJu0YwnnU5XXbv5IpxSXV/ncQ6CHNXX6ijwvyeMjjk2ARPLhJUTRraH
	fm1Vd5BPIhL71ln94G+AbMD+0dYRy62l2HB3x8Tck21TDSYZW1s5phew
X-Gm-Gg: Acq92OE8BY40ci3mUfGlwWEA6KSIYqXAGS8yJKqdF5T2297xTSKCRL4U7YK10YEd4dK
	a0jFljM08pEOtUru2I3zA1539nrRCfV5FaR+2yFTPVU0chvxkkXGevNFE9/E2eaIwGaFBRqfo6s
	s755Uo03jibUgtOmUZKx5j2Ds1aBwfEVZ7OFZMLrgd/3vwpSBv4YGFH7HthK6+jc7bQLsXyX7ZQ
	DvTefKwUjRDN4xRfEhMXcEen5twDWdPZlp1otIyw/gmjjdt/HEclB0dhQh7V2CAcOgq+0nTkRtJ
	qDUKM0u62enzSeIFfQt78U2jYmijEtsBp3/F/orZCs21vUd2BJ5/2t97wo2dgoY00STTyikSqVE
	7DnFT3cuntN1EVI2Kpg+rvMlBRj2EhEjHLB7TUb+E1bBpsdDpFrB4rmtSXj8SY4zQCJPxQsG2V7
	Jajf3NybLVsEyqEvy5MlgEz8PVWDX0O8Vl4y0Ow/1PB9qrKrNf4T7zX/lS3vAm93P2LvHpPmrKK
	1FLqpk=
X-Received: by 2002:a05:600c:4e43:b0:48f:e230:8cad with SMTP id 5b1f17b1804b1-48fe6632135mr98825375e9.33.1778929605528;
        Sat, 16 May 2026 04:06:45 -0700 (PDT)
Received: from [10.13.0.20] (ip87-106-117-14.pbiaas.com. [87.106.117.14])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48feb00e5easm36399545e9.13.2026.05.16.04.06.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 May 2026 04:06:45 -0700 (PDT)
From: Julian Orth <ju.orth@gmail.com>
Date: Sat, 16 May 2026 13:06:04 +0200
MIME-Version: 1.0
Message-Id: <20260516-jorth-syncobj-v1-1-88ede9d98a81@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778929602; l=2530;
 i=ju.orth@gmail.com; s=20251120; h=from:subject:message-id;
 bh=Xxs8inG7yNnVnqsTeDmsro1fFz3EEPayoUW9RCB58oE=;
 b=+8Ntp4CeTenAuSVPrMlJyQQ3aZauaK6+QLTjIL8uRDHdQOin3LlpX/RlNsbP4/cmzUNFxQZTX
 jdMvakZq1vTDS+YTjld0PyK5yiRyPU+nmJ9Cooj8Tm+KOPLpLdSvCEH
X-Developer-Key: i=ju.orth@gmail.com; a=ed25519;
 pk=uM2SS4lelkuIoYHc7v9N9bgBZ3hS632zJS2xjRJLPLI=
X-Spamd-Bar: ---
Message-ID-Hash: RPKMNUEFQBHR3MFS6RYRVYDYD4TWPWH7
X-Message-ID-Hash: RPKMNUEFQBHR3MFS6RYRVYDYD4TWPWH7
X-MailFrom: ju.orth@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, ju.orth@gmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 01/12] drm/syncobj: add drm_syncobj_from_fd
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RPKMNUEFQBHR3MFS6RYRVYDYD4TWPWH7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 9AC3955B4C8
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
	NEURAL_SPAM(0.00)[0.045];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

Given a syncobj FD, returns the underlying drm_syncobj.

Signed-off-by: Julian Orth <ju.orth@gmail.com>
---
 drivers/gpu/drm/drm_syncobj.c | 37 +++++++++++++++++++++++++++----------
 include/drm/drm_syncobj.h     |  1 +
 2 files changed, 28 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
index 8d9fd1917c6e..d992aa082ace 100644
--- a/drivers/gpu/drm/drm_syncobj.c
+++ b/drivers/gpu/drm/drm_syncobj.c
@@ -684,6 +684,31 @@ int drm_syncobj_get_fd(struct drm_syncobj *syncobj, int *p_fd)
 }
 EXPORT_SYMBOL(drm_syncobj_get_fd);
 
+/**
+ * drm_syncobj_from_fd - lookup and reference a syncobj.
+ * @fd: syncobj file descriptor
+ *
+ * Returns a reference to the syncobj pointed to by @fd or NULL. The
+ * reference must be released by calling drm_syncobj_put().
+ */
+struct drm_syncobj *drm_syncobj_from_fd(int fd)
+{
+	struct drm_syncobj *syncobj;
+
+	CLASS(fd, f)(fd);
+
+	if (fd_empty(f))
+		return NULL;
+
+	if (fd_file(f)->f_op != &drm_syncobj_file_fops)
+		return NULL;
+
+	syncobj = fd_file(f)->private_data;
+	drm_syncobj_get(syncobj);
+	return syncobj;
+}
+EXPORT_SYMBOL(drm_syncobj_from_fd);
+
 static int drm_syncobj_handle_to_fd(struct drm_file *file_private,
 				    u32 handle, int *p_fd)
 {
@@ -701,20 +726,12 @@ static int drm_syncobj_handle_to_fd(struct drm_file *file_private,
 static int drm_syncobj_fd_to_handle(struct drm_file *file_private,
 				    int fd, u32 *handle)
 {
-	struct drm_syncobj *syncobj;
-	CLASS(fd, f)(fd);
+	struct drm_syncobj *syncobj = drm_syncobj_from_fd(fd);
 	int ret;
 
-	if (fd_empty(f))
-		return -EINVAL;
-
-	if (fd_file(f)->f_op != &drm_syncobj_file_fops)
+	if (!syncobj)
 		return -EINVAL;
 
-	/* take a reference to put in the xarray */
-	syncobj = fd_file(f)->private_data;
-	drm_syncobj_get(syncobj);
-
 	ret = xa_alloc(&file_private->syncobj_xa, handle, syncobj, xa_limit_32b,
 		       GFP_KERNEL);
 	if (ret)
diff --git a/include/drm/drm_syncobj.h b/include/drm/drm_syncobj.h
index b40052132e52..5da9988834b5 100644
--- a/include/drm/drm_syncobj.h
+++ b/include/drm/drm_syncobj.h
@@ -117,6 +117,7 @@ drm_syncobj_fence_get(struct drm_syncobj *syncobj)
 
 struct drm_syncobj *drm_syncobj_find(struct drm_file *file_private,
 				     u32 handle);
+struct drm_syncobj *drm_syncobj_from_fd(int fd);
 void drm_syncobj_add_point(struct drm_syncobj *syncobj,
 			   struct dma_fence_chain *chain,
 			   struct dma_fence *fence,

-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
