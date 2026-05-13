Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNzXAhGuBGoSNAIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 19:00:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4DD537976
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 19:00:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1B1440305
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 16:59:59 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 5227A402BB
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2026 16:59:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=GEH+1cg1;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778691543;
	bh=Lvz1a1n/wWJFbYaXmSb0nQujNWIYvHlSpP6TrVQhgHU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=GEH+1cg1lXYeDuYFMBEqHswXo8BWKzphI3QhubCrctdvY1MozD3PMvo08qlH9H7Ys
	 lgEOx3qam60zaa855cyGzUOYyYgUhLFP2R3JHQn1bppE7337IWwfnrxN2FiZAgSGYx
	 XnPYREovuE8x5NvQjD6uUDlJF2M+QF/WKEKOlViul6R+p0rO990NVrr82bGujriTz7
	 INTNMspRfP9LGyVL3EqwijB40HrjEULovRUJTD2dLUcVrmuTiYlH3tkqQRL2l8bRiQ
	 7CagwmKYCFpLc1g12CMTRgGfVxSAbYlu0uNB3tVfAeV/z/7HIr2IeopzI6FCemeLV/
	 /Qe3a00QEvBcg==
Received: from [192.168.1.38] (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D437F17E38BA;
	Wed, 13 May 2026 18:59:02 +0200 (CEST)
From: Boris Brezillon <boris.brezillon@collabora.com>
Date: Wed, 13 May 2026 18:58:53 +0200
MIME-Version: 1.0
Message-Id: <20260513-panthor-guard-refactor-v1-5-f2d8c15a97ce@collabora.com>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
In-Reply-To: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
To: Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778691539; l=15018;
 i=boris.brezillon@collabora.com; s=20260429; h=from:subject:message-id;
 bh=Lvz1a1n/wWJFbYaXmSb0nQujNWIYvHlSpP6TrVQhgHU=;
 b=Ndg8PtyNHjA3lsDCp73Ufmw7Rpjzf6eDxJAvTN4qw6WggCsEi793DwK7BXL31M7Xs/A4a5i6D
 LrCIjamsiSkB5qsDnwPsmyua1de6mdZx5Nm3KAPXoBhPLfmYRJq/WzW
X-Developer-Key: i=boris.brezillon@collabora.com; a=ed25519;
 pk=eN+ORdOgQY7d5U+0kA8h5bf67XdD8bhKbjD/TCHexSY=
X-Spamd-Bar: ---
Message-ID-Hash: PSBKQRBHTUVAZY5E2PXDSCSCXFHEM6RS
X-Message-ID-Hash: PSBKQRBHTUVAZY5E2PXDSCSCXFHEM6RS
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Boris Brezillon <boris.brezillon@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 5/6] drm/panthor: Use the drm_dev_access guard
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PSBKQRBHTUVAZY5E2PXDSCSCXFHEM6RS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 8B4DD537976
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
	NEURAL_HAM(-0.00)[-0.235];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,collabora.com:mid,reset.work:url,lists.linaro.org:helo,lists.linaro.org:rdns,tick_work.work:url,linaro.org:email]
X-Rspamd-Action: no action

It simplifies the code in a few places, allowing direct returns instead
of gotos. It also helps identifying the sections under the dev_access
guard when scoped_cond_guard() is used.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/gpu/drm/panthor/panthor_device.c | 127 ++++++++++++++-----------------
 drivers/gpu/drm/panthor/panthor_drv.c    |  58 ++++++--------
 drivers/gpu/drm/panthor/panthor_mmu.c    |  29 +++----
 drivers/gpu/drm/panthor/panthor_sched.c  |  10 +--
 4 files changed, 95 insertions(+), 129 deletions(-)

diff --git a/drivers/gpu/drm/panthor/panthor_device.c b/drivers/gpu/drm/panthor/panthor_device.c
index cb9cd8d0448b..988a9a34f753 100644
--- a/drivers/gpu/drm/panthor/panthor_device.c
+++ b/drivers/gpu/drm/panthor/panthor_device.c
@@ -123,7 +123,7 @@ static void panthor_device_reset_cleanup(struct drm_device *ddev, void *data)
 static void panthor_device_reset_work(struct work_struct *work)
 {
 	struct panthor_device *ptdev = container_of(work, struct panthor_device, reset.work);
-	int ret = 0, cookie;
+	int ret = 0;
 
 	/* If the device is entering suspend, we don't reset. A slow reset will
 	 * be forced at resume time instead.
@@ -131,19 +131,17 @@ static void panthor_device_reset_work(struct work_struct *work)
 	if (atomic_read(&ptdev->pm.state) != PANTHOR_DEVICE_PM_STATE_ACTIVE)
 		return;
 
-	if (!drm_dev_enter(&ptdev->base, &cookie))
-		return;
-
-	panthor_sched_pre_reset(ptdev);
-	panthor_fw_pre_reset(ptdev, true);
-	panthor_mmu_pre_reset(ptdev);
-	panthor_hw_soft_reset(ptdev);
-	panthor_hw_l2_power_on(ptdev);
-	panthor_mmu_post_reset(ptdev);
-	ret = panthor_fw_post_reset(ptdev);
-	atomic_set(&ptdev->reset.pending, 0);
-	panthor_sched_post_reset(ptdev, ret != 0);
-	drm_dev_exit(cookie);
+	scoped_cond_guard(drm_dev_access, return, &ptdev->base) {
+		panthor_sched_pre_reset(ptdev);
+		panthor_fw_pre_reset(ptdev, true);
+		panthor_mmu_pre_reset(ptdev);
+		panthor_hw_soft_reset(ptdev);
+		panthor_hw_l2_power_on(ptdev);
+		panthor_mmu_post_reset(ptdev);
+		ret = panthor_fw_post_reset(ptdev);
+		atomic_set(&ptdev->reset.pending, 0);
+		panthor_sched_post_reset(ptdev, ret != 0);
+	}
 
 	if (ret) {
 		panthor_device_unplug(ptdev);
@@ -394,38 +392,31 @@ static vm_fault_t panthor_mmio_vm_fault(struct vm_fault *vmf)
 	u64 offset = (u64)vma->vm_pgoff << PAGE_SHIFT;
 	unsigned long pfn;
 	pgprot_t pgprot;
-	vm_fault_t ret;
 	bool active;
-	int cookie;
 
-	if (!drm_dev_enter(&ptdev->base, &cookie))
+	ACQUIRE(drm_dev_access, dev_guard)(&ptdev->base);
+	if (ACQUIRE_ERR(drm_dev_access, &dev_guard))
 		return VM_FAULT_SIGBUS;
 
-	scoped_guard(mutex, &ptdev->pm.mmio_lock) {
-		active = atomic_read(&ptdev->pm.state) == PANTHOR_DEVICE_PM_STATE_ACTIVE;
+	guard(mutex)(&ptdev->pm.mmio_lock);
+	active = atomic_read(&ptdev->pm.state) == PANTHOR_DEVICE_PM_STATE_ACTIVE;
 
-		switch (offset) {
-		case DRM_PANTHOR_USER_FLUSH_ID_MMIO_OFFSET:
-			if (active)
-				pfn = __phys_to_pfn(ptdev->phys_addr + CSF_GPU_LATEST_FLUSH_ID);
-			else
-				pfn = page_to_pfn(ptdev->pm.dummy_latest_flush);
+	switch (offset) {
+	case DRM_PANTHOR_USER_FLUSH_ID_MMIO_OFFSET:
+		if (active)
+			pfn = __phys_to_pfn(ptdev->phys_addr + CSF_GPU_LATEST_FLUSH_ID);
+		else
+			pfn = page_to_pfn(ptdev->pm.dummy_latest_flush);
 
-			pgprot = vma->vm_page_prot;
-			if (active)
-				pgprot = pgprot_noncached(pgprot);
+		pgprot = vma->vm_page_prot;
+		if (active)
+			pgprot = pgprot_noncached(pgprot);
 
-			ret = vmf_insert_pfn_prot(vma, vmf->address, pfn, pgprot);
-			break;
+		return vmf_insert_pfn_prot(vma, vmf->address, pfn, pgprot);
 
-		default:
-			ret = VM_FAULT_SIGBUS;
-			break;
-		}
+	default:
+		return VM_FAULT_SIGBUS;
 	}
-
-	drm_dev_exit(cookie);
-	return ret;
 }
 
 static const struct vm_operations_struct panthor_mmio_vm_ops = {
@@ -482,7 +473,7 @@ static int panthor_device_resume_hw_components(struct panthor_device *ptdev)
 int panthor_device_resume(struct device *dev)
 {
 	struct panthor_device *ptdev = dev_get_drvdata(dev);
-	int ret, cookie;
+	int ret;
 
 	if (atomic_read(&ptdev->pm.state) != PANTHOR_DEVICE_PM_STATE_SUSPENDED)
 		return -EINVAL;
@@ -503,28 +494,27 @@ int panthor_device_resume(struct device *dev)
 
 	panthor_devfreq_resume(ptdev);
 
-	if (panthor_device_is_initialized(ptdev) &&
-	    drm_dev_enter(&ptdev->base, &cookie)) {
-		/* If there was a reset pending at the time we suspended the
-		 * device, we force a slow reset.
-		 */
-		if (atomic_read(&ptdev->reset.pending)) {
-			ptdev->reset.fast = false;
-			atomic_set(&ptdev->reset.pending, 0);
-		}
+	if (panthor_device_is_initialized(ptdev)) {
+		scoped_cond_guard(drm_dev_access, ret = 0, &ptdev->base) {
+			/* If there was a reset pending at the time we suspended the
+			 * device, we force a slow reset.
+			 */
+			if (atomic_read(&ptdev->reset.pending)) {
+				ptdev->reset.fast = false;
+				atomic_set(&ptdev->reset.pending, 0);
+			}
 
-		ret = panthor_device_resume_hw_components(ptdev);
-		if (ret && ptdev->reset.fast) {
-			drm_err(&ptdev->base, "Fast reset failed, trying a slow reset");
-			ptdev->reset.fast = false;
 			ret = panthor_device_resume_hw_components(ptdev);
+			if (ret && ptdev->reset.fast) {
+				drm_err(&ptdev->base, "Fast reset failed, trying a slow reset");
+				ptdev->reset.fast = false;
+				ret = panthor_device_resume_hw_components(ptdev);
+			}
+
+			if (!ret)
+				panthor_sched_resume(ptdev);
 		}
 
-		if (!ret)
-			panthor_sched_resume(ptdev);
-
-		drm_dev_exit(cookie);
-
 		if (ret)
 			goto err_suspend_devfreq;
 	}
@@ -559,7 +549,6 @@ int panthor_device_resume(struct device *dev)
 int panthor_device_suspend(struct device *dev)
 {
 	struct panthor_device *ptdev = dev_get_drvdata(dev);
-	int cookie;
 
 	if (atomic_read(&ptdev->pm.state) != PANTHOR_DEVICE_PM_STATE_ACTIVE)
 		return -EINVAL;
@@ -577,19 +566,19 @@ int panthor_device_suspend(struct device *dev)
 				    DRM_PANTHOR_USER_MMIO_OFFSET, 0, 1);
 	}
 
-	if (panthor_device_is_initialized(ptdev) &&
-	    drm_dev_enter(&ptdev->base, &cookie)) {
-		cancel_work_sync(&ptdev->reset.work);
+	if (panthor_device_is_initialized(ptdev)) {
+		scoped_guard(drm_dev_access, &ptdev->base) {
+			cancel_work_sync(&ptdev->reset.work);
 
-		/* We prepare everything as if we were resetting the GPU.
-		 * The end of the reset will happen in the resume path though.
-		 */
-		panthor_sched_suspend(ptdev);
-		panthor_fw_suspend(ptdev);
-		panthor_mmu_suspend(ptdev);
-		panthor_gpu_suspend(ptdev);
-		panthor_pwr_suspend(ptdev);
-		drm_dev_exit(cookie);
+			/* We prepare everything as if we were resetting the GPU.
+			 * The end of the reset will happen in the resume path though.
+			 */
+			panthor_sched_suspend(ptdev);
+			panthor_fw_suspend(ptdev);
+			panthor_mmu_suspend(ptdev);
+			panthor_gpu_suspend(ptdev);
+			panthor_pwr_suspend(ptdev);
+		}
 	}
 
 	panthor_devfreq_suspend(ptdev);
diff --git a/drivers/gpu/drm/panthor/panthor_drv.c b/drivers/gpu/drm/panthor/panthor_drv.c
index e8dc4096c1d2..789ddc0ff7ef 100644
--- a/drivers/gpu/drm/panthor/panthor_drv.c
+++ b/drivers/gpu/drm/panthor/panthor_drv.c
@@ -997,9 +997,10 @@ static int panthor_ioctl_vm_create(struct drm_device *ddev, void *data,
 	struct panthor_device *ptdev = container_of(ddev, struct panthor_device, base);
 	struct panthor_file *pfile = file->driver_priv;
 	struct drm_panthor_vm_create *args = data;
-	int cookie, ret;
+	int ret;
 
-	if (!drm_dev_enter(ddev, &cookie))
+	ACQUIRE(drm_dev_access, dev_guard)(ddev);
+	if (ACQUIRE_ERR(drm_dev_access, &dev_guard))
 		return -ENODEV;
 
 	ret = panthor_vm_pool_create_vm(ptdev, pfile->vms,  args);
@@ -1008,7 +1009,6 @@ static int panthor_ioctl_vm_create(struct drm_device *ddev, void *data,
 		ret = 0;
 	}
 
-	drm_dev_exit(cookie);
 	return ret;
 }
 
@@ -1033,38 +1033,30 @@ static int panthor_ioctl_bo_create(struct drm_device *ddev, void *data,
 	struct panthor_file *pfile = file->driver_priv;
 	struct drm_panthor_bo_create *args = data;
 	struct panthor_vm *vm = NULL;
-	int cookie, ret;
+	int ret;
 
-	if (!drm_dev_enter(ddev, &cookie))
+	ACQUIRE(drm_dev_access, dev_guard)(ddev);
+	if (ACQUIRE_ERR(drm_dev_access, &dev_guard))
 		return -ENODEV;
 
 	if (!args->size || args->pad ||
-	    (args->flags & ~PANTHOR_BO_FLAGS)) {
-		ret = -EINVAL;
-		goto out_dev_exit;
-	}
+	    (args->flags & ~PANTHOR_BO_FLAGS))
+		return -EINVAL;
 
 	if ((args->flags & DRM_PANTHOR_BO_NO_MMAP) &&
-	    (args->flags & DRM_PANTHOR_BO_WB_MMAP)) {
-		ret = -EINVAL;
-		goto out_dev_exit;
-	}
+	    (args->flags & DRM_PANTHOR_BO_WB_MMAP))
+		return -EINVAL;
 
 	if (args->exclusive_vm_id) {
 		vm = panthor_vm_pool_get_vm(pfile->vms, args->exclusive_vm_id);
-		if (!vm) {
-			ret = -EINVAL;
-			goto out_dev_exit;
-		}
+		if (!vm)
+			return -EINVAL;
 	}
 
 	ret = panthor_gem_create_with_handle(file, ddev, vm, &args->size,
 					     args->flags, &args->handle);
 
 	panthor_vm_put(vm);
-
-out_dev_exit:
-	drm_dev_exit(cookie);
 	return ret;
 }
 
@@ -1107,17 +1099,18 @@ static int panthor_ioctl_group_submit(struct drm_device *ddev, void *data,
 	struct drm_panthor_group_submit *args = data;
 	struct drm_panthor_queue_submit *jobs_args;
 	struct panthor_submit_ctx ctx;
-	int ret = 0, cookie;
+	int ret = 0;
 
 	if (args->pad)
 		return -EINVAL;
 
-	if (!drm_dev_enter(ddev, &cookie))
+	ACQUIRE(drm_dev_access, dev_guard)(ddev);
+	if (ACQUIRE_ERR(drm_dev_access, &dev_guard))
 		return -ENODEV;
 
 	ret = PANTHOR_UOBJ_GET_ARRAY(jobs_args, &args->queue_submits);
 	if (ret)
-		goto out_dev_exit;
+		return ret;
 
 	ret = panthor_submit_ctx_init(&ctx, file, args->queue_submits.count);
 	if (ret)
@@ -1201,8 +1194,6 @@ static int panthor_ioctl_group_submit(struct drm_device *ddev, void *data,
 out_free_jobs_args:
 	kvfree(jobs_args);
 
-out_dev_exit:
-	drm_dev_exit(cookie);
 	return ret;
 }
 
@@ -1438,18 +1429,15 @@ static int panthor_ioctl_vm_bind(struct drm_device *ddev, void *data,
 				 struct drm_file *file)
 {
 	struct drm_panthor_vm_bind *args = data;
-	int cookie, ret;
 
-	if (!drm_dev_enter(ddev, &cookie))
+	ACQUIRE(drm_dev_access, dev_guard)(ddev);
+	if (ACQUIRE_ERR(drm_dev_access, &dev_guard))
 		return -ENODEV;
 
 	if (args->flags & DRM_PANTHOR_VM_BIND_ASYNC)
-		ret = panthor_ioctl_vm_bind_async(ddev, args, file);
-	else
-		ret = panthor_ioctl_vm_bind_sync(ddev, args, file);
+		return panthor_ioctl_vm_bind_async(ddev, args, file);
 
-	drm_dev_exit(cookie);
-	return ret;
+	return panthor_ioctl_vm_bind_sync(ddev, args, file);
 }
 
 static int panthor_ioctl_vm_get_state(struct drm_device *ddev, void *data,
@@ -1671,9 +1659,10 @@ static int panthor_mmap(struct file *filp, struct vm_area_struct *vma)
 	struct panthor_device *ptdev = pfile->ptdev;
 	u64 offset = (u64)vma->vm_pgoff << PAGE_SHIFT;
 	u64 user_mmio_offset;
-	int ret, cookie;
+	int ret;
 
-	if (!drm_dev_enter(file->minor->dev, &cookie))
+	ACQUIRE(drm_dev_access, dev_guard)(file->minor->dev);
+	if (ACQUIRE_ERR(drm_dev_access, &dev_guard))
 		return -ENODEV;
 
 	/* Adjust the user MMIO offset to match the offset used kernel side.
@@ -1691,7 +1680,6 @@ static int panthor_mmap(struct file *filp, struct vm_area_struct *vma)
 		ret = drm_gem_mmap(filp, vma);
 	}
 
-	drm_dev_exit(cookie);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/panthor/panthor_mmu.c b/drivers/gpu/drm/panthor/panthor_mmu.c
index ab9a77e6a145..ff3beb9147e8 100644
--- a/drivers/gpu/drm/panthor/panthor_mmu.c
+++ b/drivers/gpu/drm/panthor/panthor_mmu.c
@@ -788,13 +788,13 @@ static int panthor_vm_active_locked(struct panthor_vm *vm)
 int panthor_vm_active(struct panthor_vm *vm)
 {
 	struct panthor_device *ptdev = vm->ptdev;
-	int ret = 0, cookie;
 
-	if (!drm_dev_enter(&ptdev->base, &cookie))
+	ACQUIRE(drm_dev_access, dev_guard)(&ptdev->base);
+	if (ACQUIRE_ERR(drm_dev_access, &dev_guard))
 		return -ENODEV;
 
 	if (refcount_inc_not_zero(&vm->as.active_cnt))
-		goto out_dev_exit;
+		return 0;
 
 	/* As soon as active is called, we place the VM at the end of the VM LRU.
 	 * If something fails after that, the only downside is that this VM that
@@ -809,14 +809,10 @@ int panthor_vm_active(struct panthor_vm *vm)
 	/* Make sure we don't race with lock/unlock_region() calls
 	 * happening around VM bind operations.
 	 */
-	scoped_guard(mutex, &vm->op_lock) {
-		guard(mutex)(&ptdev->mmu->as.slots_lock);
-		ret = panthor_vm_active_locked(vm);
-	}
+	guard(mutex)(&vm->op_lock);
+	guard(mutex)(&ptdev->mmu->as.slots_lock);
 
-out_dev_exit:
-	drm_dev_exit(cookie);
-	return ret;
+	return panthor_vm_active_locked(vm);
 }
 
 /**
@@ -902,16 +898,15 @@ static size_t get_pgsize(u64 addr, size_t size, size_t *count)
 static void panthor_vm_declare_unusable(struct panthor_vm *vm)
 {
 	struct panthor_device *ptdev = vm->ptdev;
-	int cookie;
 
 	if (vm->unusable)
 		return;
 
 	vm->unusable = true;
 	guard(mutex)(&ptdev->mmu->as.slots_lock);
-	if (vm->as.id >= 0 && drm_dev_enter(&ptdev->base, &cookie)) {
-		panthor_mmu_as_disable(ptdev, vm->as.id, false);
-		drm_dev_exit(cookie);
+	if (vm->as.id >= 0) {
+		scoped_guard(drm_dev_access, &ptdev->base)
+			panthor_mmu_as_disable(ptdev, vm->as.id, false);
 	}
 }
 
@@ -1983,12 +1978,8 @@ static void panthor_vm_free(struct drm_gpuvm *gpuvm)
 	scoped_guard(mutex, &vm->op_lock) {
 		guard(mutex)(&ptdev->mmu->as.slots_lock);
 		if (vm->as.id >= 0) {
-			int cookie;
-
-			if (drm_dev_enter(&ptdev->base, &cookie)) {
+			scoped_guard(drm_dev_access, &ptdev->base)
 				panthor_mmu_as_disable(ptdev, vm->as.id, false);
-				drm_dev_exit(cookie);
-			}
 
 			ptdev->mmu->as.slots[vm->as.id].vm = NULL;
 			clear_bit(vm->as.id, &ptdev->mmu->as.alloc_mask);
diff --git a/drivers/gpu/drm/panthor/panthor_sched.c b/drivers/gpu/drm/panthor/panthor_sched.c
index d8cadd393fbe..9aa9941d2309 100644
--- a/drivers/gpu/drm/panthor/panthor_sched.c
+++ b/drivers/gpu/drm/panthor/panthor_sched.c
@@ -2624,21 +2624,19 @@ static void tick_work(struct work_struct *work)
 	struct panthor_scheduler *sched = container_of(work, struct panthor_scheduler,
 						      tick_work.work);
 	struct panthor_device *ptdev = sched->ptdev;
-	int ret, cookie;
+	int ret;
 
-	if (!drm_dev_enter(&ptdev->base, &cookie))
+	ACQUIRE(drm_dev_access, dev_guard)(&ptdev->base);
+	if (ACQUIRE_ERR(drm_dev_access, &dev_guard))
 		return;
 
 	ret = panthor_device_resume_and_get(ptdev);
 	if (drm_WARN_ON(&ptdev->base, ret))
-		goto out_dev_exit;
+		return;
 
 	tick(sched);
 	pm_runtime_mark_last_busy(ptdev->base.dev);
 	pm_runtime_put_autosuspend(ptdev->base.dev);
-
-out_dev_exit:
-	drm_dev_exit(cookie);
 }
 
 static int panthor_queue_eval_syncwait(struct panthor_group *group, u8 queue_idx)

-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
