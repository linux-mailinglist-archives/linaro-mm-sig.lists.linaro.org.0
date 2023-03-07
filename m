Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 042776BBA66
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:03:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 133723EBC1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:03:24 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id 8AE2C3F09B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Mar 2023 14:27:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b="xAGB4P/o";
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: linasend@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id A3475424AC;
	Tue,  7 Mar 2023 14:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678199222;
	bh=QBiytwbsc0G1We1dJW1nIZFmB+ztwRRDlj9w4vMV0Ro=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=xAGB4P/oo/JGUzu7/9TffIgLeqScyHn1BdOEXg7j24rlLZwfpKL/pW783VTJLoZDd
	 UUUwvllNfz+n8CEH7/VkCJfz2Kt3HCxhYc/EJZjVmLNa1vGNSB69UYBsBpQovNlcoh
	 47pv2L5TfESCngho/MbRa1R/Qyn3RvwWrlZmhNgbqrCevLiIoGZkBStabFgTUDOae6
	 EORSq8TCMuYNpvigWU0w1OENwm1hxxYY3R9b2vemSUiKCBpX1ZjdRzQRuNu1MU7U9X
	 tjCGS3DMxQykbNKsmAIuPbPSkWE6vsMwcLH0hy4JZPjUONAvu86zjL0knadsl9l23V
	 0nrfhIIc5PVpA==
From: Asahi Lina <lina@asahilina.net>
Date: Tue, 07 Mar 2023 23:25:28 +0900
MIME-Version: 1.0
Message-Id: <20230307-rust-drm-v1-3-917ff5bc80a8@asahilina.net>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1678199191; l=5871;
 i=lina@asahilina.net; s=20230221; h=from:subject:message-id;
 bh=QBiytwbsc0G1We1dJW1nIZFmB+ztwRRDlj9w4vMV0Ro=;
 b=NkHywoaUixWj5shg1jl7LNEBfnrmuiLisYFWU1LZZmq0/+I3LVSV8lK+ExlBi3b/t/O2ZUFyH
 rzDEcCifeKOBMCzcXcZoiQK3N2xZUcpC/i3ZFKNDrBE1tR6HrJ806z4
X-Developer-Key: i=lina@asahilina.net; a=ed25519;
 pk=Qn8jZuOtR1m5GaiDfTrAoQ4NE1XoYVZ/wmt5YtXWFC4=
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8AE2C3F09B
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
Message-ID-Hash: J4BTEI4SV5HIU6YZSVXC5BM4752CO7DK
X-Message-ID-Hash: J4BTEI4SV5HIU6YZSVXC5BM4752CO7DK
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:02:20 +0000
CC: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev, Asahi Lina <lina@asahilina.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 03/18] rust: drm: file: Add File abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J4BTEI4SV5HIU6YZSVXC5BM4752CO7DK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

A DRM File is the DRM counterpart to a kernel file structure,
representing an open DRM file descriptor. Add a Rust abstraction to
allow drivers to implement their own File types that implement the
DriverFile trait.

Signed-off-by: Asahi Lina <lina@asahilina.net>
---
 rust/bindings/bindings_helper.h |   1 +
 rust/kernel/drm/drv.rs          |   7 ++-
 rust/kernel/drm/file.rs         | 113 ++++++++++++++++++++++++++++++++++++++++
 rust/kernel/drm/mod.rs          |   1 +
 4 files changed, 120 insertions(+), 2 deletions(-)

diff --git a/rust/bindings/bindings_helper.h b/rust/bindings/bindings_helper.h
index 2a999138c4ae..7d7828faf89c 100644
--- a/rust/bindings/bindings_helper.h
+++ b/rust/bindings/bindings_helper.h
@@ -8,6 +8,7 @@
 
 #include <drm/drm_device.h>
 #include <drm/drm_drv.h>
+#include <drm/drm_file.h>
 #include <drm/drm_ioctl.h>
 #include <linux/delay.h>
 #include <linux/device.h>
diff --git a/rust/kernel/drm/drv.rs b/rust/kernel/drm/drv.rs
index 29a465515dc9..1dcb651e1417 100644
--- a/rust/kernel/drm/drv.rs
+++ b/rust/kernel/drm/drv.rs
@@ -144,6 +144,9 @@ pub trait Driver {
     /// Should be either `drm::gem::Object<T>` or `drm::gem::shmem::Object<T>`.
     type Object: AllocImpl;
 
+    /// The type used to represent a DRM File (client)
+    type File: drm::file::DriverFile;
+
     /// Driver metadata
     const INFO: DriverInfo;
 
@@ -213,8 +216,8 @@ macro_rules! drm_device_register {
 impl<T: Driver> Registration<T> {
     const VTABLE: bindings::drm_driver = drm_legacy_fields! {
         load: None,
-        open: None, // TODO: File abstraction
-        postclose: None, // TODO: File abstraction
+        open: Some(drm::file::open_callback::<T::File>),
+        postclose: Some(drm::file::postclose_callback::<T::File>),
         lastclose: None,
         unload: None,
         release: None,
diff --git a/rust/kernel/drm/file.rs b/rust/kernel/drm/file.rs
new file mode 100644
index 000000000000..48751e93c38a
--- /dev/null
+++ b/rust/kernel/drm/file.rs
@@ -0,0 +1,113 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+
+//! DRM File objects.
+//!
+//! C header: [`include/linux/drm/drm_file.h`](../../../../include/linux/drm/drm_file.h)
+
+use crate::{bindings, drm, error::Result};
+use alloc::boxed::Box;
+use core::marker::PhantomData;
+use core::ops::Deref;
+
+/// Trait that must be implemented by DRM drivers to represent a DRM File (a client instance).
+pub trait DriverFile {
+    /// The parent `Driver` implementation for this `DriverFile`.
+    type Driver: drm::drv::Driver;
+
+    /// Open a new file (called when a client opens the DRM device).
+    fn open(device: &drm::device::Device<Self::Driver>) -> Result<Box<Self>>;
+}
+
+/// An open DRM File.
+///
+/// # Invariants
+/// `raw` is a valid pointer to a `drm_file` struct.
+#[repr(transparent)]
+pub struct File<T: DriverFile> {
+    raw: *mut bindings::drm_file,
+    _p: PhantomData<T>,
+}
+
+pub(super) unsafe extern "C" fn open_callback<T: DriverFile>(
+    raw_dev: *mut bindings::drm_device,
+    raw_file: *mut bindings::drm_file,
+) -> core::ffi::c_int {
+    let drm = core::mem::ManuallyDrop::new(unsafe { drm::device::Device::from_raw(raw_dev) });
+    // SAFETY: This reference won't escape this function
+    let file = unsafe { &mut *raw_file };
+
+    let inner = match T::open(&drm) {
+        Err(e) => {
+            return e.to_kernel_errno();
+        }
+        Ok(i) => i,
+    };
+
+    file.driver_priv = Box::into_raw(inner) as *mut _;
+
+    0
+}
+
+pub(super) unsafe extern "C" fn postclose_callback<T: DriverFile>(
+    _dev: *mut bindings::drm_device,
+    raw_file: *mut bindings::drm_file,
+) {
+    // SAFETY: This reference won't escape this function
+    let file = unsafe { &*raw_file };
+
+    // Drop the DriverFile
+    unsafe { Box::from_raw(file.driver_priv as *mut T) };
+}
+
+impl<T: DriverFile> File<T> {
+    // Not intended to be called externally, except via declare_drm_ioctls!()
+    #[doc(hidden)]
+    pub unsafe fn from_raw(raw_file: *mut bindings::drm_file) -> File<T> {
+        File {
+            raw: raw_file,
+            _p: PhantomData,
+        }
+    }
+
+    #[allow(dead_code)]
+    /// Return the raw pointer to the underlying `drm_file`.
+    pub(super) fn raw(&self) -> *const bindings::drm_file {
+        self.raw
+    }
+
+    /// Return an immutable reference to the raw `drm_file` structure.
+    pub(super) fn file(&self) -> &bindings::drm_file {
+        unsafe { &*self.raw }
+    }
+}
+
+impl<T: DriverFile> Deref for File<T> {
+    type Target = T;
+
+    fn deref(&self) -> &T {
+        unsafe { &*(self.file().driver_priv as *const T) }
+    }
+}
+
+impl<T: DriverFile> crate::private::Sealed for File<T> {}
+
+/// Generic trait to allow users that don't care about driver specifics to accept any File<T>.
+///
+/// # Safety
+/// Must only be implemented for File<T> and return the pointer, following the normal invariants
+/// of that type.
+pub unsafe trait GenericFile: crate::private::Sealed {
+    /// Returns the raw const pointer to the `struct drm_file`
+    fn raw(&self) -> *const bindings::drm_file;
+    /// Returns the raw mut pointer to the `struct drm_file`
+    fn raw_mut(&mut self) -> *mut bindings::drm_file;
+}
+
+unsafe impl<T: DriverFile> GenericFile for File<T> {
+    fn raw(&self) -> *const bindings::drm_file {
+        self.raw
+    }
+    fn raw_mut(&mut self) -> *mut bindings::drm_file {
+        self.raw
+    }
+}
diff --git a/rust/kernel/drm/mod.rs b/rust/kernel/drm/mod.rs
index 69376b3c6db9..a767942d0b52 100644
--- a/rust/kernel/drm/mod.rs
+++ b/rust/kernel/drm/mod.rs
@@ -4,4 +4,5 @@
 
 pub mod device;
 pub mod drv;
+pub mod file;
 pub mod ioctl;

-- 
2.35.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
