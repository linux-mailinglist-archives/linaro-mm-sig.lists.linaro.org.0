Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tAnuAIdlR2q9XgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 03 Jul 2026 09:32:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 905F96FF946
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 03 Jul 2026 09:32:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=H+zF7IeP;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B65EA40E18
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Jul 2026 07:32:21 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 1EF5A404FE
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Jul 2026 07:32:04 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D48C06001A;
	Fri,  3 Jul 2026 07:32:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E72CA1F00A3A;
	Fri,  3 Jul 2026 07:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783063923;
	bh=W0cm6V1SNatAYCiqUyWncuJR0N/zPSN18fPyAUJ6v+c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=H+zF7IeP0YH4a2qhwK5CXkyAuahXhRTNYffTPeDhn8gTPFBJ/EMwovRyMtjHTfcAt
	 wTKoM1wMa+RprgJmGwvnKthSKBLkPrIGcs4AFsbA+gAs1zvy/nByw5+dlUapsZSmpO
	 j40kMJoEhtY95vb0mf7bUMjb/9KXq4x4FwjenBpQkvyZBIkOA5+S5KVMBT8jnitur9
	 pz5hT42R/5DhSXnljftTfh+900RWLLNBzatTfLFWeb2wUmNFvzL5S2JOb3onha9Gdr
	 TtdPlai0ZRoOlK0wunkchFh+bUhfsZtzGUnhtZp1/XaU4+HjyjOVScXb9p7A7pVYti
	 Ic4DJx87prOlg==
From: Philipp Stanner <phasta@kernel.org>
To: Miguel Ojeda <ojeda@kernel.org>,
	Boqun Feng <boqun@kernel.org>,
	Gary Guo <gary@garyguo.net>,
	=?UTF-8?q?Bj=C3=B6rn=20Roy=20Baron?= <bjorn3_gh@protonmail.com>,
	Benno Lossin <lossin@kernel.org>,
	Andreas Hindborg <a.hindborg@kernel.org>,
	Alice Ryhl <aliceryhl@google.com>,
	Trevor Gross <tmgross@umich.edu>,
	Danilo Krummrich <dakr@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Philipp Stanner <phasta@kernel.org>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Asahi Lina <lina+kernel@asahilina.net>,
	Burak Emir <bqe@google.com>,
	Lorenzo Stoakes <ljs@kernel.org>,
	Joel Fernandes <joelagnelf@nvidia.com>,
	Alexandre Courbot <acourbot@nvidia.com>,
	Krishna Ketan Rai <prafulrai522@gmail.com>,
	Tamir Duberstein <tamird@kernel.org>,
	Mirko Adzic <adzicmirko97@gmail.com>,
	Alistair Francis <alistair.francis@wdc.com>,
	=?UTF-8?q?Onur=20=C3=96zkan?= <work@onurozkan.dev>,
	Shankari Anand <shankari.ak0208@gmail.com>
Date: Fri,  3 Jul 2026 09:31:37 +0200
Message-ID: <20260703073141.3962604-3-phasta@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260703073141.3962604-2-phasta@kernel.org>
References: <20260703073141.3962604-2-phasta@kernel.org>
MIME-Version: 1.0
X-Spamd-Bar: -----
Message-ID-Hash: YQZQNEJQLLOXEOATMYFMHEXIKMDFOQUJ
X-Message-ID-Hash: YQZQNEJQLLOXEOATMYFMHEXIKMDFOQUJ
X-MailFrom: phasta@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 1/5] rust: types: implement ForeignOwnable for ARef<T>
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YQZQNEJQLLOXEOATMYFMHEXIKMDFOQUJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:phasta@kernel.org,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina+kernel@asahilina.net,m:bqe@google.com,m:ljs@kernel.org,m:joelagnelf@nvidia.com,m:acourbot@nvidia.com,m:prafulrai522@gmail.com,m:tamird@kernel.org,m:adzicmirko97@gmail.com,m:alistair.francis@wdc.com,m:work@onurozkan.dev,m:shankari.ak0208@gmail.com,m:linux-kernel@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:lina@asahilina.net,m:shankariak0208@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[30];
	FREEMAIL_TO(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,collabora.com,linuxfoundation.org,asahilina.net,nvidia.com,gmail.com,wdc.com,onurozkan.dev];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 905F96FF946

From: Danilo Krummrich <dakr@kernel.org>

Implement ForeignOwnable for ARef<T>, making it possible for C code to
own an ARef<T>.

Since ARef represents shared ownership, BorrowedMut is &T rather than
&mut T, matching the semantics of the underlying reference-counted type.

Signed-off-by: Danilo Krummrich <dakr@kernel.org>
Reviewed-by: Alice Ryhl <aliceryhl@google.com>
---
 rust/kernel/sync/aref.rs | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/rust/kernel/sync/aref.rs b/rust/kernel/sync/aref.rs
index b721b2e00b98..540766613659 100644
--- a/rust/kernel/sync/aref.rs
+++ b/rust/kernel/sync/aref.rs
@@ -24,6 +24,11 @@
     ptr::NonNull, //
 };
 
+use crate::{
+    prelude::*,
+    types::ForeignOwnable, //
+};
+
 /// Types that are _always_ reference counted.
 ///
 /// It allows such types to define their own custom ref increment and decrement functions.
@@ -188,6 +193,41 @@ fn eq(&self, other: &ARef<U>) -> bool {
 }
 impl<T: AlwaysRefCounted + Eq> Eq for ARef<T> {}
 
+// SAFETY: `into_foreign` returns a pointer from `NonNull::as_ptr`, so it's non-null. The
+// `ARef` invariant guarantees that `ptr` points to a valid `T`, so it's aligned to `T`.
+unsafe impl<T: AlwaysRefCounted + 'static> ForeignOwnable for ARef<T> {
+    const FOREIGN_ALIGN: usize = core::mem::align_of::<T>();
+
+    type Borrowed<'a> = &'a T;
+    type BorrowedMut<'a> = &'a T;
+
+    fn into_foreign(self) -> *mut c_void {
+        ARef::into_raw(self).as_ptr().cast()
+    }
+
+    unsafe fn from_foreign(ptr: *mut c_void) -> Self {
+        // SAFETY: The safety requirements of this function ensure that `ptr` comes from a previous
+        // call to `Self::into_foreign`.
+        let ptr = unsafe { NonNull::new_unchecked(ptr.cast()) };
+
+        // SAFETY: `ptr` came from `into_foreign`, which consumed an `ARef` without decrementing
+        // the refcount, so we can transfer the ownership to the new `ARef`.
+        unsafe { ARef::from_raw(ptr) }
+    }
+
+    unsafe fn borrow<'a>(ptr: *mut c_void) -> &'a T {
+        // SAFETY: The safety requirements of this method ensure that the object remains alive and
+        // immutable for the duration of 'a.
+        unsafe { &*ptr.cast() }
+    }
+
+    unsafe fn borrow_mut<'a>(ptr: *mut c_void) -> &'a T {
+        // SAFETY: The safety requirements for `borrow_mut` are a superset of the safety
+        // requirements for `borrow`.
+        unsafe { <Self as ForeignOwnable>::borrow(ptr) }
+    }
+}
+
 impl<T, U> PartialEq<&'_ U> for ARef<T>
 where
     T: AlwaysRefCounted + PartialEq<U>,
-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
