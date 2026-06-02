Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CXM2DOESH2pXfAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 19:29:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ED583630B79
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 19:29:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=redhat.com header.s=mimecast20190719 header.b=U0Z6oRMK;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 16EAD40493
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 17:29:04 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 0C9DE4099D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Jun 2026 17:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1780421317;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ji3R873SgQHyxfzMQgkhE7LmK1MPE9r7ND0eG5Mf4OM=;
	b=U0Z6oRMKHZ1Rp3DNPpuOBzOllSe8JSxL+MciuLZgnkDOUGY+K+EjY6IlFUJS3CUUIkQa8G
	pEqgasmQAsvz3EywRmwTkxvnBUOjzdfBKSMFFdWgbZeI3JxW8FCxnk0SNYBBZ7uFIOF0KZ
	pehHYl0G+9I7BZu4iOapecGaweZ8Y5g=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-630-hcXIVyfUOHO65GIIA9MZ-Q-1; Tue,
 02 Jun 2026 13:28:31 -0400
X-MC-Unique: hcXIVyfUOHO65GIIA9MZ-Q-1
X-Mimecast-MFC-AGG-ID: hcXIVyfUOHO65GIIA9MZ-Q_1780421308
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E0E1D18005B5;
	Tue,  2 Jun 2026 17:28:27 +0000 (UTC)
Received: from GoldenWind.lan (unknown [10.22.81.216])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 90A7219560A7;
	Tue,  2 Jun 2026 17:28:24 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org,
	rust-for-linux@vger.kernel.org,
	nouveau@lists.freedesktop.org
Date: Tue,  2 Jun 2026 13:25:02 -0400
Message-ID: <20260602172807.1051806-4-lyude@redhat.com>
In-Reply-To: <20260602172807.1051806-1-lyude@redhat.com>
References: <20260602172807.1051806-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-MFC-PROC-ID: RjWDeclNYRcWtYK1nrhVxYW0G6scZ-4O26vfhmhfJc8_1780421308
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ---
Message-ID-Hash: HK36AHCDRPB5FTBYQUZBODPWOYSUIET6
X-Message-ID-Hash: HK36AHCDRPB5FTBYQUZBODPWOYSUIET6
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alexandre Courbot <acourbot@nvidia.com>, Gary Guo <gary@garyguo.net>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Miguel Ojeda <ojeda@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Alice Ryhl <aliceryhl@google.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Lyude Paul <lyude@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v16 3/6] rust: sync: Add SetOnce::reset()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HK36AHCDRPB5FTBYQUZBODPWOYSUIET6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; x-default="true"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:nouveau@lists.freedesktop.org,m:acourbot@nvidia.com,m:gary@garyguo.net,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:ojeda@kernel.org,m:maarten.lankhorst@linux.intel.com,m:aliceryhl@google.com,m:simona@ffwll.ch,m:linux-kernel@vger.kernel.org,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:rafael@kernel.org,m:tzimmermann@suse.de,m:mripard@kernel.org,m:airlied@gmail.com,m:lossin@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:dakr@kernel.org,m:mkchauras@gmail.com,m:lina+kernel@asahilina.net,m:daniel.almeida@collabora.com,m:lyude@redhat.com,m:gregkh@linuxfoundation.org,m:lina@asahilina.net,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[nvidia.com,garyguo.net,amd.com,lists.linux.dev,kernel.org,linux.intel.com,google.com,ffwll.ch,vger.kernel.org,linaro.org,suse.de,gmail.com,lists.linaro.org,asahilina.net,collabora.com,redhat.com,linuxfoundation.org];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ED583630B79

This function simply drops the contents of the SetOnce, given a mutable
reference - since that proves we have exclusive access to the SetOnce.
Additionally, update the invariants for SetOnce to make it clear as to why
this is safe.

Signed-off-by: Lyude Paul <lyude@redhat.com>
---
 rust/kernel/sync/set_once.rs | 60 +++++++++++++++++++++++++++++++-----
 1 file changed, 52 insertions(+), 8 deletions(-)

diff --git a/rust/kernel/sync/set_once.rs b/rust/kernel/sync/set_once.rs
index 139cef05e935f..d6e4fc2695673 100644
--- a/rust/kernel/sync/set_once.rs
+++ b/rust/kernel/sync/set_once.rs
@@ -15,7 +15,7 @@
 ///
 /// # Invariants
 ///
-/// - `init` may only increase in value.
+/// - `init` may only increase in value, unless modified through a mutable reference.
 /// - `init` may only assume values in the range `0..=2`.
 /// - `init == 0` if and only if `value` is uninitialized.
 /// - `init == 1` if and only if there is exactly one thread with exclusive
@@ -110,17 +110,61 @@ pub fn copy(&self) -> Option<T>
     {
         self.as_ref().copied()
     }
+
+    /// # Safety
+    ///
+    /// If this function returns `true`, `self` must be freed or `init` must be reset to `0`.
+    unsafe fn drop_val(&mut self) -> bool {
+        if *self.init.get_mut() != 2 {
+            return false;
+        }
+
+        let value = self.value.get_mut();
+        // SAFETY: Via our type invariants, `init` == 2 means `value` is initialized.
+        unsafe { value.assume_init_drop() };
+
+        true
+    }
+
+    /// Unset the [`SetOnce`].
+    ///
+    /// After this function is called, the [`SetOnce`] is empty and uninitialized. This function is
+    /// mainly intended for usage in destructors.
+    ///
+    /// Returns `true` if `self` was previously initialized.
+    ///
+    /// # Example
+    ///
+    /// ```
+    /// # use kernel::sync::SetOnce;
+    /// let mut value = SetOnce::new();
+    /// assert_eq!(value.populate(67), true);
+    ///
+    /// assert_eq!(value.reset(), true);
+    /// assert!(value.as_ref().is_none());
+    /// assert_eq!(value.reset(), false);
+    ///
+    /// assert_eq!(value.populate(69), true);
+    /// ```
+    pub fn reset(&mut self) -> bool {
+        // SAFETY: We write `0` to init below if this returns true.
+        let dropped = unsafe { self.drop_val() };
+        if dropped {
+            // INVARIANT:
+            // - We set `init` back to 0 through a mutable reference.
+            // - We dropped `value` above.
+            *self.init.get_mut() = 0;
+        }
+
+        dropped
+    }
 }
 
 impl<T> Drop for SetOnce<T> {
+    #[inline(always)]
     fn drop(&mut self) {
-        if *self.init.get_mut() == 2 {
-            let value = self.value.get_mut();
-            // SAFETY: By the type invariants of `Self`, `self.init == 2` means that `self.value`
-            // contains a valid value. We have exclusive access, as we hold a `mut` reference to
-            // `self`.
-            unsafe { value.assume_init_drop() };
-        }
+        // SAFETY: We are dropping this value.
+        unsafe { self.drop_val() };
     }
 }
 
-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
