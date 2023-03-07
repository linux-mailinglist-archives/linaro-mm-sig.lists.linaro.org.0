Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2644A6BBA6C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:05:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 34B8B3F329
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:05:44 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id E9EC73F09B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Mar 2023 14:27:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b=NxIVR99E;
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: linasend@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id 125B5426E8;
	Tue,  7 Mar 2023 14:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678199268;
	bh=RXHMryixfrrNFrvpRW0yNj/9C2ku8y/xcsih3nh/K2g=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=NxIVR99EHxOkBhHnp9AFtyvk5YP6jlHLfi/ymoHar6CZ0n7F505Dd6iVAMRTL5QRp
	 +4SIidMOCx4/g+KSGpisxU2/M5dz7+AESAreRIsoj9D6ABquOse1rW23VrVV5DYbdM
	 REyTm1j7bW0+bVAeTDeyoqOU7COJjNXzHkCy4kyohj45fj1MAlXMoBWKCalQdM7zMj
	 MtpJdv4agSVmqjY+7miY7bQxiwl1gmN1DLafPoxC+ALSEJyPXxHL/+LeObnZ25V6Jg
	 j2vb34b1egvDVkBqiB9E+SgBbgXQ3G1g7lZs3x0lH84VkYPBFju/+dFy0LwyhA2PwA
	 0Rm7RI3NbyHYg==
From: Asahi Lina <lina@asahilina.net>
Date: Tue, 07 Mar 2023 23:25:34 +0900
MIME-Version: 1.0
Message-Id: <20230307-rust-drm-v1-9-917ff5bc80a8@asahilina.net>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
In-Reply-To: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
 Wedson Almeida Filho <wedsonaf@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1678199191; l=5195;
 i=lina@asahilina.net; s=20230221; h=from:subject:message-id;
 bh=RXHMryixfrrNFrvpRW0yNj/9C2ku8y/xcsih3nh/K2g=;
 b=8Rqbn6Odm2BgzSdkvy7KVrq1XGagKtlDqBAW0tDTf1KXpEEO3aWA7ck+4e3ZI7TTnura3hbcK
 h1M+YNWSgnKCLVM3okF8IHi1ZpkpnTFRO7R1YkEfo84kVI4X2h78Sq4
X-Developer-Key: i=lina@asahilina.net; a=ed25519;
 pk=Qn8jZuOtR1m5GaiDfTrAoQ4NE1XoYVZ/wmt5YtXWFC4=
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E9EC73F09B
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[asahilina.net,quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[asahilina.net:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[29];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:30880, ipnet:212.63.192.0/19, country:SE];
	DKIM_TRACE(0.00)[asahilina.net:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[]
X-MailFrom: lina@asahilina.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: T3FPLGPSIFQPRIRBNUCTEDBSNZROCJTG
X-Message-ID-Hash: T3FPLGPSIFQPRIRBNUCTEDBSNZROCJTG
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:02:39 +0000
CC: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev, Asahi Lina <lina@asahilina.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 09/18] rust: drm: syncobj: Add DRM Sync Object abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T3FPLGPSIFQPRIRBNUCTEDBSNZROCJTG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

DRM Sync Objects are a container for a DMA fence, and can be waited on
signaled, exported, and imported from userspace. Add a Rust abstraction
so Rust DRM drivers can support this functionality.

Signed-off-by: Asahi Lina <lina@asahilina.net>
---
 rust/bindings/bindings_helper.h |  1 +
 rust/helpers.c                  | 19 ++++++++++
 rust/kernel/drm/mod.rs          |  1 +
 rust/kernel/drm/syncobj.rs      | 77 +++++++++++++++++++++++++++++++++++++++++
 4 files changed, 98 insertions(+)

diff --git a/rust/bindings/bindings_helper.h b/rust/bindings/bindings_helper.h
index 705af292a5b4..b6696011f3a4 100644
--- a/rust/bindings/bindings_helper.h
+++ b/rust/bindings/bindings_helper.h
@@ -12,6 +12,7 @@
 #include <drm/drm_gem.h>
 #include <drm/drm_gem_shmem_helper.h>
 #include <drm/drm_ioctl.h>
+#include <drm/drm_syncobj.h>
 #include <linux/delay.h>
 #include <linux/device.h>
 #include <linux/dma-fence.h>
diff --git a/rust/helpers.c b/rust/helpers.c
index 8e906a7a7d8a..11965b1e2f4e 100644
--- a/rust/helpers.c
+++ b/rust/helpers.c
@@ -20,6 +20,7 @@
 
 #include <drm/drm_gem.h>
 #include <drm/drm_gem_shmem_helper.h>
+#include <drm/drm_syncobj.h>
 #include <linux/bug.h>
 #include <linux/build_bug.h>
 #include <linux/device.h>
@@ -461,6 +462,24 @@ __u64 rust_helper_drm_vma_node_offset_addr(struct drm_vma_offset_node *node)
 }
 EXPORT_SYMBOL_GPL(rust_helper_drm_vma_node_offset_addr);
 
+void rust_helper_drm_syncobj_get(struct drm_syncobj *obj)
+{
+	drm_syncobj_get(obj);
+}
+EXPORT_SYMBOL_GPL(rust_helper_drm_syncobj_get);
+
+void rust_helper_drm_syncobj_put(struct drm_syncobj *obj)
+{
+	drm_syncobj_put(obj);
+}
+EXPORT_SYMBOL_GPL(rust_helper_drm_syncobj_put);
+
+struct dma_fence *rust_helper_drm_syncobj_fence_get(struct drm_syncobj *syncobj)
+{
+	return drm_syncobj_fence_get(syncobj);
+}
+EXPORT_SYMBOL_GPL(rust_helper_drm_syncobj_fence_get);
+
 #ifdef CONFIG_DRM_GEM_SHMEM_HELPER
 
 void rust_helper_drm_gem_shmem_object_free(struct drm_gem_object *obj)
diff --git a/rust/kernel/drm/mod.rs b/rust/kernel/drm/mod.rs
index 73fab2dee3af..dae98826edfd 100644
--- a/rust/kernel/drm/mod.rs
+++ b/rust/kernel/drm/mod.rs
@@ -8,3 +8,4 @@ pub mod file;
 pub mod gem;
 pub mod ioctl;
 pub mod mm;
+pub mod syncobj;
diff --git a/rust/kernel/drm/syncobj.rs b/rust/kernel/drm/syncobj.rs
new file mode 100644
index 000000000000..10eed05eb27a
--- /dev/null
+++ b/rust/kernel/drm/syncobj.rs
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+
+//! DRM Sync Objects
+//!
+//! C header: [`include/linux/drm/drm_syncobj.h`](../../../../include/linux/drm/drm_syncobj.h)
+
+use crate::{bindings, dma_fence::*, drm, error::Result, prelude::*};
+
+/// A DRM Sync Object
+///
+/// # Invariants
+/// ptr is a valid pointer to a drm_syncobj and we own a reference to it.
+pub struct SyncObj {
+    ptr: *mut bindings::drm_syncobj,
+}
+
+impl SyncObj {
+    /// Looks up a sync object by its handle for a given `File`.
+    pub fn lookup_handle(file: &impl drm::file::GenericFile, handle: u32) -> Result<SyncObj> {
+        // SAFETY: The arguments are all valid per the type invariants.
+        let ptr = unsafe { bindings::drm_syncobj_find(file.raw() as *mut _, handle) };
+
+        if ptr.is_null() {
+            Err(ENOENT)
+        } else {
+            Ok(SyncObj { ptr })
+        }
+    }
+
+    /// Returns the DMA fence associated with this sync object, if any.
+    pub fn fence_get(&self) -> Option<Fence> {
+        let fence = unsafe { bindings::drm_syncobj_fence_get(self.ptr) };
+        if fence.is_null() {
+            None
+        } else {
+            // SAFETY: The pointer is non-NULL and drm_syncobj_fence_get acquired an
+            // additional reference.
+            Some(unsafe { Fence::from_raw(fence) })
+        }
+    }
+
+    /// Replaces the DMA fence with a new one, or removes it if fence is None.
+    pub fn replace_fence(&self, fence: Option<&Fence>) {
+        unsafe {
+            bindings::drm_syncobj_replace_fence(
+                self.ptr,
+                fence.map_or(core::ptr::null_mut(), |a| a.raw()),
+            )
+        };
+    }
+
+    /// Adds a new timeline point to the syncobj.
+    pub fn add_point(&self, chain: FenceChain, fence: &Fence, point: u64) {
+        // SAFETY: All arguments should be valid per the respective type invariants.
+        // This takes over the FenceChain ownership.
+        unsafe { bindings::drm_syncobj_add_point(self.ptr, chain.into_raw(), fence.raw(), point) };
+    }
+}
+
+impl Drop for SyncObj {
+    fn drop(&mut self) {
+        // SAFETY: We own a reference to this syncobj.
+        unsafe { bindings::drm_syncobj_put(self.ptr) };
+    }
+}
+
+impl Clone for SyncObj {
+    fn clone(&self) -> Self {
+        // SAFETY: `ptr` is valid per the type invariant and we own a reference to it.
+        unsafe { bindings::drm_syncobj_get(self.ptr) };
+        SyncObj { ptr: self.ptr }
+    }
+}
+
+// SAFETY: drm_syncobj operations are internally locked.
+unsafe impl Sync for SyncObj {}
+unsafe impl Send for SyncObj {}

-- 
2.35.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
