Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E86A76BBA67
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:03:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F11F13F472
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:03:45 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id 3F0103F09B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Mar 2023 14:27:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b=jWGXNdok;
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: linasend@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id 1D5B642528;
	Tue,  7 Mar 2023 14:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678199230;
	bh=F1SRAlKo7BSIaLQ7gj8v5YlQfBwivdnzeJ8qnwB97A4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=jWGXNdok7booYlvp21MSywrjaBbrNPUOU0mT/8sAntEMvNSBysxntLc98cv75xdYX
	 RCg5ekT5IfZ64CjaIwqYAHnRPzV0dg4ueuM5PywDJLOQXLV+mXp9ChItffn2Tw//mj
	 IgoNtG0Ir/bLvMRfauIUURFSixaOirYJxf6Q967INfBaKJ/RJYBAMbCluh6QM/w1Yq
	 HAUu4C9jJb4E1HshphKRyDPOn0poCGThNi7WvyL/qXF6/JXRrcXHLUDLfS+bNLh427
	 hd2mLg7zRccSoXkAo+kYOoFpHgWtQObypyS1+Rz7x8gmNGF2zunralOQU3+uKMn3x+
	 ch1YhPHtgI3ow==
From: Asahi Lina <lina@asahilina.net>
Date: Tue, 07 Mar 2023 23:25:29 +0900
MIME-Version: 1.0
Message-Id: <20230307-rust-drm-v1-4-917ff5bc80a8@asahilina.net>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1678199191; l=16269;
 i=lina@asahilina.net; s=20230221; h=from:subject:message-id;
 bh=F1SRAlKo7BSIaLQ7gj8v5YlQfBwivdnzeJ8qnwB97A4=;
 b=nXvhHnuR0S4HW6xMU182DkD+eGloZ8eCqt3T0yyYFehUpkIdq6wh+Tsm/p0kPWP2XWtbmp6Ix
 ZKYhDt6DYHVBwLvs6pXLABRbM2g0wJ1QRbmnk+fGSuC5ChaB4x0OthD
X-Developer-Key: i=lina@asahilina.net; a=ed25519;
 pk=Qn8jZuOtR1m5GaiDfTrAoQ4NE1XoYVZ/wmt5YtXWFC4=
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3F0103F09B
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
Message-ID-Hash: ZREZ6TX3SE3FB74IPHJYJSZVIRPCULT5
X-Message-ID-Hash: ZREZ6TX3SE3FB74IPHJYJSZVIRPCULT5
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:02:20 +0000
CC: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev, Asahi Lina <lina@asahilina.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 04/18] rust: drm: gem: Add GEM object abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZREZ6TX3SE3FB74IPHJYJSZVIRPCULT5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The DRM GEM subsystem is the DRM memory management subsystem used by
most modern drivers. Add a Rust abstraction to allow Rust DRM driver
implementations to use it.

Signed-off-by: Asahi Lina <lina@asahilina.net>
---
 rust/bindings/bindings_helper.h |   1 +
 rust/helpers.c                  |  23 +++
 rust/kernel/drm/drv.rs          |   4 +-
 rust/kernel/drm/gem/mod.rs      | 374 ++++++++++++++++++++++++++++++++++++++++
 rust/kernel/drm/mod.rs          |   1 +
 5 files changed, 401 insertions(+), 2 deletions(-)

diff --git a/rust/bindings/bindings_helper.h b/rust/bindings/bindings_helper.h
index 7d7828faf89c..7183dfe6473f 100644
--- a/rust/bindings/bindings_helper.h
+++ b/rust/bindings/bindings_helper.h
@@ -9,6 +9,7 @@
 #include <drm/drm_device.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_file.h>
+#include <drm/drm_gem.h>
 #include <drm/drm_ioctl.h>
 #include <linux/delay.h>
 #include <linux/device.h>
diff --git a/rust/helpers.c b/rust/helpers.c
index 73b2ce607f27..78ec4162b03b 100644
--- a/rust/helpers.c
+++ b/rust/helpers.c
@@ -18,6 +18,7 @@
  * accidentally exposed.
  */
 
+#include <drm/drm_gem.h>
 #include <linux/bug.h>
 #include <linux/build_bug.h>
 #include <linux/device.h>
@@ -374,6 +375,28 @@ void rust_helper_init_completion(struct completion *c)
 }
 EXPORT_SYMBOL_GPL(rust_helper_init_completion);
 
+#ifdef CONFIG_DRM
+
+void rust_helper_drm_gem_object_get(struct drm_gem_object *obj)
+{
+	drm_gem_object_get(obj);
+}
+EXPORT_SYMBOL_GPL(rust_helper_drm_gem_object_get);
+
+void rust_helper_drm_gem_object_put(struct drm_gem_object *obj)
+{
+	drm_gem_object_put(obj);
+}
+EXPORT_SYMBOL_GPL(rust_helper_drm_gem_object_put);
+
+__u64 rust_helper_drm_vma_node_offset_addr(struct drm_vma_offset_node *node)
+{
+	return drm_vma_node_offset_addr(node);
+}
+EXPORT_SYMBOL_GPL(rust_helper_drm_vma_node_offset_addr);
+
+#endif
+
 /*
  * We use `bindgen`'s `--size_t-is-usize` option to bind the C `size_t` type
  * as the Rust `usize` type, so we can use it in contexts where Rust
diff --git a/rust/kernel/drm/drv.rs b/rust/kernel/drm/drv.rs
index 1dcb651e1417..c138352cb489 100644
--- a/rust/kernel/drm/drv.rs
+++ b/rust/kernel/drm/drv.rs
@@ -126,7 +126,7 @@ pub struct AllocOps {
 }
 
 /// Trait for memory manager implementations. Implemented internally.
-pub trait AllocImpl: Sealed {
+pub trait AllocImpl: Sealed + drm::gem::IntoGEMObject {
     /// The C callback operations for this memory manager.
     const ALLOC_OPS: AllocOps;
 }
@@ -263,7 +263,7 @@ impl<T: Driver> Registration<T> {
             drm,
             registered: false,
             vtable,
-            fops: Default::default(), // TODO: GEM abstraction
+            fops: drm::gem::create_fops(),
             _pin: PhantomPinned,
             _p: PhantomData,
         })
diff --git a/rust/kernel/drm/gem/mod.rs b/rust/kernel/drm/gem/mod.rs
new file mode 100644
index 000000000000..8a7d99613718
--- /dev/null
+++ b/rust/kernel/drm/gem/mod.rs
@@ -0,0 +1,374 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+
+//! DRM GEM API
+//!
+//! C header: [`include/linux/drm/drm_gem.h`](../../../../include/linux/drm/drm_gem.h)
+
+use alloc::boxed::Box;
+
+use crate::{
+    bindings,
+    drm::{device, drv, file},
+    error::{to_result, Result},
+    prelude::*,
+};
+use core::{mem, mem::ManuallyDrop, ops::Deref, ops::DerefMut};
+
+/// GEM object functions, which must be implemented by drivers.
+pub trait BaseDriverObject<T: BaseObject>: Sync + Send + Sized {
+    /// Create a new driver data object for a GEM object of a given size.
+    fn new(dev: &device::Device<T::Driver>, size: usize) -> Result<Self>;
+
+    /// Open a new handle to an existing object, associated with a File.
+    fn open(
+        _obj: &<<T as IntoGEMObject>::Driver as drv::Driver>::Object,
+        _file: &file::File<<<T as IntoGEMObject>::Driver as drv::Driver>::File>,
+    ) -> Result {
+        Ok(())
+    }
+
+    /// Close a handle to an existing object, associated with a File.
+    fn close(
+        _obj: &<<T as IntoGEMObject>::Driver as drv::Driver>::Object,
+        _file: &file::File<<<T as IntoGEMObject>::Driver as drv::Driver>::File>,
+    ) {
+    }
+}
+
+/// Trait that represents a GEM object subtype
+pub trait IntoGEMObject: Sized + crate::private::Sealed {
+    /// Owning driver for this type
+    type Driver: drv::Driver;
+
+    /// Returns a pointer to the raw `drm_gem_object` structure, which must be valid as long as
+    /// this owning object is valid.
+    fn gem_obj(&self) -> *mut bindings::drm_gem_object;
+
+    /// Returns a reference to the raw `drm_gem_object` structure, which must be valid as long as
+    /// this owning object is valid.
+    fn gem_ref(&self) -> &bindings::drm_gem_object {
+        // SAFETY: gem_obj() must be valid per the above requirement.
+        unsafe { &*self.gem_obj() }
+    }
+
+    /// Converts a pointer to a `drm_gem_object` into a pointer to this type.
+    fn from_gem_obj(obj: *mut bindings::drm_gem_object) -> *mut Self;
+}
+
+/// Trait which must be implemented by drivers using base GEM objects.
+pub trait DriverObject: BaseDriverObject<Object<Self>> {
+    /// Parent `Driver` for this object.
+    type Driver: drv::Driver;
+}
+
+unsafe extern "C" fn free_callback<T: DriverObject>(obj: *mut bindings::drm_gem_object) {
+    // SAFETY: All of our objects are Object<T>.
+    let this = crate::container_of!(obj, Object<T>, obj) as *mut Object<T>;
+
+    // SAFETY: The pointer we got has to be valid
+    unsafe { bindings::drm_gem_object_release(obj) };
+
+    // SAFETY: All of our objects are allocated via Box<>, and we're in the
+    // free callback which guarantees this object has zero remaining references,
+    // so we can drop it
+    unsafe { Box::from_raw(this) };
+}
+
+unsafe extern "C" fn open_callback<T: BaseDriverObject<U>, U: BaseObject>(
+    raw_obj: *mut bindings::drm_gem_object,
+    raw_file: *mut bindings::drm_file,
+) -> core::ffi::c_int {
+    // SAFETY: The pointer we got has to be valid.
+    let file = unsafe {
+        file::File::<<<U as IntoGEMObject>::Driver as drv::Driver>::File>::from_raw(raw_file)
+    };
+    let obj =
+        <<<U as IntoGEMObject>::Driver as drv::Driver>::Object as IntoGEMObject>::from_gem_obj(
+            raw_obj,
+        );
+
+    // SAFETY: from_gem_obj() returns a valid pointer as long as the type is
+    // correct and the raw_obj we got is valid.
+    match T::open(unsafe { &*obj }, &file) {
+        Err(e) => e.to_kernel_errno(),
+        Ok(()) => 0,
+    }
+}
+
+unsafe extern "C" fn close_callback<T: BaseDriverObject<U>, U: BaseObject>(
+    raw_obj: *mut bindings::drm_gem_object,
+    raw_file: *mut bindings::drm_file,
+) {
+    // SAFETY: The pointer we got has to be valid.
+    let file = unsafe {
+        file::File::<<<U as IntoGEMObject>::Driver as drv::Driver>::File>::from_raw(raw_file)
+    };
+    let obj =
+        <<<U as IntoGEMObject>::Driver as drv::Driver>::Object as IntoGEMObject>::from_gem_obj(
+            raw_obj,
+        );
+
+    // SAFETY: from_gem_obj() returns a valid pointer as long as the type is
+    // correct and the raw_obj we got is valid.
+    T::close(unsafe { &*obj }, &file);
+}
+
+impl<T: DriverObject> IntoGEMObject for Object<T> {
+    type Driver = T::Driver;
+
+    fn gem_obj(&self) -> *mut bindings::drm_gem_object {
+        &self.obj as *const _ as *mut _
+    }
+
+    fn from_gem_obj(obj: *mut bindings::drm_gem_object) -> *mut Object<T> {
+        crate::container_of!(obj, Object<T>, obj) as *mut Object<T>
+    }
+}
+
+/// Base operations shared by all GEM object classes
+pub trait BaseObject: IntoGEMObject {
+    /// Returns the size of the object in bytes.
+    fn size(&self) -> usize {
+        self.gem_ref().size
+    }
+
+    /// Creates a new reference to the object.
+    fn reference(&self) -> ObjectRef<Self> {
+        // SAFETY: Having a reference to an Object implies holding a GEM reference
+        unsafe {
+            bindings::drm_gem_object_get(self.gem_obj());
+        }
+        ObjectRef {
+            ptr: self as *const _,
+        }
+    }
+
+    /// Creates a new handle for the object associated with a given `File`
+    /// (or returns an existing one).
+    fn create_handle(
+        &self,
+        file: &file::File<<<Self as IntoGEMObject>::Driver as drv::Driver>::File>,
+    ) -> Result<u32> {
+        let mut handle: u32 = 0;
+        // SAFETY: The arguments are all valid per the type invariants.
+        to_result(unsafe {
+            bindings::drm_gem_handle_create(file.raw() as *mut _, self.gem_obj(), &mut handle)
+        })?;
+        Ok(handle)
+    }
+
+    /// Looks up an object by its handle for a given `File`.
+    fn lookup_handle(
+        file: &file::File<<<Self as IntoGEMObject>::Driver as drv::Driver>::File>,
+        handle: u32,
+    ) -> Result<ObjectRef<Self>> {
+        // SAFETY: The arguments are all valid per the type invariants.
+        let ptr = unsafe { bindings::drm_gem_object_lookup(file.raw() as *mut _, handle) };
+
+        if ptr.is_null() {
+            Err(ENOENT)
+        } else {
+            Ok(ObjectRef {
+                ptr: ptr as *const _,
+            })
+        }
+    }
+
+    /// Creates an mmap offset to map the object from userspace.
+    fn create_mmap_offset(&self) -> Result<u64> {
+        // SAFETY: The arguments are valid per the type invariant.
+        to_result(unsafe {
+            // TODO: is this threadsafe?
+            bindings::drm_gem_create_mmap_offset(self.gem_obj())
+        })?;
+        Ok(unsafe {
+            bindings::drm_vma_node_offset_addr(&self.gem_ref().vma_node as *const _ as *mut _)
+        })
+    }
+}
+
+impl<T: IntoGEMObject> BaseObject for T {}
+
+/// A base GEM object.
+#[repr(C)]
+pub struct Object<T: DriverObject> {
+    obj: bindings::drm_gem_object,
+    // The DRM core ensures the Device exists as long as its objects exist, so we don't need to
+    // manage the reference count here.
+    dev: ManuallyDrop<device::Device<T::Driver>>,
+    inner: T,
+}
+
+impl<T: DriverObject> Object<T> {
+    /// The size of this object's structure.
+    pub const SIZE: usize = mem::size_of::<Self>();
+
+    const OBJECT_FUNCS: bindings::drm_gem_object_funcs = bindings::drm_gem_object_funcs {
+        free: Some(free_callback::<T>),
+        open: Some(open_callback::<T, Object<T>>),
+        close: Some(close_callback::<T, Object<T>>),
+        print_info: None,
+        export: None,
+        pin: None,
+        unpin: None,
+        get_sg_table: None,
+        vmap: None,
+        vunmap: None,
+        mmap: None,
+        vm_ops: core::ptr::null_mut(),
+    };
+
+    /// Create a new GEM object.
+    pub fn new(dev: &device::Device<T::Driver>, size: usize) -> Result<UniqueObjectRef<Self>> {
+        let mut obj: Box<Self> = Box::try_new(Self {
+            // SAFETY: This struct is expected to be zero-initialized
+            obj: unsafe { mem::zeroed() },
+            // SAFETY: The drm subsystem guarantees that the drm_device will live as long as
+            // the GEM object lives, so we can conjure a reference out of thin air.
+            dev: ManuallyDrop::new(unsafe { device::Device::from_raw(dev.ptr) }),
+            inner: T::new(dev, size)?,
+        })?;
+
+        obj.obj.funcs = &Self::OBJECT_FUNCS;
+        to_result(unsafe {
+            bindings::drm_gem_object_init(dev.raw() as *mut _, &mut obj.obj, size)
+        })?;
+
+        let obj_ref = UniqueObjectRef {
+            ptr: Box::leak(obj),
+        };
+
+        Ok(obj_ref)
+    }
+
+    /// Returns the `Device` that owns this GEM object.
+    pub fn dev(&self) -> &device::Device<T::Driver> {
+        &self.dev
+    }
+}
+
+impl<T: DriverObject> crate::private::Sealed for Object<T> {}
+
+impl<T: DriverObject> Deref for Object<T> {
+    type Target = T;
+
+    fn deref(&self) -> &Self::Target {
+        &self.inner
+    }
+}
+
+impl<T: DriverObject> DerefMut for Object<T> {
+    fn deref_mut(&mut self) -> &mut Self::Target {
+        &mut self.inner
+    }
+}
+
+impl<T: DriverObject> drv::AllocImpl for Object<T> {
+    const ALLOC_OPS: drv::AllocOps = drv::AllocOps {
+        gem_create_object: None,
+        prime_handle_to_fd: Some(bindings::drm_gem_prime_handle_to_fd),
+        prime_fd_to_handle: Some(bindings::drm_gem_prime_fd_to_handle),
+        gem_prime_import: None,
+        gem_prime_import_sg_table: None,
+        gem_prime_mmap: Some(bindings::drm_gem_prime_mmap),
+        dumb_create: None,
+        dumb_map_offset: None,
+        dumb_destroy: None,
+    };
+}
+
+/// A reference-counted shared reference to a base GEM object.
+pub struct ObjectRef<T: IntoGEMObject> {
+    // Invariant: the pointer is valid and initialized, and this ObjectRef owns a reference to it.
+    ptr: *const T,
+}
+
+/// SAFETY: GEM object references are safe to share between threads.
+unsafe impl<T: IntoGEMObject> Send for ObjectRef<T> {}
+unsafe impl<T: IntoGEMObject> Sync for ObjectRef<T> {}
+
+impl<T: IntoGEMObject> Clone for ObjectRef<T> {
+    fn clone(&self) -> Self {
+        self.reference()
+    }
+}
+
+impl<T: IntoGEMObject> Drop for ObjectRef<T> {
+    fn drop(&mut self) {
+        // SAFETY: Having an ObjectRef implies holding a GEM reference.
+        // The free callback will take care of deallocation.
+        unsafe {
+            bindings::drm_gem_object_put((*self.ptr).gem_obj());
+        }
+    }
+}
+
+impl<T: IntoGEMObject> Deref for ObjectRef<T> {
+    type Target = T;
+
+    fn deref(&self) -> &Self::Target {
+        // SAFETY: The pointer is valid per the invariant
+        unsafe { &*self.ptr }
+    }
+}
+
+/// A unique reference to a base GEM object.
+pub struct UniqueObjectRef<T: IntoGEMObject> {
+    // Invariant: the pointer is valid and initialized, and this ObjectRef owns the only reference
+    // to it.
+    ptr: *mut T,
+}
+
+impl<T: IntoGEMObject> UniqueObjectRef<T> {
+    /// Downgrade this reference to a shared reference.
+    pub fn into_ref(self) -> ObjectRef<T> {
+        let ptr = self.ptr as *const _;
+        core::mem::forget(self);
+
+        ObjectRef { ptr }
+    }
+}
+
+impl<T: IntoGEMObject> Drop for UniqueObjectRef<T> {
+    fn drop(&mut self) {
+        // SAFETY: Having a UniqueObjectRef implies holding a GEM
+        // reference. The free callback will take care of deallocation.
+        unsafe {
+            bindings::drm_gem_object_put((*self.ptr).gem_obj());
+        }
+    }
+}
+
+impl<T: IntoGEMObject> Deref for UniqueObjectRef<T> {
+    type Target = T;
+
+    fn deref(&self) -> &Self::Target {
+        // SAFETY: The pointer is valid per the invariant
+        unsafe { &*self.ptr }
+    }
+}
+
+impl<T: IntoGEMObject> DerefMut for UniqueObjectRef<T> {
+    fn deref_mut(&mut self) -> &mut Self::Target {
+        // SAFETY: The pointer is valid per the invariant
+        unsafe { &mut *self.ptr }
+    }
+}
+
+pub(super) fn create_fops() -> bindings::file_operations {
+    bindings::file_operations {
+        owner: core::ptr::null_mut(),
+        open: Some(bindings::drm_open),
+        release: Some(bindings::drm_release),
+        unlocked_ioctl: Some(bindings::drm_ioctl),
+        #[cfg(CONFIG_COMPAT)]
+        compat_ioctl: Some(bindings::drm_compat_ioctl),
+        #[cfg(not(CONFIG_COMPAT))]
+        compat_ioctl: None,
+        poll: Some(bindings::drm_poll),
+        read: Some(bindings::drm_read),
+        llseek: Some(bindings::noop_llseek),
+        mmap: Some(bindings::drm_gem_mmap),
+        ..Default::default()
+    }
+}
diff --git a/rust/kernel/drm/mod.rs b/rust/kernel/drm/mod.rs
index a767942d0b52..c44760a1332f 100644
--- a/rust/kernel/drm/mod.rs
+++ b/rust/kernel/drm/mod.rs
@@ -5,4 +5,5 @@
 pub mod device;
 pub mod drv;
 pub mod file;
+pub mod gem;
 pub mod ioctl;

-- 
2.35.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
