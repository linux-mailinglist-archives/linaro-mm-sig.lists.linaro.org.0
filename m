Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGpPELjQDWr53QUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 17:18:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B82590AB5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 17:18:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3E4F4097C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 15:18:14 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	by lists.linaro.org (Postfix) with ESMTPS id 3157740978
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 15:17:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=a5tqNj1r;
	spf=pass (lists.linaro.org: domain of mikhail.v.gavrilov@gmail.com designates 209.85.167.43 as permitted sender) smtp.mailfrom=mikhail.v.gavrilov@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5a8891febd2so7138082e87.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 08:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779290270; x=1779895070; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fyVPZSX7MwDddJkv/HM4B88jEPRd96zpfMtgKanmjaM=;
        b=a5tqNj1rdu2ZS9udPVxatSBHJVD6Xp7pa1zlL3nCgn2bSusl0AKcRJ4iAadxmNHTu9
         jYq5c9EyAg7usR3vOoYuGsQyLGR9wv7tzYTUDfDB1xQWCa9mpw/d06Qi1BpaXV8ZMAj8
         +VKtTyyOsoPAUgcesgho/mGLRovLDkEyUF4bhgiaI5yYrpYD+u/2OHl8u9Ofqke+EBvP
         Z0AdWXLk9rU9tdZxpuJk5hAPgOl/+xUJXFzJaH6mnJQlUZInDBni6n0+Dj5cdSjMytOm
         slbK8RUJ3MyXamXws9e4jrx6bhfbb3HDuz11XCJUw9gEGiOLld2/6F56Nukr5Md8gTs/
         Qusw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779290270; x=1779895070;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fyVPZSX7MwDddJkv/HM4B88jEPRd96zpfMtgKanmjaM=;
        b=a7Oc11sTomogcPYewCKGEHgYL3EK15OZ2wo7WXLdI8E8ITmgVduGeoRx7tHqhWs7Xw
         o3kKhdZAXf5mfLxoQgCmTz+Tt0ruyoR8PiDpDbbQfiNxGA2gDQ/fCJU49EKbE9Uu+TAj
         kVGLDbkfb7safDGq30Ef/Aac0cvTDtUgMBIX4uEjKxjs3CQsR/sXp9cnRg7Us+/qp3OM
         l+lnJteok+Nr+46g98JQZXQPMSvQy/sUDrWcW3Ogm0IB9zwdDyWE2PylNW5BwTBtTSof
         XPlwaHUcUFrp1sn2CEkRCU1BJ8nmTHE3MvH4eY1unsA1My9KeKOA2A1ThyEy2EsgQ2jY
         YOEA==
X-Forwarded-Encrypted: i=1; AFNElJ/pB2PU78FrPkL+7GBdiD/mJcZ1KSgmaSgnl0rbB8q8nbz0a2n6DXpgHFygEDFEYiy1kM2OGV2fDuJyQxgZ@lists.linaro.org
X-Gm-Message-State: AOJu0YwV3FdYKADUcglz8Pq6G+jCvNh3W1rcJPJVnIYhcxe03Br0/UxV
	NotZY+FrUy0wRKMZCfuN/a7+LiFNLzyFTBox+JH2SeciNyGE2pUBaN6J
X-Gm-Gg: Acq92OHymWxbh/773t2b4gBSKbrZZ0kksSh7BTewU0P50DAD6WSYHDdPDIq/TVJAFbb
	UwUHkf2UlNByuAVJMapZbctRp5eTdNesGdLlG7TM0uFSYmUfGd6Z0smeHgH5JqzYUukbCeRWdL+
	mtMvZ3ZMXwIoRcU4P+XkTsDy8ppZaVeJtnAjbSzECPmdlDtFUNopP17nbNq3gZ/g3KYtrkfa+hQ
	FS6p3qGI65BzV6Wxy6sEkpGkZ6/NQ/Lo7uCl4Cprvs5ihkK7JU6ybfe9z+0psGW9PN06zjWlYHs
	62Dar5QKD81H6708on3bbkdIeD82dWVR8Ie+P66fwuDlSTgQYvpwzlXRcX28ajqMrmuw1EWA8Gf
	agejzKOq/5PUIFqhOOjG9/M4KOkqAnWAk6+c9nmIWpKeTGlOCre1yd0c3wX841Onj7cdpYOBLcV
	Ypj/kLIqdqUjtgy4YjRzaotX/fogau551q
X-Received: by 2002:a05:6512:1053:b0:5a3:ffed:8440 with SMTP id 2adb3069b0e04-5aa0e73d549mr8445759e87.12.1779290269709;
        Wed, 20 May 2026 08:17:49 -0700 (PDT)
Received: from localhost ([188.234.148.119])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a90f10c8b2sm5022470e87.17.2026.05.20.08.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 08:17:49 -0700 (PDT)
From: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
To: amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Date: Wed, 20 May 2026 20:17:39 +0500
Message-ID: <20260520151741.50575-2-mikhail.v.gavrilov@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260520151741.50575-1-mikhail.v.gavrilov@gmail.com>
References: <20260429143743.50743-1-mikhail.v.gavrilov@gmail.com>
 <20260520151741.50575-1-mikhail.v.gavrilov@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: --
Message-ID-Hash: XATNON2ZGHDGQ7IJ7IH35AE6S3P7GX7A
X-Message-ID-Hash: XATNON2ZGHDGQ7IJ7IH35AE6S3P7GX7A
X-MailFrom: mikhail.v.gavrilov@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 1/2] drm/amdgpu: convert amdgpu_vm_lock_by_pasid() to drm_exec
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XATNON2ZGHDGQ7IJ7IH35AE6S3P7GX7A/>
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
X-Rspamd-Queue-Id: C5B82590AB5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

amdgpu_vm_lock_by_pasid() looks up a VM by PASID and reserves its root
PD with a bare amdgpu_bo_reserve(), returning the still-reserved root to
the caller. A caller that then needs to reserve further BOs (for example
the devcoredump IB dump) ends up nesting reservation_ww_class_mutex
acquires without a ww_acquire_ctx, which lockdep flags as recursive
locking.

Convert the helper to take a drm_exec context and lock the root PD via
amdgpu_vm_lock_pd() instead. Callers now run it inside a
drm_exec_until_all_locked() loop and can lock additional BOs in the same
ww ticket, so there is no nested ww_mutex acquire.

The only existing caller, amdgpu_vm_handle_fault(), is updated
accordingly. Its is_compute_context path, which previously dropped the
root reservation around svm_range_restore_pages() and re-took it, now
finalises the drm_exec context and re-initialises a fresh one; behaviour
is otherwise unchanged.

No functional change intended for the page-fault path.

Signed-off-by: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c | 72 ++++++++++++++++++--------
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h |  3 +-
 2 files changed, 51 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
index 9ba9de16a27a..3a22670b733f 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
@@ -2950,14 +2950,22 @@ int amdgpu_vm_ioctl(struct drm_device *dev, void *data, struct drm_file *filp)
 }
 
 /**
- * amdgpu_vm_lock_by_pasid - return an amdgpu_vm and its root bo from a pasid, if possible.
+ * amdgpu_vm_lock_by_pasid - look up a VM by PASID and lock its root PD
  * @adev: amdgpu device pointer
- * @root: root BO of the VM
+ * @root: out: reference to the VM's root BO, dropped by the caller
  * @pasid: PASID of the VM
- * The caller needs to unreserve and unref the root bo on success.
+ * @exec: drm_exec context to lock the root PD in
+ *
+ * Must be called from within a drm_exec_until_all_locked() loop; the caller
+ * runs drm_exec_retry_on_contention() afterwards and drops the *root
+ * reference once the drm_exec context is finalised.
+ *
+ * Return: the VM on success, or NULL if the PASID has no VM, the VM is being
+ * torn down, or locking the root PD failed.
  */
 struct amdgpu_vm *amdgpu_vm_lock_by_pasid(struct amdgpu_device *adev,
-					  struct amdgpu_bo **root, u32 pasid)
+					  struct amdgpu_bo **root, u32 pasid,
+					  struct drm_exec *exec)
 {
 	unsigned long irqflags;
 	struct amdgpu_vm *vm;
@@ -2971,9 +2979,11 @@ struct amdgpu_vm *amdgpu_vm_lock_by_pasid(struct amdgpu_device *adev,
 	if (!*root)
 		return NULL;
 
-	r = amdgpu_bo_reserve(*root, true);
-	if (r)
-		goto error_unref;
+	r = amdgpu_vm_lock_pd(vm, exec, 0);
+	if (r) {
+		amdgpu_bo_unref(root);
+		return NULL;
+	}
 
 	/* Double check that the VM still exists */
 	xa_lock_irqsave(&adev->vm_manager.pasids, irqflags);
@@ -2981,16 +2991,12 @@ struct amdgpu_vm *amdgpu_vm_lock_by_pasid(struct amdgpu_device *adev,
 	if (vm && vm->root.bo != *root)
 		vm = NULL;
 	xa_unlock_irqrestore(&adev->vm_manager.pasids, irqflags);
-	if (!vm)
-		goto error_unlock;
+	if (!vm) {
+		amdgpu_bo_unref(root);
+		return NULL;
+	}
 
 	return vm;
-error_unlock:
-	amdgpu_bo_unreserve(*root);
-
-error_unref:
-	amdgpu_bo_unref(root);
-	return NULL;
 }
 
 /**
@@ -3013,20 +3019,32 @@ bool amdgpu_vm_handle_fault(struct amdgpu_device *adev, u32 pasid,
 {
 	bool is_compute_context = false;
 	struct amdgpu_bo *root;
+	struct drm_exec exec;
 	uint64_t value, flags;
 	struct amdgpu_vm *vm;
 	int r;
 
-	vm = amdgpu_vm_lock_by_pasid(adev, &root, pasid);
-	if (!vm)
+	drm_exec_init(&exec, 0, 0);
+	drm_exec_until_all_locked(&exec) {
+		vm = amdgpu_vm_lock_by_pasid(adev, &root, pasid, &exec);
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
 					     node_id, addr >> PAGE_SHIFT, ts, write_fault)) {
@@ -3036,9 +3054,17 @@ bool amdgpu_vm_handle_fault(struct amdgpu_device *adev, u32 pasid,
 		amdgpu_bo_unref(&root);
 
 		/* Re-acquire the VM lock, could be that the VM was freed in between. */
-		vm = amdgpu_vm_lock_by_pasid(adev, &root, pasid);
-		if (!vm)
+		drm_exec_init(&exec, 0, 0);
+		drm_exec_until_all_locked(&exec) {
+			vm = amdgpu_vm_lock_by_pasid(adev, &root, pasid, &exec);
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
@@ -3076,7 +3102,7 @@ bool amdgpu_vm_handle_fault(struct amdgpu_device *adev, u32 pasid,
 	r = amdgpu_vm_update_pdes(adev, vm, true);
 
 error_unlock:
-	amdgpu_bo_unreserve(root);
+	drm_exec_fini(&exec);
 	if (r < 0)
 		dev_err(adev->dev, "Can't handle page fault (%d)\n", r);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h
index d083d7aab75c..af292c2fc521 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h
@@ -593,7 +593,8 @@ bool amdgpu_vm_handle_fault(struct amdgpu_device *adev, u32 pasid,
 			    bool write_fault);
 
 struct amdgpu_vm *amdgpu_vm_lock_by_pasid(struct amdgpu_device *adev,
-					  struct amdgpu_bo **root, u32 pasid);
+					  struct amdgpu_bo **root, u32 pasid,
+					  struct drm_exec *exec);
 
 void amdgpu_vm_set_task_info(struct amdgpu_vm *vm);
 
-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
