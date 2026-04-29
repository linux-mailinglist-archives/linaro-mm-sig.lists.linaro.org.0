Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNlUNPxcBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:14:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 416C3531FD8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:14:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB45A40475
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:14:02 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	by lists.linaro.org (Postfix) with ESMTPS id 81A403F80C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 14:37:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=XST8rI5l;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of mikhail.v.gavrilov@gmail.com designates 209.85.167.49 as permitted sender) smtp.mailfrom=mikhail.v.gavrilov@gmail.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5a41099fa86so11225543e87.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 07:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777473468; x=1778078268; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jll39Xqy18SFNSEMkkDeWu7wM9j7NCAIvdDzP0v4P/M=;
        b=XST8rI5l7Bs4A9Dp7nwhOid3DAzDQwNxaCxulAF7/1did9ay3RIH1T213ih4ZnPZIr
         WHVMQo+TcHcMaUaCe0LlAKCPHCjw5TOuZ6M8cL8jJKUciGzlR0Tmxui/a+SFlmtlXKZ2
         6b8XtrJwEz9oOHPRACif9HUPoR8WiaXbiCSKNDNrPaGOk4/IgEZ9gUXQOdzQI5BcyOT5
         GKh57DxHdvWv2EcLiuOX2NFccTfJR3HmZZSbHojn4I/zSBuRHEWcJOCoWOyKSjd6Rrpe
         oOSTX2wIX0u+S2xYyl8fDzSF7eqdEDldsMKAHWqX5wcPn6iqhcjkL8dkuofLoc0ChYpZ
         0VYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777473468; x=1778078268;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jll39Xqy18SFNSEMkkDeWu7wM9j7NCAIvdDzP0v4P/M=;
        b=fdVnnbeeaC4NIBZJ/SQGv1p//k/K7IHGOIZ+h5b2OGiY5IN74boh/lpVPxPfRJMdB4
         z19BTQEhbtGni5kyaM7Fjo/gIZcLgiiNdyenZscp3+skXeOkXcP9mjpn9RPKHghaMxb1
         6w7FDNA+H+/q6jzqaxQzr6sARCy1xNsxEGfpKA4vzwhzNgVRcSGlj9S++A52Y6K1Prw8
         hUcwSAD5kKyToEMl1BhHl0osZ/BJPTCUvJeYeswKAn21/VvyH0FYgLwhG7jIn8IWwOUu
         UwkpSPxca4jer1tJAiZtwCLNAZ//xgIXUQRxH/8etcZyYxtOUpeQ15CSCn0cmrbsuFIU
         wlJg==
X-Forwarded-Encrypted: i=1; AFNElJ+rVORNiU9Dk2Ml0qJUpANwf3vt0MmYFZrW0F/TGM87egetE9MBAB+Ml/PRlspXKtD9XAc8AgaO2WI4srE5@lists.linaro.org
X-Gm-Message-State: AOJu0Ywk+IlFVh5Dhh4Vc2gfv55MpwZWByNmnLF2gm0nikhUi+iDVLZg
	wcti6prDs4ak/oI8OcnKA5Fe2XsYrK582xqaZZC9nJ9VCI8cFwYjX0EL
X-Gm-Gg: AeBDiesasQJ5Kuw9CcjofuWOFM9cZekO0eVVXfhRjOkgAtfuJcekbcRJXxl0GFgDaWs
	p2ijt43tkgyjT62iAWagHNjwt/uT5jg1+87adEYz8Zd0z3D4SITyRjjgAIA3rI3apUZP8myynzs
	4iOUGRm4c6fjt6RNseTvQimUlcpZYYPYatQMqbGGXWRFPfaYfjmgzEd3KohLZWOCV5sFSYBOBGj
	10X2fjbw2WMfLhWVJ255RAcqEalGss/hSLXxYbDZOWMJ0T8hq237xf7baAQP/d/xVB/jYu6dsGz
	NSuR/6HVlI5qL0x8kpYKiifig134DoyJjb20DYwPRgstyUgm+aAloHOnLpMNh4gEc6LZWl3Fz9/
	TxHs9e6bB8IV8VwMTu4qOzcQ9pNJah8HghZEAz33kubjJC29feBfTj/kZc+nd9y2IYRYUoK+6AC
	FQ3CSa04OS+mJ5PpH+PgW5A/ROPl0j1aSQG6Bpi4swhMZH
X-Received: by 2002:a05:6512:3502:b0:5a2:86a3:709f with SMTP id 2adb3069b0e04-5a74660cd3amr3134081e87.17.1777473467800;
        Wed, 29 Apr 2026 07:37:47 -0700 (PDT)
Received: from localhost ([188.234.148.119])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a74a6f3019sm607425e87.20.2026.04.29.07.37.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2026 07:37:47 -0700 (PDT)
From: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
To: amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Date: Wed, 29 Apr 2026 19:37:43 +0500
Message-ID: <20260429143743.50743-1-mikhail.v.gavrilov@gmail.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: mikhail.v.gavrilov@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TX6VS6UXYTJINGTVSVZLS3KK2JSIE2R5
X-Message-ID-Hash: TX6VS6UXYTJINGTVSVZLS3KK2JSIE2R5
X-Mailman-Approved-At: Wed, 13 May 2026 11:13:54 +0000
CC: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>, stable@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/amdgpu: fix recursive ww_mutex acquire in amdgpu_devcoredump_format
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TX6VS6UXYTJINGTVSVZLS3KK2JSIE2R5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 416C3531FD8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[332];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.283];
	FROM_NEQ_ENVFROM(0.00)[mikhailvgavrilov@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,amd.com,ffwll.ch,linaro.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

When dumping IB contents from a hung job, amdgpu_devcoredump_format()
acquires the VM root PD's reservation lock via amdgpu_vm_lock_by_pasid()
and then, for each IB referenced by the job, calls amdgpu_bo_reserve()
on the BO that backs the IB.  Both reservations are taken on
reservation_ww_class_mutex objects but neither uses a ww_acquire_ctx,
which trips lockdep:

  WARNING: possible recursive locking detected
  --------------------------------------------
  kworker/u128:0 is trying to acquire lock:
  ffff88838b16e1f0 (reservation_ww_class_mutex){+.+.}-{4:4},
    at: amdgpu_devcoredump_format+0x1594/0x23f0 [amdgpu]

  but task is already holding lock:
  ffff8882f82681f0 (reservation_ww_class_mutex){+.+.}-{4:4},
    at: amdgpu_devcoredump_format+0x1594/0x23f0 [amdgpu]

   Possible unsafe locking scenario:
         CPU0
         ----
    lock(reservation_ww_class_mutex);
    lock(reservation_ww_class_mutex);

   *** DEADLOCK ***
   May be due to missing lock nesting notation

  Workqueue: events_unbound amdgpu_devcoredump_deferred_work [amdgpu]
  Call Trace:
   __ww_mutex_lock.constprop.0
   ww_mutex_lock
   amdgpu_bo_reserve
   amdgpu_devcoredump_format+0x1594 [amdgpu]
   amdgpu_devcoredump_deferred_work+0xea [amdgpu]
   process_one_work
   worker_thread
   kthread

The two reservations are on different BOs in the captured trace, so the
splat is a lockdep-correctness warning, not an observed deadlock.  It
becomes a real self-deadlock whenever the IB BO shares its dma_resv
with the root PD (the always-valid case, see
amdgpu_vm_is_bo_always_valid()): amdgpu_bo_reserve(abo) re-acquires the
same ww_mutex without a ticket and blocks forever.

With amdgpu.gpu_recovery=0 the timeout handler refires every ~2 s and
each invocation produces this splat, drowning the kernel ring buffer.

Fix it by collecting the per-IB BO references under the root PD's
reservation, then releasing the root before reserving each IB BO
individually.  The walk over the VM mapping tree must remain under the
root lock (mappings can be torn down without it), but the actual
content copies do not need to nest inside it.  Each per-IB reservation
is now an independent top-level acquire, eliminating the nested
ww_mutex.

The collect/release logic is factored out into two small helpers
(amdgpu_devcoredump_collect_ib_refs / amdgpu_devcoredump_release_ib_refs)
to keep the main function's indentation reasonable.

This also fixes a BO refcount leak in the original code: when
amdgpu_bo_reserve() failed, control jumped to free_ib_content without
running amdgpu_bo_unref().  In the new structure the per-IB BO refs
are released unconditionally in the cleanup helper.

Reproducer (~150 LoC libdrm_amdgpu): submit a single GFX IB containing
PACKET3_INDIRECT_BUFFER chained at GPU VA 0 and wait for the fence.
The TDR fires within ~10 s and the deferred coredump worker produces
the splat above on every invocation.

Fixes: 7b15fc2d1f1a ("drm/amdgpu: dump job ibs in the devcoredump")
Cc: stable@vger.kernel.org # 7.1
Signed-off-by: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
---
 .../gpu/drm/amd/amdgpu/amdgpu_dev_coredump.c  | 147 +++++++++++++-----
 1 file changed, 110 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_dev_coredump.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_dev_coredump.c
index d386bc775d03..f6bb968de756 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_dev_coredump.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_dev_coredump.c
@@ -207,6 +207,72 @@ static void amdgpu_devcoredump_fw_info(struct amdgpu_device *adev,
 	}
 }
 
+struct amdgpu_devcoredump_ib_ref {
+	struct amdgpu_bo	*bo;
+	u64			offset;
+};
+
+/*
+ * Walk the VM's mapping tree under the root PD's reservation to obtain the BO
+ * that backs each IB and pin it with a refcount. The root PD reservation is
+ * dropped before this function returns; the caller can then reserve each IB
+ * BO individually without nesting ww_mutex acquires on
+ * reservation_ww_class_mutex.
+ *
+ * Returns an array of num_ibs entries (each ib_refs[i].bo may be NULL if its
+ * mapping was not found), or NULL on allocation failure / VM lookup failure.
+ * The caller must release the BO refs and free the array.
+ */
+static struct amdgpu_devcoredump_ib_ref *
+amdgpu_devcoredump_collect_ib_refs(struct amdgpu_device *adev,
+				   struct amdgpu_coredump_info *coredump)
+{
+	struct amdgpu_devcoredump_ib_ref *ib_refs;
+	struct amdgpu_bo_va_mapping *mapping;
+	struct amdgpu_bo *root;
+	struct amdgpu_vm *vm;
+	u64 va_start;
+
+	ib_refs = kcalloc(coredump->num_ibs, sizeof(*ib_refs), GFP_KERNEL);
+	if (!ib_refs)
+		return NULL;
+
+	vm = amdgpu_vm_lock_by_pasid(adev, &root, coredump->pasid);
+	if (!vm) {
+		kfree(ib_refs);
+		return NULL;
+	}
+
+	for (int i = 0; i < coredump->num_ibs; i++) {
+		va_start = coredump->ibs[i].gpu_addr & AMDGPU_GMC_HOLE_MASK;
+		mapping = amdgpu_vm_bo_lookup_mapping(vm, va_start / AMDGPU_GPU_PAGE_SIZE);
+		if (!mapping)
+			continue;
+
+		ib_refs[i].bo = amdgpu_bo_ref(mapping->bo_va->base.bo);
+		ib_refs[i].offset = va_start -
+				    mapping->start * AMDGPU_GPU_PAGE_SIZE;
+	}
+
+	amdgpu_bo_unreserve(root);
+	amdgpu_bo_unref(&root);
+
+	return ib_refs;
+}
+
+static void
+amdgpu_devcoredump_release_ib_refs(struct amdgpu_devcoredump_ib_ref *ib_refs,
+				   int num_ibs)
+{
+	if (!ib_refs)
+		return;
+
+	for (int i = 0; i < num_ibs; i++)
+		if (ib_refs[i].bo)
+			amdgpu_bo_unref(&ib_refs[i].bo);
+	kfree(ib_refs);
+}
+
 static ssize_t
 amdgpu_devcoredump_format(char *buffer, size_t count, struct amdgpu_coredump_info *coredump)
 {
@@ -214,13 +280,11 @@ amdgpu_devcoredump_format(char *buffer, size_t count, struct amdgpu_coredump_inf
 	struct drm_printer p;
 	struct drm_print_iterator iter;
 	struct amdgpu_vm_fault_info *fault_info;
-	struct amdgpu_bo_va_mapping *mapping;
 	struct amdgpu_ip_block *ip_block;
 	struct amdgpu_res_cursor cursor;
-	struct amdgpu_bo *abo, *root;
-	uint64_t va_start, offset;
+	struct amdgpu_bo *abo;
+	uint64_t offset;
 	struct amdgpu_ring *ring;
-	struct amdgpu_vm *vm;
 	u32 *ib_content;
 	uint8_t *kptr;
 	int ver, i, j, r;
@@ -343,43 +407,52 @@ amdgpu_devcoredump_format(char *buffer, size_t count, struct amdgpu_coredump_inf
 		drm_printf(&p, "VRAM is lost due to GPU reset!\n");
 
 	if (coredump->num_ibs) {
-		/* Don't try to lookup the VM or map the BOs when calculating the
-		 * size required to store the devcoredump.
+		struct amdgpu_devcoredump_ib_ref *ib_refs = NULL;
+
+		/*
+		 * Snapshot per-IB BO references under the root PD's reservation,
+		 * then release the root before reserving each IB BO individually
+		 * to copy its contents.
+		 *
+		 * Reserving an IB BO while the root PD is still reserved would
+		 * be a nested ww_mutex acquire on reservation_ww_class_mutex
+		 * without a ww_acquire_ctx, which trips lockdep's recursive-
+		 * locking check and self-deadlocks for IB BOs that share their
+		 * dma_resv with the root PD (always-valid BOs).
+		 *
+		 * Skip lookup/reservation entirely on the sizing pass: it does
+		 * not write IB content, and the size estimate doesn't depend on
+		 * whether the BOs are reachable.
 		 */
-		if (sizing_pass)
-			vm = NULL;
-		else
-			vm = amdgpu_vm_lock_by_pasid(adev, &root, coredump->pasid);
+		if (!sizing_pass)
+			ib_refs = amdgpu_devcoredump_collect_ib_refs(adev, coredump);
 
-		for (int i = 0; i < coredump->num_ibs && (sizing_pass || vm); i++) {
+		for (int i = 0; i < coredump->num_ibs; i++) {
 			ib_content = kvmalloc_array(coredump->ibs[i].ib_size_dw, 4,
 						    GFP_KERNEL);
 			if (!ib_content)
 				continue;
 
-			/* vm=NULL can only happen when 'sizing_pass' is true. Skip to the
-			 * drm_printf() calls (ib_content doesn't need to be initialized
-			 * as its content won't be written anywhere).
-			 */
-			if (!vm)
+			if (sizing_pass)
 				goto output_ib_content;
 
-			va_start = coredump->ibs[i].gpu_addr & AMDGPU_GMC_HOLE_MASK;
-			mapping = amdgpu_vm_bo_lookup_mapping(vm, va_start / AMDGPU_GPU_PAGE_SIZE);
-			if (!mapping)
-				goto free_ib_content;
+			if (!ib_refs || !ib_refs[i].bo)
+				goto output_ib_content;
+
+			abo = ib_refs[i].bo;
+			offset = ib_refs[i].offset;
 
-			offset = va_start - (mapping->start * AMDGPU_GPU_PAGE_SIZE);
-			abo = amdgpu_bo_ref(mapping->bo_va->base.bo);
 			r = amdgpu_bo_reserve(abo, false);
 			if (r)
-				goto free_ib_content;
+				goto output_ib_content;
 
 			if (abo->flags & AMDGPU_GEM_CREATE_NO_CPU_ACCESS) {
 				off = 0;
 
-				if (abo->tbo.resource->mem_type != TTM_PL_VRAM)
-					goto unreserve_abo;
+				if (abo->tbo.resource->mem_type != TTM_PL_VRAM) {
+					amdgpu_bo_unreserve(abo);
+					goto output_ib_content;
+				}
 
 				amdgpu_res_first(abo->tbo.resource, offset,
 						 coredump->ibs[i].ib_size_dw * 4,
@@ -395,8 +468,10 @@ amdgpu_devcoredump_format(char *buffer, size_t count, struct amdgpu_coredump_inf
 				r = ttm_bo_kmap(&abo->tbo, 0,
 						PFN_UP(abo->tbo.base.size),
 						&abo->kmap);
-				if (r)
-					goto unreserve_abo;
+				if (r) {
+					amdgpu_bo_unreserve(abo);
+					goto output_ib_content;
+				}
 
 				kptr = amdgpu_bo_kptr(abo);
 				kptr += offset;
@@ -406,21 +481,19 @@ amdgpu_devcoredump_format(char *buffer, size_t count, struct amdgpu_coredump_inf
 				amdgpu_bo_kunmap(abo);
 			}
 
+			amdgpu_bo_unreserve(abo);
+
 output_ib_content:
 			drm_printf(&p, "\nIB #%d 0x%llx %d dw\n",
 				   i, coredump->ibs[i].gpu_addr, coredump->ibs[i].ib_size_dw);
-			for (int j = 0; j < coredump->ibs[i].ib_size_dw; j++)
-				drm_printf(&p, "0x%08x\n", ib_content[j]);
-unreserve_abo:
-			if (vm)
-				amdgpu_bo_unreserve(abo);
-free_ib_content:
+			if (!sizing_pass && ib_refs && ib_refs[i].bo) {
+				for (int j = 0; j < coredump->ibs[i].ib_size_dw; j++)
+					drm_printf(&p, "0x%08x\n", ib_content[j]);
+			}
 			kvfree(ib_content);
 		}
-		if (vm) {
-			amdgpu_bo_unreserve(root);
-			amdgpu_bo_unref(&root);
-		}
+
+		amdgpu_devcoredump_release_ib_refs(ib_refs, coredump->num_ibs);
 	}
 
 	return count - iter.remain;
-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
