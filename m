Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QCz0EvXhDmrACwYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 12:44:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F3F5A3845
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 12:44:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E0E840983
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 10:44:03 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	by lists.linaro.org (Postfix) with ESMTPS id 8377B3F751
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 10:43:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=OUWbfI4i;
	spf=pass (lists.linaro.org: domain of mikhail.v.gavrilov@gmail.com designates 209.85.208.178 as permitted sender) smtp.mailfrom=mikhail.v.gavrilov@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-393c40246afso69635231fa.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 03:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779360224; x=1779965024; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tost9z39fc3oAwF71abrFy2xi58J916FX1uOTr+0ob4=;
        b=OUWbfI4ioECPfxumK1sYJyn/4WhHTda8lvmEsemL77WFlYwBLunFeR8fHxgS/xNPvM
         UKRuB7UvagwLJF2qn2EtQ+568S1ApSPwlyP2XZcoW1Cw3+c6rlxgsEKswnHMVZnJPi5D
         im/Sqnbwjd+SYpqrx8ZQLYQ589u1AsXOyXceIMUmyN3EGJytBnuh+YvXmIpMWvf9Aaz1
         bsjFo98exokZtkgQO3UjQizRB5pVvVzE/X9TjDJlx/S97djG6jEaGJ6lBo2A1lzq80yU
         z0fBkId+Fpz5dyiyPKM5qH8TuypBVqc+2RHD758TGOdP8lNF+lpBL6GwlHkdvLSBAzkO
         VW0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779360224; x=1779965024;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Tost9z39fc3oAwF71abrFy2xi58J916FX1uOTr+0ob4=;
        b=aUfr9YV9H45ab2d9gHs5dJSLkDcX+61nS27rRvkLwe8ZNXdI4dEONkXt2rcQb8ua+J
         VPRLNiIbdQJz8nu7XIlSpNhX7BQ+V2odyxsVEz7GE+DlIBDYi7TuDKTuaDm3sufyZPDH
         bkpC5kXZ5gJOdbgo3nHsYX/QH7r5TpTEo8UffqlFuzyjndQUNWNQx7LWAIGGIXyyR5up
         BDHnB/lg+9zl5GypTlJbMnfqgfA+bZ9VgDICxBExKq6E0dd+69rmQ2oFmvCjzX70TC6a
         UzUtUZOmDRZVyiBKv7uw5cVqctwai5yo510XQdxblwJGQMt7j9KLbm49ZWcBIK0VmnQN
         AWPQ==
X-Forwarded-Encrypted: i=1; AFNElJ/SDK+fh+MAZ2oIEecWDmT3UEw1igwaU4fRkQZw1mXYOeYOFZwMnk3U1f74hoK8/V5AQ31Prouo6s3AqEZU@lists.linaro.org
X-Gm-Message-State: AOJu0YwvAMsX16zxldCXiPMfaw1q4Ueb3OMtDYkyKZ9Zmyxc7HdGiryK
	pnWHmUx3oo+nHL5dBiM0zDgifqRV486/CPInBgiOmnZEoVk7PNBPIVgE
X-Gm-Gg: Acq92OFWSv3Nzjoawg0kwaAAHMYFhgWFWOsk8qaeBZV9rTjlmbW65yT2QvSgXyc68V5
	lEdHCqlBGK1cE09nOKk9RyWYaUky/KC4lu76gCcWzIPF13RVXjCeI4i3FIno4ihKFZJwcbmV5Ss
	VGPkr9UPaSIvLrlhmHzFv09WTkQBcaA5+qaiJ/GeNM4FRMEq6wy/06aiUl2VphQp9leOWVtn9ge
	Y0cRN9qEKsiGjJXA93Cp4ppGduz1zrJmLIvNRcP6EpqcPR4fmhD6OUcHad8a5B31ldTK0gpYIrQ
	qMJOdY7QEzn+J3CEsOfEeeLmMUieoiJo/pRF480zTAa6Pfjz8tLxfHXyQBiWUHQelgWCiTlns/t
	iDwdSdZpCxOtrXib73dpKMvDExRZddTleeJpiHv/ReVZ++ypQjw8aUTLGY9/d9+X+E95R9xFH/2
	5OWu1fgsTp0+FaqxynuquhZK/d1WtMHu/htxntDCgH3xQC
X-Received: by 2002:a2e:a548:0:b0:38e:cab9:3637 with SMTP id 38308e7fff4ca-395ca6386cfmr9212891fa.18.1779360223995;
        Thu, 21 May 2026 03:43:43 -0700 (PDT)
Received: from localhost ([188.234.148.119])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-395d0b49073sm1595611fa.31.2026.05.21.03.43.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 03:43:42 -0700 (PDT)
From: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
To: amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Date: Thu, 21 May 2026 15:43:32 +0500
Message-ID: <20260521104335.28978-2-mikhail.v.gavrilov@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260521104335.28978-1-mikhail.v.gavrilov@gmail.com>
References: <20260520151741.50575-1-mikhail.v.gavrilov@gmail.com>
 <20260521104335.28978-1-mikhail.v.gavrilov@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: --
Message-ID-Hash: 5HNOI6BURIQVQHR4RJT2DMRIMC4S5WM4
X-Message-ID-Hash: 5HNOI6BURIQVQHR4RJT2DMRIMC4S5WM4
X-MailFrom: mikhail.v.gavrilov@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 1/2] drm/amdgpu: convert amdgpu_vm_lock_by_pasid() to drm_exec
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5HNOI6BURIQVQHR4RJT2DMRIMC4S5WM4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[mikhailvgavrilov@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email]
X-Rspamd-Queue-Id: 19F3F5A3845
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

amdgpu_vm_lock_by_pasid() looks up a VM by PASID and reserves its root
PD with a bare amdgpu_bo_reserve(), returning the still-reserved root to
the caller. A caller that then needs to reserve further BOs (for example
the devcoredump IB dump) ends up nesting reservation_ww_class_mutex
acquires without a ww_acquire_ctx, which lockdep flags as recursive
locking.

Convert the helper to take a drm_exec context and lock the root PD with
drm_exec_lock_obj(). Callers now run it inside a
drm_exec_until_all_locked() loop and can lock additional BOs in the same
ww ticket, so there is no nested ww_mutex acquire.

The drm_exec context holds its own reference on the locked root BO, so
the helper no longer hands a root reference back to the caller: the
root output parameter is dropped, and the transient reference taken
across the PASID lookup is released before returning.

The only existing caller, amdgpu_vm_handle_fault(), is updated
accordingly. Its is_compute_context path, which previously dropped the
root reservation around svm_range_restore_pages() and re-took it, now
finalises the drm_exec context and re-initialises a fresh one; behaviour
is otherwise unchanged.

No functional change intended for the page-fault path.

Signed-off-by: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c | 91 ++++++++++++++++----------
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h |  2 +-
 2 files changed, 58 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
index 9ba9de16a27a..591980907211 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
@@ -2950,47 +2950,56 @@ int amdgpu_vm_ioctl(struct drm_device *dev, void *data, struct drm_file *filp)
 }
 
 /**
- * amdgpu_vm_lock_by_pasid - return an amdgpu_vm and its root bo from a pasid, if possible.
+ * amdgpu_vm_lock_by_pasid - look up a VM by PASID and lock its root PD
  * @adev: amdgpu device pointer
- * @root: root BO of the VM
  * @pasid: PASID of the VM
- * The caller needs to unreserve and unref the root bo on success.
+ * @exec: drm_exec context to lock the root PD in
+ *
+ * Must be called from within a drm_exec_until_all_locked() loop; the caller
+ * runs drm_exec_retry_on_contention() afterwards. The drm_exec context holds
+ * a reference on the root BO until it is finalised.
+ *
+ * Return: the VM on success, or NULL if the PASID has no VM, the VM is being
+ * torn down, or locking the root PD failed.
  */
 struct amdgpu_vm *amdgpu_vm_lock_by_pasid(struct amdgpu_device *adev,
-					  struct amdgpu_bo **root, u32 pasid)
+					  u32 pasid, struct drm_exec *exec)
 {
 	unsigned long irqflags;
+	struct amdgpu_bo *root;
 	struct amdgpu_vm *vm;
 	int r;
 
 	xa_lock_irqsave(&adev->vm_manager.pasids, irqflags);
 	vm = xa_load(&adev->vm_manager.pasids, pasid);
-	*root = vm ? amdgpu_bo_ref(vm->root.bo) : NULL;
+	root = vm ? amdgpu_bo_ref(vm->root.bo) : NULL;
 	xa_unlock_irqrestore(&adev->vm_manager.pasids, irqflags);
 
-	if (!*root)
+	if (!root)
 		return NULL;
 
-	r = amdgpu_bo_reserve(*root, true);
-	if (r)
-		goto error_unref;
+	r = drm_exec_lock_obj(exec, &root->tbo.base);
+	if (r) {
+		amdgpu_bo_unref(&root);
+		return NULL;
+	}
 
 	/* Double check that the VM still exists */
 	xa_lock_irqsave(&adev->vm_manager.pasids, irqflags);
 	vm = xa_load(&adev->vm_manager.pasids, pasid);
-	if (vm && vm->root.bo != *root)
+	if (vm && vm->root.bo != root)
 		vm = NULL;
 	xa_unlock_irqrestore(&adev->vm_manager.pasids, irqflags);
-	if (!vm)
-		goto error_unlock;
+	if (!vm) {
+		drm_exec_unlock_obj(exec, &root->tbo.base);
+		amdgpu_bo_unref(&root);
+		return NULL;
+	}
 
-	return vm;
-error_unlock:
-	amdgpu_bo_unreserve(*root);
+	/* The drm_exec context holds its own reference on the root BO. */
+	amdgpu_bo_unref(&root);
 
-error_unref:
-	amdgpu_bo_unref(root);
-	return NULL;
+	return vm;
 }
 
 /**
@@ -3012,33 +3021,49 @@ bool amdgpu_vm_handle_fault(struct amdgpu_device *adev, u32 pasid,
 			    uint64_t ts, bool write_fault)
 {
 	bool is_compute_context = false;
-	struct amdgpu_bo *root;
+	struct drm_exec exec;
 	uint64_t value, flags;
 	struct amdgpu_vm *vm;
 	int r;
 
-	vm = amdgpu_vm_lock_by_pasid(adev, &root, pasid);
-	if (!vm)
+	drm_exec_init(&exec, 0, 0);
+	drm_exec_until_all_locked(&exec) {
+		vm = amdgpu_vm_lock_by_pasid(adev, pasid, &exec);
+		drm_exec_retry_on_contention(&exec);
+		if (!vm)
+			break;
+	}
+	if (!vm) {
+		drm_exec_fini(&exec);
 		return false;
+	}
 
 	is_compute_context = vm->is_compute_context;
 
 	if (is_compute_context) {
-		/* Unreserve root since svm_range_restore_pages might try to reserve it. */
-		/* TODO: rework svm_range_restore_pages so that this isn't necessary. */
-		amdgpu_bo_unreserve(root);
+		/* Release the root PD lock since svm_range_restore_pages
+		 * might try to take it.
+		 * TODO: rework svm_range_restore_pages so that this isn't
+		 * necessary.
+		 */
+		drm_exec_fini(&exec);
 
 		if (!svm_range_restore_pages(adev, pasid, vmid,
-					     node_id, addr >> PAGE_SHIFT, ts, write_fault)) {
-			amdgpu_bo_unref(&root);
+					     node_id, addr >> PAGE_SHIFT, ts, write_fault))
 			return true;
-		}
-		amdgpu_bo_unref(&root);
 
 		/* Re-acquire the VM lock, could be that the VM was freed in between. */
-		vm = amdgpu_vm_lock_by_pasid(adev, &root, pasid);
-		if (!vm)
+		drm_exec_init(&exec, 0, 0);
+		drm_exec_until_all_locked(&exec) {
+			vm = amdgpu_vm_lock_by_pasid(adev, pasid, &exec);
+			drm_exec_retry_on_contention(&exec);
+			if (!vm)
+				break;
+		}
+		if (!vm) {
+			drm_exec_fini(&exec);
 			return false;
+		}
 	}
 
 	addr /= AMDGPU_GPU_PAGE_SIZE;
@@ -3062,7 +3087,7 @@ bool amdgpu_vm_handle_fault(struct amdgpu_device *adev, u32 pasid,
 		value = 0;
 	}
 
-	r = dma_resv_reserve_fences(root->tbo.base.resv, 1);
+	r = dma_resv_reserve_fences(vm->root.bo->tbo.base.resv, 1);
 	if (r) {
 		pr_debug("failed %d to reserve fence slot\n", r);
 		goto error_unlock;
@@ -3076,12 +3101,10 @@ bool amdgpu_vm_handle_fault(struct amdgpu_device *adev, u32 pasid,
 	r = amdgpu_vm_update_pdes(adev, vm, true);
 
 error_unlock:
-	amdgpu_bo_unreserve(root);
+	drm_exec_fini(&exec);
 	if (r < 0)
 		dev_err(adev->dev, "Can't handle page fault (%d)\n", r);
 
-	amdgpu_bo_unref(&root);
-
 	return false;
 }
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h
index d083d7aab75c..0c6e3e0368c7 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h
@@ -593,7 +593,7 @@ bool amdgpu_vm_handle_fault(struct amdgpu_device *adev, u32 pasid,
 			    bool write_fault);
 
 struct amdgpu_vm *amdgpu_vm_lock_by_pasid(struct amdgpu_device *adev,
-					  struct amdgpu_bo **root, u32 pasid);
+					  u32 pasid, struct drm_exec *exec);
 
 void amdgpu_vm_set_task_info(struct amdgpu_vm *vm);
 
-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
