Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LyHJDi7XRGqE1woAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 01 Jul 2026 11:00:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D0B6EB66D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 01 Jul 2026 11:00:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=CETJ7gX6;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CFEA240CBA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jul 2026 09:00:28 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id BA73940C30
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2026 08:59:52 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 401FD4401A;
	Wed,  1 Jul 2026 08:59:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 590441F00A3D;
	Wed,  1 Jul 2026 08:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782896392;
	bh=6pYIN2YqJMmrthBPue021Qa1ABPy6rMhZOJ/H9QgS6c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=CETJ7gX6hGI9ozgiHscGMmVToBNdT8eFOFnk42ccTe/Vsisl7n2uRKnNrDyTiYINe
	 bAzVpUTje+cA5/SS6TsJKqd94HQLh73OO0qgzkg2mzudTdsd+NrOVmTWEU9jNpMlqu
	 LEPpt3v3j6jFgkf9WimVvPXf2kvNUVUvSZ2Dnoqtm7uw8nSXnD4PwcPY/IZB0byIs1
	 0bm2XEa6KOzlTcu1yZ6VlDv1V08xZxuHN9EE/lkZHz7GqmBNB795TwJ3FaapOoqqix
	 r1d0rS3IiPl/FMBagGzvGjm+GB2xeV38Fq7ccixKQRu9EZHWZlRTWkUQrhbA/tIlyH
	 aUTyxcxSxTBGQ==
From: Philipp Stanner <phasta@kernel.org>
To: Matthew Brost <matthew.brost@intel.com>,
	Danilo Krummrich <dakr@kernel.org>,
	Philipp Stanner <phasta@kernel.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Marco Pagani <marco.pagani@linux.dev>,
	Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
	Boris Brezillon <boris.brezillon@collabora.com>
Date: Wed,  1 Jul 2026 10:59:20 +0200
Message-ID: <20260701085920.3253248-6-phasta@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701085920.3253248-2-phasta@kernel.org>
References: <20260701085920.3253248-2-phasta@kernel.org>
MIME-Version: 1.0
X-Spamd-Bar: -----
Message-ID-Hash: K75ZJKOII4BHBFKGRK6DZENZU6OTSJOL
X-Message-ID-Hash: K75ZJKOII4BHBFKGRK6DZENZU6OTSJOL
X-MailFrom: phasta@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 4/5] drm/sched: Lock drm_sched_entity_is_idle()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K75ZJKOII4BHBFKGRK6DZENZU6OTSJOL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:matthew.brost@intel.com,m:dakr@kernel.org,m:phasta@kernel.org,m:ckoenig.leichtzumerken@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:marco.pagani@linux.dev,m:tvrtko.ursulin@igalia.com,m:boris.brezillon@collabora.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:ckoenigleichtzumerken@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_TO(0.00)[intel.com,kernel.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org,linux.dev,igalia.com,collabora.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B8D0B6EB66D

drm_sched_entity_is_idle() contains a badly documented memory barrier
and an invalid lockless access to entity->stopped.

This function is in no way performance critical, so it is safer, more
readable and more maintainable to take the spinlock. This also enables
future cleanup work where the entity can be fully synchronized via its
spinlock.

Add locking to drm_sched_entity_is_idle().

Signed-off-by: Philipp Stanner <phasta@kernel.org>
---
 drivers/gpu/drm/scheduler/sched_entity.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/scheduler/sched_entity.c b/drivers/gpu/drm/scheduler/sched_entity.c
index 0fc1213a0d3f..cb03d6a36578 100644
--- a/drivers/gpu/drm/scheduler/sched_entity.c
+++ b/drivers/gpu/drm/scheduler/sched_entity.c
@@ -178,14 +178,18 @@ EXPORT_SYMBOL(drm_sched_entity_modify_sched);
 
 static bool drm_sched_entity_is_idle(struct drm_sched_entity *entity)
 {
-	rmb(); /* for list_empty to work without lock */
+	bool idle = false;
+
+	spin_lock(&entity->lock);
 
 	if (list_empty(&entity->list) ||
 	    spsc_queue_count(&entity->job_queue) == 0 ||
 	    entity->stopped)
-		return true;
+		idle = true;
 
-	return false;
+	spin_unlock(&entity->lock);
+
+	return idle;
 }
 
 /**
-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
