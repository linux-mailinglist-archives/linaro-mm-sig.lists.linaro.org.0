Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDRQGjoO6GmBEgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Apr 2026 01:54:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FD8440BB7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Apr 2026 01:54:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 03EC440511
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Apr 2026 23:54:33 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 60A77404D1
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Apr 2026 23:54:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=N7vDRmZ+;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of lyude@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=lyude@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1776815661;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2mo6y6kQ8tGNzkTMKry5TDrjoS3Q4Fyl71EKmNuk4DI=;
	b=N7vDRmZ+F5dRazJviRUxNDyDykJJ/w4YHbLkGyRptGNImw+szKyAcrexmgbX7cneG3dzLt
	qDHj7NBZv2474WvNX9JxsspQZIS/lpp+fpLMMgdTa4VtEFTuud9KkbnAY9njyqxvP6RSut
	8pL8on0pY8MdXfJ9hypzu+wfk5X3ETA=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-235-Tz0yATiRNpy3MbTJBVQ_yQ-1; Tue,
 21 Apr 2026 19:54:16 -0400
X-MC-Unique: Tz0yATiRNpy3MbTJBVQ_yQ-1
X-Mimecast-MFC-AGG-ID: Tz0yATiRNpy3MbTJBVQ_yQ_1776815653
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5308C1956055;
	Tue, 21 Apr 2026 23:54:13 +0000 (UTC)
Received: from GoldenWind.lan (unknown [10.22.80.14])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id CBCAE1956095;
	Tue, 21 Apr 2026 23:54:09 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: nouveau@lists.freedesktop.org,
	Gary Guo <gary@garyguo.net>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	rust-for-linux@vger.kernel.org,
	Danilo Krummrich <dakr@kernel.org>,
	dri-devel@lists.freedesktop.org
Date: Tue, 21 Apr 2026 19:52:16 -0400
Message-ID: <20260421235346.672794-5-lyude@redhat.com>
In-Reply-To: <20260421235346.672794-1-lyude@redhat.com>
References: <20260421235346.672794-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-MFC-PROC-ID: QegZuWVQX__UGerJCUD5crveenTme0ZyAacds9Unadc_1776815653
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: -----
Message-ID-Hash: 25SCB33GZV72DF56I3QRCKUYAKCHSJWM
X-Message-ID-Hash: 25SCB33GZV72DF56I3QRCKUYAKCHSJWM
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Alice Ryhl <aliceryhl@google.com>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v12 4/5] rust: drm: gem: Introduce shmem::SGTable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/25SCB33GZV72DF56I3QRCKUYAKCHSJWM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; x-default="true"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[google.com,gmail.com,oracle.com,amd.com,asahilina.net,kernel.org,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org,linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	NEURAL_HAM(-0.00)[-0.886];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: E7FD8440BB7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In order to do this, we need to be careful to ensure that any interface we
expose for scatterlists ensures that any mappings created from one are
destroyed on driver-unbind. To do this, we introduce a Devres resource into
shmem::Object that we use in order to ensure that we release any SGTable
mappings on driver-unbind. We store this in an UnsafeCell and protect
access to it using the dma_resv lock that we already have from the shmem
gem object, which is the same lock that currently protects
drm_gem_object_shmem->sgt.

We also provide two different methods for acquiring an sg table:
self.sg_table(), and self.owned_sg_table(). The first function is for
short-term uses of mapped SGTables, the second is for callers that need to
hold onto the mapped SGTable for an extended period of time. The second
variant uses Devres of course, whereas the first simply relies on rust's
borrow checker to prevent driver-unbind when using the mapped SGTable.

Signed-off-by: Lyude Paul <lyude@redhat.com>

---
V3:
* Rename OwnedSGTable to shmem::SGTable. Since the current version of the
  SGTable abstractions now has a `Owned` and `Borrowed` variant, I think
  renaming this to shmem::SGTable makes things less confusing.
  We do however, keep the name of owned_sg_table() as-is.
V4:
* Clarify safety comments for SGTable to explain why the object is
  thread-safe.
* Rename from SGTableRef to SGTable
V10:
* Use Devres in order to ensure that SGTables are revocable, and are
  unmapped on driver-unbind.
V11:
* s/create_sg_table()/get_sg_table()
* Get rid of extraneous `ret = ` in shmem::Object::get_sg_table()
V12:
* Actually move sgt_res in this patch and not the next one

 rust/kernel/drm/gem/shmem.rs | 192 ++++++++++++++++++++++++++++++++++-
 1 file changed, 190 insertions(+), 2 deletions(-)

diff --git a/rust/kernel/drm/gem/shmem.rs b/rust/kernel/drm/gem/shmem.rs
index 11749c36e8695..a477312c8a09b 100644
--- a/rust/kernel/drm/gem/shmem.rs
+++ b/rust/kernel/drm/gem/shmem.rs
@@ -11,25 +11,38 @@
 
 use crate::{
     container_of,
+    device::{
+        self,
+        Bound, //
+    },
+    devres::*,
     drm::{
         driver,
         gem,
         private::Sealed,
         Device, //
     },
-    error::to_result,
+    error::{
+        from_err_ptr,
+        to_result, //
+    },
     prelude::*,
+    scatterlist,
     types::{
         ARef,
         Opaque, //
     }, //
 };
 use core::{
+    cell::UnsafeCell,
     ops::{
         Deref,
         DerefMut, //
     },
-    ptr::NonNull,
+    ptr::{
+        self,
+        NonNull, //
+    },
 };
 use gem::{
     BaseObjectPrivate,
@@ -61,6 +74,11 @@ pub struct ObjectConfig<'a, T: DriverObject> {
 #[repr(C)]
 #[pin_data]
 pub struct Object<T: DriverObject> {
+    /// Devres object for unmapping any SGTable on driver-unbind.
+    ///
+    /// This is protected by the object's dma_resv lock. It needs to be before `obj` to ensure that
+    /// it is destroyed before `obj` on `Drop`.
+    sgt_res: UnsafeCell<Option<Devres<SGTableMap<T>>>>,
     #[pin]
     obj: Opaque<bindings::drm_gem_shmem_object>,
     /// Parent object that owns this object's DMA reservation object.
@@ -117,6 +135,7 @@ pub fn new(
             try_pin_init!(Self {
                 obj <- Opaque::init_zeroed(),
                 parent_resv_obj: config.parent_resv_obj.map(|p| p.into()),
+                sgt_res: UnsafeCell::new(None),
                 inner <- T::new(dev, size, args),
             }),
             GFP_KERNEL,
@@ -176,6 +195,100 @@ extern "C" fn free_callback(obj: *mut bindings::drm_gem_object) {
         // SAFETY: We're recovering the Kbox<> we created in gem_create_object()
         let _ = unsafe { KBox::from_raw(this) };
     }
+
+    // If necessary, create an SGTable for the gem object and register a Devres for it to ensure
+    // that it is unmapped on driver unbind.
+    fn get_sg_table<'a>(
+        &'a self,
+        dev: &'a device::Device<Bound>,
+    ) -> Result<&'a Devres<SGTableMap<T>>> {
+        let sgt_res_ptr = self.sgt_res.get();
+
+        // SAFETY: This lock is initialized throughout the lifetime of the gem object
+        unsafe { bindings::dma_resv_lock(self.raw_dma_resv(), ptr::null_mut()) };
+
+        // SAFETY: We just grabbed the lock required for reading this data above.
+        let sgt_res = unsafe { (*sgt_res_ptr).as_ref() };
+
+        let ret = if let Some(sgt_res) = sgt_res {
+            // We already have a Devres object for this sg table, return it
+            Ok(sgt_res)
+        } else {
+            // SAFETY: We grabbed the lock required for calling this function above */
+            let sgt = from_err_ptr(unsafe {
+                bindings::drm_gem_shmem_get_pages_sgt_locked(self.as_raw_shmem())
+            });
+
+            if let Err(e) = sgt {
+                Err(e)
+            } else {
+                // INVARIANT:
+                // - We called drm_gem_shmem_get_pages_sgt_locked above and checked that it
+                //   succeeded, fulfilling the invariant of SGTableRef that the object's `sgt` field
+                //   is initialized.
+                // - We store this Devres in the object itself and don't move it, ensuring that the
+                //   object it points to remains valid for the lifetime of the SGTableRef.
+                let devres = Devres::new(dev, init!(SGTableMap { obj: self.into() }));
+                match devres {
+                    Ok(devres) => {
+                        // SAFETY: We acquired the lock protecting this data above, making it safe
+                        // to write into here
+                        unsafe { (*sgt_res_ptr) = Some(devres) };
+
+                        // SAFETY: We just write Some() into *sgt_res_ptr above
+                        Ok(unsafe { (&*sgt_res_ptr).as_ref().unwrap_unchecked() })
+                    }
+                    Err(e) => {
+                        // We can't make sure that the pages for this object are unmapped on
+                        // driver-unbind, so we need to release the sgt
+                        // SAFETY:
+                        // - We grabbed the lock required for calling this function above
+                        // - We checked above that get_pages_sgt_locked() was successful
+                        unsafe { bindings::__drm_gem_shmem_free_sgt_locked(self.as_raw_shmem()) };
+
+                        Err(e)
+                    }
+                }
+            }
+        };
+
+        // SAFETY: We're releasing the lock that we grabbed above.
+        unsafe { bindings::dma_resv_unlock(self.raw_dma_resv()) };
+
+        ret
+    }
+
+    /// Creates (if necessary) and returns an immutable reference to a scatter-gather table of DMA
+    /// pages for this object.
+    ///
+    /// This will pin the object in memory.
+    #[inline]
+    pub fn sg_table<'a>(
+        &'a self,
+        dev: &'a device::Device<Bound>,
+    ) -> Result<&'a scatterlist::SGTable> {
+        let sgt = self.get_sg_table(dev)?;
+
+        Ok(sgt.access(dev)?.deref())
+    }
+
+    /// Creates (if necessary) and returns an owned reference to a scatter-gather table of DMA pages
+    /// for this object.
+    ///
+    /// This is the same as [`sg_table`](Self::sg_table), except that it instead returns an
+    /// [`shmem::SGTable`] which holds a reference to the associated gem object, instead of a
+    /// reference to an [`scatterlist::SGTable`].
+    ///
+    /// This will pin the object in memory.
+    ///
+    /// [`shmem::SGTable`]: SGTable
+    pub fn owned_sg_table(&self, dev: &device::Device<Bound>) -> Result<SGTable<T>> {
+        self.get_sg_table(dev)?;
+
+        // INVARIANT: We just ensured above that `self.sgt_res` is initialized with
+        // `Some(Devres<SGTableMap<T>>)`.
+        Ok(SGTable(self.into()))
+    }
 }
 
 impl<T: DriverObject> Deref for Object<T> {
@@ -226,3 +339,78 @@ impl<T: DriverObject> driver::AllocImpl for Object<T> {
         dumb_map_offset: None,
     };
 }
+
+/// A reference to a GEM object that is known to have a mapped [`SGTable`].
+///
+/// This is used by the Rust bindings with [`Devres`] in order to ensure that mappings for SGTables
+/// on GEM shmem objects are revoked on driver-unbind.
+///
+/// # Invariants
+///
+/// - `self.obj` always points to a valid GEM object.
+/// - This object is proof that `self.0.owner.sgt` has an initialized and valid SGTable.
+pub struct SGTableMap<T: DriverObject> {
+    obj: NonNull<Object<T>>,
+}
+
+impl<T: DriverObject> Deref for SGTableMap<T> {
+    type Target = scatterlist::SGTable;
+
+    fn deref(&self) -> &Self::Target {
+        // SAFETY:
+        // - The NonNull is guaranteed to be valid via our type invariants.
+        // - The sgt field is guaranteed to be initialized and valid via our type invariants.
+        unsafe { scatterlist::SGTable::from_raw((*self.obj.as_ref().as_raw_shmem()).sgt) }
+    }
+}
+
+impl<T: DriverObject> Drop for SGTableMap<T> {
+    fn drop(&mut self) {
+        // SAFETY: `obj` is always valid via our type invariants
+        let obj = unsafe { self.obj.as_ref() };
+
+        // SAFETY: The dma_resv for GEM objects is initialized throughout its lifetime
+        unsafe { bindings::dma_resv_lock(obj.raw_dma_resv(), ptr::null_mut()) };
+
+        // SAFETY: We acquired the lock needed for calling this function above
+        unsafe { bindings::__drm_gem_shmem_free_sgt_locked(obj.as_raw_shmem()) };
+
+        // SAFETY: We are releasing the lock we acquired above.
+        unsafe { bindings::dma_resv_unlock(obj.raw_dma_resv()) };
+    }
+}
+
+// SAFETY: The NonNull in SGTableRef is guaranteed valid by our type invariants, and the GEM object
+// it points to is guaranteed to be thread-safe.
+unsafe impl<T: DriverObject> Send for SGTableMap<T> {}
+// SAFETY: The NonNull in SGTableRef is guaranteed valid by our type invariants, and the GEM object
+// it points to is guaranteed to be thread-safe.
+unsafe impl<T: DriverObject> Sync for SGTableMap<T> {}
+
+/// An owned reference to a scatter-gather table of DMA address spans for a GEM shmem object.
+///
+/// This object holds an owned reference to the underlying GEM shmem object, ensuring that the
+/// [`scatterlist::SGTable`] referenced by this type remains valid for the lifetime of this object.
+///
+/// # Invariants
+///
+/// - This type is proof that `self.0.sgt_res` is initialized with a `Some(Devres<SGTableMap<T>>)`.
+/// - This object is only exposed in situations where we know the underlying `SGTable` will not be
+///   modified for the lifetime of this object. Thus, it is safe to send/access this type across
+///   threads.
+pub struct SGTable<T: DriverObject>(ARef<Object<T>>);
+
+// SAFETY: This object is thread-safe via our type invariants.
+unsafe impl<T: DriverObject> Send for SGTable<T> {}
+// SAFETY: This object is thread-safe via our type invariants.
+unsafe impl<T: DriverObject> Sync for SGTable<T> {}
+
+impl<T: DriverObject> Deref for SGTable<T> {
+    type Target = Devres<SGTableMap<T>>;
+
+    fn deref(&self) -> &Self::Target {
+        // SAFETY: `self.owner.sgt_res` is guaranteed to be initialized with
+        // `Some(Devres<SGTableMap<T>>)` via our type invariants
+        unsafe { (*self.0.sgt_res.get()).as_ref().unwrap_unchecked() }
+    }
+}
-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
