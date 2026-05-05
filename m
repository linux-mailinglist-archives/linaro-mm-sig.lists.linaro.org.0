Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAI9GjNfBGpBHgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:23:31 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FFA532210
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:23:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A12740305
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:23:30 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 2DB0A409B6
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2026 14:05:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=arm.com header.s=foss header.b=ueNYOVD9;
	dmarc=pass (policy=none) header.from=arm.com;
	spf=pass (lists.linaro.org: domain of ketil.johnsen@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=ketil.johnsen@arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 61DEC24C0;
	Tue,  5 May 2026 07:05:51 -0700 (PDT)
Received: from e120398-lin.trondheim.arm.com (e120398-lin.trondheim.arm.com [10.42.46.160])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 40ACC3F763;
	Tue,  5 May 2026 07:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1777989956; bh=C/HPVhAFNazZLtwqgmXIczamjt4yPbAq/jYAjnd19+Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ueNYOVD9kubk4sYtRy9DR4f5wtZSWKw5rtSXMp4ZLjhwgwh+PGLr/5j+wnjkNYR0e
	 43fSiim7+DW2GxEZ1FFtajXYSiMT0yg41SnB/LR8RK/+ubBqvc+l6kVEdkRcAOU9d0
	 bL17Dwe0tuiIVK5IbFF8rMoz4zVG6E1olq+7461A=
From: Ketil Johnsen <ketil.johnsen@arm.com>
To: David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Steven Price <steven.price@arm.com>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Alice Ryhl <aliceryhl@google.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Date: Tue,  5 May 2026 16:05:12 +0200
Message-ID: <20260505140516.1372388-7-ketil.johnsen@arm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260505140516.1372388-1-ketil.johnsen@arm.com>
References: <20260505140516.1372388-1-ketil.johnsen@arm.com>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: ketil.johnsen@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YSCMXXYNOTMOHFIDHIQBKTN5SFG3C62D
X-Message-ID-Hash: YSCMXXYNOTMOHFIDHIQBKTN5SFG3C62D
X-Mailman-Approved-At: Wed, 13 May 2026 11:22:14 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Ketil Johnsen <ketil.johnsen@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 6/8] drm/panthor: Explicit expansion of locked VM region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YSCMXXYNOTMOHFIDHIQBKTN5SFG3C62D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 11FFA532210
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[arm.com:s=foss];
	DATE_IN_PAST(1.00)[189];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	GREYLIST(0.00)[pass,meta];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lwn.net,linuxfoundation.org,linaro.org,collabora.com,arm.com,google.com,amd.com];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[arm.com:-];
	NEURAL_HAM(-0.00)[-0.445];
	FROM_NEQ_ENVFROM(0.00)[ketil.johnsen@arm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email,arm.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

Currently the panthor_vm_lock_region() function will implicitly expand
an already locked VM region. This can be problematic because the caller
do not reliably know if it needs to call panthor_vm_unlock_region()
or not.

Worth noting, there is currently no known issues with this as the code
is written today.

This change introduces panthor_vm_expand_region() which will only work
if there is already a locked VM region. This again means that the
original lock and unlock functions can work as a pair. This pairing is
needed for subsequent protected memory changes.

Signed-off-by: Ketil Johnsen <ketil.johnsen@arm.com>
---
 drivers/gpu/drm/panthor/panthor_mmu.c | 69 +++++++++++++++++++--------
 1 file changed, 50 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/panthor/panthor_mmu.c b/drivers/gpu/drm/panthor/panthor_mmu.c
index fc930ee158a52..07f54176ec1bf 100644
--- a/drivers/gpu/drm/panthor/panthor_mmu.c
+++ b/drivers/gpu/drm/panthor/panthor_mmu.c
@@ -1701,15 +1701,36 @@ static int panthor_vm_lock_region(struct panthor_vm *vm, u64 start, u64 size)
 	struct panthor_device *ptdev = vm->ptdev;
 	int ret = 0;
 
-	/* sm_step_remap() can call panthor_vm_lock_region() to account for
-	 * the wider unmap needed when doing a partial huge page unamp. We
-	 * need to ignore the lock if it's already part of the locked region.
-	 */
-	if (start >= vm->locked_region.start &&
-	    start + size <= vm->locked_region.start + vm->locked_region.size)
-		return 0;
+	if (drm_WARN_ON(&ptdev->base, vm->locked_region.size))
+		return -EINVAL;
+
+	mutex_lock(&ptdev->mmu->as.slots_lock);
+	if (vm->as.id >= 0 && size) {
+		/* Lock the region that needs to be updated */
+		gpu_write64(ptdev, AS_LOCKADDR(vm->as.id),
+			    pack_region_range(ptdev, &start, &size));
+
+		/* If the lock succeeded, update the locked_region info. */
+		ret = as_send_cmd_and_wait(ptdev, vm->as.id, AS_COMMAND_LOCK);
+	}
 
-	/* sm_step_remap() may need a locked region that isn't a strict superset
+	if (!ret) {
+		vm->locked_region.start = start;
+		vm->locked_region.size = size;
+	}
+	mutex_unlock(&ptdev->mmu->as.slots_lock);
+
+	return ret;
+}
+
+static int panthor_vm_expand_region(struct panthor_vm *vm, u64 start, u64 size)
+{
+	struct panthor_device *ptdev = vm->ptdev;
+	u64 end;
+	int ret = 0;
+
+	/* This function is here to handle the following case:
+	 * sm_step_remap() may need a locked region that isn't a strict superset
 	 * of the original one because of having to extend unmap boundaries beyond
 	 * it to deal with partial unmaps of transparent huge pages. What we want
 	 * in those cases is to lock the union of both regions. The new region must
@@ -1717,16 +1738,24 @@ static int panthor_vm_lock_region(struct panthor_vm *vm, u64 start, u64 size)
 	 * boundaries in a remap operation can only shift up or down respectively,
 	 * but never otherwise.
 	 */
-	if (vm->locked_region.size) {
-		u64 end = max(vm->locked_region.start + vm->locked_region.size,
-			      start + size);
 
-		drm_WARN_ON_ONCE(&vm->ptdev->base, (start + size <= vm->locked_region.start) ||
-				 (start >= vm->locked_region.start + vm->locked_region.size));
+	/* This function can only expand an already locked region */
+	if (drm_WARN_ON(&ptdev->base, !vm->locked_region.size))
+		return -EINVAL;
 
-		start = min(start, vm->locked_region.start);
-		size = end - start;
-	}
+	/* Early out if requested range is already locked */
+	if (start >= vm->locked_region.start &&
+	    start + size <= vm->locked_region.start + vm->locked_region.size)
+		return 0;
+
+	end = max(vm->locked_region.start + vm->locked_region.size,
+		  start + size);
+
+	drm_WARN_ON_ONCE(&ptdev->base, (start + size <= vm->locked_region.start) ||
+			 (start >= vm->locked_region.start + vm->locked_region.size));
+
+	start = min(start, vm->locked_region.start);
+	size = end - start;
 
 	mutex_lock(&ptdev->mmu->as.slots_lock);
 	if (vm->as.id >= 0 && size) {
@@ -2252,11 +2281,13 @@ static int panthor_gpuva_sm_step_remap(struct drm_gpuva_op *op,
 	unmap_hugepage_align(&op->remap, &unmap_start, &unmap_range);
 
 	/* If the range changed, we might have to lock a wider region to guarantee
-	 * atomicity. panthor_vm_lock_region() bails out early if the new region
-	 * is already part of the locked region, so no need to do this check here.
+	 * atomicity.
 	 */
 	if (!unmap_vma->evicted) {
-		panthor_vm_lock_region(vm, unmap_start, unmap_range);
+		ret = panthor_vm_expand_region(vm, unmap_start, unmap_range);
+		if (ret)
+			return ret;
+
 		panthor_vm_unmap_pages(vm, unmap_start, unmap_range);
 	}
 
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
