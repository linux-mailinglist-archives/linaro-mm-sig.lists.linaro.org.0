Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD92ABFE66
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 May 2025 22:49:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 25444445BF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 May 2025 20:49:17 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id D3E13445D0
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 May 2025 20:48:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=DBwqdPzc;
	spf=pass (lists.linaro.org: domain of lyude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=lyude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1747860535;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YfYUdTNb5Gc7ulEphuHVddFPp9Ry0HXZjmcMzmLE0DM=;
	b=DBwqdPzcL3GzBV7lKKSrLA3PNiXebcDdzZQih+FWbtDSQ//snjJmvFMJJ2pvvgD85wOFMZ
	6bN4KqqCAqzkz5LGJNYmZkB+sFHho/zJoEd+v45qlcG2y0g2xyAkN8YhFcRHSGC41qY0e9
	RybE1FpJ97MbLZL+kp3mdTCA6UPjdWc=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-634-A5lh2k0lPK6iSSvRo02qvg-1; Wed,
 21 May 2025 16:48:51 -0400
X-MC-Unique: A5lh2k0lPK6iSSvRo02qvg-1
X-Mimecast-MFC-AGG-ID: A5lh2k0lPK6iSSvRo02qvg_1747860528
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 92A671800368;
	Wed, 21 May 2025 20:48:48 +0000 (UTC)
Received: from chopper.redhat.com (unknown [10.22.80.100])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id F37131956066;
	Wed, 21 May 2025 20:48:43 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org,
	rust-for-linux@vger.kernel.org,
	linux-kernel@vger.kernel.org
Date: Wed, 21 May 2025 16:29:19 -0400
Message-ID: <20250521204654.1610607-13-lyude@redhat.com>
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
	RWL_MAILSPIKE_EXCELLENT(-0.40)[170.10.133.124:from];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[us-smtp-delivery-124.mimecast.com:rdns,us-smtp-delivery-124.mimecast.com:helo];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[redhat.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[170.10.133.124:from];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,garyguo.net,protonmail.com,proton.me,google.com,umich.edu,linaro.org,amd.com,collabora.com,asahilina.net,rosenzweig.io,vger.kernel.org,lists.linaro.org]
X-Rspamd-Queue-Id: D3E13445D0
X-Spamd-Bar: -
Message-ID-Hash: 4TCFOMMJU4JJMP3RXI5ONCGYRCDQG5MQ
X-Message-ID-Hash: 4TCFOMMJU4JJMP3RXI5ONCGYRCDQG5MQ
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?UTF-8?q?Bj=C3=B6rn=20Roy=20Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Daniel Almeida <daniel.almeida@collabora.com>, Asahi Lina <lina@asahilina.net>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 12/12] rust: drm: gem: Add BaseObject::prime_export()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4TCFOMMJU4JJMP3RXI5ONCGYRCDQG5MQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

We just added an export() callback that GEM objects can implement, but
without any way of actually exporting a DmaBuf<T>. So let's add one by
introducing bindings for drm_gem_prime_export().

Signed-off-by: Lyude Paul <lyude@redhat.com>
---
 rust/kernel/drm/gem/mod.rs | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/rust/kernel/drm/gem/mod.rs b/rust/kernel/drm/gem/mod.rs
index ef697f323e52c..ee74b9bdb7a1f 100644
--- a/rust/kernel/drm/gem/mod.rs
+++ b/rust/kernel/drm/gem/mod.rs
@@ -225,6 +225,29 @@ fn lookup_handle<D, F, O>(file: &drm::File<F>, handle: u32) -> Result<ARef<Self>
         Ok(unsafe { ARef::from_raw(obj.into()) })
     }
 
+    /// Export a [`DmaBuf`] for this GEM object using the DRM prime helper library.
+    ///
+    /// `flags` should be a set of flags from [`fs::file::flags`](kernel::fs::file::flags).
+    fn prime_export(&self, flags: u32) -> Result<DmaBuf<Self>> {
+        // SAFETY:
+        // - `as_raw()` always returns a valid pointer to a `drm_gem_object`.
+        // - `drm_gem_prime_export()` returns either an error pointer, or a valid pointer to an
+        //   initialized `dma_buf` on success.
+        let dma_ptr = from_err_ptr(unsafe {
+            bindings::drm_gem_prime_export(self.as_raw(), flags as _)
+        })?;
+
+        // SAFETY:
+        // - We checked that dma_ptr is not an error, so it must point to an initialized dma_buf
+        // - We used drm_gem_prime_export(), so `dma_ptr` will remain valid until a call to
+        //   `drm_gem_prime_release()` which we don't call here.
+        let dma_buf = unsafe { dma_buf::DmaBuf::as_ref(dma_ptr) };
+
+        // INVARIANT: We used drm_gem_prime_export() to create this dma_buf, fulfilling the
+        // invariant that this dma_buf came from a GEM object of type `Self`.
+        Ok(DmaBuf(dma_buf.into(), PhantomData))
+    }
+
     /// Creates an mmap offset to map the object from userspace.
     fn create_mmap_offset(&self) -> Result<u64> {
         // SAFETY: The arguments are valid per the type invariant.
-- 
2.49.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
