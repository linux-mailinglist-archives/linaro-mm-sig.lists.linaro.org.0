Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8K5pLvytBGoSNAIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 18:59:40 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 768E7537959
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 18:59:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7547B402DC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 16:59:39 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 9CCD5402BB
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2026 16:59:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=iz7J+lbh;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778691542;
	bh=AAqKJoPOOkLMripnuQaHw9xbx35RrEUMeTSdxMx4p6s=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=iz7J+lbh0ukvjOToMFhD5Zp8Se4seX2ihx25f/7zzFUb0I7hTL8179T8uCclw+FSw
	 1MRunWebsti7/QI1M/oKi7k3n2cTIo/Mb1LtRxiV4099JPsz8qbhZdDKsYSoFqDtb7
	 B9hN248Y6p+ePLN9GNKED/cXdduVAQb0q485ypZmmKxANrbTGBD+4eqCZqGY2YfkrJ
	 z12Go3GpLzOD3CKfNRrw5ud+cAnuQtUyDNaqNblSrYjK6NyUdkKn4ADkxANeNdT6ro
	 CAszu8lPyEaUkjJW2sFw01FhuRYrqlWH83unEuhlFyH8Q9mKVU6axEOViIayI0oDAB
	 A685TKVXB1fTQ==
Received: from [192.168.1.38] (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 86F8B17E1584;
	Wed, 13 May 2026 18:59:01 +0200 (CEST)
From: Boris Brezillon <boris.brezillon@collabora.com>
Date: Wed, 13 May 2026 18:58:51 +0200
MIME-Version: 1.0
Message-Id: <20260513-panthor-guard-refactor-v1-3-f2d8c15a97ce@collabora.com>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
In-Reply-To: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
To: Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778691539; l=1053;
 i=boris.brezillon@collabora.com; s=20260429; h=from:subject:message-id;
 bh=AAqKJoPOOkLMripnuQaHw9xbx35RrEUMeTSdxMx4p6s=;
 b=FYRu54IWmcIrt4VqItE/N6hDpklTqfnMHVMRaefA+rhpji77Nnesrd2OBc/n1HO3aQJVUjjtc
 z7TIGQgNP8uDMCgjQngOurcrLUVY/qExit+MP4PzEpPLSs8Pva8lVXu
X-Developer-Key: i=boris.brezillon@collabora.com; a=ed25519;
 pk=eN+ORdOgQY7d5U+0kA8h5bf67XdD8bhKbjD/TCHexSY=
X-Spamd-Bar: ---
Message-ID-Hash: DN2ELYMQXENFIDAKITI544XH4EPWMLCK
X-Message-ID-Hash: DN2ELYMQXENFIDAKITI544XH4EPWMLCK
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Boris Brezillon <boris.brezillon@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/6] drm: Define a conditional guard for drm_dev_{enter,exit}()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DN2ELYMQXENFIDAKITI544XH4EPWMLCK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 768E7537959
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,collabora.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.158];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,collabora.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

Define a conditional drm_dev_access guard to automate the
drm_dev_{enter,exit}() sequence.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 include/drm/drm_drv.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
index 42fc085f986d..79d1958f93e4 100644
--- a/include/drm/drm_drv.h
+++ b/include/drm/drm_drv.h
@@ -490,6 +490,15 @@ void drm_dev_unplug(struct drm_device *dev);
 int drm_dev_wedged_event(struct drm_device *dev, unsigned long method,
 			 struct drm_wedge_task_info *info);
 
+/*
+ * Only the conditional drm_dev_access guard is valid. The drm_dev one is
+ * here so we can extend it with a conditional variant.
+ */
+DEFINE_LOCK_GUARD_1(drm_dev, struct drm_device,
+		    { WARN_ON("Use cond guards"); _T->idx = -1; },
+		    drm_dev_exit(_T->idx), int idx);
+DEFINE_LOCK_GUARD_1_COND(drm_dev, _access, drm_dev_enter(_T->lock, &_T->idx));
+
 /**
  * drm_dev_is_unplugged - is a DRM device unplugged
  * @dev: DRM device

-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
