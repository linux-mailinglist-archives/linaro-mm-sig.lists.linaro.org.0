Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aN4VDRpgBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:27:22 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B845323A1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:27:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D87993F91B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:27:20 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id 688163F7E7
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 10:46:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=zohomail header.b="IOA5/8Iw";
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (lists.linaro.org: domain of nicolas.frattaroli@collabora.com designates 136.143.188.112 as permitted sender) smtp.mailfrom=nicolas.frattaroli@collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
ARC-Seal: i=1; a=rsa-sha256; t=1778064379; cv=none;
	d=zohomail.com; s=zohoarc;
	b=IVWSXEZF3uZBLaxOj/wmmnUcU0sCjnQh+GzXRg16wFKOCLxfunm3huP0GPGuyxQ7ZFTwk3ZzrUAySsAvSmIrbKyRNziaAwLHowiTzEx/zx5Rq5S1YbIA2VI24xN9OByRuXiQ8XNODm2EYNVyYWH6Ywme+ArUCbKHYrtjL2mU77g=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1778064379; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=969bjndru/0e943CKf2AcnAwdyybQY7U20RliwhKKNA=;
	b=ZXKPiv6m5lW6gONyDU+FP85ot6TfpdLvKSMXqH0XH7q3TSFPRszITAT+sbSttviXQnA0NctVOvc5DEGCXh+1AYPvmUJlskmwM4BmAxeOdsbTi1elVp7Zix6j3ip0SgoIViNcl6IBUl/p6xjjq9dKdtXknIqO4rxYhD4C4jpbUXs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1778064379;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=969bjndru/0e943CKf2AcnAwdyybQY7U20RliwhKKNA=;
	b=IOA5/8IwcHx9uIpY7kBQjXFY6BE6bHyjlcapLhHf9H5qHrOtn1jhhTUmXe/V3ff6
	BmbQi2OH0yjc2vSD+DLn/Jxk8l5LY0yzs/uAwgcbDcoMJRGpUO2w5D6e/Fv9vcZ6o6v
	YIQD28ZaFGIg2VVltqm7lK6ytB7tzIBeOSTwVFB4=
Received: by mx.zohomail.com with SMTPS id 1778064377137162.00190677417413;
	Wed, 6 May 2026 03:46:17 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Wed, 06 May 2026 12:45:56 +0200
MIME-Version: 1.0
Message-Id: <20260506-panthor-explicit-reclaim-v1-1-44f82ac147ce@collabora.com>
References: <20260506-panthor-explicit-reclaim-v1-0-44f82ac147ce@collabora.com>
In-Reply-To: <20260506-panthor-explicit-reclaim-v1-0-44f82ac147ce@collabora.com>
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.15.2
X-Spamd-Bar: -----
X-MailFrom: nicolas.frattaroli@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FL44OCI32TF5DRATIGJCY7K5AW6DBQ42
X-Message-ID-Hash: FL44OCI32TF5DRATIGJCY7K5AW6DBQ42
X-Mailman-Approved-At: Wed, 13 May 2026 11:23:44 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/4] drm/panthor: Add freed_sz parameter to reclaim_priv_bos
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FL44OCI32TF5DRATIGJCY7K5AW6DBQ42/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: C1B845323A1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.59 / 15.00];
	DATE_IN_PAST(1.00)[168];
	R_DKIM_REJECT(1.00)[collabora.com:s=zohomail];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	NEURAL_HAM(-0.00)[-0.846];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,collabora.com:email,collabora.com:mid,linaro.org:email]
X-Rspamd-Action: no action

panthor_mmu_reclaim_priv_bos returns the number of freed pages. However,
how many bytes of freed memory this translates to can't generally be
deduced from the number of pages, as the page size is a per-VM property.

It may be useful to know the exact number of bytes that have been freed
for observability and debugging purposes. To that end, add a new
parameter "freed_sz", which is a pointer to a size_t where this
information will be stored. It may be NULL, in which case the
information isn't stored at all.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/panthor/panthor_gem.c |  3 ++-
 drivers/gpu/drm/panthor/panthor_mmu.c | 12 ++++++++++--
 drivers/gpu/drm/panthor/panthor_mmu.h |  1 +
 3 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/panthor/panthor_gem.c b/drivers/gpu/drm/panthor/panthor_gem.c
index 13295d7a593d..80e82238f3c5 100644
--- a/drivers/gpu/drm/panthor/panthor_gem.c
+++ b/drivers/gpu/drm/panthor/panthor_gem.c
@@ -1511,7 +1511,8 @@ panthor_gem_shrinker_scan(struct shrinker *shrinker, struct shrink_control *sc)
 		goto out;
 
 	freed += panthor_mmu_reclaim_priv_bos(ptdev, sc->nr_to_scan - freed,
-					      &remaining, panthor_gem_try_evict);
+					      &remaining, NULL,
+					      panthor_gem_try_evict);
 	if (freed >= sc->nr_to_scan)
 		goto out;
 
diff --git a/drivers/gpu/drm/panthor/panthor_mmu.c b/drivers/gpu/drm/panthor/panthor_mmu.c
index a7ee14986849..b81388b35a58 100644
--- a/drivers/gpu/drm/panthor/panthor_mmu.c
+++ b/drivers/gpu/drm/panthor/panthor_mmu.c
@@ -3127,13 +3127,18 @@ int panthor_vm_prepare_mapped_bos_resvs(struct drm_exec *exec, struct panthor_vm
 unsigned long
 panthor_mmu_reclaim_priv_bos(struct panthor_device *ptdev,
 			     unsigned int nr_to_scan, unsigned long *remaining,
+			     size_t *freed_sz,
 			     bool (*shrink)(struct drm_gem_object *,
 					    struct ww_acquire_ctx *))
 {
+	unsigned long newly_freed;
 	unsigned long freed = 0;
 	LIST_HEAD(remaining_vms);
 	LIST_HEAD(vms);
 
+	if (freed_sz)
+		*freed_sz = 0;
+
 	mutex_lock(&ptdev->reclaim.lock);
 	list_splice_init(&ptdev->reclaim.vms, &vms);
 
@@ -3152,8 +3157,11 @@ panthor_mmu_reclaim_priv_bos(struct panthor_device *ptdev,
 
 		mutex_unlock(&ptdev->reclaim.lock);
 
-		freed += drm_gem_lru_scan(&vm->reclaim.lru, nr_to_scan - freed,
-					  remaining, shrink, NULL);
+		newly_freed = drm_gem_lru_scan(&vm->reclaim.lru, nr_to_scan - freed,
+					       remaining, shrink, NULL);
+		if (freed_sz)
+			*freed_sz += panthor_vm_page_size(vm) * newly_freed;
+		freed += newly_freed;
 
 		mutex_lock(&ptdev->reclaim.lock);
 
diff --git a/drivers/gpu/drm/panthor/panthor_mmu.h b/drivers/gpu/drm/panthor/panthor_mmu.h
index 3522fbbce369..12b18b5f90e1 100644
--- a/drivers/gpu/drm/panthor/panthor_mmu.h
+++ b/drivers/gpu/drm/panthor/panthor_mmu.h
@@ -52,6 +52,7 @@ int panthor_vm_evict_bo_mappings_locked(struct panthor_gem_object *bo);
 unsigned long
 panthor_mmu_reclaim_priv_bos(struct panthor_device *ptdev,
 			     unsigned int nr_to_scan, unsigned long *remaining,
+			     size_t *freed_sz,
 			     bool (*shrink)(struct drm_gem_object *,
 					    struct ww_acquire_ctx *));
 int panthor_vm_prepare_mapped_bos_resvs(struct drm_exec *exec,

-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
