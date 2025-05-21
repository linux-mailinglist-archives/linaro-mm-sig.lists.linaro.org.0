Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F0BABFE63
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 May 2025 22:49:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7F2344463C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 May 2025 20:49:00 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 64B4640431
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 May 2025 20:48:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=PLjUeNoZ;
	spf=pass (lists.linaro.org: domain of lyude@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=lyude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1747860529;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0Xzufaa4aZgtFIYzj8zYYCFRxQVb/zwFe5HxzSZJWxY=;
	b=PLjUeNoZ+p2BvYEiMaeUiPmOM2xa7Zq7QPZG6/Pel4pOqKRfiyVWxdKSv8Ns35lYYB3Xvi
	/Kk1S29uF/Ym5Ry0Vigbozb5vitOsMzlmO4Sbdq6LHrLDBXzd6vox7mpYkhZYFXFnGsjOE
	Lmlq/JlhLDG/7snbVJopQHG9CmRA29k=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-641-cHEFoZDJMu2ztuwO7P5b-Q-1; Wed,
 21 May 2025 16:48:45 -0400
X-MC-Unique: cHEFoZDJMu2ztuwO7P5b-Q-1
X-Mimecast-MFC-AGG-ID: cHEFoZDJMu2ztuwO7P5b-Q_1747860520
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A474D180036E;
	Wed, 21 May 2025 20:48:40 +0000 (UTC)
Received: from chopper.redhat.com (unknown [10.22.80.100])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id AED9F19560B7;
	Wed, 21 May 2025 20:48:35 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org,
	rust-for-linux@vger.kernel.org,
	linux-kernel@vger.kernel.org
Date: Wed, 21 May 2025 16:29:18 -0400
Message-ID: <20250521204654.1610607-12-lyude@redhat.com>
In-Reply-To: <20250521204654.1610607-1-lyude@redhat.com>
References: <20250521204654.1610607-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-1.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[170.10.129.124:from];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[us-smtp-delivery-124.mimecast.com:rdns,us-smtp-delivery-124.mimecast.com:helo];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[redhat.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[170.10.129.124:from];
	FREEMAIL_CC(0.00)[kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,proton.me,google.com,umich.edu,linaro.org,amd.com,collabora.com,asahilina.net,rosenzweig.io,lists.freedesktop.org,vger.kernel.org,lists.linaro.org]
X-Rspamd-Queue-Id: 64B4640431
X-Spamd-Bar: -
Message-ID-Hash: JIINMD2BCNQ2UKYKLYZRB3TBWHI5VHQX
X-Message-ID-Hash: JIINMD2BCNQ2UKYKLYZRB3TBWHI5VHQX
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Danilo Krummrich <dakr@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?UTF-8?q?Bj=C3=B6rn=20Roy=20Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Daniel Almeida <daniel.almeida@collabora.com>, Asahi Lina <lina@asahilina.net>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, "open list:DRM DRIVER FOR NVIDIA GPUS [RUST]" <nouveau@lists.freedesktop.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FR
 AMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 11/12] rust: drm: gem: Add export() callback
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JIINMD2BCNQ2UKYKLYZRB3TBWHI5VHQX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This introduces an optional export() callback for GEM objects, which is
used to implement the drm_gem_object_funcs->export function.

Signed-off-by: Lyude Paul <lyude@redhat.com>
---
 drivers/gpu/drm/nova/gem.rs  |  1 +
 rust/kernel/drm/gem/mod.rs   | 73 +++++++++++++++++++++++++++++++++++-
 rust/kernel/drm/gem/shmem.rs |  6 ++-
 3 files changed, 77 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/nova/gem.rs b/drivers/gpu/drm/nova/gem.rs
index f2f23320110dd..6cc7a65a50fae 100644
--- a/drivers/gpu/drm/nova/gem.rs
+++ b/drivers/gpu/drm/nova/gem.rs
@@ -16,6 +16,7 @@
 #[pin_data]
 pub(crate) struct NovaObject {}
 
+#[vtable]
 impl gem::BaseDriverObject for NovaObject {
     type Driver = NovaDriver;
     type Object = gem::Object<Self>;
diff --git a/rust/kernel/drm/gem/mod.rs b/rust/kernel/drm/gem/mod.rs
index 6d87e75690d2f..ef697f323e52c 100644
--- a/rust/kernel/drm/gem/mod.rs
+++ b/rust/kernel/drm/gem/mod.rs
@@ -10,7 +10,8 @@
     alloc::flags::*,
     bindings, drm::{self, private::Sealed},
     drm::driver::{AllocImpl, AllocOps},
-    error::{to_result, Result},
+    dma_buf,
+    error::{to_result, from_err_ptr, Result},
     prelude::*,
     types::{ARef, AlwaysRefCounted, Opaque},
 };
@@ -44,6 +45,7 @@ fn as_ref(&self) -> &kernel::drm::gem::OpaqueObject<D> {
 pub(crate) use impl_as_opaque;
 
 /// GEM object functions, which must be implemented by drivers.
+#[vtable]
 pub trait BaseDriverObject: Sync + Send + Sized {
     /// Parent `Driver` for this object.
     type Driver: drm::Driver;
@@ -68,6 +70,11 @@ fn open(_obj: &Self::Object, _file: &DriverFile<Self>) -> Result {
 
     /// Close a handle to an existing object, associated with a File.
     fn close(_obj: &Self::Object, _file: &DriverFile<Self>) {}
+
+    /// Optional handle for exporting a gem object.
+    fn export(_obj: &Self::Object, _flags: u32) -> Result<DmaBuf<Self::Object>> {
+        unimplemented!()
+    }
 }
 
 /// Trait that represents a GEM object subtype
@@ -137,6 +144,21 @@ extern "C" fn close_callback<T: BaseDriverObject>(
     T::close(obj, file);
 }
 
+extern "C" fn export_callback<T: BaseDriverObject>(
+    raw_obj: *mut bindings::drm_gem_object,
+    flags: i32,
+) -> *mut bindings::dma_buf {
+    // SAFETY: `export_callback` is specified in the AllocOps structure for `Object<T>`, ensuring
+    // that `raw_obj` is contained within a `Object<T>`.
+    let obj = unsafe { T::Object::as_ref(raw_obj) };
+
+    match T::export(obj, flags as _) {
+        // DRM takes a hold of the reference
+        Ok(buf) => buf.into_raw(),
+        Err(e) => e.to_ptr(),
+    }
+}
+
 impl<T: BaseDriverObject> IntoGEMObject for Object<T> {
     fn as_raw(&self) -> *mut bindings::drm_gem_object {
         self.obj.get()
@@ -247,7 +269,11 @@ impl<T: BaseDriverObject> Object<T> {
         open: Some(open_callback::<T>),
         close: Some(close_callback::<T>),
         print_info: None,
-        export: None,
+        export: if T::HAS_EXPORT {
+            Some(export_callback::<T>)
+        } else {
+            None
+        },
         pin: None,
         unpin: None,
         get_sg_table: None,
@@ -376,6 +402,49 @@ fn as_raw(&self) -> *mut bindings::drm_gem_object {
 
 impl<D: drm::Driver> Sealed for OpaqueObject<D> {}
 
+/// A [`dma_buf::DmaBuf`] which has been exported from a GEM object.
+///
+/// The [`dma_buf::DmaBuf`] will be released when this type is dropped.
+///
+/// # Invariants
+///
+/// - `self.0` points to a valid initialized [`dma_buf::DmaBuf`] for the lifetime of this object.
+/// - The GEM object from which this [`dma_buf::DmaBuf`] was exported from is guaranteed to be of
+///   type `T`.
+pub struct DmaBuf<T: IntoGEMObject>(NonNull<dma_buf::DmaBuf>, PhantomData<T>);
+
+impl<T: IntoGEMObject> Deref for DmaBuf<T> {
+    type Target = dma_buf::DmaBuf;
+
+    #[inline]
+    fn deref(&self) -> &Self::Target {
+        // SAFETY: This pointer is guaranteed to be valid by our type invariants.
+        unsafe { self.0.as_ref() }
+    }
+}
+
+impl<T: IntoGEMObject> Drop for DmaBuf<T> {
+    #[inline]
+    fn drop(&mut self) {
+        // SAFETY:
+        // - `dma_buf::DmaBuf` is guaranteed to have an identical layout to `struct dma_buf`
+        //   by its type invariants.
+        // - We hold the last reference to this `DmaBuf`, making it safe to destroy.
+        unsafe { bindings::drm_gem_dmabuf_release(self.0.cast().as_ptr()) }
+    }
+}
+
+impl<T: IntoGEMObject> DmaBuf<T> {
+    /// Leak the reference for this [`DmaBuf`] and return a raw pointer to it.
+    #[inline]
+    pub(crate) fn into_raw(self) -> *mut bindings::dma_buf {
+        let dma_ptr = self.as_raw();
+
+        core::mem::forget(self);
+        dma_ptr
+    }
+}
+
 pub(super) const fn create_fops() -> bindings::file_operations {
     // SAFETY: As by the type invariant, it is safe to initialize `bindings::file_operations`
     // zeroed.
diff --git a/rust/kernel/drm/gem/shmem.rs b/rust/kernel/drm/gem/shmem.rs
index bff038df93334..799f15c38cc36 100644
--- a/rust/kernel/drm/gem/shmem.rs
+++ b/rust/kernel/drm/gem/shmem.rs
@@ -77,7 +77,11 @@ impl<T: BaseDriverObject> Object<T> {
         open: Some(super::open_callback::<T>),
         close: Some(super::close_callback::<T>),
         print_info: Some(bindings::drm_gem_shmem_object_print_info),
-        export: None,
+        export: if T::HAS_EXPORT {
+            Some(super::export_callback::<T>)
+        } else {
+            None
+        },
         pin: Some(bindings::drm_gem_shmem_object_pin),
         unpin: Some(bindings::drm_gem_shmem_object_unpin),
         get_sg_table: Some(bindings::drm_gem_shmem_object_get_sg_table),
-- 
2.49.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
