Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cO17K3sB4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:34:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA9A410ECD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:34:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6DD8B44539
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:34:18 +0000 (UTC)
Received: from mail-ej1-f74.google.com (mail-ej1-f74.google.com [209.85.218.74])
	by lists.linaro.org (Postfix) with ESMTPS id 12E703F847
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Nov 2025 14:14:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=yXkNFvzC;
	spf=pass (lists.linaro.org: domain of 3Ra4paQkKDZg2DA46JQ9D8GG8D6.4GEDAF2JG-EE-KA8DAKLK.DAF2JG.GJ8@flex--aliceryhl.bounces.google.com designates 209.85.218.74 as permitted sender) smtp.mailfrom=3Ra4paQkKDZg2DA46JQ9D8GG8D6.4GEDAF2JG-EE-KA8DAKLK.DAF2JG.GJ8@flex--aliceryhl.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-ej1-f74.google.com with SMTP id a640c23a62f3a-b72a8546d73so218929766b.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Nov 2025 06:14:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764339270; x=1764944070; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=xWtS0oeZw0euolNA6rQ3aMYIpi9puV6Ez/UA7Z1Lta8=;
        b=yXkNFvzCcM9/iYWPyNYPpPlPp8/VC1jPCJEIlej7C5huE1mHO7bOgZcl2+ao1PbgRT
         pG/4vONY+ckkF01JCuarDt7G+nigY7FFCbk7pKCnxOu+bb6QQun0eGNVrkSx34wLEqX8
         zny476DNu9ymoXjGtS4YPTemhkiPQOvoowvqMTfvuoB6B+BIYQcYchEDaOr9aMbLnUhQ
         TpgXRMeN0BtADO/XFOzT71sM4ap1Ik4UTcdxum8220Boe157VDxHaanafQZSCmpyIwEd
         D+MKlkEnhUaBTQ/JiLkxucivBct9+4YDmlFyj3ggsbggRHxPyKbAbf7Lx7QauNKwLSDG
         NZFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764339270; x=1764944070;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xWtS0oeZw0euolNA6rQ3aMYIpi9puV6Ez/UA7Z1Lta8=;
        b=FjAEkTutwDB7jcfoZb3o9VDKjDPKJBrSDOpIJHDMqJgrOMbvMaGzoFfgaEwFiWl9Yj
         UIK+gADtgAyEUTlTlWpv4Uuev+U0/41/t2TqNG18t0QXM5rtThf9Wf1cQiN+/n+x8vW9
         DiD2PZRWB74fICMyBHynQmPnAlJSBDTfhn0gqtGhgrwODwfdH3xs0UwA7re5Bi6l4r5H
         IaxU9UiI0XgdLWKkCa2zfWhhhJMAfJV855jDA7AIBTBooZlN+ZoLptokdwsDAF1J9GJy
         m0wAanl9BrCqlMeMwsgQGwn3D4EMDXIe7/TRWNvhQSj8CxCDE2aOtqIOp1DARNtqhQlO
         lXag==
X-Forwarded-Encrypted: i=1; AJvYcCX3eEk3q2filKNOlFAW2jVI2ppub4s9DNm/923VdxKNnS24hWtew4YTIEWCf8zlY7oGNEpIgRqgr/kRO3Go@lists.linaro.org
X-Gm-Message-State: AOJu0YzsPZHsY4nijkWIJALdUjyulO8RDK9e83xq2yeXI3L+s4Y/fB8Y
	N8GtpqXcSbeGgM3YtOjvmbtd1fHBN62S63Hgnk9RSfJpV4toCvcKmLIgq4bMEYAVXwZxaHTQh+I
	Pd+nzpoTV6OXMYShxdg==
X-Google-Smtp-Source: AGHT+IGQaJ2kOmy5nOC4YD7a97BtA5EiRqES+TvuM8s7S+WqX8zQuzMJ2k3tkR7bnBDkFNa0dTcDwtixlZ7umdo=
X-Received: from ejcvx12.prod.google.com ([2002:a17:907:a78c:b0:b73:8115:9bc0])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:907:3e86:b0:b73:926e:ddc6 with SMTP id a640c23a62f3a-b76716844c4mr3146435366b.10.1764339269785;
 Fri, 28 Nov 2025 06:14:29 -0800 (PST)
Date: Fri, 28 Nov 2025 14:14:15 +0000
In-Reply-To: <20251128-gpuvm-rust-v1-0-ebf66bf234e0@google.com>
Mime-Version: 1.0
References: <20251128-gpuvm-rust-v1-0-ebf66bf234e0@google.com>
X-Developer-Key: i=aliceryhl@google.com; a=openpgp; fpr=49F6C1FAA74960F43A5B86A1EE7A392FDE96209F
X-Developer-Signature: v=1; a=openpgp-sha256; l=5831; i=aliceryhl@google.com;
 h=from:subject:message-id; bh=/qKUIi+SwxvR/KkB19A6xZJZbmkfrsHAi66WdDyKSDI=;
 b=owEBbQKS/ZANAwAKAQRYvu5YxjlGAcsmYgBpKa5C3uoY59uKQmVsr8tyT1tCEHUEqwTTsBb9S
 b5vlFkI0SGJAjMEAAEKAB0WIQSDkqKUTWQHCvFIvbIEWL7uWMY5RgUCaSmuQgAKCRAEWL7uWMY5
 RjwLD/9ShES7XKjmh35DZrFV+Fc0z4KMMPJ1JI0Xlzpm9qtAoEKOXw7zgph3m7PfAHtwS5AHPQ5
 3r8W+kUOxuw+CD0lhpbFLA8Fx/msauv85WyPkF+YZ+9HR1XAAE5GkAzLyfP0i5kMGVdjOCCe1AI
 bPuG9iA7pke+Bsfmp6vG7pUpnXbhFzvAQK30KyowCPBdFVrNcVXw0k+t56KpR4rKJRmNFU6F3f9
 +ZXane3mLzMGMKIVyR8oRq0QxM2ddQ0BPJLnsobQv1HTyyqR2g/5pOLiDDnvwS+z2i0s6KOSXGh
 WSusVN9/vKUQkyC9m5+jb7aNRhGclk6KVrM5/445UugiLuD2XpIGDPqjHF2VsIKYqmWOd6PBTX3
 V0eAWXixt1Wkgs+jIvSbfftAwV/PD6NdaTlJ1wX2Z6bCMvobI9qw0uxWiUNn2ccJrYE3Y3N839N
 492nTEJubXIjfvs7pdcP+XwZANY3nCLLLufUGYVBlJy3wPeSK8p2SrOji0/Ds+VNQkjBZYmbzmK
 se/FxIy2Kzo8qYRIQ2m5aYl+VKOwVRWGKTUwNZsZyuSpT8bn0eHaK7r1iLSxejhw6BXdscHUkEC
 WSv0lEHS4sqcRY3gsKZCczzW/gAmw6rYvqvYSzNuPNZx1aDNJ7VHaTnNwvbeNsmn03XTo4bmbEG qZF5uHItgA1JDLg==
X-Mailer: b4 0.14.2
Message-ID: <20251128-gpuvm-rust-v1-1-ebf66bf234e0@google.com>
From: Alice Ryhl <aliceryhl@google.com>
To: Danilo Krummrich <dakr@kernel.org>, Daniel Almeida <daniel.almeida@collabora.com>
X-Spamd-Bar: ---
X-MailFrom: 3Ra4paQkKDZg2DA46JQ9D8GG8D6.4GEDAF2JG-EE-KA8DAKLK.DAF2JG.GJ8@flex--aliceryhl.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RIMMDHJ4L7ACO5GEDKXYGWVOKO5RRNKT
X-Message-ID-Hash: RIMMDHJ4L7ACO5GEDKXYGWVOKO5RRNKT
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:22 +0000
CC: Matthew Brost <matthew.brost@intel.com>, =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn
 .suijten@somainline.org>, Lyude Paul <lyude@redhat.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, nouveau@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Alice Ryhl <aliceryhl@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/4] drm/gpuvm: take GEM lock inside drm_gpuvm_bo_obtain_prealloc()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RIMMDHJ4L7ACO5GEDKXYGWVOKO5RRNKT/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 5BA9A410ECD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When calling drm_gpuvm_bo_obtain_prealloc() and using immediate mode,
this may result in a call to ops->vm_bo_free(vm_bo) while holding the
GEMs gpuva mutex. This is a problem if ops->vm_bo_free(vm_bo) performs
any operations that are not safe in the fence signalling critical path,
and it turns out that Panthor (the only current user of the method)
calls drm_gem_shmem_unpin() which takes a resv lock internally.

This constitutes both a violation of signalling safety and lock
inversion. To fix this, we modify the method to internally take the GEMs
gpuva mutex so that the mutex can be unlocked before freeing the
preallocated vm_bo.

Note that this modification introduces a requirement that the driver
uses immediate mode to call drm_gpuvm_bo_obtain_prealloc() as it would
otherwise take the wrong lock.

Signed-off-by: Alice Ryhl <aliceryhl@google.com>
---
 drivers/gpu/drm/drm_gpuvm.c           | 58 ++++++++++++++++++++++-------------
 drivers/gpu/drm/panthor/panthor_mmu.c | 10 ------
 2 files changed, 37 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/drm_gpuvm.c b/drivers/gpu/drm/drm_gpuvm.c
index 936e6c1a60c16ed5a6898546bf99e23a74f6b58b..f08a5cc1d611f971862c1272987e5ecd6d97c163 100644
--- a/drivers/gpu/drm/drm_gpuvm.c
+++ b/drivers/gpu/drm/drm_gpuvm.c
@@ -1601,14 +1601,37 @@ drm_gpuvm_bo_create(struct drm_gpuvm *gpuvm,
 }
 EXPORT_SYMBOL_GPL(drm_gpuvm_bo_create);
 
+static void
+drm_gpuvm_bo_destroy_not_in_lists(struct drm_gpuvm_bo *vm_bo)
+{
+	struct drm_gpuvm *gpuvm = vm_bo->vm;
+	const struct drm_gpuvm_ops *ops = gpuvm->ops;
+	struct drm_gem_object *obj = vm_bo->obj;
+
+	if (ops && ops->vm_bo_free)
+		ops->vm_bo_free(vm_bo);
+	else
+		kfree(vm_bo);
+
+	drm_gpuvm_put(gpuvm);
+	drm_gem_object_put(obj);
+}
+
+static void
+drm_gpuvm_bo_destroy_not_in_lists_kref(struct kref *kref)
+{
+	struct drm_gpuvm_bo *vm_bo = container_of(kref, struct drm_gpuvm_bo,
+						  kref);
+
+	drm_gpuvm_bo_destroy_not_in_lists(vm_bo);
+}
+
 static void
 drm_gpuvm_bo_destroy(struct kref *kref)
 {
 	struct drm_gpuvm_bo *vm_bo = container_of(kref, struct drm_gpuvm_bo,
 						  kref);
 	struct drm_gpuvm *gpuvm = vm_bo->vm;
-	const struct drm_gpuvm_ops *ops = gpuvm->ops;
-	struct drm_gem_object *obj = vm_bo->obj;
 	bool lock = !drm_gpuvm_resv_protected(gpuvm);
 
 	if (!lock)
@@ -1617,16 +1640,10 @@ drm_gpuvm_bo_destroy(struct kref *kref)
 	drm_gpuvm_bo_list_del(vm_bo, extobj, lock);
 	drm_gpuvm_bo_list_del(vm_bo, evict, lock);
 
-	drm_gem_gpuva_assert_lock_held(gpuvm, obj);
+	drm_gem_gpuva_assert_lock_held(gpuvm, vm_bo->obj);
 	list_del(&vm_bo->list.entry.gem);
 
-	if (ops && ops->vm_bo_free)
-		ops->vm_bo_free(vm_bo);
-	else
-		kfree(vm_bo);
-
-	drm_gpuvm_put(gpuvm);
-	drm_gem_object_put(obj);
+	drm_gpuvm_bo_destroy_not_in_lists(vm_bo);
 }
 
 /**
@@ -1744,9 +1761,7 @@ EXPORT_SYMBOL_GPL(drm_gpuvm_bo_put_deferred);
 void
 drm_gpuvm_bo_deferred_cleanup(struct drm_gpuvm *gpuvm)
 {
-	const struct drm_gpuvm_ops *ops = gpuvm->ops;
 	struct drm_gpuvm_bo *vm_bo;
-	struct drm_gem_object *obj;
 	struct llist_node *bo_defer;
 
 	bo_defer = llist_del_all(&gpuvm->bo_defer);
@@ -1765,14 +1780,7 @@ drm_gpuvm_bo_deferred_cleanup(struct drm_gpuvm *gpuvm)
 	while (bo_defer) {
 		vm_bo = llist_entry(bo_defer, struct drm_gpuvm_bo, list.entry.bo_defer);
 		bo_defer = bo_defer->next;
-		obj = vm_bo->obj;
-		if (ops && ops->vm_bo_free)
-			ops->vm_bo_free(vm_bo);
-		else
-			kfree(vm_bo);
-
-		drm_gpuvm_put(gpuvm);
-		drm_gem_object_put(obj);
+		drm_gpuvm_bo_destroy_not_in_lists(vm_bo);
 	}
 }
 EXPORT_SYMBOL_GPL(drm_gpuvm_bo_deferred_cleanup);
@@ -1860,6 +1868,9 @@ EXPORT_SYMBOL_GPL(drm_gpuvm_bo_obtain);
  * count is decreased. If not found @__vm_bo is returned without further
  * increase of the reference count.
  *
+ * The provided @__vm_bo must not already be in the gpuva, evict, or extobj
+ * lists prior to calling this method.
+ *
  * A new &drm_gpuvm_bo is added to the GEMs gpuva list.
  *
  * Returns: a pointer to the found &drm_gpuvm_bo or @__vm_bo if no existing
@@ -1872,14 +1883,19 @@ drm_gpuvm_bo_obtain_prealloc(struct drm_gpuvm_bo *__vm_bo)
 	struct drm_gem_object *obj = __vm_bo->obj;
 	struct drm_gpuvm_bo *vm_bo;
 
+	drm_WARN_ON(gpuvm->drm, !drm_gpuvm_immediate_mode(gpuvm));
+
+	mutex_lock(&obj->gpuva.lock);
 	vm_bo = drm_gpuvm_bo_find(gpuvm, obj);
 	if (vm_bo) {
-		drm_gpuvm_bo_put(__vm_bo);
+		mutex_unlock(&obj->gpuva.lock);
+		kref_put(&__vm_bo->kref, drm_gpuvm_bo_destroy_not_in_lists_kref);
 		return vm_bo;
 	}
 
 	drm_gem_gpuva_assert_lock_held(gpuvm, obj);
 	list_add_tail(&__vm_bo->list.entry.gem, &obj->gpuva.list);
+	mutex_unlock(&obj->gpuva.lock);
 
 	return __vm_bo;
 }
diff --git a/drivers/gpu/drm/panthor/panthor_mmu.c b/drivers/gpu/drm/panthor/panthor_mmu.c
index 9f5f4ddf291024121f3fd5644f2fdeba354fa67c..be8811a70e1a3adec87ca4a85cad7c838f54bebf 100644
--- a/drivers/gpu/drm/panthor/panthor_mmu.c
+++ b/drivers/gpu/drm/panthor/panthor_mmu.c
@@ -1224,17 +1224,7 @@ static int panthor_vm_prepare_map_op_ctx(struct panthor_vm_op_ctx *op_ctx,
 		goto err_cleanup;
 	}
 
-	/* drm_gpuvm_bo_obtain_prealloc() will call drm_gpuvm_bo_put() on our
-	 * pre-allocated BO if the <BO,VM> association exists. Given we
-	 * only have one ref on preallocated_vm_bo, drm_gpuvm_bo_destroy() will
-	 * be called immediately, and we have to hold the VM resv lock when
-	 * calling this function.
-	 */
-	dma_resv_lock(panthor_vm_resv(vm), NULL);
-	mutex_lock(&bo->base.base.gpuva.lock);
 	op_ctx->map.vm_bo = drm_gpuvm_bo_obtain_prealloc(preallocated_vm_bo);
-	mutex_unlock(&bo->base.base.gpuva.lock);
-	dma_resv_unlock(panthor_vm_resv(vm));
 
 	op_ctx->map.bo_offset = offset;
 

-- 
2.52.0.487.g5c8c507ade-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
