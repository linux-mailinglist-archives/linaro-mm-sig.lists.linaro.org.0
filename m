Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FTJB4EB4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:34:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CA0410EDE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:34:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE6BD4454D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:34:23 +0000 (UTC)
Received: from mail-wr1-f73.google.com (mail-wr1-f73.google.com [209.85.221.73])
	by lists.linaro.org (Postfix) with ESMTPS id 0B9223F8E5
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Nov 2025 14:14:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=CV91SrSQ;
	spf=pass (lists.linaro.org: domain of 3Rq4paQkKDZk3EB57KRAE9HH9E7.5HFEBG3KH-FF-LB9EBLML.EBG3KH.HK9@flex--aliceryhl.bounces.google.com designates 209.85.221.73 as permitted sender) smtp.mailfrom=3Rq4paQkKDZk3EB57KRAE9HH9E7.5HFEBG3KH-FF-LB9EBLML.EBG3KH.HK9@flex--aliceryhl.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wr1-f73.google.com with SMTP id ffacd0b85a97d-42b2f79759bso1306567f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Nov 2025 06:14:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764339271; x=1764944071; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=dErkMdrhZYAl7lh2HrMoD3XpeYIOhuhSS3s5eqeFFf4=;
        b=CV91SrSQp9FYdPfqLzRVzD8aSteyx6W0yQdm3KQmeIsw7aIdFsx6ucf7re+OCFMzzY
         Oq8AreA6XA3w7LHA111MzRE4IbT3l46aIitAs687Zcx2jeXVkIDVy1qYB6KpN5HRX3C5
         cLGHTedCcln17JpkFo/lyDFEAJet7o/jghk/0cstdogT+Q40TkNsqH5OB+EEb5NOl3Wq
         eXqZDudauky2UL1+9Vw5xXGyOfqxSHZaDrKAEnpHE1i1SrONu3cUa0SbE3kG5ckHHck8
         DfS3rCN3FA/I+WAzD4/AS8V3uFrhRt88Bp9U/kErKYLlXOw0zaPnOURupSpM6Td9YK2E
         siog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764339271; x=1764944071;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dErkMdrhZYAl7lh2HrMoD3XpeYIOhuhSS3s5eqeFFf4=;
        b=qNTc8RU0y0zv5hfQw0uYRzjkucNHWHPuqIWiAtn8lwtQuPzJmEErWgAukB42ljYnlJ
         ij6Bmskp9MTUjui2PD1biv6vBr+/DUFv5RflQ5K39Bx+3BO1iKS3q7fknHlVZ+HrqsDj
         uVcbwz3LgI3cLZCVMcVml4KDYZ2VA6eRpHcESO4RSRduGyYZcFJHgZgsfNNTDSnfSxhI
         e8b/6pv0JhjhyuwkCq2y/pcpL8WQkBXewBqEAlGGJCp4JZAHQpAGoZ6+tBvRGcPDZfAj
         lpBC6evdBF8eVbAKRNbK3s7ASuUDiUcMnxSTKiWCWrYIKn381DS6uJtoXJaylmuJxPMw
         5XbA==
X-Forwarded-Encrypted: i=1; AJvYcCUKbb6ZDF04W7WYUqYWCheTByJIDTCgFypqKICVNYATC8ME1yEBGpJKis7UOcAOhQZarztHrI8lCnPS74s7@lists.linaro.org
X-Gm-Message-State: AOJu0YyajVCFNclVhMPJToXm3rXs2eyzb9bfLUiJod2rHAJxFMMf8VZA
	xi8w5rRnuQRo2fvX8CXy3PJ6cBhPFz7O2ixN6bAU28wifRr0L8w7UXNt3FkjRra/1nIycwZP/UH
	DCELCWOruCZGBcvBx1w==
X-Google-Smtp-Source: AGHT+IFcjXie0ZOm1V1x3Sn30UIkvG9lKVYfaz50zhx+L1MWdnE45he0tSnMQ5dDSmjDf3qlQcYbMUPAeDz381I=
X-Received: from wrrx5.prod.google.com ([2002:a5d:4445:0:b0:428:5675:7d68])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:adf:b307:0:b0:42b:3090:2680 with SMTP id ffacd0b85a97d-42cc1cd8f8fmr20206132f8f.10.1764339270969;
 Fri, 28 Nov 2025 06:14:30 -0800 (PST)
Date: Fri, 28 Nov 2025 14:14:16 +0000
In-Reply-To: <20251128-gpuvm-rust-v1-0-ebf66bf234e0@google.com>
Mime-Version: 1.0
References: <20251128-gpuvm-rust-v1-0-ebf66bf234e0@google.com>
X-Developer-Key: i=aliceryhl@google.com; a=openpgp; fpr=49F6C1FAA74960F43A5B86A1EE7A392FDE96209F
X-Developer-Signature: v=1; a=openpgp-sha256; l=6779; i=aliceryhl@google.com;
 h=from:subject:message-id; bh=3qvzej8awCpbn9e07sU237IHBhwftYDUmtyhlWlTDvE=;
 b=owEBbQKS/ZANAwAKAQRYvu5YxjlGAcsmYgBpKa5CDlG2X706aMWo3D+1YjSXr9gGcULvZXzIO
 bxH54LG946JAjMEAAEKAB0WIQSDkqKUTWQHCvFIvbIEWL7uWMY5RgUCaSmuQgAKCRAEWL7uWMY5
 RlxdD/9Yh+2z63fz2BwB+Oz13nuOAvp3W+klPBdj9p5TvUKtBNk++69CU76sDEi2CGGnPjpCDl/
 T/EpX8KTRxxPwAB2iSDidiF3qT0jsqpLh9ZiNUWIPkVpnfLd9bd+ol7ae5dLK6m8o8PfelWXKBo
 izgUe+OvwowH6DHFB7LUW5n1OG/CBZXJyom9szEfAr3kkTs3NX0QoWy3uNhRiLJ54FE55G0U9au
 hsUPd5/wnU+KCBUZB1l2R3iep1EnRYiLHP9vlTvlbjh9+aLU87IAtDJjhIiWnCg3yZ1OydQGQDe
 b0BLFhZ7hwFuqNfTX7f4z2mgj7r/jffqA7j0smRZ+zGd6HqGtPCnkHoEZpZvyzyYz/D+lTjY43g
 3rH2VSYCVU6ZjaZWWCafJXsmYKTRQ4UeEiKB3+/lXhJnQc6VlITjiN6r1saX/abXPe0nrieNitz
 wEslHZba53e3Pfy7lveKkWRxCcg7DOEIDQpKh2MTQ7N0ApniMtEpAEhn8PPeBS9B5bciEd52ma1
 P3U9cr0Y/+EKc8ueTcuF6Y8snFJBvFyLedjXOdQIU0eY1P4nR0sHZhGiLblK4VTg4tn/eenqb5G
 Ax706bZF4ozYMylFXxL+RPWsW6sy6QS4FgYlcdaJsjYHW1XZnYq3CN51VgL9PI7gvHJ6CQ3gY9N kTh8t0qfuepdzJw==
X-Mailer: b4 0.14.2
Message-ID: <20251128-gpuvm-rust-v1-2-ebf66bf234e0@google.com>
From: Alice Ryhl <aliceryhl@google.com>
To: Danilo Krummrich <dakr@kernel.org>, Daniel Almeida <daniel.almeida@collabora.com>
X-Spamd-Bar: ---
X-MailFrom: 3Rq4paQkKDZk3EB57KRAE9HH9E7.5HFEBG3KH-FF-LB9EBLML.EBG3KH.HK9@flex--aliceryhl.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UCKJMSDT4S35GFENOW3NPMRMEY73B6L3
X-Message-ID-Hash: UCKJMSDT4S35GFENOW3NPMRMEY73B6L3
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:22 +0000
CC: Matthew Brost <matthew.brost@intel.com>, =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn
 .suijten@somainline.org>, Lyude Paul <lyude@redhat.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, nouveau@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Alice Ryhl <aliceryhl@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/4] drm/gpuvm: drm_gpuvm_bo_obtain() requires lock and staged mode
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UCKJMSDT4S35GFENOW3NPMRMEY73B6L3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), No valid DKIM,reject];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3337];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,collabora.com,arm.com,garyguo.net,protonmail.com,umich.edu,imgtec.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,redhat.com,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,google.com];
	NEURAL_SPAM(0.00)[0.999];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: D1CA0410EDE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In the previous commit we updated drm_gpuvm_bo_obtain_prealloc() to take
locks internally, which means that it's only usable in immediate mode.
In this commit, we notice that drm_gpuvm_bo_obtain() requires you to use
staged mode. This means that we now have one variant of obtain for each
mode you might use gpuvm in.

To reflect this information, we add a warning about using it in
immediate mode, and to make the distinction clearer we rename the method
with a _locked() suffix so that it's clear that it requires the caller
to take the locks.

Signed-off-by: Alice Ryhl <aliceryhl@google.com>
---
 drivers/gpu/drm/drm_gpuvm.c            | 16 +++++++++++++---
 drivers/gpu/drm/imagination/pvr_vm.c   |  2 +-
 drivers/gpu/drm/msm/msm_gem.h          |  2 +-
 drivers/gpu/drm/msm/msm_gem_vma.c      |  2 +-
 drivers/gpu/drm/nouveau/nouveau_uvmm.c |  2 +-
 drivers/gpu/drm/xe/xe_vm.c             |  4 ++--
 include/drm/drm_gpuvm.h                |  4 ++--
 7 files changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/drm_gpuvm.c b/drivers/gpu/drm/drm_gpuvm.c
index f08a5cc1d611f971862c1272987e5ecd6d97c163..9cd06c7600dc32ceee0f0beb5e3daf31698a66b3 100644
--- a/drivers/gpu/drm/drm_gpuvm.c
+++ b/drivers/gpu/drm/drm_gpuvm.c
@@ -1832,16 +1832,26 @@ EXPORT_SYMBOL_GPL(drm_gpuvm_bo_find);
  * count of the &drm_gpuvm_bo accordingly. If not found, allocates a new
  * &drm_gpuvm_bo.
  *
+ * Requires the lock for the GEMs gpuva list.
+ *
  * A new &drm_gpuvm_bo is added to the GEMs gpuva list.
  *
  * Returns: a pointer to the &drm_gpuvm_bo on success, an ERR_PTR on failure
  */
 struct drm_gpuvm_bo *
-drm_gpuvm_bo_obtain(struct drm_gpuvm *gpuvm,
-		    struct drm_gem_object *obj)
+drm_gpuvm_bo_obtain_locked(struct drm_gpuvm *gpuvm,
+			   struct drm_gem_object *obj)
 {
 	struct drm_gpuvm_bo *vm_bo;
 
+	/*
+	 * In immediate mode this would require the caller to hold the GEMs
+	 * gpuva mutex, but it's not okay to allocate while holding that lock,
+	 * and this method allocates. Immediate mode drivers should use
+	 * drm_gpuvm_bo_obtain_prealloc() instead.
+	 */
+	drm_WARN_ON(gpuvm->drm, drm_gpuvm_immediate_mode(gpuvm));
+
 	vm_bo = drm_gpuvm_bo_find(gpuvm, obj);
 	if (vm_bo)
 		return vm_bo;
@@ -1855,7 +1865,7 @@ drm_gpuvm_bo_obtain(struct drm_gpuvm *gpuvm,
 
 	return vm_bo;
 }
-EXPORT_SYMBOL_GPL(drm_gpuvm_bo_obtain);
+EXPORT_SYMBOL_GPL(drm_gpuvm_bo_obtain_locked);
 
 /**
  * drm_gpuvm_bo_obtain_prealloc() - obtains an instance of the &drm_gpuvm_bo
diff --git a/drivers/gpu/drm/imagination/pvr_vm.c b/drivers/gpu/drm/imagination/pvr_vm.c
index 3d97990170bf6b1341116c5c8b9d01421944eda4..30ff9b84eb14f2455003e76108de6d489a13f61a 100644
--- a/drivers/gpu/drm/imagination/pvr_vm.c
+++ b/drivers/gpu/drm/imagination/pvr_vm.c
@@ -255,7 +255,7 @@ pvr_vm_bind_op_map_init(struct pvr_vm_bind_op *bind_op,
 	bind_op->type = PVR_VM_BIND_TYPE_MAP;
 
 	dma_resv_lock(obj->resv, NULL);
-	bind_op->gpuvm_bo = drm_gpuvm_bo_obtain(&vm_ctx->gpuvm_mgr, obj);
+	bind_op->gpuvm_bo = drm_gpuvm_bo_obtain_locked(&vm_ctx->gpuvm_mgr, obj);
 	dma_resv_unlock(obj->resv);
 	if (IS_ERR(bind_op->gpuvm_bo))
 		return PTR_ERR(bind_op->gpuvm_bo);
diff --git a/drivers/gpu/drm/msm/msm_gem.h b/drivers/gpu/drm/msm/msm_gem.h
index a4cf31853c5008e171c3ad72cde1004c60fe5212..26dfe3d22e3e847f7e63174481d03f72878a8ced 100644
--- a/drivers/gpu/drm/msm/msm_gem.h
+++ b/drivers/gpu/drm/msm/msm_gem.h
@@ -60,7 +60,7 @@ struct msm_gem_vm_log_entry {
  * embedded in any larger driver structure.  The GEM object holds a list of
  * drm_gpuvm_bo, which in turn holds a list of msm_gem_vma.  A linked vma
  * holds a reference to the vm_bo, and drops it when the vma is unlinked.
- * So we just need to call drm_gpuvm_bo_obtain() to return a ref to an
+ * So we just need to call drm_gpuvm_bo_obtain_locked() to return a ref to an
  * existing vm_bo, or create a new one.  Once the vma is linked, the ref
  * to the vm_bo can be dropped (since the vma is holding one).
  */
diff --git a/drivers/gpu/drm/msm/msm_gem_vma.c b/drivers/gpu/drm/msm/msm_gem_vma.c
index 8316af1723c227f919594446c3721e1a948cbc9e..239b6168a26e636b511187b4993945d1565d149f 100644
--- a/drivers/gpu/drm/msm/msm_gem_vma.c
+++ b/drivers/gpu/drm/msm/msm_gem_vma.c
@@ -413,7 +413,7 @@ msm_gem_vma_new(struct drm_gpuvm *gpuvm, struct drm_gem_object *obj,
 	if (!obj)
 		return &vma->base;
 
-	vm_bo = drm_gpuvm_bo_obtain(&vm->base, obj);
+	vm_bo = drm_gpuvm_bo_obtain_locked(&vm->base, obj);
 	if (IS_ERR(vm_bo)) {
 		ret = PTR_ERR(vm_bo);
 		goto err_va_remove;
diff --git a/drivers/gpu/drm/nouveau/nouveau_uvmm.c b/drivers/gpu/drm/nouveau/nouveau_uvmm.c
index 79eefdfd08a2678fedf69503ddf7e9e17ed14c6f..d8888bd29cccef4b8dad9eff2bf6e2b1fd1a7e4d 100644
--- a/drivers/gpu/drm/nouveau/nouveau_uvmm.c
+++ b/drivers/gpu/drm/nouveau/nouveau_uvmm.c
@@ -1207,7 +1207,7 @@ nouveau_uvmm_bind_job_submit(struct nouveau_job *job,
 				return -ENOENT;
 
 			dma_resv_lock(obj->resv, NULL);
-			op->vm_bo = drm_gpuvm_bo_obtain(&uvmm->base, obj);
+			op->vm_bo = drm_gpuvm_bo_obtain_locked(&uvmm->base, obj);
 			dma_resv_unlock(obj->resv);
 			if (IS_ERR(op->vm_bo))
 				return PTR_ERR(op->vm_bo);
diff --git a/drivers/gpu/drm/xe/xe_vm.c b/drivers/gpu/drm/xe/xe_vm.c
index f602b874e0547591d9008333c18f3de0634c48c7..de52d01b0921cc8ac619deeed47b578e0ae69257 100644
--- a/drivers/gpu/drm/xe/xe_vm.c
+++ b/drivers/gpu/drm/xe/xe_vm.c
@@ -1004,7 +1004,7 @@ static struct xe_vma *xe_vma_create(struct xe_vm *vm,
 
 		xe_bo_assert_held(bo);
 
-		vm_bo = drm_gpuvm_bo_obtain(vma->gpuva.vm, &bo->ttm.base);
+		vm_bo = drm_gpuvm_bo_obtain_locked(vma->gpuva.vm, &bo->ttm.base);
 		if (IS_ERR(vm_bo)) {
 			xe_vma_free(vma);
 			return ERR_CAST(vm_bo);
@@ -2249,7 +2249,7 @@ vm_bind_ioctl_ops_create(struct xe_vm *vm, struct xe_vma_ops *vops,
 		if (err)
 			return ERR_PTR(err);
 
-		vm_bo = drm_gpuvm_bo_obtain(&vm->gpuvm, obj);
+		vm_bo = drm_gpuvm_bo_obtain_locked(&vm->gpuvm, obj);
 		if (IS_ERR(vm_bo)) {
 			xe_bo_unlock(bo);
 			return ERR_CAST(vm_bo);
diff --git a/include/drm/drm_gpuvm.h b/include/drm/drm_gpuvm.h
index fdfc575b260360611ff8ce16c327acede787929f..0d3fc1f6cac9966a42f3bc82b0b491bfefaf5b96 100644
--- a/include/drm/drm_gpuvm.h
+++ b/include/drm/drm_gpuvm.h
@@ -736,8 +736,8 @@ drm_gpuvm_bo_create(struct drm_gpuvm *gpuvm,
 		    struct drm_gem_object *obj);
 
 struct drm_gpuvm_bo *
-drm_gpuvm_bo_obtain(struct drm_gpuvm *gpuvm,
-		    struct drm_gem_object *obj);
+drm_gpuvm_bo_obtain_locked(struct drm_gpuvm *gpuvm,
+			   struct drm_gem_object *obj);
 struct drm_gpuvm_bo *
 drm_gpuvm_bo_obtain_prealloc(struct drm_gpuvm_bo *vm_bo);
 

-- 
2.52.0.487.g5c8c507ade-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
