Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4NFjJgiuBGoSNAIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 18:59:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C4653796F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 18:59:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 20823402DC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 16:59:51 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id F0A51402BB
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2026 16:59:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=DrAS9pHG;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778691542;
	bh=EJJ23B90TRdK54+z/YbNMzCTJKQm4n/q+/3aupZ8f0I=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=DrAS9pHGJD4f2D7ukaPu+A1IQfK1Tmf1k987qVc1/qhi342IIcDduEZSkWDd/AvKB
	 Z89nXb0d8An2t0HEPUaLzJ1aF7Fh/4jwhi3l0rxO5LEmPEdPSfKlZRHl3I7mZZgcEz
	 sM55Oyt/G0QaBmA19f9+OTS/luSMT/bO9HF1dZAXkdQznpikjjvBvQmD05IYdbfaOV
	 D5EwikP+TeQ33MCFX7heaUetVL6Mp6dDJ0nryvvt8B++xZCoxkEOg3Pngv61DalU/E
	 OktWfQNlEg8yfvKns4d1CydELglnTyMi+G/uUYeMl2EqqeDNinhfDllr7a3ZTq+bfW
	 G5Ki7sTfxl9FQ==
Received: from [192.168.1.38] (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 33EDF17E15D6;
	Wed, 13 May 2026 18:59:02 +0200 (CEST)
From: Boris Brezillon <boris.brezillon@collabora.com>
Date: Wed, 13 May 2026 18:58:52 +0200
MIME-Version: 1.0
Message-Id: <20260513-panthor-guard-refactor-v1-4-f2d8c15a97ce@collabora.com>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
In-Reply-To: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
To: Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778691539; l=8300;
 i=boris.brezillon@collabora.com; s=20260429; h=from:subject:message-id;
 bh=EJJ23B90TRdK54+z/YbNMzCTJKQm4n/q+/3aupZ8f0I=;
 b=MjAH65QDppFUt8iLXK6Pl2Zzl8rYttDheFLSv5H17jH5+LrQcGulXVS5YF9iEEyKNbwRyMpT6
 0s/nyLlC0JPDAGp+cQ1F4btNTwRZsXBqV8JNW+8X9Oq0QnFIkUMoLd5
X-Developer-Key: i=boris.brezillon@collabora.com; a=ed25519;
 pk=eN+ORdOgQY7d5U+0kA8h5bf67XdD8bhKbjD/TCHexSY=
X-Spamd-Bar: ---
Message-ID-Hash: GQXDQNJDQ37JDRE2CHDFV4AJZU75R5K6
X-Message-ID-Hash: GQXDQNJDQ37JDRE2CHDFV4AJZU75R5K6
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Boris Brezillon <boris.brezillon@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 4/6] drm/panthor: Use guards for resv locking
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GQXDQNJDQ37JDRE2CHDFV4AJZU75R5K6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 14C4653796F
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
	NEURAL_HAM(-0.00)[-0.023];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,collabora.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

Now that we have guards for resv locks, we can use them to simplify the
core. The only manual lock/unlock remaining are the ones in
panthor_gem_try_evict_no_resv_wait(), because the lock/unlock are
in different for_each() loop scopes.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/gpu/drm/panthor/panthor_gem.c | 77 ++++++++++++-----------------------
 drivers/gpu/drm/panthor/panthor_mmu.c | 16 ++++----
 2 files changed, 32 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/panthor/panthor_gem.c b/drivers/gpu/drm/panthor/panthor_gem.c
index a6fddc380e7d..94facdc8cfe1 100644
--- a/drivers/gpu/drm/panthor/panthor_gem.c
+++ b/drivers/gpu/drm/panthor/panthor_gem.c
@@ -339,13 +339,9 @@ panthor_gem_dev_map_get_sgt_locked(struct panthor_gem_object *bo)
 struct sg_table *
 panthor_gem_get_dev_sgt(struct panthor_gem_object *bo)
 {
-	struct sg_table *sgt;
+	guard(dma_resv)(bo->base.resv);
 
-	dma_resv_lock(bo->base.resv, NULL);
-	sgt = panthor_gem_dev_map_get_sgt_locked(bo);
-	dma_resv_unlock(bo->base.resv);
-
-	return sgt;
+	return panthor_gem_dev_map_get_sgt_locked(bo);
 }
 
 static void
@@ -497,7 +493,7 @@ panthor_gem_prime_begin_cpu_access(struct dma_buf *dma_buf,
 	struct panthor_gem_object *bo = to_panthor_bo(obj);
 	struct dma_buf_attachment *attach;
 
-	dma_resv_lock(obj->resv, NULL);
+	guard(dma_resv)(obj->resv);
 	if (bo->dmap.sgt)
 		dma_sync_sgtable_for_cpu(drm_dev_dma_dev(dev), bo->dmap.sgt, dir);
 
@@ -510,7 +506,6 @@ panthor_gem_prime_begin_cpu_access(struct dma_buf *dma_buf,
 		if (sgt)
 			dma_sync_sgtable_for_cpu(attach->dev, sgt, dir);
 	}
-	dma_resv_unlock(obj->resv);
 
 	return 0;
 }
@@ -524,7 +519,7 @@ panthor_gem_prime_end_cpu_access(struct dma_buf *dma_buf,
 	struct panthor_gem_object *bo = to_panthor_bo(obj);
 	struct dma_buf_attachment *attach;
 
-	dma_resv_lock(obj->resv, NULL);
+	guard(dma_resv)(obj->resv);
 	list_for_each_entry(attach, &dma_buf->attachments, node) {
 		struct sg_table *sgt = attach->priv;
 
@@ -538,7 +533,6 @@ panthor_gem_prime_end_cpu_access(struct dma_buf *dma_buf,
 	if (bo->dmap.sgt)
 		dma_sync_sgtable_for_device(drm_dev_dma_dev(dev), bo->dmap.sgt, dir);
 
-	dma_resv_unlock(obj->resv);
 	return 0;
 }
 
@@ -625,19 +619,15 @@ static void panthor_gem_unpin_locked(struct drm_gem_object *obj)
 
 int panthor_gem_pin(struct panthor_gem_object *bo)
 {
-	int ret = 0;
-
 	if (drm_gem_is_imported(&bo->base))
 		return 0;
 
 	if (refcount_inc_not_zero(&bo->backing.pin_count))
 		return 0;
 
-	dma_resv_lock(bo->base.resv, NULL);
-	ret = panthor_gem_backing_pin_locked(bo);
-	dma_resv_unlock(bo->base.resv);
+	guard(dma_resv)(bo->base.resv);
 
-	return ret;
+	return panthor_gem_backing_pin_locked(bo);
 }
 
 void panthor_gem_unpin(struct panthor_gem_object *bo)
@@ -648,9 +638,8 @@ void panthor_gem_unpin(struct panthor_gem_object *bo)
 	if (refcount_dec_not_one(&bo->backing.pin_count))
 		return;
 
-	dma_resv_lock(bo->base.resv, NULL);
+	guard(dma_resv)(bo->base.resv);
 	panthor_gem_backing_unpin_locked(bo);
-	dma_resv_unlock(bo->base.resv);
 }
 
 int panthor_gem_swapin_locked(struct panthor_gem_object *bo)
@@ -759,13 +748,12 @@ static int panthor_gem_mmap(struct drm_gem_object *obj, struct vm_area_struct *v
 		return -EINVAL;
 
 	if (!refcount_inc_not_zero(&bo->cmap.mmap_count)) {
-		dma_resv_lock(obj->resv, NULL);
+		guard(dma_resv)(obj->resv);
 		if (!refcount_inc_not_zero(&bo->cmap.mmap_count)) {
 			refcount_set(&bo->cmap.mmap_count, 1);
 			guard(mutex)(&bo->base.gpuva.lock);
 			panthor_gem_update_reclaim_state_locked(bo, NULL);
 		}
-		dma_resv_unlock(obj->resv);
 	}
 
 	vm_flags_set(vma, VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP);
@@ -814,18 +802,12 @@ static vm_fault_t nonblocking_page_setup(struct vm_fault *vmf,
 {
 	struct vm_area_struct *vma = vmf->vma;
 	struct panthor_gem_object *bo = to_panthor_bo(vma->vm_private_data);
-	vm_fault_t ret;
 
-	if (!dma_resv_trylock(bo->base.resv))
+	ACQUIRE(dma_resv_try, resv_guard)(bo->base.resv);
+	if (ACQUIRE_ERR(dma_resv_try, &resv_guard) || !bo->backing.pages)
 		return VM_FAULT_RETRY;
 
-	if (bo->backing.pages)
-		ret = insert_page(vmf, order, bo->backing.pages[page_offset]);
-	else
-		ret = VM_FAULT_RETRY;
-
-	dma_resv_unlock(bo->base.resv);
-	return ret;
+	return insert_page(vmf, order, bo->backing.pages[page_offset]);
 }
 
 static vm_fault_t blocking_page_setup(struct vm_fault *vmf, unsigned int order,
@@ -835,8 +817,8 @@ static vm_fault_t blocking_page_setup(struct vm_fault *vmf, unsigned int order,
 	vm_fault_t ret;
 	int err;
 
-	err = dma_resv_lock_interruptible(bo->base.resv, NULL);
-	if (err)
+	ACQUIRE(dma_resv_intr, resv_guard)(bo->base.resv);
+	if (ACQUIRE_ERR(dma_resv_intr, &resv_guard))
 		return mmap_lock_held ? VM_FAULT_NOPAGE : VM_FAULT_RETRY;
 
 	err = panthor_gem_backing_get_pages_locked(bo);
@@ -857,8 +839,6 @@ static vm_fault_t blocking_page_setup(struct vm_fault *vmf, unsigned int order,
 			ret = VM_FAULT_RETRY;
 	}
 
-	dma_resv_unlock(bo->base.resv);
-
 	return ret;
 }
 
@@ -932,12 +912,12 @@ static void panthor_gem_vm_close(struct vm_area_struct *vma)
 	if (refcount_dec_not_one(&bo->cmap.mmap_count))
 		goto out;
 
-	dma_resv_lock(bo->base.resv, NULL);
-	if (refcount_dec_and_test(&bo->cmap.mmap_count)) {
-		guard(mutex)(&bo->base.gpuva.lock);
-		panthor_gem_update_reclaim_state_locked(bo, NULL);
+	scoped_guard(dma_resv, bo->base.resv) {
+		if (refcount_dec_and_test(&bo->cmap.mmap_count)) {
+			guard(mutex)(&bo->base.gpuva.lock);
+			panthor_gem_update_reclaim_state_locked(bo, NULL);
+		}
 	}
-	dma_resv_unlock(bo->base.resv);
 
 out:
 	drm_gem_object_put(&bo->base);
@@ -1161,21 +1141,18 @@ panthor_gem_sync(struct drm_gem_object *obj, u32 type,
 	if (size == 0)
 		return 0;
 
-	ret = dma_resv_lock_interruptible(bo->base.resv, NULL);
+	ACQUIRE(dma_resv_intr, resv_guard)(bo->base.resv);
+	ret = ACQUIRE_ERR(dma_resv_intr, &resv_guard);
 	if (ret)
 		return ret;
 
 	/* If there's no pages, there's no point pulling those back, bail out early. */
-	if (!bo->backing.pages) {
-		ret = 0;
-		goto out_unlock;
-	}
+	if (!bo->backing.pages)
+		return 0;
 
 	sgt = panthor_gem_dev_map_get_sgt_locked(bo);
-	if (IS_ERR(sgt)) {
-		ret = PTR_ERR(sgt);
-		goto out_unlock;
-	}
+	if (IS_ERR(sgt))
+		return PTR_ERR(sgt);
 
 	for_each_sgtable_dma_sg(sgt, sgl, count) {
 		if (size == 0)
@@ -1219,11 +1196,7 @@ panthor_gem_sync(struct drm_gem_object *obj, u32 type,
 			dma_sync_single_for_cpu(dma_dev, paddr, len, DMA_FROM_DEVICE);
 	}
 
-	ret = 0;
-
-out_unlock:
-	dma_resv_unlock(bo->base.resv);
-	return ret;
+	return 0;
 }
 
 /**
diff --git a/drivers/gpu/drm/panthor/panthor_mmu.c b/drivers/gpu/drm/panthor/panthor_mmu.c
index 157eef286cb9..ab9a77e6a145 100644
--- a/drivers/gpu/drm/panthor/panthor_mmu.c
+++ b/drivers/gpu/drm/panthor/panthor_mmu.c
@@ -1118,10 +1118,10 @@ static void panthor_vm_bo_free(struct drm_gpuvm_bo *vm_bo)
 	/* We couldn't call this when we unlinked, because the resv lock can't
 	 * be taken in the dma signalling path, so call it now.
 	 */
-	dma_resv_lock(bo->base.resv, NULL);
-	scoped_guard(mutex, &bo->base.gpuva.lock)
+	scoped_guard(dma_resv, bo->base.resv) {
+		guard(mutex)(&bo->base.gpuva.lock);
 		panthor_gem_update_reclaim_state_locked(bo, NULL);
-	dma_resv_unlock(bo->base.resv);
+	}
 
 	kfree(vm_bo);
 }
@@ -1342,16 +1342,14 @@ static int panthor_vm_prepare_map_op_ctx(struct panthor_vm_op_ctx *op_ctx,
 
 	/* Insert BO into the extobj list last, when we know nothing can fail. */
 	if (bo->base.resv != panthor_vm_resv(vm)) {
-		dma_resv_lock(panthor_vm_resv(vm), NULL);
+		guard(dma_resv)(panthor_vm_resv(vm));
 		drm_gpuvm_bo_extobj_add(op_ctx->map.vm_bo);
-		dma_resv_unlock(panthor_vm_resv(vm));
 	}
 
 	/* And finally update the BO state. */
-	dma_resv_lock(bo->base.resv, NULL);
-	scoped_guard(mutex, &bo->base.gpuva.lock)
-		panthor_gem_update_reclaim_state_locked(bo, NULL);
-	dma_resv_unlock(bo->base.resv);
+	guard(dma_resv)(bo->base.resv);
+	guard(mutex)(&bo->base.gpuva.lock);
+	panthor_gem_update_reclaim_state_locked(bo, NULL);
 
 	return 0;
 

-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
