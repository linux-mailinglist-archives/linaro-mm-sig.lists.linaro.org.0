Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIwLD5MA4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:30:27 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C456F410D0F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:30:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D367743C6D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:30:25 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 1AFF63F69B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 13:20:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="bg/rra/0";
	spf=pass (lists.linaro.org: domain of phasta@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=phasta@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7D161601B2;
	Wed, 26 Nov 2025 13:20:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BD03C116B1;
	Wed, 26 Nov 2025 13:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764163208;
	bh=KbS42U1qFlYFL5sleuJnRbKXaGff7v361nDoJWGgUJc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bg/rra/0CVDd38GC+JM3UPYJMGAtWN6a2xKH5FHkwEKvc4UK8v9gdVQz4nEMq4VU1
	 retBOj2Xy0M0UTUvbhGqfazajUowYQ6uVv/WHzEQg2uoFc+Z8GUbglEIowKIBDKM+H
	 yUI8DvjgoRw2Dwz2WgAyoDQDCjziDkXyG+ekwhtPLtuYYGjcGmQIXx0fiSMk/mfXpI
	 MGUn9Bo9HTGWjLl9GCh1pDocnWuQ5lU13TgZ5mQPGzzUh2pUzBVuk/RoAACdZdiun3
	 OqkujnIQo7bixifkEvnxzq7a2mlIC26vbwJNL8YXyP7oiOkovBBYX5BxIEnEeeFRKo
	 k7t2S97/02ArA==
From: Philipp Stanner <phasta@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	Gustavo Padovan <gustavo@padovan.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Felix Kuehling <Felix.Kuehling@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Tvrtko Ursulin <tursulin@ursulin.net>,
	Huang Rui <ray.huang@amd.com>,
	Matthew Auld <matthew.auld@intel.com>,
	Matthew Brost <matthew.brost@intel.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Lucas De Marchi <lucas.demarchi@intel.com>,
	=?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 26 Nov 2025 14:19:10 +0100
Message-ID: <20251126131914.149445-3-phasta@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251126131914.149445-2-phasta@kernel.org>
References: <20251126131914.149445-2-phasta@kernel.org>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: phasta@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JPRNJA3FUQ3ZDED4RASBINT5TY6MTEZ3
X-Message-ID-Hash: JPRNJA3FUQ3ZDED4RASBINT5TY6MTEZ3
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:02 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, rust-for-linux@vger.kernel.org, Philipp Stanner <phasta@kernel.org>, Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/6] dma-buf/dma-fence: Add dma_fence_test_signaled_flag()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JPRNJA3FUQ3ZDED4RASBINT5TY6MTEZ3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[3386];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,padovan.org,amd.com,gmail.com,ffwll.ch,linux.intel.com,intel.com,ursulin.net,kernel.org,suse.de];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	NEURAL_HAM(-0.00)[-0.884];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,igalia.com:email]
X-Rspamd-Queue-Id: C456F410D0F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The dma_fence framework checks at many places whether the signaled flag
of a fence is already set. The code can be simplified and made more
readable by providing a helper function for that.

Add dma_fence_test_signaled_flag(), which only checks whether a fence is
signaled. Use it internally.

Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Signed-off-by: Philipp Stanner <phasta@kernel.org>
---
 drivers/dma-buf/dma-fence.c | 19 +++++++++----------
 include/linux/dma-fence.h   | 24 ++++++++++++++++++++++--
 2 files changed, 31 insertions(+), 12 deletions(-)

diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
index 39e6f93dc310..25117a906846 100644
--- a/drivers/dma-buf/dma-fence.c
+++ b/drivers/dma-buf/dma-fence.c
@@ -372,8 +372,7 @@ int dma_fence_signal_timestamp_locked(struct dma_fence *fence,
 
 	lockdep_assert_held(fence->lock);
 
-	if (unlikely(test_and_set_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
-				      &fence->flags)))
+	if (unlikely(dma_fence_test_signaled_flag(fence)))
 		return -EINVAL;
 
 	/* Stash the cb_list before replacing it with the timestamp */
@@ -545,7 +544,7 @@ void dma_fence_release(struct kref *kref)
 	trace_dma_fence_destroy(fence);
 
 	if (!list_empty(&fence->cb_list) &&
-	    !test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
+	    !dma_fence_test_signaled_flag(fence)) {
 		const char __rcu *timeline;
 		const char __rcu *driver;
 		unsigned long flags;
@@ -602,7 +601,7 @@ static bool __dma_fence_enable_signaling(struct dma_fence *fence)
 	was_set = test_and_set_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
 				   &fence->flags);
 
-	if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
+	if (dma_fence_test_signaled_flag(fence))
 		return false;
 
 	if (!was_set && fence->ops->enable_signaling) {
@@ -666,7 +665,7 @@ int dma_fence_add_callback(struct dma_fence *fence, struct dma_fence_cb *cb,
 	if (WARN_ON(!fence || !func))
 		return -EINVAL;
 
-	if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
+	if (dma_fence_test_signaled_flag(fence)) {
 		INIT_LIST_HEAD(&cb->node);
 		return -ENOENT;
 	}
@@ -783,7 +782,7 @@ dma_fence_default_wait(struct dma_fence *fence, bool intr, signed long timeout)
 
 	spin_lock_irqsave(fence->lock, flags);
 
-	if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
+	if (dma_fence_test_signaled_flag(fence))
 		goto out;
 
 	if (intr && signal_pending(current)) {
@@ -800,7 +799,7 @@ dma_fence_default_wait(struct dma_fence *fence, bool intr, signed long timeout)
 	cb.task = current;
 	list_add(&cb.base.node, &fence->cb_list);
 
-	while (!test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags) && ret > 0) {
+	while (!dma_fence_test_signaled_flag(fence) && ret > 0) {
 		if (intr)
 			__set_current_state(TASK_INTERRUPTIBLE);
 		else
@@ -832,7 +831,7 @@ dma_fence_test_signaled_any(struct dma_fence **fences, uint32_t count,
 
 	for (i = 0; i < count; ++i) {
 		struct dma_fence *fence = fences[i];
-		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
+		if (dma_fence_test_signaled_flag(fence)) {
 			if (idx)
 				*idx = i;
 			return true;
@@ -1108,7 +1107,7 @@ const char __rcu *dma_fence_driver_name(struct dma_fence *fence)
 	RCU_LOCKDEP_WARN(!rcu_read_lock_held(),
 			 "RCU protection is required for safe access to returned string");
 
-	if (!test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
+	if (!dma_fence_test_signaled_flag(fence))
 		return fence->ops->get_driver_name(fence);
 	else
 		return "detached-driver";
@@ -1140,7 +1139,7 @@ const char __rcu *dma_fence_timeline_name(struct dma_fence *fence)
 	RCU_LOCKDEP_WARN(!rcu_read_lock_held(),
 			 "RCU protection is required for safe access to returned string");
 
-	if (!test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
+	if (!dma_fence_test_signaled_flag(fence))
 		return fence->ops->get_timeline_name(fence);
 	else
 		return "signaled-timeline";
diff --git a/include/linux/dma-fence.h b/include/linux/dma-fence.h
index 64639e104110..19972f5d176f 100644
--- a/include/linux/dma-fence.h
+++ b/include/linux/dma-fence.h
@@ -401,6 +401,26 @@ void dma_fence_enable_sw_signaling(struct dma_fence *fence);
 const char __rcu *dma_fence_driver_name(struct dma_fence *fence);
 const char __rcu *dma_fence_timeline_name(struct dma_fence *fence);
 
+/*
+ * dma_fence_test_signaled_flag - Only check whether a fence is signaled yet.
+ * @fence: the fence to check
+ *
+ * This function just checks whether @fence is signaled, without interacting
+ * with the fence in any way. The user must, therefore, ensure through other
+ * means that fences get signaled eventually.
+ *
+ * This function uses test_bit(), which is thread-safe. Naturally, this function
+ * should be used opportunistically; a fence could get signaled at any moment
+ * after the check is done.
+ *
+ * Return: true if signaled, false otherwise.
+ */
+static inline bool
+dma_fence_test_signaled_flag(struct dma_fence *fence)
+{
+	return test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags);
+}
+
 /**
  * dma_fence_is_signaled_locked - Return an indication if the fence
  *                                is signaled yet.
@@ -418,7 +438,7 @@ const char __rcu *dma_fence_timeline_name(struct dma_fence *fence);
 static inline bool
 dma_fence_is_signaled_locked(struct dma_fence *fence)
 {
-	if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
+	if (dma_fence_test_signaled_flag(fence))
 		return true;
 
 	if (fence->ops->signaled && fence->ops->signaled(fence)) {
@@ -448,7 +468,7 @@ dma_fence_is_signaled_locked(struct dma_fence *fence)
 static inline bool
 dma_fence_is_signaled(struct dma_fence *fence)
 {
-	if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
+	if (dma_fence_test_signaled_flag(fence))
 		return true;
 
 	if (fence->ops->signaled && fence->ops->signaled(fence)) {
-- 
2.49.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
