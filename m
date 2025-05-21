Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C99ABFE6E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 May 2025 22:50:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A43944311
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 May 2025 20:50:14 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 35BB43F685
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 May 2025 20:50:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=NZvbcmSv;
	spf=pass (lists.linaro.org: domain of lyude@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=lyude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1747860603;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mD23raNQ8ZbMrMICq/gFGTjyDRhqWnP+hWWFLjdKFbY=;
	b=NZvbcmSv9jboBH91OtE7P/cAvARgU3v5FzFTJGBzuPs2wv3ss2bDUbc1MBkcOUrH/rV0t3
	elEZEjLzOVdLZsAZS8r8yPawwgaF9DPDjnG9XSH/lYB5gdvVB099NxB3gw29FDoIF/XHSv
	WDEz4hlVCr7SuECfUbuk0tNrjlBT1OI=
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-587-WCuYGeHcPVG1goaQZEv7DA-1; Wed,
 21 May 2025 16:48:32 -0400
X-MC-Unique: WCuYGeHcPVG1goaQZEv7DA-1
X-Mimecast-MFC-AGG-ID: WCuYGeHcPVG1goaQZEv7DA_1747860510
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E94E91955DAB;
	Wed, 21 May 2025 20:48:29 +0000 (UTC)
Received: from chopper.redhat.com (unknown [10.22.80.100])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id F141F19560B7;
	Wed, 21 May 2025 20:48:25 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org,
	rust-for-linux@vger.kernel.org,
	linux-kernel@vger.kernel.org
Date: Wed, 21 May 2025 16:29:17 -0400
Message-ID: <20250521204654.1610607-11-lyude@redhat.com>
In-Reply-To: <20250521204654.1610607-1-lyude@redhat.com>
References: <20250521204654.1610607-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-1.40 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[170.10.129.124:from];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[us-smtp-delivery-124.mimecast.com:rdns,us-smtp-delivery-124.mimecast.com:helo];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	DNSWL_BLOCKED(0.00)[54.186.198.63:received];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_IN_DNSWL_NONE(0.00)[170.10.129.124:from];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,garyguo.net,protonmail.com,proton.me,google.com,umich.edu,linaro.org,amd.com,linuxfoundation.org,vger.kernel.org,lists.linaro.org]
X-Rspamd-Queue-Id: 35BB43F685
X-Spamd-Bar: -
Message-ID-Hash: T5UMSBGNJSLVTMCQEIQPGNWFLBUVFVC5
X-Message-ID-Hash: T5UMSBGNJSLVTMCQEIQPGNWFLBUVFVC5
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?UTF-8?q?Bj=C3=B6rn=20Roy=20Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wedson Almeida Filho <wedsonaf@gmail.com>, Xiangfei Ding <dingxiangfei2009@gmail.com>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 10/12] rust: Add dma_buf stub bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T5UMSBGNJSLVTMCQEIQPGNWFLBUVFVC5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In order to implement the gem export callback, we need a type to represent
struct dma_buf. So - this commit introduces a set of stub bindings for
dma_buf. These bindings provide a ref-counted DmaBuf object, but don't
currently implement any functionality for using the DmaBuf.

Signed-off-by: Lyude Paul <lyude@redhat.com>
---
 rust/kernel/dma_buf.rs | 39 +++++++++++++++++++++++++++++++++++++++
 rust/kernel/lib.rs     |  1 +
 2 files changed, 40 insertions(+)
 create mode 100644 rust/kernel/dma_buf.rs

diff --git a/rust/kernel/dma_buf.rs b/rust/kernel/dma_buf.rs
new file mode 100644
index 0000000000000..318518ff0b28f
--- /dev/null
+++ b/rust/kernel/dma_buf.rs
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! DMA buffer API
+//!
+//! C header: [`include/linux/dma-buf.h`](srctree/include/linux/dma-buf.h)
+
+use bindings;
+use kernel::types::*;
+
+/// A DMA buffer object.
+///
+/// # Invariants
+///
+/// The data layout of this type is equivalent to that of `struct dma_buf`.
+#[repr(transparent)]
+pub struct DmaBuf(Opaque<bindings::dma_buf>);
+
+// SAFETY: `struct dma_buf` is thread-safe
+unsafe impl Send for DmaBuf {}
+// SAFETY: `struct dma_buf` is thread-safe
+unsafe impl Sync for DmaBuf {}
+
+impl DmaBuf {
+    /// Convert from a `*mut bindings::dma_buf` to a [`DmaBuf`].
+    ///
+    /// # Safety
+    ///
+    /// The caller guarantees that `self_ptr` points to a valid initialized `struct dma_buf` for the
+    /// duration of the lifetime of `'a`, and promises to not violate rust's data aliasing rules
+    /// using the reference provided by this function.
+    pub(crate) unsafe fn as_ref<'a>(self_ptr: *mut bindings::dma_buf) -> &'a Self {
+        // SAFETY: Our data layout is equivalent to `dma_buf` .
+        unsafe { &*self_ptr.cast() }
+    }
+
+    pub(crate) fn as_raw(&self) -> *mut bindings::dma_buf {
+        self.0.get()
+    }
+}
diff --git a/rust/kernel/lib.rs b/rust/kernel/lib.rs
index cbacedfe54434..02d4311bb080c 100644
--- a/rust/kernel/lib.rs
+++ b/rust/kernel/lib.rs
@@ -49,6 +49,7 @@
 pub mod device_id;
 pub mod devres;
 pub mod dma;
+pub mod dma_buf;
 pub mod driver;
 #[cfg(CONFIG_DRM = "y")]
 pub mod drm;
-- 
2.49.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
